------------------------------------------------
-- Design: tdm_top
-- Entity: tdm_top 
-- Author: JOAO MARCELO E JOSE TOMAZELLI
-- Rev.  : 1.0
-- Date  : 22/09/2020
------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.STD_LOGIC_UNSIGNED.ALL;

ENTITY TDM_top IS
	PORT (
		i_CLK   : IN std_logic; 		
		i_FRAME1 : IN std_logic_vector(15 DOWNTO 0); 
		i_FRAME2 : IN std_logic_vector(15 DOWNTO 0); 
		i_FRAME3 : IN std_logic_vector(15 DOWNTO 0); 
		i_FRAME4 : IN std_logic_vector(15 DOWNTO 0); 
		i_TIME  : in std_logic_vector(15 downto 0);   
		o_FRAME : OUT std_logic_vector(15 DOWNTO 0);  
		o_A : OUT std_logic;
		o_B : OUT std_logic;
		o_C : OUT std_logic;
		o_D : OUT std_logic		
	);
END TDM_top;

ARCHITECTURE rtl OF TDM_top IS

	COMPONENT contador IS
	  PORT (
       i_CLR : IN std_logic; 
       i_CLK : IN std_logic; 
       o_contador: out std_logic_vector(15 downto 0) 
	  );
   END COMPONENT;

	COMPONENT mux4x1 IS
	  PORT (
  	    i_SEL : IN std_logic_vector(1 DOWNTO 0); 	 
		 i_A : IN std_logic_Vector(15 DOWNTO 0); 
		 i_B : IN std_logic_Vector(15 DOWNTO 0); 
		 i_C : IN std_logic_Vector(15 DOWNTO 0); 
		 i_D : IN std_logic_Vector(15 DOWNTO 0); 
		 o_Q : OUT std_logic_Vector(15 DOWNTO 0); 
		 o_A : OUT std_logic;
		 o_B : OUT std_logic;
		 o_C : OUT std_logic;
		 o_D : OUT std_logic);
	END COMPONENT;

	COMPONENT comparador IS
		port (
       i_CLK       : in std_logic;
       i_TEMPO_MAx : in  std_logic_vector(15 downto 0);  
       i_CONTADOR  : in  std_logic_vector(15 downto 0);  
		 o_RESET_CNT : out std_logic; 
		 o_SEL       : out std_logic_vector(1 downto 0));        
   END COMPONENT;



	SIGNAL w_i_sel : std_logic_vector(1 downto 0);
	SIGNAL w_contador : std_logic_vector(15 downto 0);	
	SIGNAL w_reset : std_logic;
	
BEGIN

	u_contador : contador PORT MAP(
		 i_CLR => w_reset,
		 i_CLK => i_CLK,
		 o_contador => w_contador
	);

	
	u_comparador : comparador PORT MAP(
	    i_CLK       => i_CLK,
		 i_TEMPO_MAx => i_TIME,
       i_CONTADOR  => w_contador,
		 o_RESET_CNT => w_reset,
		 o_SEL       => w_i_sel
	);
	
	u_mux4x1 :	mux4x1 PORT MAP(
		 i_SEL  => w_i_sel,		 
		 i_A    => i_FRAME1,
		 i_B    => i_FRAME2,
		 i_C    => i_FRAME3,
		 i_D    => i_FRAME4,
		 o_Q    => o_FRAME,
		 o_A    => o_A,
		 o_B    => o_B,
		 o_C    => o_C,	
	    o_D    => o_D	 
	);

END rtl;