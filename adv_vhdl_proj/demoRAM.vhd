library ieee;
use ieee.std_logic_1164.all;

library altera_mf;
use altera_mf.altera_mf_components.all;

entity demoRAM is
  generic
  (
    ram_name : string := "XRAM"
  );
  port
  (
    aclr    : in std_logic := '0';
    address : in std_logic_vector (7 downto 0);
    clock   : in std_logic := '1';
    data    : in std_logic_vector (1279 downto 0);
    wren    : in std_logic;
    q       : out std_logic_vector (1279 downto 0)
  );
end demoRAM;


architecture SYN of demoram is

  signal sub_wire0 : std_logic_vector (1279 downto 0);

begin
  q <= sub_wire0(1279 downto 0);

  altsyncram_component : altsyncram
  generic map
  (
    clock_enable_input_a          => "BYPASS",
    clock_enable_output_a         => "BYPASS",
    intended_device_family        => "Cyclone IV E",
    lpm_hint                      => "ENABLE_RUNTIME_MOD=YES,INSTANCE_NAME=" & ram_name,
    lpm_type                      => "altsyncram",
    numwords_a                    => 256,
    operation_mode                => "SINGLE_PORT",
    outdata_aclr_a                => "CLEAR0",
    outdata_reg_a                 => "CLOCK0",
    power_up_uninitialized        => "FALSE",
    read_during_write_mode_port_a => "NEW_DATA_NO_NBE_READ",
    widthad_a                     => 8,
    width_a                       => 1280,
    width_byteena_a               => 1
  )
  port map
  (
    aclr0     => aclr,
    address_a => address,
    clock0    => clock,
    data_a    => data,
    wren_a    => wren,
    q_a       => sub_wire0
  );

end SYN;