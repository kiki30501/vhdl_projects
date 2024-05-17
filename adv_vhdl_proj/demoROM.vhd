library ieee;
use ieee.std_logic_1164.all;

library altera_mf;
use altera_mf.altera_mf_components.all;

entity demoROM is
  generic
  (
    file_path : string := "./";
    mif_name  : string := "demoMif.mif"
  );
  port
  (
    aclr    : in std_logic := '0';
    address : in std_logic_vector (7 downto 0);
    clock   : in std_logic := '1';
    q       : out std_logic_vector (1279 downto 0)
  );
end demoROM;


architecture SYN of demorom is

  signal sub_wire0 : std_logic_vector (1279 downto 0);

begin
  q <= sub_wire0(1279 downto 0);

  altsyncram_component : altsyncram
  generic map
  (
    address_aclr_a         => "CLEAR0",
    clock_enable_input_a   => "BYPASS",
    clock_enable_output_a  => "BYPASS",
    init_file              => file_path & mif_name,
    intended_device_family => "Cyclone IV E",
    lpm_type               => "altsyncram",
    numwords_a             => 256,
    operation_mode         => "ROM",
    outdata_aclr_a         => "CLEAR0",
    outdata_reg_a          => "CLOCK0",
    widthad_a              => 8,
    width_a                => 1280,
    width_byteena_a        => 1
  )
  port map
  (
    aclr0     => aclr,
    address_a => address,
    clock0    => clock,
    q_a       => sub_wire0
  );

end SYN;