------------------------------------------------
-- Design: MUX_E_DEMUX
-- ENTITY: MUX & DEMUX
-- Author: JOAO MARCELO E JOSE TOMAZELLI
-- Rev.  : 1.0
-- Date  : 03/28/2020
------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
 
ENTITY TDM_tb is

END TDM_tb; 

ARCHITECTURE arch_1 of TDM_tb is


COMPONENT TDM_top is
	PORT (
		i_CLK   : IN std_logic; 
		i_FRAME1 : IN std_logic_vector(15 DOWNTO 0); 
		i_FRAME2 : IN std_logic_vector(15 DOWNTO 0); 
		i_FRAME3 : IN std_logic_vector(15 DOWNTO 0); 
		i_FRAME4 : IN std_logic_vector(15 DOWNTO 0); 
		i_TIME   : in std_logic_vector(15 downto 0);   
		o_FRAME  : OUT std_logic_vector(15 DOWNTO 0);  
		o_A : OUT std_logic;
		o_B : OUT std_logic;
		o_C : OUT std_logic;
		o_D : OUT std_logic	
	);
END COMPONENT;

SIGNAL w_CLK, w_CLR_n, w_o_A, w_o_B, w_o_C, w_o_D : std_logic;
SIGNAL w_i_A, w_i_B, w_i_C, w_i_D, w_o_FRAME, w_i_TIME: std_logic_vector(15 downto 0);


CONSTANT c_CLK_PERIOD : time := 2 ns;

BEGIN

  u_DUT: TDM_top port map(
            i_CLK => w_CLK,
            i_TIME   => w_i_TIME,
            i_FRAME1 => w_i_A,
            i_FRAME2 => w_i_B,
            i_FRAME3 => w_i_C,
            i_FRAME4 => w_i_D,
            o_FRAME  => w_o_FRAME,
            o_A => w_o_A,
            o_B => w_o_B,
            o_C => w_o_C,
            o_D => w_o_D);

  p_CLK: PROCESS
  BEGIN
    w_CLK <= '1';
    WAIT FOR c_CLK_PERIOD/2;  
    w_CLK <= '0';
    WAIT FOR c_CLK_PERIOD/2;  
  END PROCESS p_CLK;
  
  p_INPUT: PROCESS
  BEGIN


    w_i_A       <= "0000000000001111";
    w_i_B       <= "0000000011110000";
    w_i_C       <= "0000111100000000";
    w_i_D       <= "1111000000000000";
    w_i_TIME    <= "0000000000001010";

    WAIT  FOR 2*c_CLK_PERIOD;
    ASSERT(w_o_FRAME="0000000000001111") REPORT "Fail @ 000" SEVERITY error;
    WAIT  FOR  8*c_CLK_PERIOD;

    WAIT  FOR 2*c_CLK_PERIOD;
    ASSERT(w_o_FRAME="0000000011110000") REPORT "Fail @ 001" SEVERITY error;
    WAIT FOR 8*c_CLK_PERIOD;

    WAIT  FOR 2*c_CLK_PERIOD;
    ASSERT(w_o_FRAME="0000111100000000") REPORT "Fail @ 002" SEVERITY error;
    WAIT FOR 8*c_CLK_PERIOD;

    WAIT  FOR 2*c_CLK_PERIOD;
    ASSERT(w_o_FRAME="1111000000000000") REPORT "Fail @ 003" SEVERITY error;
    WAIT FOR 8*c_CLK_PERIOD;
    
    WAIT  FOR 2*c_CLK_PERIOD;
    ASSERT(w_o_FRAME="0000000000001111") REPORT "Fail @ 004" SEVERITY error;
    WAIT FOR 8*c_CLK_PERIOD;


    w_i_A       <= "0000000000000000";
    w_i_B       <= "0000000000000000";
    w_i_C       <= "0000000000000000";
    w_i_D       <= "0000000000000000";
    w_i_TIME    <= "0000000000000000";
    ASSERT false REPORT "Test done." SEVERITY note;
    
    WAIT;
  END PROCESS;
END arch_1;