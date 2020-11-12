------------------------------------------------
-- CONTADOR
------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.STD_LOGIC_UNSIGNED.ALL;

ENTITY contador IS
  PORT (
    i_CLR : IN std_logic; 
    i_CLK    : IN std_logic;   
    o_contador: out std_logic_vector(15 downto 0) 	     
  );
END contador;
ARCHITECTURE rtl OF contador IS

  SIGNAL w_COUNTER : std_logic_vector(15 DOWNTO 0) := "0000000000000000";
  
BEGIN
  PROCESS (i_CLR, i_CLK)
  BEGIN
    IF (i_CLR = '1') THEN           
      w_COUNTER <= "0000000000000000";      
    ELSIF (rising_edge(i_CLK)) THEN   
      w_COUNTER <= w_COUNTER + "1";       		      
    END IF;
  END PROCESS;
  
  o_contador <=w_COUNTER;             


END rtl;