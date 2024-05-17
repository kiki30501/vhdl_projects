library ieee;
use ieee.std_logic_1164.all;
library altera_mf;
use altera_mf.altera_mf_components.all;
library work;
use work.imgproc_pack.all;

entity pipeline is
  generic
  (
    channel : integer -- color channel index (R=0, G=1, B=2)
  );
  port
  (
    clk, rst, wren     : in std_logic;
    rom_addr, ram_addr : in std_logic_vector(addr_width downto 0)
  );
end entity;


architecture arc_pipeline of pipeline is
    signal rom_q, ram_d : std_logic_vector((img_width*color_depth)-1 downto 0);
    signal mem2buff     : pixel_row(img_width-1 downto 0);
    signal buff         : pixel_buffer(mask_size-1 downto 0);
    alias padleft       : pixel is mem2buff(mem2buff'high);
    alias padright      : pixel is mem2buff(mem2buff'low);
begin
    M1 : entity work.demoROM
        generic map
        (
            file_path => project_path,
            mif_name  => mif_name(channel)
        )
        port map
        (
            aclr    => rst,
            address => rom_addr(addr_width-1 downto 0),
            clock   => clk,
            q       => rom_q
        );

    U1 : entity work.demoRAM
        generic map
        (
            ram_name => ram_name(channel)
        )
        port map
        (
            aclr    => rst,
            address => ram_addr(addr_width-1 downto 0),
            clock   => clk,
            data    => ram_d,
            wren    => wren,
            q       => open
        );
    
    -- Asynchronous statements
    mem2buff <= stdvec_to_pixelrow(rom_q); -- rom data converted and fed to buffer
    ram_d <= pixelrow_to_stdvec(filter_median(buff)); -- filter applied and fed to ram
        
    line_buffer : process(clk, rst)
    begin
        if (rst = '1') then
            buff <= (others => (others => (others => '0')));
        elsif rising_edge(clk) then
            buff <= buff(buff'high-1 downto 0) & (padleft & mem2buff & padright); -- shift buffer and add new line with padding
        end if;
    end process line_buffer;

end architecture arc_pipeline;