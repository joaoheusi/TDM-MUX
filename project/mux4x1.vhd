------------------------------------------------
-- MUX 4X1
------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.STD_LOGIC_UNSIGNED.ALL;

ENTITY mux4x1 IS
       PORT (
              i_sel : IN std_logic_Vector(1 DOWNTO 0); 
              i_A : IN std_logic_Vector(15 DOWNTO 0); 
              i_B : IN std_logic_Vector(15 DOWNTO 0); 
              i_C : IN std_logic_Vector(15 DOWNTO 0); 
              i_D : IN std_logic_Vector(15 DOWNTO 0); 
              o_Q : OUT std_logic_Vector(15 DOWNTO 0); 
				  o_A : OUT std_logic;
				  o_B : OUT std_logic;
				  o_C : OUT std_logic;
				  o_D : OUT std_logic);
END mux4x1;

ARCHITECTURE arch_1 OF mux4x1 IS       
BEGIN
  o_Q <= i_A WHEN (i_sel = "00") ELSE
         i_B WHEN (i_sel = "01") ELSE
         i_C WHEN (i_sel = "10") ELSE
         i_D;
	
  o_A <= '1' WHEN (i_sel = "00") ELSE	'0';
  o_B <= '1' WHEN (i_sel = "01") ELSE	'0';
  o_C <= '1' WHEN (i_sel = "10") ELSE	'0';
  o_D <= '1' WHEN (i_sel = "11") ELSE	'0';
END arch_1;