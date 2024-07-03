library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_textio.all;
use std.textio.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
-------------------------------------------------------------------------------
entity fsm_creator is
   generic (file_path : string := "C:\Users\sixsi\Code Projects\vhdl_projects\BennyParser1\");
end entity fsm_creator;
-------------------------------------------------------------------------------
architecture arc_fsm_creator of fsm_creator  is
    procedure skip_white(variable L : inout line; pos : inout integer)is
       variable old_L : line := L;
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

    procedure extract_integer(variable L : in line; variable pos   : inout integer;
                              variable value : out integer; variable ok : out   boolean) is
      variable rval : integer:= 0;
   begin
      ok := false;
      while pos <= L'right loop
         if L(pos) >= '0' and L(pos) <= '9' then
            rval := rval * 10 + (character'pos(L(pos)) - character'pos('0'));
            ok   := true;
            exit when (((pos+1) < L'right) and ((L(pos+1) < '0') or (L(pos+1) > '9')));
         end if;
         pos := pos + 1;
      end loop;
      value := rval;
   end procedure extract_integer;


   procedure shrink_line(L : inout line; pos : in integer) is 
	variable old_L : line := L;
    begin
	if pos > 1 then
	    L := new string'(old_L(pos to old_L'high));
	    deallocate(old_L);
	end if;
    end procedure shrink_line;
    
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
      variable temp        : line;
      variable fc,cc       : character;
      variable xsize       : integer;
      variable ysize       : integer;
      variable ssize       : integer;
      variable psize       : integer;
      variable lsize       : integer;
      variable p           : integer:=0;
      variable pos         : integer;
      variable ipos        : integer;
      variable xv          : character;
      variable str         : string(1 to 2);
      variable sn          : integer;
      variable cnt         : integer:=1;
      variable read_status : boolean;
      variable i_read_good : boolean;
      variable wr_flag     : boolean := false;
   begin
      report "enter file name:";
      readline (input,l);   
      file_open(status,in_file, file_path & l.all & string'(".kis"), read_mode);
      assert (status=open_ok) 
        report "file reading failure" & time'image(now)
      severity failure;
      report "file opened";
      file_open(status, out_file, file_path & l.all & string'(".vhd"), write_mode);
      write(curr_line,string'("library ieee;"));
      writeline(out_file, curr_line);
      write(curr_line,string'("use  ieee.std_logic_1164.all;"));
      writeline(out_file, curr_line);
      write(curr_line,string'("library work;"));
      writeline(out_file, curr_line);
      write(curr_line,string'("use  work.fsm_pack.all;"));
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
           for i in 1 to xsize loop
              write (curr_line,string'("     x") & integer'image(i) & string'("  : in  std_logic;"));
              writeline(out_file, curr_line);
           end loop;
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
           for i in 1 to ysize loop
              write (curr_line,string'("     y") & integer'image(i) & string'("  : out  wired_logic;"));
              writeline(out_file, curr_line);
           end loop;
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
        read(curr_line,psize,read_status);
        next  when (not read_status);
        if (fc='.' and cc='p') then
           write (curr_line,string'("     f1") & string'("  : in std_logic_vector(1 to ") & integer'image(psize) & string'(");"));
           writeline(out_file, curr_line);
           write (curr_line,string'("     f2") & string'("  : in std_logic_vector(1 to ") & integer'image(psize) & string'(");"));
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
              write (curr_line,string'("signal s") & integer'image(i) & string'(" : std_logic;"));
              writeline(out_file, curr_line);
              write (curr_line,string'("signal sn") & integer'image(i) & string'(" : wired_logic;"));
              writeline(out_file, curr_line);
           end loop; 
           exit;
        end if;
      end loop;
      write (curr_line,string'("signal t") & string'("  : std_logic_vector(1 to ") & integer'image(psize) & string'(");"));
      writeline(out_file, curr_line);
      write (curr_line,string'("begin"));
      writeline(out_file, curr_line);
      while (not endfile(in_file)) loop
         readline(in_file,curr_line);
         wr_flag:=false;
         for i in 1 to xsize loop
            read(curr_line,xv,read_status);
            if (not wr_flag) then
               if(xv='1') then
                  write(tl,string'("(x") & integer'image(i));
                  wr_flag:=true;
               elsif (xv='0') then
                  write(tl,string'("((not x") & integer'image(i) & string'(")"));
                  wr_flag:=true;
               end if;
            else
              if(xv='1' and wr_flag) then
                  write(tl,string'(" and x") & integer'image(i));  
              elsif (xv='0' and wr_flag) then
                  write(tl,string'(" and (not x") & integer'image(i) & string'(")")); 
              end if; 
            end if;
         end loop;
         pos := curr_line'left;
	 skip_white(curr_line, pos);
         ipos:=curr_line'left;
         extract_integer(curr_line,ipos,sn,i_read_good);
         --read(curr_line,str,read_status);
         --read(curr_line,sn,read_status);
         if (i_read_good) then
            if (wr_flag) then
               write(tl,string'(" and s") & integer'image(sn) & string'(");"));
            else
               write(tl,string'(" s") & integer'image(sn) & string'(";")); 
            end if;   
         else
              next;
         end if;
         shrink_line(curr_line,ipos);
         pos := curr_line'left;
	 skip_white(curr_line, pos);
         ipos:=curr_line'left;
         extract_integer(curr_line,ipos,sn,i_read_good);
         --read(curr_line,str,read_status);
         --read(curr_line,sn,read_status);
         if (i_read_good) then
           write(temp,string'("t(") & integer'image(cnt) & string'(")<="));
           write(final,(temp.all & tl.all)); 
           writeline(out_file,final);
           write(ss,string'("sn") & integer'image(sn) & string'("<=(t(") & integer'image(cnt) & string'(") and f1(") & integer'image(cnt)
                 & string'(")) or f2(") & integer'image(cnt) & string'(");"));
            writeline(out_file,ss);
           cnt:=cnt+1;
           deallocate(ss);
           deallocate(tl);
           deallocate(temp);
           deallocate(final);
         else
              next;
         end if;
         shrink_line(curr_line,ipos);
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
      for i in 0 to ssize-1 loop
         if i=0 then
            write (curr_line,string'("s") & integer'image(i) & string'("<='1';"));
         else
            write (curr_line,string'("s") & integer'image(i) & string'("<='0';"));
         end if;   
         writeline(out_file, curr_line);
      end loop;
      write (curr_line,string'("elsif rising_edge(clk) then"));
      writeline(out_file, curr_line);
      for i in 0 to ssize-1 loop
        write (curr_line,string'("s") & integer'image(i) & string'("<=sn") & integer'image(i) & string'(";"));
        writeline(out_file, curr_line);
      end loop;  
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
         for i in 1 to xsize loop
            read(curr_line,xv,read_status);
            if (not wr_flag) then
               if(xv='1') then
                  write(tl,string'("(x") & integer'image(i));
                  wr_flag:=true;
               elsif (xv='0') then
                  write(tl,string'("((not x") & integer'image(i) & string'(")"));
                  wr_flag:=true;
               end if;
            else
              if(xv='1' and wr_flag) then
                  write(tl,string'(" and x") & integer'image(i));  
              elsif (xv='0' and wr_flag) then
                  write(tl,string'(" and (not x") & integer'image(i) & string'(")")); 
              end if; 
            end if;
         end loop;
         pos := curr_line'left;
	 skip_white(curr_line, pos);
         ipos:=curr_line'left;
         extract_integer(curr_line,ipos,sn,i_read_good);
         --read(curr_line,str,read_status);
         --read(curr_line,sn,read_status);
         if (i_read_good) then
           if (wr_flag) then
              write(tl,string'(" and s") & integer'image(sn) & string'(");"));
           else
              write(tl,string'("s") & integer'image(sn) & string'(";"));
           end if;   
         else
              next;
         end if;
         shrink_line(curr_line,ipos);
         pos := curr_line'left;
	 skip_white(curr_line, pos);
         read(curr_line,str,read_status); 
         read(curr_line,sn,read_status);
         pos := curr_line'left;
	 skip_white(curr_line, pos);
         for j in 1 to ysize loop
            read(curr_line,xv,read_status);
            if (xv='1') then
              write(ss,string'("y") & integer'image(j) & string'("<="));
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
      report "Job Done!";
      wait;
   end process; 
end architecture arc_fsm_creator;
