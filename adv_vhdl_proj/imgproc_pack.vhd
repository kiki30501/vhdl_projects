library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;

package imgproc_pack is

  -- data size and other constants
  constant color_depth  : positive := 5;
  constant img_height   : positive := 256;
  constant img_width    : positive := 256;
  constant mask_size    : positive := 3;
  constant system_delay : positive := 6;
  constant addr_width   : positive := positive(ceil(log2(real(img_height))));
  ----------------------------------------------------

  -- file names and locations
  constant project_path : string := "C:\vhdl_projects\adv_vhdl_proj\";
  --ROM
  constant mif_name_format : string := "x.mif";
  type mif_array_type is array (0 to 2) of string(mif_name_format'range);
  constant mif_name : mif_array_type := ("r.mif", "g.mif", "b.mif");
  --RAM
  constant ram_name_format : string := "XRAM";
  type ram_array_type is array (0 to 2) of string(ram_name_format'range);
  constant ram_name : ram_array_type := ("RRAM", "GRAM", "BRAM");
  ----------------------------------------------------

  -- intermediate types declarations
  subtype pixel     is std_logic_vector((color_depth - 1) downto 0); --only going down to pixel level, not bit level
  type pixel_row    is array (natural range <>) of pixel; -- row of pixels
  type pixel_buffer is array (natural range <>) of pixel_row((img_width + 1) downto 0); -- pixel row array type
  type mask         is array ((mask_size - 1) downto 0) of pixel_row((mask_size - 1) downto 0); -- 3x3 pixel mask type
  ----------------------------------------------------

  --functions
  function stdvec_to_pixelrow (arg : std_logic_vector)  return pixel_row;
  function median_row 		    (arg : pixel_row)         return pixel;
  function median_mask 		    (arg : mask)              return pixel;
  function filter_median 	    (arg : pixel_buffer)      return pixel_row;
  function pixelrow_to_stdvec (arg : pixel_row)         return std_logic_vector;

end package imgproc_pack;


package body imgproc_pack is

  function stdvec_to_pixelrow (arg : std_logic_vector) return pixel_row is
    variable row_out : pixel_row(arg'high / color_depth downto 0);
  begin
    for i in row_out'range loop
      row_out(i) := arg(((i * color_depth) + (color_depth - 1)) downto i * color_depth);
    end loop;
    return row_out;
  end function stdvec_to_pixelrow;

  function median_row (arg : pixel_row) return pixel is -- Median of 3 pixels
    variable temp : pixel;
  begin
    if    ((arg(2) >= arg(1)) and (arg(2) <= arg(0))) then
      temp := arg(2);
    elsif ((arg(2) >= arg(0)) and (arg(2) <= arg(1))) then
      temp := arg(2);
    elsif ((arg(1) >= arg(0)) and (arg(1) <= arg(2))) then
      temp := arg(1);
    elsif ((arg(1) >= arg(2)) and (arg(1) <= arg(0))) then
      temp := arg(1);
    elsif ((arg(0) >= arg(1)) and (arg(0) <= arg(2))) then
      temp := arg(0);
    else
      temp := arg(0);
    end if;
    return temp;
  end function median_row;


  function median_mask (arg : mask) return pixel is -- Median of medians for 3x3 mask
    variable temp_row   : pixel_row (mask_size - 1 downto 0);
    variable temp_pixel : pixel;
  begin
    for i in (mask_size-1) downto 0 loop
      temp_row(i) := median_row(arg(i));
    end loop;
    temp_pixel := median_row(temp_row);
    return temp_pixel;
  end function median_mask;


  function filter_median (arg : pixel_buffer) return pixel_row is -- Main filter function, gets buffer and returns filtered row
    variable temp_row  : pixel_row (img_width-1 downto 0);
    variable temp_mask : mask;
  begin
    for i in (img_width-1) downto 0 loop
      for j in (mask_size-1) downto 0 loop
        temp_mask(j) := arg(j)((i+mask_size-1) downto i);
      end loop;
      temp_row(i) := median_mask(temp_mask);
    end loop;
    return temp_row;
  end function filter_median;


  function pixelrow_to_stdvec (arg : pixel_row) return std_logic_vector is
    variable out_vector : std_logic_vector(((color_depth*img_width) - 1) downto 0);
  begin
    for i in (img_width-1) downto 0 loop
      out_vector(((i+1)*color_depth)-1 downto i*color_depth) := arg(i);
    end loop;
    return out_vector;
  end function pixelrow_to_stdvec;

end package body imgproc_pack;