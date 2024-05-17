library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.and_reduce;


library altera_mf;
use altera_mf.altera_mf_components.all;

library work;
use work.imgproc_pack.all;

entity LenaTop is
  port
  (
    clk       : in  std_logic;
    rst       : in  std_logic;
    pb_start  : in  std_logic;
    done      : out std_logic;
    oh_no     : out std_logic
  );
  attribute altera_chip_pin_lc              : string;
  attribute altera_chip_pin_lc of clk       : signal is "Y2";
  attribute altera_chip_pin_lc of rst       : signal is "AB28";
  attribute altera_chip_pin_lc of pb_start  : signal is "AC28";
  attribute altera_chip_pin_lc of done      : signal is "E21"; -- lights up a green LED when the image is done processing
  attribute altera_chip_pin_lc of oh_no     : signal is "H15"; -- lights up a red LED if entered an error state
end entity;


architecture arc_LenaTop of LenaTop is

  signal start, anded   : std_logic;
  signal rom_cnt, wren  : std_logic;
  signal cnt_rst        : std_logic;
  signal bounce_shift   : std_logic_vector(31 downto 0);  
  signal ram_addr       : std_logic_vector(addr_width downto 0);
  signal rom_addr       : std_logic_vector(addr_width downto 0);
  signal delay_cnt      : std_logic_vector(system_delay-1 downto 0);

  alias  ram_flag       : std_logic is ram_addr(ram_addr'high); -- MSB of ram addr counter is "done"
  alias  rom_flag       : std_logic is rom_addr(rom_addr'high); -- MSB of rom addr counter is "rom_flag" (for stopping the counter)
  alias delay_ready     : std_logic is delay_cnt(delay_cnt'high);
  
  constant cnt_padd     : std_logic_vector(addr_width-1 downto 0) := (others => '0');
  constant pb_pol       : std_logic := '1'; -- Polarity of the push button: '1' for active low, '0' for active high

  type state_type is (idle, start_line, run);
  signal state : state_type := idle;


begin

anded <= and_reduce(bounce_shift(30 downto 0));
Debounce: process (clk, rst) -- Debounce the push button for start signal
-- We would've debounced the rst signal if it didn't have a dedicated trace tree
begin
  if (rst = '1') then
    bounce_shift <= (others => '0');
    start <= '0';
  elsif rising_edge(clk) then
    bounce_shift(30 downto 0) <= bounce_shift(29 downto 0) & (pb_pol xor pb_start); -- 31 stages of shift register
    bounce_shift(31) <= anded;  -- first 31 stages (310 ns) must be high for the button to be considered pressed
    start <= anded and (not bounce_shift(31)); -- the debounced signal is an active high 1cc pulse for the start signal
  end if;
end process;

-------------------------------------------------------
done <= ram_flag;  
FSM : process (clk, rst) 
    
  begin
    if (rst = '1') then
      oh_no   <= '0';
      rom_cnt <= '0';
      cnt_rst <= '0';
      state   <= idle;

    elsif rising_edge(clk) then
      
      case state is      
        when idle =>
          if (start = '1') then
            state   <= start_line;
            cnt_rst <= '1';
          else
            state   <= idle;
          end if;
      
        when start_line =>
          rom_cnt <= not rom_flag;
          cnt_rst <= '0';
          state   <= run;
        
        when run =>
          rom_cnt <= not rom_flag;
          if (ram_flag = '0') then
				    state   <= run;
          else
            state   <= idle;
          end if;
        
        when others =>
		  oh_no <= '1';
		  report "Reached Error State. Oh no!" severity error;

      end case;
    end if;
  end process FSM;

-------------------------------------------------------
    counters : process (clk, rst) begin
      if (rst = '1') then
        rom_addr    <= (others => '0');
        ram_addr    <= (others => '0');
        delay_cnt   <= (others => '0');
      elsif (rising_edge(clk)) then
        if (cnt_rst = '1') then --synchronous reset
          rom_addr    <= (others => '0');
          ram_addr    <= (others => '0');
          delay_cnt   <= (others => '0');
        else
          delay_cnt <= delay_cnt(delay_cnt'high-1 downto 0) & rom_cnt;
          -- either increment the rom_addr or set it to all 1's if rom_flag is high, need to reset the system for the next image
          rom_addr <= ((rom_addr + (cnt_padd & rom_cnt)) or (ram_addr'range => rom_flag));
          ram_addr <= ram_addr + (cnt_padd & delay_ready); -- increment the ram_addr by 1 if rom_cnt was high 6cc's ago
        end if;
      end if;
    end process counters;

-------------------------------------------------------
    wren <= delay_ready and (not ram_flag);
    -- Generate 3 pipeline units, one for each color channel (RGB)
    pipeline_gen : for i in 0 to 2 generate

      P1 : entity work.pipeline
      generic map
      (
        channel => i -- 0 for red, 1 for green, 2 for blue
      )
      port map
      (
        rst      => rst,
        rom_addr => rom_addr,
        ram_addr => ram_addr,
        clk      => clk,
        wren     => wren
      );
    end generate pipeline_gen;

  end architecture arc_LenaTop;