library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_textio.all;
use std.textio.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
-------------------------------------------------------------------------------
entity fsm_creator is
   generic (file_path : string := "C:\vhdl_projects\BennyParser1\");
end entity fsm_creator;
-------------------------------------------------------------------------------
architecture arc_fsm_creator of fsm_creator  is
    procedure skip_white(variable L : inout LINE; pos : inout integer)is
       variable old_L : LINE := L;
    begin
	while pos <= old_L'high loop
	    case old_L(pos) is
		when ' ' | HT  =>
		    pos := pos + 1;
		when others =>
		    exit;
	    end case;
	end loop;
        L:=new string'(old_L(pos to old_L'high));
        deallocate(old_L);
    end procedure skip_white; 
begin   
   read_from_file : process
      file     in_file     : text;
      file     out_file    : text;
      variable status      : file_open_status ;
      variable curr_line   : line;
      variable l           : line;
      variable tl          : line;
      variable ss          : line;
      variable final       : line;
      variable fc,cc       : character;
      variable xsize       : integer;
      variable ysize       : integer;
      variable ssize       : integer;
      variable lsize       : integer;
      variable p           : integer:=0;
      variable pos         : integer;
      variable xv          : character;
      variable str         : string(1 to 2);
      variable sn          : integer;
      variable read_status : boolean;
      variable wr_flag     : boolean := false;
   begin
		report "Enter file name: ";
      readline (input,l);                             
      file_open(status,in_file, file_path & l.all & string'(".kis"), read_mode);
      assert (status=open_ok) 
        report "file reading failure " & time'image(now)
      severity failure;
      report "file opened";
      file_open(status, out_file, file_path & l.all & string'(".vhd"), write_mode);
      write(curr_line,string'("library ieee;"));
      writeline(out_file, curr_line);
      write(curr_line,string'("use  ieee.std_logic_1164.all;"));
      writeline(out_file, curr_line);
      write(curr_line,string'("------------------------------"));
      writeline(out_file, curr_line);
      write(curr_line,string'("entity ") & l.all & string'(" is"));
      writeline(out_file, curr_line);
      write (curr_line,string'("    port("));
      writeline(out_file, curr_line);
      loop
        if (not endfile(in_file)) then
          readline(in_file, curr_line);
        end if;
        read(curr_line,fc,read_status);
        next  when (not read_status);
        read(curr_line,cc,read_status);
        next  when (not read_status);
        read(curr_line,xsize,read_status);
        next  when (not read_status);
        if (fc='.' and cc='i') then
           write (curr_line,string'("     x   : in  std_logic_vector(") & integer'image(xsize-1) & string'(" downto 0);"));
           writeline(out_file, curr_line);
           exit;
        end if;
      end loop;
      loop
        if (not endfile(in_file)) then
          readline(in_file, curr_line);
        end if;
        read(curr_line,fc,read_status);
        next  when (not read_status);
        read(curr_line,cc,read_status);
        next  when (not read_status);
        read(curr_line,ysize,read_status);
        next  when (not read_status);
        if (fc='.' and cc='o') then
           write (curr_line,string'("     y   : out std_logic_vector(") & integer'image(ysize-1) & string'(" downto 0);"));
           writeline(out_file, curr_line);
           exit;
        end if;
      end loop;
      write (curr_line,string'("      clk : in  std_logic;"));
      writeline(out_file, curr_line);
      write (curr_line,string'("      rst : in  std_logic") & LF & string'("        );"));
      writeline(out_file, curr_line);
      write(curr_line,string'("end entity ") & l.all & string'(";"));
      writeline(out_file, curr_line);
      write (curr_line,LF & string'("architecture arc_") & l.all & string'(" of ") & l.all & string'(" is"));
      writeline(out_file, curr_line);
      loop
        if (not endfile(in_file)) then
          readline(in_file, curr_line);
        end if;
        read(curr_line,fc,read_status);
        next  when (not read_status);
        read(curr_line,cc,read_status);
        next  when (not read_status);
        read(curr_line,ssize,read_status);
        next  when (not read_status);
        if (fc='.' and cc='s') then
           for i in 0 to ssize-1 loop
            write (curr_line,string'("constant s") & integer'image(i+1) & string'(" : std_logic_vector(") &
                   integer'image(ssize-1) & string'(" downto 0):="));
            write(curr_line,'"');
            write(curr_line,CONV_STD_LOGIC_VECTOR((2**i),ssize));
            write(curr_line,'"');
            write(curr_line,string'(";"));
            writeline(out_file, curr_line);
           end loop; 
           write (curr_line,string'("signal s : std_logic_vector(") & integer'image(ssize-1) & string'(" downto 0);"));
           writeline(out_file, curr_line);
           write (curr_line,string'("signal sn : std_logic_vector(") & integer'image(ssize-1) & string'(" downto 0);"));
           writeline(out_file, curr_line);
           exit;
        end if;
      end loop;
      write (curr_line,string'("begin"));
      writeline(out_file, curr_line);
      while (not endfile(in_file)) loop
         readline(in_file,curr_line);
         wr_flag:=false;
         for i in 0 to xsize-1 loop
            read(curr_line,xv,read_status);
            if (not wr_flag) then
               if(xv='1') then
                  write(tl,string'("(x(") & integer'image(i) & string'(")"));
                  wr_flag:=true;
               elsif (xv='0') then
                  write(tl,string'("((not x(") & integer'image(i) & string'("))"));
                  wr_flag:=true;
               end if;
            else
              if(xv='1' and wr_flag) then
                  write(tl,string'(" and x(") & integer'image(i) & string'(")"));  
              elsif (xv='0' and wr_flag) then
                  write(tl,string'(" and (not x(") & integer'image(i) & string'("))")); 
              end if; 
            end if;
         end loop;
         pos := curr_line'left;
	 skip_white(curr_line, pos);
         read(curr_line,str,read_status); 
         read(curr_line,sn,read_status);
         if (str="st") then
            if (wr_flag) then
               write(tl,string'(" and s(") & integer'image(sn) & string'("));"));
            else
               write(tl,string'(" s(") & integer'image(sn) & string'(");")); 
            end if;   
         else
              next;
         end if;
         pos := curr_line'left;
	 skip_white(curr_line, pos);
         read(curr_line,str,read_status); 
         read(curr_line,sn,read_status);
         if (str="st") then
           write(ss,string'("sn(") & integer'image(sn) & string'(")<="));
           write(final,(ss.all & tl.all)); 
           writeline(out_file,final);
           deallocate(ss);
           deallocate(tl);
           deallocate(final);
         else
              next;
         end if;
         pos := curr_line'left;
	 skip_white(curr_line, pos);
         for j in 0 to ysize-1 loop
            read(curr_line,xv,read_status);
         end loop;
      end loop;
      write(curr_line,string'("------------------------------"));
      writeline(out_file, curr_line);
      write (curr_line,string'("state_reg: process (clk,rst) is"));
      writeline(out_file, curr_line);
      write (curr_line,string'("begin"));
      writeline(out_file, curr_line);
      write (curr_line,string'("if (rst='1') then"));
      writeline(out_file, curr_line);
      write (curr_line,string'("s<=s1;"));
      writeline(out_file, curr_line);
      write (curr_line,string'("elsif rising_edge(clk) then"));
      writeline(out_file, curr_line);
      write (curr_line,string'("s<=sn;"));
      writeline(out_file, curr_line);
      write (curr_line,string'("end if;"));
      writeline(out_file, curr_line);
      write (curr_line,string'("end process state_reg;"));
      writeline(out_file, curr_line);
      write(curr_line,string'("------------------------------"));
      writeline(out_file, curr_line);
      file_close(in_file);
      report "file closed";
      wait for 1 ns;
      file_open(status,in_file, file_path & l.all & string'(".kis"), read_mode);
      assert (status=open_ok) 
        report "file reading failure" & time'image(now)
      severity failure;
      report "file opened";
      loop
        if (not endfile(in_file)) then
          readline(in_file, curr_line);
        end if;
        read(curr_line,fc,read_status);
        next  when (not read_status);
        read(curr_line,cc,read_status);
        next  when (not read_status);
        read(curr_line,xsize,read_status);
        next  when (not read_status);
        if (fc='.' and cc='i') then
           exit;
        end if;
      end loop;
      loop
        if (not endfile(in_file)) then
          readline(in_file, curr_line);
        end if;
        read(curr_line,fc,read_status);
        next  when (not read_status);
        read(curr_line,cc,read_status);
        next  when (not read_status);
        read(curr_line,ysize,read_status);
        next  when (not read_status);
        if (fc='.' and cc='o') then
           exit;
        end if;
      end loop;
      loop
        if (not endfile(in_file)) then
          readline(in_file, curr_line);
        end if;
        read(curr_line,fc,read_status);
        next  when (not read_status);
        read(curr_line,cc,read_status);
        next  when (not read_status);
        read(curr_line,ssize,read_status);
        next  when (not read_status);
        if (fc='.' and cc='s') then
           exit;
        end if;
      end loop;
      while (not endfile(in_file)) loop
         readline(in_file,curr_line);
         wr_flag:=false;
         for i in 0 to xsize-1 loop
            read(curr_line,xv,read_status);
            if (not wr_flag) then
               if(xv='1') then
                  write(tl,string'("(x(0)"));
                  wr_flag:=true;
               elsif (xv='0') then
                  write(tl,string'("((not x(0))"));
                  wr_flag:=true;
               end if;
            else
              if(xv='1' and wr_flag) then
                  write(tl,string'(" and x(") & integer'image(i) & string'(")"));  
              elsif (xv='0' and wr_flag) then
                  write(tl,string'(" and (not x(") & integer'image(i) & string'("))")); 
              end if; 
            end if;
         end loop;
         pos := curr_line'left;
	 skip_white(curr_line, pos);
         read(curr_line,str,read_status); 
         read(curr_line,sn,read_status);
         if (str="st") then
           if (wr_flag) then
              write(tl,string'(" and s(") & integer'image(sn) & string'("));"));
           else
              write(tl,string'("s(") & integer'image(sn) & string'(");"));
           end if;   
         else
              next;
         end if;
         pos := curr_line'left;
	 skip_white(curr_line, pos);
         read(curr_line,str,read_status); 
         read(curr_line,sn,read_status);
         pos := curr_line'left;
	 skip_white(curr_line, pos);
         for j in 0 to ysize-1 loop
            read(curr_line,xv,read_status);
            if (xv='1') then
              write(ss,string'("y(") & integer'image(j) & string'(")<="));
              write(final,(ss.all & tl.all)); 
              writeline(out_file,final);
              deallocate(ss);
              deallocate(final);
            end if;
         end loop;
         deallocate(ss);
         deallocate(tl);
         deallocate(final);
      end loop;
      write (curr_line,LF & string'("end architecture arc_") & l.all & string'(";"));
      writeline(out_file, curr_line);
      file_close(in_file);
      file_close(out_file);
      wait;
   end process; 
end architecture arc_fsm_creator;
