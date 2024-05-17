library ieee;
use std.textio.all;

entity copy_paste_file is
end entity copy_paste_file;

architecture arc_copypastefile of copy_paste_file is
begin

  fileIO : process is

-- Declare access object (pointers) of type 'text' to which I'll assign the files on my computer
    file f1, f2 : text;
    file f3     : text;

-- Declare object for file status asserts
    --variable fopen_stat: file_open_status;

-- Declare a var of type "line" to use as a data buffer for read\write operations
    variable Lbuff, backup_line : line;

  begin

-- Assign the files to the pointers I already declared earlier
    file_open(f1, "C:\vhdl_projects\file_copy_example\MyFile.txt", read_mode);
    file_open(f2, "C:\vhdl_projects\file_copy_example\MyFile-copy1.txt", write_mode);
    file_open(f3, "C:\vhdl_projects\file_copy_example\MyFile-copy2.txt", write_mode);

-- Check if I'm at the end of the file
    report "End check 1: " & boolean'image(endfile(f1))
      severity note;

-- Copy and Paste the first line of the file
    readline (f1, Lbuff);
    write(backup_line, string'("from backup variable: " & string'(Lbuff.all)));
--      backup_line := new string'(Lbuff.all);

    writeline(f2, Lbuff);

-- Check if I'm at the end of the file
    report "End check 2: " & boolean'image(endfile(f1))
      severity note;

-- Does my line buffer remember values that have been written?
    writeline(f3, Lbuff);
    writeline(f3, backup_line);

-- Check if I'm at the end of the file
    report "End check 3: " & boolean'image(endfile(f1))
      severity note;

-- Does readline() moves to the next line automatically?
    readline (f1, Lbuff);
    writeline(f3, Lbuff);

-- Check if I'm at the end of the file
    report "End check 4: " & boolean'image(endfile(f1))
      severity note;

-- Close the files after I finished using them
    file_close(f1);
    file_close(f2);
    file_close(f3);

    report"Files created succesfully"
      severity note;
    wait;
  end process fileIO;
end architecture arc_copypastefile;
