-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "11/11/2020 21:40:08"

-- 
-- Device: Altera EP4CE6F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TDM_top IS
    PORT (
	i_CLK : IN std_logic;
	i_FRAME1 : IN std_logic_vector(15 DOWNTO 0);
	i_FRAME2 : IN std_logic_vector(15 DOWNTO 0);
	i_FRAME3 : IN std_logic_vector(15 DOWNTO 0);
	i_FRAME4 : IN std_logic_vector(15 DOWNTO 0);
	i_TIME : IN std_logic_vector(15 DOWNTO 0);
	o_FRAME : OUT std_logic_vector(15 DOWNTO 0);
	o_A : OUT std_logic;
	o_B : OUT std_logic;
	o_C : OUT std_logic;
	o_D : OUT std_logic
	);
END TDM_top;

-- Design Ports Information
-- o_FRAME[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_FRAME[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_FRAME[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_FRAME[3]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_FRAME[4]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_FRAME[5]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_FRAME[6]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_FRAME[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_FRAME[8]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_FRAME[9]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_FRAME[10]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_FRAME[11]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_FRAME[12]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_FRAME[13]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_FRAME[14]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_FRAME[15]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_A	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_B	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_C	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_D	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME3[0]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME2[0]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME1[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME4[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME2[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME3[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME1[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME4[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME3[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME2[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME1[2]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME4[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME2[3]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME3[3]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME1[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME4[3]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME3[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME2[4]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME4[4]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME2[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME3[5]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME1[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME4[5]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME3[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME2[6]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME1[6]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME4[6]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME2[7]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME3[7]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME1[7]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME4[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME3[8]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME2[8]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME1[8]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME4[8]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME2[9]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME3[9]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME1[9]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME4[9]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME3[10]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME2[10]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME1[10]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME4[10]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME2[11]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME3[11]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME1[11]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME4[11]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME3[12]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME2[12]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME1[12]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME4[12]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME2[13]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME3[13]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME1[13]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME4[13]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME3[14]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME2[14]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME1[14]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME4[14]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME2[15]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME3[15]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME1[15]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_FRAME4[15]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TIME[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TIME[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TIME[2]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TIME[3]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TIME[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TIME[5]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TIME[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TIME[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TIME[8]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TIME[9]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TIME[11]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TIME[10]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TIME[12]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TIME[13]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TIME[14]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TIME[15]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TDM_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_CLK : std_logic;
SIGNAL ww_i_FRAME1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_i_FRAME2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_i_FRAME3 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_i_FRAME4 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_i_TIME : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_FRAME : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_A : std_logic;
SIGNAL ww_o_B : std_logic;
SIGNAL ww_o_C : std_logic;
SIGNAL ww_o_D : std_logic;
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_FRAME[0]~output_o\ : std_logic;
SIGNAL \o_FRAME[1]~output_o\ : std_logic;
SIGNAL \o_FRAME[2]~output_o\ : std_logic;
SIGNAL \o_FRAME[3]~output_o\ : std_logic;
SIGNAL \o_FRAME[4]~output_o\ : std_logic;
SIGNAL \o_FRAME[5]~output_o\ : std_logic;
SIGNAL \o_FRAME[6]~output_o\ : std_logic;
SIGNAL \o_FRAME[7]~output_o\ : std_logic;
SIGNAL \o_FRAME[8]~output_o\ : std_logic;
SIGNAL \o_FRAME[9]~output_o\ : std_logic;
SIGNAL \o_FRAME[10]~output_o\ : std_logic;
SIGNAL \o_FRAME[11]~output_o\ : std_logic;
SIGNAL \o_FRAME[12]~output_o\ : std_logic;
SIGNAL \o_FRAME[13]~output_o\ : std_logic;
SIGNAL \o_FRAME[14]~output_o\ : std_logic;
SIGNAL \o_FRAME[15]~output_o\ : std_logic;
SIGNAL \o_A~output_o\ : std_logic;
SIGNAL \o_B~output_o\ : std_logic;
SIGNAL \o_C~output_o\ : std_logic;
SIGNAL \o_D~output_o\ : std_logic;
SIGNAL \i_FRAME4[0]~input_o\ : std_logic;
SIGNAL \i_FRAME3[0]~input_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_TIME[14]~input_o\ : std_logic;
SIGNAL \i_TIME[13]~input_o\ : std_logic;
SIGNAL \i_TIME[12]~input_o\ : std_logic;
SIGNAL \i_TIME[11]~input_o\ : std_logic;
SIGNAL \i_TIME[10]~input_o\ : std_logic;
SIGNAL \i_TIME[9]~input_o\ : std_logic;
SIGNAL \i_TIME[8]~input_o\ : std_logic;
SIGNAL \i_TIME[7]~input_o\ : std_logic;
SIGNAL \i_TIME[6]~input_o\ : std_logic;
SIGNAL \i_TIME[5]~input_o\ : std_logic;
SIGNAL \i_TIME[4]~input_o\ : std_logic;
SIGNAL \i_TIME[3]~input_o\ : std_logic;
SIGNAL \i_TIME[2]~input_o\ : std_logic;
SIGNAL \i_TIME[1]~input_o\ : std_logic;
SIGNAL \i_TIME[0]~input_o\ : std_logic;
SIGNAL \u_comparador|Add0~1\ : std_logic;
SIGNAL \u_comparador|Add0~3\ : std_logic;
SIGNAL \u_comparador|Add0~5\ : std_logic;
SIGNAL \u_comparador|Add0~7\ : std_logic;
SIGNAL \u_comparador|Add0~9\ : std_logic;
SIGNAL \u_comparador|Add0~11\ : std_logic;
SIGNAL \u_comparador|Add0~13\ : std_logic;
SIGNAL \u_comparador|Add0~15\ : std_logic;
SIGNAL \u_comparador|Add0~17\ : std_logic;
SIGNAL \u_comparador|Add0~19\ : std_logic;
SIGNAL \u_comparador|Add0~21\ : std_logic;
SIGNAL \u_comparador|Add0~23\ : std_logic;
SIGNAL \u_comparador|Add0~25\ : std_logic;
SIGNAL \u_comparador|Add0~27\ : std_logic;
SIGNAL \u_comparador|Add0~28_combout\ : std_logic;
SIGNAL \i_TIME[15]~input_o\ : std_logic;
SIGNAL \u_comparador|Add0~29\ : std_logic;
SIGNAL \u_comparador|Add0~30_combout\ : std_logic;
SIGNAL \u_contador|w_COUNTER[0]~45_combout\ : std_logic;
SIGNAL \u_comparador|Equal1~8_combout\ : std_logic;
SIGNAL \u_contador|w_COUNTER[14]~42\ : std_logic;
SIGNAL \u_contador|w_COUNTER[15]~43_combout\ : std_logic;
SIGNAL \u_comparador|Equal1~9_combout\ : std_logic;
SIGNAL \u_comparador|Equal1~3_combout\ : std_logic;
SIGNAL \u_contador|w_COUNTER[1]~15_combout\ : std_logic;
SIGNAL \u_comparador|Equal1~0_combout\ : std_logic;
SIGNAL \u_comparador|Equal1~1_combout\ : std_logic;
SIGNAL \u_comparador|Equal1~2_combout\ : std_logic;
SIGNAL \u_comparador|Equal1~4_combout\ : std_logic;
SIGNAL \u_comparador|Equal1~6_combout\ : std_logic;
SIGNAL \u_comparador|Equal1~5_combout\ : std_logic;
SIGNAL \u_comparador|Equal1~7_combout\ : std_logic;
SIGNAL \u_comparador|Equal1~10_combout\ : std_logic;
SIGNAL \u_contador|w_COUNTER[1]~16\ : std_logic;
SIGNAL \u_contador|w_COUNTER[2]~17_combout\ : std_logic;
SIGNAL \u_contador|w_COUNTER[2]~18\ : std_logic;
SIGNAL \u_contador|w_COUNTER[3]~19_combout\ : std_logic;
SIGNAL \u_contador|w_COUNTER[3]~20\ : std_logic;
SIGNAL \u_contador|w_COUNTER[4]~21_combout\ : std_logic;
SIGNAL \u_contador|w_COUNTER[4]~22\ : std_logic;
SIGNAL \u_contador|w_COUNTER[5]~23_combout\ : std_logic;
SIGNAL \u_contador|w_COUNTER[5]~24\ : std_logic;
SIGNAL \u_contador|w_COUNTER[6]~25_combout\ : std_logic;
SIGNAL \u_contador|w_COUNTER[6]~26\ : std_logic;
SIGNAL \u_contador|w_COUNTER[7]~27_combout\ : std_logic;
SIGNAL \u_contador|w_COUNTER[7]~28\ : std_logic;
SIGNAL \u_contador|w_COUNTER[8]~29_combout\ : std_logic;
SIGNAL \u_contador|w_COUNTER[8]~30\ : std_logic;
SIGNAL \u_contador|w_COUNTER[9]~31_combout\ : std_logic;
SIGNAL \u_contador|w_COUNTER[9]~32\ : std_logic;
SIGNAL \u_contador|w_COUNTER[10]~33_combout\ : std_logic;
SIGNAL \u_contador|w_COUNTER[10]~34\ : std_logic;
SIGNAL \u_contador|w_COUNTER[11]~35_combout\ : std_logic;
SIGNAL \u_contador|w_COUNTER[11]~36\ : std_logic;
SIGNAL \u_contador|w_COUNTER[12]~37_combout\ : std_logic;
SIGNAL \u_contador|w_COUNTER[12]~38\ : std_logic;
SIGNAL \u_contador|w_COUNTER[13]~39_combout\ : std_logic;
SIGNAL \u_contador|w_COUNTER[13]~40\ : std_logic;
SIGNAL \u_contador|w_COUNTER[14]~41_combout\ : std_logic;
SIGNAL \u_comparador|Equal0~9_combout\ : std_logic;
SIGNAL \u_comparador|Add0~26_combout\ : std_logic;
SIGNAL \u_comparador|Add0~24_combout\ : std_logic;
SIGNAL \u_comparador|Equal0~8_combout\ : std_logic;
SIGNAL \u_comparador|Add0~22_combout\ : std_logic;
SIGNAL \u_comparador|Add0~20_combout\ : std_logic;
SIGNAL \u_comparador|Equal0~6_combout\ : std_logic;
SIGNAL \u_comparador|Add0~18_combout\ : std_logic;
SIGNAL \u_comparador|Add0~16_combout\ : std_logic;
SIGNAL \u_comparador|Equal0~5_combout\ : std_logic;
SIGNAL \u_comparador|Equal0~7_combout\ : std_logic;
SIGNAL \u_comparador|Add0~2_combout\ : std_logic;
SIGNAL \u_comparador|Add0~0_combout\ : std_logic;
SIGNAL \u_comparador|Equal0~0_combout\ : std_logic;
SIGNAL \u_comparador|Add0~8_combout\ : std_logic;
SIGNAL \u_comparador|Add0~10_combout\ : std_logic;
SIGNAL \u_comparador|Equal0~2_combout\ : std_logic;
SIGNAL \u_comparador|Add0~4_combout\ : std_logic;
SIGNAL \u_comparador|Add0~6_combout\ : std_logic;
SIGNAL \u_comparador|Equal0~1_combout\ : std_logic;
SIGNAL \u_comparador|Add0~14_combout\ : std_logic;
SIGNAL \u_comparador|Add0~12_combout\ : std_logic;
SIGNAL \u_comparador|Equal0~3_combout\ : std_logic;
SIGNAL \u_comparador|Equal0~4_combout\ : std_logic;
SIGNAL \u_comparador|Equal0~10_combout\ : std_logic;
SIGNAL \u_comparador|w_sel[0]~1_combout\ : std_logic;
SIGNAL \u_comparador|w_sel[1]~0_combout\ : std_logic;
SIGNAL \i_FRAME2[0]~input_o\ : std_logic;
SIGNAL \i_FRAME1[0]~input_o\ : std_logic;
SIGNAL \u_mux4x1|o_Q[0]~0_combout\ : std_logic;
SIGNAL \u_mux4x1|o_Q[0]~1_combout\ : std_logic;
SIGNAL \i_FRAME1[1]~input_o\ : std_logic;
SIGNAL \i_FRAME3[1]~input_o\ : std_logic;
SIGNAL \u_mux4x1|o_Q[1]~2_combout\ : std_logic;
SIGNAL \i_FRAME2[1]~input_o\ : std_logic;
SIGNAL \i_FRAME4[1]~input_o\ : std_logic;
SIGNAL \u_mux4x1|o_Q[1]~3_combout\ : std_logic;
SIGNAL \i_FRAME4[2]~input_o\ : std_logic;
SIGNAL \i_FRAME3[2]~input_o\ : std_logic;
SIGNAL \i_FRAME1[2]~input_o\ : std_logic;
SIGNAL \i_FRAME2[2]~input_o\ : std_logic;
SIGNAL \u_mux4x1|o_Q[2]~4_combout\ : std_logic;
SIGNAL \u_mux4x1|o_Q[2]~5_combout\ : std_logic;
SIGNAL \i_FRAME4[3]~input_o\ : std_logic;
SIGNAL \i_FRAME2[3]~input_o\ : std_logic;
SIGNAL \i_FRAME1[3]~input_o\ : std_logic;
SIGNAL \i_FRAME3[3]~input_o\ : std_logic;
SIGNAL \u_mux4x1|o_Q[3]~6_combout\ : std_logic;
SIGNAL \u_mux4x1|o_Q[3]~7_combout\ : std_logic;
SIGNAL \i_FRAME2[4]~input_o\ : std_logic;
SIGNAL \i_FRAME1[4]~input_o\ : std_logic;
SIGNAL \u_mux4x1|o_Q[4]~8_combout\ : std_logic;
SIGNAL \i_FRAME3[4]~input_o\ : std_logic;
SIGNAL \i_FRAME4[4]~input_o\ : std_logic;
SIGNAL \u_mux4x1|o_Q[4]~9_combout\ : std_logic;
SIGNAL \i_FRAME4[5]~input_o\ : std_logic;
SIGNAL \i_FRAME1[5]~input_o\ : std_logic;
SIGNAL \i_FRAME3[5]~input_o\ : std_logic;
SIGNAL \u_mux4x1|o_Q[5]~10_combout\ : std_logic;
SIGNAL \i_FRAME2[5]~input_o\ : std_logic;
SIGNAL \u_mux4x1|o_Q[5]~11_combout\ : std_logic;
SIGNAL \i_FRAME3[6]~input_o\ : std_logic;
SIGNAL \i_FRAME4[6]~input_o\ : std_logic;
SIGNAL \i_FRAME1[6]~input_o\ : std_logic;
SIGNAL \i_FRAME2[6]~input_o\ : std_logic;
SIGNAL \u_mux4x1|o_Q[6]~12_combout\ : std_logic;
SIGNAL \u_mux4x1|o_Q[6]~13_combout\ : std_logic;
SIGNAL \i_FRAME2[7]~input_o\ : std_logic;
SIGNAL \i_FRAME3[7]~input_o\ : std_logic;
SIGNAL \i_FRAME1[7]~input_o\ : std_logic;
SIGNAL \u_mux4x1|o_Q[7]~14_combout\ : std_logic;
SIGNAL \i_FRAME4[7]~input_o\ : std_logic;
SIGNAL \u_mux4x1|o_Q[7]~15_combout\ : std_logic;
SIGNAL \i_FRAME4[8]~input_o\ : std_logic;
SIGNAL \i_FRAME1[8]~input_o\ : std_logic;
SIGNAL \i_FRAME2[8]~input_o\ : std_logic;
SIGNAL \u_mux4x1|o_Q[8]~16_combout\ : std_logic;
SIGNAL \i_FRAME3[8]~input_o\ : std_logic;
SIGNAL \u_mux4x1|o_Q[8]~17_combout\ : std_logic;
SIGNAL \i_FRAME2[9]~input_o\ : std_logic;
SIGNAL \i_FRAME3[9]~input_o\ : std_logic;
SIGNAL \i_FRAME1[9]~input_o\ : std_logic;
SIGNAL \u_mux4x1|o_Q[9]~18_combout\ : std_logic;
SIGNAL \i_FRAME4[9]~input_o\ : std_logic;
SIGNAL \u_mux4x1|o_Q[9]~19_combout\ : std_logic;
SIGNAL \i_FRAME3[10]~input_o\ : std_logic;
SIGNAL \i_FRAME2[10]~input_o\ : std_logic;
SIGNAL \i_FRAME1[10]~input_o\ : std_logic;
SIGNAL \u_mux4x1|o_Q[10]~20_combout\ : std_logic;
SIGNAL \i_FRAME4[10]~input_o\ : std_logic;
SIGNAL \u_mux4x1|o_Q[10]~21_combout\ : std_logic;
SIGNAL \i_FRAME4[11]~input_o\ : std_logic;
SIGNAL \i_FRAME2[11]~input_o\ : std_logic;
SIGNAL \i_FRAME3[11]~input_o\ : std_logic;
SIGNAL \i_FRAME1[11]~input_o\ : std_logic;
SIGNAL \u_mux4x1|o_Q[11]~22_combout\ : std_logic;
SIGNAL \u_mux4x1|o_Q[11]~23_combout\ : std_logic;
SIGNAL \i_FRAME3[12]~input_o\ : std_logic;
SIGNAL \i_FRAME1[12]~input_o\ : std_logic;
SIGNAL \i_FRAME2[12]~input_o\ : std_logic;
SIGNAL \u_mux4x1|o_Q[12]~24_combout\ : std_logic;
SIGNAL \i_FRAME4[12]~input_o\ : std_logic;
SIGNAL \u_mux4x1|o_Q[12]~25_combout\ : std_logic;
SIGNAL \i_FRAME4[13]~input_o\ : std_logic;
SIGNAL \i_FRAME3[13]~input_o\ : std_logic;
SIGNAL \i_FRAME1[13]~input_o\ : std_logic;
SIGNAL \u_mux4x1|o_Q[13]~26_combout\ : std_logic;
SIGNAL \i_FRAME2[13]~input_o\ : std_logic;
SIGNAL \u_mux4x1|o_Q[13]~27_combout\ : std_logic;
SIGNAL \i_FRAME4[14]~input_o\ : std_logic;
SIGNAL \i_FRAME1[14]~input_o\ : std_logic;
SIGNAL \i_FRAME2[14]~input_o\ : std_logic;
SIGNAL \u_mux4x1|o_Q[14]~28_combout\ : std_logic;
SIGNAL \i_FRAME3[14]~input_o\ : std_logic;
SIGNAL \u_mux4x1|o_Q[14]~29_combout\ : std_logic;
SIGNAL \i_FRAME1[15]~input_o\ : std_logic;
SIGNAL \i_FRAME3[15]~input_o\ : std_logic;
SIGNAL \u_mux4x1|o_Q[15]~30_combout\ : std_logic;
SIGNAL \i_FRAME2[15]~input_o\ : std_logic;
SIGNAL \i_FRAME4[15]~input_o\ : std_logic;
SIGNAL \u_mux4x1|o_Q[15]~31_combout\ : std_logic;
SIGNAL \u_mux4x1|Equal2~0_combout\ : std_logic;
SIGNAL \u_mux4x1|Equal1~0_combout\ : std_logic;
SIGNAL \u_mux4x1|Equal1~1_combout\ : std_logic;
SIGNAL \u_mux4x1|Equal1~2_combout\ : std_logic;
SIGNAL \u_contador|w_COUNTER\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_comparador|w_sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_comparador|ALT_INV_Equal1~10_combout\ : std_logic;
SIGNAL \u_mux4x1|ALT_INV_Equal2~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_CLK <= i_CLK;
ww_i_FRAME1 <= i_FRAME1;
ww_i_FRAME2 <= i_FRAME2;
ww_i_FRAME3 <= i_FRAME3;
ww_i_FRAME4 <= i_FRAME4;
ww_i_TIME <= i_TIME;
o_FRAME <= ww_o_FRAME;
o_A <= ww_o_A;
o_B <= ww_o_B;
o_C <= ww_o_C;
o_D <= ww_o_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);
\u_comparador|ALT_INV_Equal1~10_combout\ <= NOT \u_comparador|Equal1~10_combout\;
\u_mux4x1|ALT_INV_Equal2~0_combout\ <= NOT \u_mux4x1|Equal2~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X28_Y24_N23
\o_FRAME[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux4x1|o_Q[0]~1_combout\,
	devoe => ww_devoe,
	o => \o_FRAME[0]~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\o_FRAME[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux4x1|o_Q[1]~3_combout\,
	devoe => ww_devoe,
	o => \o_FRAME[1]~output_o\);

-- Location: IOOBUF_X11_Y24_N23
\o_FRAME[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux4x1|o_Q[2]~5_combout\,
	devoe => ww_devoe,
	o => \o_FRAME[2]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\o_FRAME[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux4x1|o_Q[3]~7_combout\,
	devoe => ww_devoe,
	o => \o_FRAME[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\o_FRAME[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux4x1|o_Q[4]~9_combout\,
	devoe => ww_devoe,
	o => \o_FRAME[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\o_FRAME[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux4x1|o_Q[5]~11_combout\,
	devoe => ww_devoe,
	o => \o_FRAME[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\o_FRAME[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux4x1|o_Q[6]~13_combout\,
	devoe => ww_devoe,
	o => \o_FRAME[6]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\o_FRAME[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux4x1|o_Q[7]~15_combout\,
	devoe => ww_devoe,
	o => \o_FRAME[7]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\o_FRAME[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux4x1|o_Q[8]~17_combout\,
	devoe => ww_devoe,
	o => \o_FRAME[8]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\o_FRAME[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux4x1|o_Q[9]~19_combout\,
	devoe => ww_devoe,
	o => \o_FRAME[9]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\o_FRAME[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux4x1|o_Q[10]~21_combout\,
	devoe => ww_devoe,
	o => \o_FRAME[10]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\o_FRAME[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux4x1|o_Q[11]~23_combout\,
	devoe => ww_devoe,
	o => \o_FRAME[11]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\o_FRAME[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux4x1|o_Q[12]~25_combout\,
	devoe => ww_devoe,
	o => \o_FRAME[12]~output_o\);

-- Location: IOOBUF_X3_Y24_N2
\o_FRAME[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux4x1|o_Q[13]~27_combout\,
	devoe => ww_devoe,
	o => \o_FRAME[13]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\o_FRAME[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux4x1|o_Q[14]~29_combout\,
	devoe => ww_devoe,
	o => \o_FRAME[14]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\o_FRAME[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux4x1|o_Q[15]~31_combout\,
	devoe => ww_devoe,
	o => \o_FRAME[15]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\o_A~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux4x1|ALT_INV_Equal2~0_combout\,
	devoe => ww_devoe,
	o => \o_A~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\o_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux4x1|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \o_B~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\o_C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux4x1|Equal1~1_combout\,
	devoe => ww_devoe,
	o => \o_C~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\o_D~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux4x1|Equal1~2_combout\,
	devoe => ww_devoe,
	o => \o_D~output_o\);

-- Location: IOIBUF_X21_Y0_N1
\i_FRAME4[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME4(0),
	o => \i_FRAME4[0]~input_o\);

-- Location: IOIBUF_X25_Y0_N8
\i_FRAME3[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME3(0),
	o => \i_FRAME3[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\i_CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLK,
	o => \i_CLK~input_o\);

-- Location: CLKCTRL_G2
\i_CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y9_N1
\i_TIME[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TIME(14),
	o => \i_TIME[14]~input_o\);

-- Location: IOIBUF_X7_Y24_N1
\i_TIME[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TIME(13),
	o => \i_TIME[13]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\i_TIME[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TIME(12),
	o => \i_TIME[12]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\i_TIME[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TIME(11),
	o => \i_TIME[11]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\i_TIME[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TIME(10),
	o => \i_TIME[10]~input_o\);

-- Location: IOIBUF_X9_Y24_N22
\i_TIME[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TIME(9),
	o => \i_TIME[9]~input_o\);

-- Location: IOIBUF_X0_Y8_N8
\i_TIME[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TIME(8),
	o => \i_TIME[8]~input_o\);

-- Location: IOIBUF_X11_Y24_N8
\i_TIME[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TIME(7),
	o => \i_TIME[7]~input_o\);

-- Location: IOIBUF_X11_Y24_N1
\i_TIME[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TIME(6),
	o => \i_TIME[6]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\i_TIME[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TIME(5),
	o => \i_TIME[5]~input_o\);

-- Location: IOIBUF_X0_Y19_N1
\i_TIME[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TIME(4),
	o => \i_TIME[4]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\i_TIME[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TIME(3),
	o => \i_TIME[3]~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\i_TIME[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TIME(2),
	o => \i_TIME[2]~input_o\);

-- Location: IOIBUF_X0_Y10_N1
\i_TIME[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TIME(1),
	o => \i_TIME[1]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\i_TIME[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TIME(0),
	o => \i_TIME[0]~input_o\);

-- Location: LCCOMB_X12_Y15_N0
\u_comparador|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Add0~0_combout\ = \i_TIME[0]~input_o\ $ (VCC)
-- \u_comparador|Add0~1\ = CARRY(\i_TIME[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_TIME[0]~input_o\,
	datad => VCC,
	combout => \u_comparador|Add0~0_combout\,
	cout => \u_comparador|Add0~1\);

-- Location: LCCOMB_X12_Y15_N2
\u_comparador|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Add0~2_combout\ = (\i_TIME[1]~input_o\ & (\u_comparador|Add0~1\ & VCC)) # (!\i_TIME[1]~input_o\ & (!\u_comparador|Add0~1\))
-- \u_comparador|Add0~3\ = CARRY((!\i_TIME[1]~input_o\ & !\u_comparador|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_TIME[1]~input_o\,
	datad => VCC,
	cin => \u_comparador|Add0~1\,
	combout => \u_comparador|Add0~2_combout\,
	cout => \u_comparador|Add0~3\);

-- Location: LCCOMB_X12_Y15_N4
\u_comparador|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Add0~4_combout\ = (\i_TIME[2]~input_o\ & ((GND) # (!\u_comparador|Add0~3\))) # (!\i_TIME[2]~input_o\ & (\u_comparador|Add0~3\ $ (GND)))
-- \u_comparador|Add0~5\ = CARRY((\i_TIME[2]~input_o\) # (!\u_comparador|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_TIME[2]~input_o\,
	datad => VCC,
	cin => \u_comparador|Add0~3\,
	combout => \u_comparador|Add0~4_combout\,
	cout => \u_comparador|Add0~5\);

-- Location: LCCOMB_X12_Y15_N6
\u_comparador|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Add0~6_combout\ = (\i_TIME[3]~input_o\ & (\u_comparador|Add0~5\ & VCC)) # (!\i_TIME[3]~input_o\ & (!\u_comparador|Add0~5\))
-- \u_comparador|Add0~7\ = CARRY((!\i_TIME[3]~input_o\ & !\u_comparador|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_TIME[3]~input_o\,
	datad => VCC,
	cin => \u_comparador|Add0~5\,
	combout => \u_comparador|Add0~6_combout\,
	cout => \u_comparador|Add0~7\);

-- Location: LCCOMB_X12_Y15_N8
\u_comparador|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Add0~8_combout\ = (\i_TIME[4]~input_o\ & ((GND) # (!\u_comparador|Add0~7\))) # (!\i_TIME[4]~input_o\ & (\u_comparador|Add0~7\ $ (GND)))
-- \u_comparador|Add0~9\ = CARRY((\i_TIME[4]~input_o\) # (!\u_comparador|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_TIME[4]~input_o\,
	datad => VCC,
	cin => \u_comparador|Add0~7\,
	combout => \u_comparador|Add0~8_combout\,
	cout => \u_comparador|Add0~9\);

-- Location: LCCOMB_X12_Y15_N10
\u_comparador|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Add0~10_combout\ = (\i_TIME[5]~input_o\ & (\u_comparador|Add0~9\ & VCC)) # (!\i_TIME[5]~input_o\ & (!\u_comparador|Add0~9\))
-- \u_comparador|Add0~11\ = CARRY((!\i_TIME[5]~input_o\ & !\u_comparador|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_TIME[5]~input_o\,
	datad => VCC,
	cin => \u_comparador|Add0~9\,
	combout => \u_comparador|Add0~10_combout\,
	cout => \u_comparador|Add0~11\);

-- Location: LCCOMB_X12_Y15_N12
\u_comparador|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Add0~12_combout\ = (\i_TIME[6]~input_o\ & ((GND) # (!\u_comparador|Add0~11\))) # (!\i_TIME[6]~input_o\ & (\u_comparador|Add0~11\ $ (GND)))
-- \u_comparador|Add0~13\ = CARRY((\i_TIME[6]~input_o\) # (!\u_comparador|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_TIME[6]~input_o\,
	datad => VCC,
	cin => \u_comparador|Add0~11\,
	combout => \u_comparador|Add0~12_combout\,
	cout => \u_comparador|Add0~13\);

-- Location: LCCOMB_X12_Y15_N14
\u_comparador|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Add0~14_combout\ = (\i_TIME[7]~input_o\ & (\u_comparador|Add0~13\ & VCC)) # (!\i_TIME[7]~input_o\ & (!\u_comparador|Add0~13\))
-- \u_comparador|Add0~15\ = CARRY((!\i_TIME[7]~input_o\ & !\u_comparador|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_TIME[7]~input_o\,
	datad => VCC,
	cin => \u_comparador|Add0~13\,
	combout => \u_comparador|Add0~14_combout\,
	cout => \u_comparador|Add0~15\);

-- Location: LCCOMB_X12_Y15_N16
\u_comparador|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Add0~16_combout\ = (\i_TIME[8]~input_o\ & ((GND) # (!\u_comparador|Add0~15\))) # (!\i_TIME[8]~input_o\ & (\u_comparador|Add0~15\ $ (GND)))
-- \u_comparador|Add0~17\ = CARRY((\i_TIME[8]~input_o\) # (!\u_comparador|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_TIME[8]~input_o\,
	datad => VCC,
	cin => \u_comparador|Add0~15\,
	combout => \u_comparador|Add0~16_combout\,
	cout => \u_comparador|Add0~17\);

-- Location: LCCOMB_X12_Y15_N18
\u_comparador|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Add0~18_combout\ = (\i_TIME[9]~input_o\ & (\u_comparador|Add0~17\ & VCC)) # (!\i_TIME[9]~input_o\ & (!\u_comparador|Add0~17\))
-- \u_comparador|Add0~19\ = CARRY((!\i_TIME[9]~input_o\ & !\u_comparador|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_TIME[9]~input_o\,
	datad => VCC,
	cin => \u_comparador|Add0~17\,
	combout => \u_comparador|Add0~18_combout\,
	cout => \u_comparador|Add0~19\);

-- Location: LCCOMB_X12_Y15_N20
\u_comparador|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Add0~20_combout\ = (\i_TIME[10]~input_o\ & ((GND) # (!\u_comparador|Add0~19\))) # (!\i_TIME[10]~input_o\ & (\u_comparador|Add0~19\ $ (GND)))
-- \u_comparador|Add0~21\ = CARRY((\i_TIME[10]~input_o\) # (!\u_comparador|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_TIME[10]~input_o\,
	datad => VCC,
	cin => \u_comparador|Add0~19\,
	combout => \u_comparador|Add0~20_combout\,
	cout => \u_comparador|Add0~21\);

-- Location: LCCOMB_X12_Y15_N22
\u_comparador|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Add0~22_combout\ = (\i_TIME[11]~input_o\ & (\u_comparador|Add0~21\ & VCC)) # (!\i_TIME[11]~input_o\ & (!\u_comparador|Add0~21\))
-- \u_comparador|Add0~23\ = CARRY((!\i_TIME[11]~input_o\ & !\u_comparador|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_TIME[11]~input_o\,
	datad => VCC,
	cin => \u_comparador|Add0~21\,
	combout => \u_comparador|Add0~22_combout\,
	cout => \u_comparador|Add0~23\);

-- Location: LCCOMB_X12_Y15_N24
\u_comparador|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Add0~24_combout\ = (\i_TIME[12]~input_o\ & ((GND) # (!\u_comparador|Add0~23\))) # (!\i_TIME[12]~input_o\ & (\u_comparador|Add0~23\ $ (GND)))
-- \u_comparador|Add0~25\ = CARRY((\i_TIME[12]~input_o\) # (!\u_comparador|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_TIME[12]~input_o\,
	datad => VCC,
	cin => \u_comparador|Add0~23\,
	combout => \u_comparador|Add0~24_combout\,
	cout => \u_comparador|Add0~25\);

-- Location: LCCOMB_X12_Y15_N26
\u_comparador|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Add0~26_combout\ = (\i_TIME[13]~input_o\ & (\u_comparador|Add0~25\ & VCC)) # (!\i_TIME[13]~input_o\ & (!\u_comparador|Add0~25\))
-- \u_comparador|Add0~27\ = CARRY((!\i_TIME[13]~input_o\ & !\u_comparador|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_TIME[13]~input_o\,
	datad => VCC,
	cin => \u_comparador|Add0~25\,
	combout => \u_comparador|Add0~26_combout\,
	cout => \u_comparador|Add0~27\);

-- Location: LCCOMB_X12_Y15_N28
\u_comparador|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Add0~28_combout\ = (\i_TIME[14]~input_o\ & ((GND) # (!\u_comparador|Add0~27\))) # (!\i_TIME[14]~input_o\ & (\u_comparador|Add0~27\ $ (GND)))
-- \u_comparador|Add0~29\ = CARRY((\i_TIME[14]~input_o\) # (!\u_comparador|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_TIME[14]~input_o\,
	datad => VCC,
	cin => \u_comparador|Add0~27\,
	combout => \u_comparador|Add0~28_combout\,
	cout => \u_comparador|Add0~29\);

-- Location: IOIBUF_X0_Y19_N15
\i_TIME[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TIME(15),
	o => \i_TIME[15]~input_o\);

-- Location: LCCOMB_X12_Y15_N30
\u_comparador|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Add0~30_combout\ = \i_TIME[15]~input_o\ $ (!\u_comparador|Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_TIME[15]~input_o\,
	cin => \u_comparador|Add0~29\,
	combout => \u_comparador|Add0~30_combout\);

-- Location: LCCOMB_X11_Y14_N16
\u_contador|w_COUNTER[0]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_contador|w_COUNTER[0]~45_combout\ = !\u_contador|w_COUNTER\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_contador|w_COUNTER\(0),
	combout => \u_contador|w_COUNTER[0]~45_combout\);

-- Location: LCCOMB_X11_Y14_N22
\u_comparador|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Equal1~8_combout\ = (\i_TIME[12]~input_o\ & (\u_contador|w_COUNTER\(12) & (\u_contador|w_COUNTER\(13) $ (!\i_TIME[13]~input_o\)))) # (!\i_TIME[12]~input_o\ & (!\u_contador|w_COUNTER\(12) & (\u_contador|w_COUNTER\(13) $ 
-- (!\i_TIME[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_TIME[12]~input_o\,
	datab => \u_contador|w_COUNTER\(13),
	datac => \i_TIME[13]~input_o\,
	datad => \u_contador|w_COUNTER\(12),
	combout => \u_comparador|Equal1~8_combout\);

-- Location: LCCOMB_X12_Y14_N26
\u_contador|w_COUNTER[14]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_contador|w_COUNTER[14]~41_combout\ = (\u_contador|w_COUNTER\(14) & (!\u_contador|w_COUNTER[13]~40\)) # (!\u_contador|w_COUNTER\(14) & ((\u_contador|w_COUNTER[13]~40\) # (GND)))
-- \u_contador|w_COUNTER[14]~42\ = CARRY((!\u_contador|w_COUNTER[13]~40\) # (!\u_contador|w_COUNTER\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_contador|w_COUNTER\(14),
	datad => VCC,
	cin => \u_contador|w_COUNTER[13]~40\,
	combout => \u_contador|w_COUNTER[14]~41_combout\,
	cout => \u_contador|w_COUNTER[14]~42\);

-- Location: LCCOMB_X12_Y14_N28
\u_contador|w_COUNTER[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_contador|w_COUNTER[15]~43_combout\ = \u_contador|w_COUNTER[14]~42\ $ (!\u_contador|w_COUNTER\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_contador|w_COUNTER\(15),
	cin => \u_contador|w_COUNTER[14]~42\,
	combout => \u_contador|w_COUNTER[15]~43_combout\);

-- Location: FF_X12_Y14_N29
\u_contador|w_COUNTER[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \u_contador|w_COUNTER[15]~43_combout\,
	clrn => \u_comparador|ALT_INV_Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_contador|w_COUNTER\(15));

-- Location: LCCOMB_X11_Y14_N24
\u_comparador|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Equal1~9_combout\ = (\i_TIME[14]~input_o\ & (\u_contador|w_COUNTER\(14) & (\i_TIME[15]~input_o\ $ (!\u_contador|w_COUNTER\(15))))) # (!\i_TIME[14]~input_o\ & (!\u_contador|w_COUNTER\(14) & (\i_TIME[15]~input_o\ $ 
-- (!\u_contador|w_COUNTER\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_TIME[14]~input_o\,
	datab => \i_TIME[15]~input_o\,
	datac => \u_contador|w_COUNTER\(14),
	datad => \u_contador|w_COUNTER\(15),
	combout => \u_comparador|Equal1~9_combout\);

-- Location: LCCOMB_X12_Y14_N30
\u_comparador|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Equal1~3_combout\ = (\u_contador|w_COUNTER\(6) & (\i_TIME[6]~input_o\ & (\i_TIME[7]~input_o\ $ (!\u_contador|w_COUNTER\(7))))) # (!\u_contador|w_COUNTER\(6) & (!\i_TIME[6]~input_o\ & (\i_TIME[7]~input_o\ $ (!\u_contador|w_COUNTER\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_contador|w_COUNTER\(6),
	datab => \i_TIME[6]~input_o\,
	datac => \i_TIME[7]~input_o\,
	datad => \u_contador|w_COUNTER\(7),
	combout => \u_comparador|Equal1~3_combout\);

-- Location: LCCOMB_X12_Y14_N0
\u_contador|w_COUNTER[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_contador|w_COUNTER[1]~15_combout\ = (\u_contador|w_COUNTER\(0) & (\u_contador|w_COUNTER\(1) $ (VCC))) # (!\u_contador|w_COUNTER\(0) & (\u_contador|w_COUNTER\(1) & VCC))
-- \u_contador|w_COUNTER[1]~16\ = CARRY((\u_contador|w_COUNTER\(0) & \u_contador|w_COUNTER\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_contador|w_COUNTER\(0),
	datab => \u_contador|w_COUNTER\(1),
	datad => VCC,
	combout => \u_contador|w_COUNTER[1]~15_combout\,
	cout => \u_contador|w_COUNTER[1]~16\);

-- Location: FF_X12_Y14_N1
\u_contador|w_COUNTER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \u_contador|w_COUNTER[1]~15_combout\,
	clrn => \u_comparador|ALT_INV_Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_contador|w_COUNTER\(1));

-- Location: LCCOMB_X11_Y14_N2
\u_comparador|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Equal1~0_combout\ = (\i_TIME[0]~input_o\ & (\u_contador|w_COUNTER\(0) & (\i_TIME[1]~input_o\ $ (!\u_contador|w_COUNTER\(1))))) # (!\i_TIME[0]~input_o\ & (!\u_contador|w_COUNTER\(0) & (\i_TIME[1]~input_o\ $ (!\u_contador|w_COUNTER\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_TIME[0]~input_o\,
	datab => \i_TIME[1]~input_o\,
	datac => \u_contador|w_COUNTER\(1),
	datad => \u_contador|w_COUNTER\(0),
	combout => \u_comparador|Equal1~0_combout\);

-- Location: LCCOMB_X11_Y14_N4
\u_comparador|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Equal1~1_combout\ = (\i_TIME[3]~input_o\ & (\u_contador|w_COUNTER\(3) & (\i_TIME[2]~input_o\ $ (!\u_contador|w_COUNTER\(2))))) # (!\i_TIME[3]~input_o\ & (!\u_contador|w_COUNTER\(3) & (\i_TIME[2]~input_o\ $ (!\u_contador|w_COUNTER\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_TIME[3]~input_o\,
	datab => \i_TIME[2]~input_o\,
	datac => \u_contador|w_COUNTER\(2),
	datad => \u_contador|w_COUNTER\(3),
	combout => \u_comparador|Equal1~1_combout\);

-- Location: LCCOMB_X11_Y14_N10
\u_comparador|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Equal1~2_combout\ = (\i_TIME[5]~input_o\ & (\u_contador|w_COUNTER\(5) & (\i_TIME[4]~input_o\ $ (!\u_contador|w_COUNTER\(4))))) # (!\i_TIME[5]~input_o\ & (!\u_contador|w_COUNTER\(5) & (\i_TIME[4]~input_o\ $ (!\u_contador|w_COUNTER\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_TIME[5]~input_o\,
	datab => \i_TIME[4]~input_o\,
	datac => \u_contador|w_COUNTER\(5),
	datad => \u_contador|w_COUNTER\(4),
	combout => \u_comparador|Equal1~2_combout\);

-- Location: LCCOMB_X11_Y14_N8
\u_comparador|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Equal1~4_combout\ = (\u_comparador|Equal1~3_combout\ & (\u_comparador|Equal1~0_combout\ & (\u_comparador|Equal1~1_combout\ & \u_comparador|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparador|Equal1~3_combout\,
	datab => \u_comparador|Equal1~0_combout\,
	datac => \u_comparador|Equal1~1_combout\,
	datad => \u_comparador|Equal1~2_combout\,
	combout => \u_comparador|Equal1~4_combout\);

-- Location: LCCOMB_X10_Y14_N30
\u_comparador|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Equal1~6_combout\ = \i_TIME[10]~input_o\ $ (\u_contador|w_COUNTER\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_TIME[10]~input_o\,
	datad => \u_contador|w_COUNTER\(10),
	combout => \u_comparador|Equal1~6_combout\);

-- Location: LCCOMB_X10_Y14_N16
\u_comparador|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Equal1~5_combout\ = (\i_TIME[9]~input_o\ & (\u_contador|w_COUNTER\(9) & (\i_TIME[8]~input_o\ $ (!\u_contador|w_COUNTER\(8))))) # (!\i_TIME[9]~input_o\ & (!\u_contador|w_COUNTER\(9) & (\i_TIME[8]~input_o\ $ (!\u_contador|w_COUNTER\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_TIME[9]~input_o\,
	datab => \i_TIME[8]~input_o\,
	datac => \u_contador|w_COUNTER\(9),
	datad => \u_contador|w_COUNTER\(8),
	combout => \u_comparador|Equal1~5_combout\);

-- Location: LCCOMB_X10_Y14_N20
\u_comparador|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Equal1~7_combout\ = (!\u_comparador|Equal1~6_combout\ & (\u_comparador|Equal1~5_combout\ & (\u_contador|w_COUNTER\(11) $ (!\i_TIME[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_contador|w_COUNTER\(11),
	datab => \i_TIME[11]~input_o\,
	datac => \u_comparador|Equal1~6_combout\,
	datad => \u_comparador|Equal1~5_combout\,
	combout => \u_comparador|Equal1~7_combout\);

-- Location: LCCOMB_X11_Y14_N6
\u_comparador|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Equal1~10_combout\ = (\u_comparador|Equal1~8_combout\ & (\u_comparador|Equal1~9_combout\ & (\u_comparador|Equal1~4_combout\ & \u_comparador|Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparador|Equal1~8_combout\,
	datab => \u_comparador|Equal1~9_combout\,
	datac => \u_comparador|Equal1~4_combout\,
	datad => \u_comparador|Equal1~7_combout\,
	combout => \u_comparador|Equal1~10_combout\);

-- Location: FF_X11_Y14_N17
\u_contador|w_COUNTER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \u_contador|w_COUNTER[0]~45_combout\,
	clrn => \u_comparador|ALT_INV_Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_contador|w_COUNTER\(0));

-- Location: LCCOMB_X12_Y14_N2
\u_contador|w_COUNTER[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_contador|w_COUNTER[2]~17_combout\ = (\u_contador|w_COUNTER\(2) & (!\u_contador|w_COUNTER[1]~16\)) # (!\u_contador|w_COUNTER\(2) & ((\u_contador|w_COUNTER[1]~16\) # (GND)))
-- \u_contador|w_COUNTER[2]~18\ = CARRY((!\u_contador|w_COUNTER[1]~16\) # (!\u_contador|w_COUNTER\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_contador|w_COUNTER\(2),
	datad => VCC,
	cin => \u_contador|w_COUNTER[1]~16\,
	combout => \u_contador|w_COUNTER[2]~17_combout\,
	cout => \u_contador|w_COUNTER[2]~18\);

-- Location: FF_X12_Y14_N3
\u_contador|w_COUNTER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \u_contador|w_COUNTER[2]~17_combout\,
	clrn => \u_comparador|ALT_INV_Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_contador|w_COUNTER\(2));

-- Location: LCCOMB_X12_Y14_N4
\u_contador|w_COUNTER[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_contador|w_COUNTER[3]~19_combout\ = (\u_contador|w_COUNTER\(3) & (\u_contador|w_COUNTER[2]~18\ $ (GND))) # (!\u_contador|w_COUNTER\(3) & (!\u_contador|w_COUNTER[2]~18\ & VCC))
-- \u_contador|w_COUNTER[3]~20\ = CARRY((\u_contador|w_COUNTER\(3) & !\u_contador|w_COUNTER[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_contador|w_COUNTER\(3),
	datad => VCC,
	cin => \u_contador|w_COUNTER[2]~18\,
	combout => \u_contador|w_COUNTER[3]~19_combout\,
	cout => \u_contador|w_COUNTER[3]~20\);

-- Location: FF_X12_Y14_N5
\u_contador|w_COUNTER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \u_contador|w_COUNTER[3]~19_combout\,
	clrn => \u_comparador|ALT_INV_Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_contador|w_COUNTER\(3));

-- Location: LCCOMB_X12_Y14_N6
\u_contador|w_COUNTER[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_contador|w_COUNTER[4]~21_combout\ = (\u_contador|w_COUNTER\(4) & (!\u_contador|w_COUNTER[3]~20\)) # (!\u_contador|w_COUNTER\(4) & ((\u_contador|w_COUNTER[3]~20\) # (GND)))
-- \u_contador|w_COUNTER[4]~22\ = CARRY((!\u_contador|w_COUNTER[3]~20\) # (!\u_contador|w_COUNTER\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_contador|w_COUNTER\(4),
	datad => VCC,
	cin => \u_contador|w_COUNTER[3]~20\,
	combout => \u_contador|w_COUNTER[4]~21_combout\,
	cout => \u_contador|w_COUNTER[4]~22\);

-- Location: FF_X12_Y14_N7
\u_contador|w_COUNTER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \u_contador|w_COUNTER[4]~21_combout\,
	clrn => \u_comparador|ALT_INV_Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_contador|w_COUNTER\(4));

-- Location: LCCOMB_X12_Y14_N8
\u_contador|w_COUNTER[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_contador|w_COUNTER[5]~23_combout\ = (\u_contador|w_COUNTER\(5) & (\u_contador|w_COUNTER[4]~22\ $ (GND))) # (!\u_contador|w_COUNTER\(5) & (!\u_contador|w_COUNTER[4]~22\ & VCC))
-- \u_contador|w_COUNTER[5]~24\ = CARRY((\u_contador|w_COUNTER\(5) & !\u_contador|w_COUNTER[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_contador|w_COUNTER\(5),
	datad => VCC,
	cin => \u_contador|w_COUNTER[4]~22\,
	combout => \u_contador|w_COUNTER[5]~23_combout\,
	cout => \u_contador|w_COUNTER[5]~24\);

-- Location: FF_X12_Y14_N9
\u_contador|w_COUNTER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \u_contador|w_COUNTER[5]~23_combout\,
	clrn => \u_comparador|ALT_INV_Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_contador|w_COUNTER\(5));

-- Location: LCCOMB_X12_Y14_N10
\u_contador|w_COUNTER[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_contador|w_COUNTER[6]~25_combout\ = (\u_contador|w_COUNTER\(6) & (!\u_contador|w_COUNTER[5]~24\)) # (!\u_contador|w_COUNTER\(6) & ((\u_contador|w_COUNTER[5]~24\) # (GND)))
-- \u_contador|w_COUNTER[6]~26\ = CARRY((!\u_contador|w_COUNTER[5]~24\) # (!\u_contador|w_COUNTER\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_contador|w_COUNTER\(6),
	datad => VCC,
	cin => \u_contador|w_COUNTER[5]~24\,
	combout => \u_contador|w_COUNTER[6]~25_combout\,
	cout => \u_contador|w_COUNTER[6]~26\);

-- Location: FF_X12_Y14_N11
\u_contador|w_COUNTER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \u_contador|w_COUNTER[6]~25_combout\,
	clrn => \u_comparador|ALT_INV_Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_contador|w_COUNTER\(6));

-- Location: LCCOMB_X12_Y14_N12
\u_contador|w_COUNTER[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_contador|w_COUNTER[7]~27_combout\ = (\u_contador|w_COUNTER\(7) & (\u_contador|w_COUNTER[6]~26\ $ (GND))) # (!\u_contador|w_COUNTER\(7) & (!\u_contador|w_COUNTER[6]~26\ & VCC))
-- \u_contador|w_COUNTER[7]~28\ = CARRY((\u_contador|w_COUNTER\(7) & !\u_contador|w_COUNTER[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_contador|w_COUNTER\(7),
	datad => VCC,
	cin => \u_contador|w_COUNTER[6]~26\,
	combout => \u_contador|w_COUNTER[7]~27_combout\,
	cout => \u_contador|w_COUNTER[7]~28\);

-- Location: FF_X12_Y14_N13
\u_contador|w_COUNTER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \u_contador|w_COUNTER[7]~27_combout\,
	clrn => \u_comparador|ALT_INV_Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_contador|w_COUNTER\(7));

-- Location: LCCOMB_X12_Y14_N14
\u_contador|w_COUNTER[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_contador|w_COUNTER[8]~29_combout\ = (\u_contador|w_COUNTER\(8) & (!\u_contador|w_COUNTER[7]~28\)) # (!\u_contador|w_COUNTER\(8) & ((\u_contador|w_COUNTER[7]~28\) # (GND)))
-- \u_contador|w_COUNTER[8]~30\ = CARRY((!\u_contador|w_COUNTER[7]~28\) # (!\u_contador|w_COUNTER\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_contador|w_COUNTER\(8),
	datad => VCC,
	cin => \u_contador|w_COUNTER[7]~28\,
	combout => \u_contador|w_COUNTER[8]~29_combout\,
	cout => \u_contador|w_COUNTER[8]~30\);

-- Location: FF_X12_Y14_N15
\u_contador|w_COUNTER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \u_contador|w_COUNTER[8]~29_combout\,
	clrn => \u_comparador|ALT_INV_Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_contador|w_COUNTER\(8));

-- Location: LCCOMB_X12_Y14_N16
\u_contador|w_COUNTER[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_contador|w_COUNTER[9]~31_combout\ = (\u_contador|w_COUNTER\(9) & (\u_contador|w_COUNTER[8]~30\ $ (GND))) # (!\u_contador|w_COUNTER\(9) & (!\u_contador|w_COUNTER[8]~30\ & VCC))
-- \u_contador|w_COUNTER[9]~32\ = CARRY((\u_contador|w_COUNTER\(9) & !\u_contador|w_COUNTER[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_contador|w_COUNTER\(9),
	datad => VCC,
	cin => \u_contador|w_COUNTER[8]~30\,
	combout => \u_contador|w_COUNTER[9]~31_combout\,
	cout => \u_contador|w_COUNTER[9]~32\);

-- Location: FF_X12_Y14_N17
\u_contador|w_COUNTER[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \u_contador|w_COUNTER[9]~31_combout\,
	clrn => \u_comparador|ALT_INV_Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_contador|w_COUNTER\(9));

-- Location: LCCOMB_X12_Y14_N18
\u_contador|w_COUNTER[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_contador|w_COUNTER[10]~33_combout\ = (\u_contador|w_COUNTER\(10) & (!\u_contador|w_COUNTER[9]~32\)) # (!\u_contador|w_COUNTER\(10) & ((\u_contador|w_COUNTER[9]~32\) # (GND)))
-- \u_contador|w_COUNTER[10]~34\ = CARRY((!\u_contador|w_COUNTER[9]~32\) # (!\u_contador|w_COUNTER\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_contador|w_COUNTER\(10),
	datad => VCC,
	cin => \u_contador|w_COUNTER[9]~32\,
	combout => \u_contador|w_COUNTER[10]~33_combout\,
	cout => \u_contador|w_COUNTER[10]~34\);

-- Location: FF_X12_Y14_N19
\u_contador|w_COUNTER[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \u_contador|w_COUNTER[10]~33_combout\,
	clrn => \u_comparador|ALT_INV_Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_contador|w_COUNTER\(10));

-- Location: LCCOMB_X12_Y14_N20
\u_contador|w_COUNTER[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_contador|w_COUNTER[11]~35_combout\ = (\u_contador|w_COUNTER\(11) & (\u_contador|w_COUNTER[10]~34\ $ (GND))) # (!\u_contador|w_COUNTER\(11) & (!\u_contador|w_COUNTER[10]~34\ & VCC))
-- \u_contador|w_COUNTER[11]~36\ = CARRY((\u_contador|w_COUNTER\(11) & !\u_contador|w_COUNTER[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_contador|w_COUNTER\(11),
	datad => VCC,
	cin => \u_contador|w_COUNTER[10]~34\,
	combout => \u_contador|w_COUNTER[11]~35_combout\,
	cout => \u_contador|w_COUNTER[11]~36\);

-- Location: FF_X12_Y14_N21
\u_contador|w_COUNTER[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \u_contador|w_COUNTER[11]~35_combout\,
	clrn => \u_comparador|ALT_INV_Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_contador|w_COUNTER\(11));

-- Location: LCCOMB_X12_Y14_N22
\u_contador|w_COUNTER[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_contador|w_COUNTER[12]~37_combout\ = (\u_contador|w_COUNTER\(12) & (!\u_contador|w_COUNTER[11]~36\)) # (!\u_contador|w_COUNTER\(12) & ((\u_contador|w_COUNTER[11]~36\) # (GND)))
-- \u_contador|w_COUNTER[12]~38\ = CARRY((!\u_contador|w_COUNTER[11]~36\) # (!\u_contador|w_COUNTER\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_contador|w_COUNTER\(12),
	datad => VCC,
	cin => \u_contador|w_COUNTER[11]~36\,
	combout => \u_contador|w_COUNTER[12]~37_combout\,
	cout => \u_contador|w_COUNTER[12]~38\);

-- Location: FF_X12_Y14_N23
\u_contador|w_COUNTER[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \u_contador|w_COUNTER[12]~37_combout\,
	clrn => \u_comparador|ALT_INV_Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_contador|w_COUNTER\(12));

-- Location: LCCOMB_X12_Y14_N24
\u_contador|w_COUNTER[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_contador|w_COUNTER[13]~39_combout\ = (\u_contador|w_COUNTER\(13) & (\u_contador|w_COUNTER[12]~38\ $ (GND))) # (!\u_contador|w_COUNTER\(13) & (!\u_contador|w_COUNTER[12]~38\ & VCC))
-- \u_contador|w_COUNTER[13]~40\ = CARRY((\u_contador|w_COUNTER\(13) & !\u_contador|w_COUNTER[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_contador|w_COUNTER\(13),
	datad => VCC,
	cin => \u_contador|w_COUNTER[12]~38\,
	combout => \u_contador|w_COUNTER[13]~39_combout\,
	cout => \u_contador|w_COUNTER[13]~40\);

-- Location: FF_X12_Y14_N25
\u_contador|w_COUNTER[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \u_contador|w_COUNTER[13]~39_combout\,
	clrn => \u_comparador|ALT_INV_Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_contador|w_COUNTER\(13));

-- Location: FF_X12_Y14_N27
\u_contador|w_COUNTER[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \u_contador|w_COUNTER[14]~41_combout\,
	clrn => \u_comparador|ALT_INV_Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_contador|w_COUNTER\(14));

-- Location: LCCOMB_X13_Y14_N8
\u_comparador|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Equal0~9_combout\ = (\u_comparador|Add0~28_combout\ & (\u_contador|w_COUNTER\(14) & (\u_comparador|Add0~30_combout\ $ (!\u_contador|w_COUNTER\(15))))) # (!\u_comparador|Add0~28_combout\ & (!\u_contador|w_COUNTER\(14) & 
-- (\u_comparador|Add0~30_combout\ $ (!\u_contador|w_COUNTER\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparador|Add0~28_combout\,
	datab => \u_comparador|Add0~30_combout\,
	datac => \u_contador|w_COUNTER\(14),
	datad => \u_contador|w_COUNTER\(15),
	combout => \u_comparador|Equal0~9_combout\);

-- Location: LCCOMB_X13_Y14_N2
\u_comparador|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Equal0~8_combout\ = (\u_comparador|Add0~26_combout\ & (\u_contador|w_COUNTER\(13) & (\u_comparador|Add0~24_combout\ $ (!\u_contador|w_COUNTER\(12))))) # (!\u_comparador|Add0~26_combout\ & (!\u_contador|w_COUNTER\(13) & 
-- (\u_comparador|Add0~24_combout\ $ (!\u_contador|w_COUNTER\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparador|Add0~26_combout\,
	datab => \u_contador|w_COUNTER\(13),
	datac => \u_comparador|Add0~24_combout\,
	datad => \u_contador|w_COUNTER\(12),
	combout => \u_comparador|Equal0~8_combout\);

-- Location: LCCOMB_X11_Y14_N20
\u_comparador|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Equal0~6_combout\ = \u_comparador|Add0~20_combout\ $ (\u_contador|w_COUNTER\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_comparador|Add0~20_combout\,
	datad => \u_contador|w_COUNTER\(10),
	combout => \u_comparador|Equal0~6_combout\);

-- Location: LCCOMB_X13_Y14_N28
\u_comparador|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Equal0~5_combout\ = (\u_comparador|Add0~18_combout\ & (\u_contador|w_COUNTER\(9) & (\u_comparador|Add0~16_combout\ $ (!\u_contador|w_COUNTER\(8))))) # (!\u_comparador|Add0~18_combout\ & (!\u_contador|w_COUNTER\(9) & 
-- (\u_comparador|Add0~16_combout\ $ (!\u_contador|w_COUNTER\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparador|Add0~18_combout\,
	datab => \u_comparador|Add0~16_combout\,
	datac => \u_contador|w_COUNTER\(9),
	datad => \u_contador|w_COUNTER\(8),
	combout => \u_comparador|Equal0~5_combout\);

-- Location: LCCOMB_X11_Y14_N14
\u_comparador|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Equal0~7_combout\ = (!\u_comparador|Equal0~6_combout\ & (\u_comparador|Equal0~5_combout\ & (\u_comparador|Add0~22_combout\ $ (!\u_contador|w_COUNTER\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparador|Add0~22_combout\,
	datab => \u_comparador|Equal0~6_combout\,
	datac => \u_contador|w_COUNTER\(11),
	datad => \u_comparador|Equal0~5_combout\,
	combout => \u_comparador|Equal0~7_combout\);

-- Location: LCCOMB_X11_Y14_N26
\u_comparador|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Equal0~0_combout\ = (\u_comparador|Add0~2_combout\ & (\u_contador|w_COUNTER\(1) & (\u_comparador|Add0~0_combout\ $ (!\u_contador|w_COUNTER\(0))))) # (!\u_comparador|Add0~2_combout\ & (!\u_contador|w_COUNTER\(1) & 
-- (\u_comparador|Add0~0_combout\ $ (!\u_contador|w_COUNTER\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparador|Add0~2_combout\,
	datab => \u_comparador|Add0~0_combout\,
	datac => \u_contador|w_COUNTER\(1),
	datad => \u_contador|w_COUNTER\(0),
	combout => \u_comparador|Equal0~0_combout\);

-- Location: LCCOMB_X11_Y14_N28
\u_comparador|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Equal0~2_combout\ = (\u_comparador|Add0~8_combout\ & (\u_contador|w_COUNTER\(4) & (\u_comparador|Add0~10_combout\ $ (!\u_contador|w_COUNTER\(5))))) # (!\u_comparador|Add0~8_combout\ & (!\u_contador|w_COUNTER\(4) & 
-- (\u_comparador|Add0~10_combout\ $ (!\u_contador|w_COUNTER\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparador|Add0~8_combout\,
	datab => \u_comparador|Add0~10_combout\,
	datac => \u_contador|w_COUNTER\(5),
	datad => \u_contador|w_COUNTER\(4),
	combout => \u_comparador|Equal0~2_combout\);

-- Location: LCCOMB_X13_Y14_N12
\u_comparador|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Equal0~1_combout\ = (\u_comparador|Add0~4_combout\ & (\u_contador|w_COUNTER\(2) & (\u_comparador|Add0~6_combout\ $ (!\u_contador|w_COUNTER\(3))))) # (!\u_comparador|Add0~4_combout\ & (!\u_contador|w_COUNTER\(2) & 
-- (\u_comparador|Add0~6_combout\ $ (!\u_contador|w_COUNTER\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparador|Add0~4_combout\,
	datab => \u_comparador|Add0~6_combout\,
	datac => \u_contador|w_COUNTER\(3),
	datad => \u_contador|w_COUNTER\(2),
	combout => \u_comparador|Equal0~1_combout\);

-- Location: LCCOMB_X13_Y14_N18
\u_comparador|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Equal0~3_combout\ = (\u_contador|w_COUNTER\(6) & (\u_comparador|Add0~12_combout\ & (\u_comparador|Add0~14_combout\ $ (!\u_contador|w_COUNTER\(7))))) # (!\u_contador|w_COUNTER\(6) & (!\u_comparador|Add0~12_combout\ & 
-- (\u_comparador|Add0~14_combout\ $ (!\u_contador|w_COUNTER\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_contador|w_COUNTER\(6),
	datab => \u_comparador|Add0~14_combout\,
	datac => \u_comparador|Add0~12_combout\,
	datad => \u_contador|w_COUNTER\(7),
	combout => \u_comparador|Equal0~3_combout\);

-- Location: LCCOMB_X11_Y14_N18
\u_comparador|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Equal0~4_combout\ = (\u_comparador|Equal0~0_combout\ & (\u_comparador|Equal0~2_combout\ & (\u_comparador|Equal0~1_combout\ & \u_comparador|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparador|Equal0~0_combout\,
	datab => \u_comparador|Equal0~2_combout\,
	datac => \u_comparador|Equal0~1_combout\,
	datad => \u_comparador|Equal0~3_combout\,
	combout => \u_comparador|Equal0~4_combout\);

-- Location: LCCOMB_X11_Y14_N0
\u_comparador|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|Equal0~10_combout\ = (\u_comparador|Equal0~9_combout\ & (\u_comparador|Equal0~8_combout\ & (\u_comparador|Equal0~7_combout\ & \u_comparador|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparador|Equal0~9_combout\,
	datab => \u_comparador|Equal0~8_combout\,
	datac => \u_comparador|Equal0~7_combout\,
	datad => \u_comparador|Equal0~4_combout\,
	combout => \u_comparador|Equal0~10_combout\);

-- Location: LCCOMB_X11_Y14_N30
\u_comparador|w_sel[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|w_sel[0]~1_combout\ = \u_comparador|w_sel\(0) $ (\u_comparador|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_comparador|w_sel\(0),
	datad => \u_comparador|Equal0~10_combout\,
	combout => \u_comparador|w_sel[0]~1_combout\);

-- Location: FF_X11_Y14_N31
\u_comparador|w_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \u_comparador|w_sel[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparador|w_sel\(0));

-- Location: LCCOMB_X11_Y14_N12
\u_comparador|w_sel[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_comparador|w_sel[1]~0_combout\ = \u_comparador|w_sel\(1) $ (((\u_comparador|w_sel\(0) & \u_comparador|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparador|w_sel\(0),
	datac => \u_comparador|w_sel\(1),
	datad => \u_comparador|Equal0~10_combout\,
	combout => \u_comparador|w_sel[1]~0_combout\);

-- Location: FF_X11_Y14_N13
\u_comparador|w_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \u_comparador|w_sel[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparador|w_sel\(1));

-- Location: IOIBUF_X23_Y24_N22
\i_FRAME2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME2(0),
	o => \i_FRAME2[0]~input_o\);

-- Location: IOIBUF_X25_Y24_N1
\i_FRAME1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME1(0),
	o => \i_FRAME1[0]~input_o\);

-- Location: LCCOMB_X21_Y20_N28
\u_mux4x1|o_Q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[0]~0_combout\ = (\u_comparador|w_sel\(0) & ((\i_FRAME2[0]~input_o\) # ((\u_comparador|w_sel\(1))))) # (!\u_comparador|w_sel\(0) & (((!\u_comparador|w_sel\(1) & \i_FRAME1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparador|w_sel\(0),
	datab => \i_FRAME2[0]~input_o\,
	datac => \u_comparador|w_sel\(1),
	datad => \i_FRAME1[0]~input_o\,
	combout => \u_mux4x1|o_Q[0]~0_combout\);

-- Location: LCCOMB_X21_Y20_N6
\u_mux4x1|o_Q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[0]~1_combout\ = (\u_comparador|w_sel\(1) & ((\u_mux4x1|o_Q[0]~0_combout\ & (\i_FRAME4[0]~input_o\)) # (!\u_mux4x1|o_Q[0]~0_combout\ & ((\i_FRAME3[0]~input_o\))))) # (!\u_comparador|w_sel\(1) & (((\u_mux4x1|o_Q[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_FRAME4[0]~input_o\,
	datab => \i_FRAME3[0]~input_o\,
	datac => \u_comparador|w_sel\(1),
	datad => \u_mux4x1|o_Q[0]~0_combout\,
	combout => \u_mux4x1|o_Q[0]~1_combout\);

-- Location: IOIBUF_X21_Y0_N22
\i_FRAME1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME1(1),
	o => \i_FRAME1[1]~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\i_FRAME3[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME3(1),
	o => \i_FRAME3[1]~input_o\);

-- Location: LCCOMB_X21_Y20_N12
\u_mux4x1|o_Q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[1]~2_combout\ = (\u_comparador|w_sel\(0) & (((\u_comparador|w_sel\(1))))) # (!\u_comparador|w_sel\(0) & ((\u_comparador|w_sel\(1) & ((\i_FRAME3[1]~input_o\))) # (!\u_comparador|w_sel\(1) & (\i_FRAME1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparador|w_sel\(0),
	datab => \i_FRAME1[1]~input_o\,
	datac => \u_comparador|w_sel\(1),
	datad => \i_FRAME3[1]~input_o\,
	combout => \u_mux4x1|o_Q[1]~2_combout\);

-- Location: IOIBUF_X34_Y20_N1
\i_FRAME2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME2(1),
	o => \i_FRAME2[1]~input_o\);

-- Location: IOIBUF_X25_Y24_N22
\i_FRAME4[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME4(1),
	o => \i_FRAME4[1]~input_o\);

-- Location: LCCOMB_X21_Y20_N2
\u_mux4x1|o_Q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[1]~3_combout\ = (\u_mux4x1|o_Q[1]~2_combout\ & (((\i_FRAME4[1]~input_o\) # (!\u_comparador|w_sel\(0))))) # (!\u_mux4x1|o_Q[1]~2_combout\ & (\i_FRAME2[1]~input_o\ & ((\u_comparador|w_sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux4x1|o_Q[1]~2_combout\,
	datab => \i_FRAME2[1]~input_o\,
	datac => \i_FRAME4[1]~input_o\,
	datad => \u_comparador|w_sel\(0),
	combout => \u_mux4x1|o_Q[1]~3_combout\);

-- Location: IOIBUF_X13_Y24_N22
\i_FRAME4[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME4(2),
	o => \i_FRAME4[2]~input_o\);

-- Location: IOIBUF_X9_Y24_N15
\i_FRAME3[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME3(2),
	o => \i_FRAME3[2]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\i_FRAME1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME1(2),
	o => \i_FRAME1[2]~input_o\);

-- Location: IOIBUF_X21_Y24_N15
\i_FRAME2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME2(2),
	o => \i_FRAME2[2]~input_o\);

-- Location: LCCOMB_X21_Y20_N0
\u_mux4x1|o_Q[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[2]~4_combout\ = (\u_comparador|w_sel\(0) & (((\u_comparador|w_sel\(1)) # (\i_FRAME2[2]~input_o\)))) # (!\u_comparador|w_sel\(0) & (\i_FRAME1[2]~input_o\ & (!\u_comparador|w_sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparador|w_sel\(0),
	datab => \i_FRAME1[2]~input_o\,
	datac => \u_comparador|w_sel\(1),
	datad => \i_FRAME2[2]~input_o\,
	combout => \u_mux4x1|o_Q[2]~4_combout\);

-- Location: LCCOMB_X12_Y20_N0
\u_mux4x1|o_Q[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[2]~5_combout\ = (\u_comparador|w_sel\(1) & ((\u_mux4x1|o_Q[2]~4_combout\ & (\i_FRAME4[2]~input_o\)) # (!\u_mux4x1|o_Q[2]~4_combout\ & ((\i_FRAME3[2]~input_o\))))) # (!\u_comparador|w_sel\(1) & (((\u_mux4x1|o_Q[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_FRAME4[2]~input_o\,
	datab => \u_comparador|w_sel\(1),
	datac => \i_FRAME3[2]~input_o\,
	datad => \u_mux4x1|o_Q[2]~4_combout\,
	combout => \u_mux4x1|o_Q[2]~5_combout\);

-- Location: IOIBUF_X5_Y24_N22
\i_FRAME4[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME4(3),
	o => \i_FRAME4[3]~input_o\);

-- Location: IOIBUF_X5_Y24_N15
\i_FRAME2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME2(3),
	o => \i_FRAME2[3]~input_o\);

-- Location: IOIBUF_X21_Y0_N15
\i_FRAME1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME1(3),
	o => \i_FRAME1[3]~input_o\);

-- Location: IOIBUF_X13_Y24_N8
\i_FRAME3[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME3(3),
	o => \i_FRAME3[3]~input_o\);

-- Location: LCCOMB_X21_Y20_N22
\u_mux4x1|o_Q[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[3]~6_combout\ = (\u_comparador|w_sel\(0) & (((\u_comparador|w_sel\(1))))) # (!\u_comparador|w_sel\(0) & ((\u_comparador|w_sel\(1) & ((\i_FRAME3[3]~input_o\))) # (!\u_comparador|w_sel\(1) & (\i_FRAME1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparador|w_sel\(0),
	datab => \i_FRAME1[3]~input_o\,
	datac => \u_comparador|w_sel\(1),
	datad => \i_FRAME3[3]~input_o\,
	combout => \u_mux4x1|o_Q[3]~6_combout\);

-- Location: LCCOMB_X6_Y20_N12
\u_mux4x1|o_Q[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[3]~7_combout\ = (\u_comparador|w_sel\(0) & ((\u_mux4x1|o_Q[3]~6_combout\ & (\i_FRAME4[3]~input_o\)) # (!\u_mux4x1|o_Q[3]~6_combout\ & ((\i_FRAME2[3]~input_o\))))) # (!\u_comparador|w_sel\(0) & (((\u_mux4x1|o_Q[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_FRAME4[3]~input_o\,
	datab => \i_FRAME2[3]~input_o\,
	datac => \u_comparador|w_sel\(0),
	datad => \u_mux4x1|o_Q[3]~6_combout\,
	combout => \u_mux4x1|o_Q[3]~7_combout\);

-- Location: IOIBUF_X23_Y24_N8
\i_FRAME2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME2(4),
	o => \i_FRAME2[4]~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\i_FRAME1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME1(4),
	o => \i_FRAME1[4]~input_o\);

-- Location: LCCOMB_X21_Y20_N4
\u_mux4x1|o_Q[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[4]~8_combout\ = (\u_comparador|w_sel\(0) & ((\i_FRAME2[4]~input_o\) # ((\u_comparador|w_sel\(1))))) # (!\u_comparador|w_sel\(0) & (((!\u_comparador|w_sel\(1) & \i_FRAME1[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparador|w_sel\(0),
	datab => \i_FRAME2[4]~input_o\,
	datac => \u_comparador|w_sel\(1),
	datad => \i_FRAME1[4]~input_o\,
	combout => \u_mux4x1|o_Q[4]~8_combout\);

-- Location: IOIBUF_X30_Y24_N1
\i_FRAME3[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME3(4),
	o => \i_FRAME3[4]~input_o\);

-- Location: IOIBUF_X18_Y24_N8
\i_FRAME4[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME4(4),
	o => \i_FRAME4[4]~input_o\);

-- Location: LCCOMB_X21_Y20_N10
\u_mux4x1|o_Q[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[4]~9_combout\ = (\u_comparador|w_sel\(1) & ((\u_mux4x1|o_Q[4]~8_combout\ & ((\i_FRAME4[4]~input_o\))) # (!\u_mux4x1|o_Q[4]~8_combout\ & (\i_FRAME3[4]~input_o\)))) # (!\u_comparador|w_sel\(1) & (\u_mux4x1|o_Q[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparador|w_sel\(1),
	datab => \u_mux4x1|o_Q[4]~8_combout\,
	datac => \i_FRAME3[4]~input_o\,
	datad => \i_FRAME4[4]~input_o\,
	combout => \u_mux4x1|o_Q[4]~9_combout\);

-- Location: IOIBUF_X7_Y24_N8
\i_FRAME4[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME4(5),
	o => \i_FRAME4[5]~input_o\);

-- Location: IOIBUF_X25_Y24_N8
\i_FRAME1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME1(5),
	o => \i_FRAME1[5]~input_o\);

-- Location: IOIBUF_X34_Y20_N8
\i_FRAME3[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME3(5),
	o => \i_FRAME3[5]~input_o\);

-- Location: LCCOMB_X21_Y20_N8
\u_mux4x1|o_Q[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[5]~10_combout\ = (\u_comparador|w_sel\(0) & (((\u_comparador|w_sel\(1))))) # (!\u_comparador|w_sel\(0) & ((\u_comparador|w_sel\(1) & ((\i_FRAME3[5]~input_o\))) # (!\u_comparador|w_sel\(1) & (\i_FRAME1[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparador|w_sel\(0),
	datab => \i_FRAME1[5]~input_o\,
	datac => \u_comparador|w_sel\(1),
	datad => \i_FRAME3[5]~input_o\,
	combout => \u_mux4x1|o_Q[5]~10_combout\);

-- Location: IOIBUF_X23_Y24_N1
\i_FRAME2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME2(5),
	o => \i_FRAME2[5]~input_o\);

-- Location: LCCOMB_X21_Y20_N26
\u_mux4x1|o_Q[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[5]~11_combout\ = (\u_comparador|w_sel\(0) & ((\u_mux4x1|o_Q[5]~10_combout\ & (\i_FRAME4[5]~input_o\)) # (!\u_mux4x1|o_Q[5]~10_combout\ & ((\i_FRAME2[5]~input_o\))))) # (!\u_comparador|w_sel\(0) & (((\u_mux4x1|o_Q[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparador|w_sel\(0),
	datab => \i_FRAME4[5]~input_o\,
	datac => \u_mux4x1|o_Q[5]~10_combout\,
	datad => \i_FRAME2[5]~input_o\,
	combout => \u_mux4x1|o_Q[5]~11_combout\);

-- Location: IOIBUF_X21_Y24_N8
\i_FRAME3[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME3(6),
	o => \i_FRAME3[6]~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\i_FRAME4[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME4(6),
	o => \i_FRAME4[6]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\i_FRAME1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME1(6),
	o => \i_FRAME1[6]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\i_FRAME2[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME2(6),
	o => \i_FRAME2[6]~input_o\);

-- Location: LCCOMB_X21_Y20_N16
\u_mux4x1|o_Q[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[6]~12_combout\ = (\u_comparador|w_sel\(0) & (((\u_comparador|w_sel\(1)) # (\i_FRAME2[6]~input_o\)))) # (!\u_comparador|w_sel\(0) & (\i_FRAME1[6]~input_o\ & (!\u_comparador|w_sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparador|w_sel\(0),
	datab => \i_FRAME1[6]~input_o\,
	datac => \u_comparador|w_sel\(1),
	datad => \i_FRAME2[6]~input_o\,
	combout => \u_mux4x1|o_Q[6]~12_combout\);

-- Location: LCCOMB_X21_Y20_N18
\u_mux4x1|o_Q[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[6]~13_combout\ = (\u_comparador|w_sel\(1) & ((\u_mux4x1|o_Q[6]~12_combout\ & ((\i_FRAME4[6]~input_o\))) # (!\u_mux4x1|o_Q[6]~12_combout\ & (\i_FRAME3[6]~input_o\)))) # (!\u_comparador|w_sel\(1) & (((\u_mux4x1|o_Q[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_FRAME3[6]~input_o\,
	datab => \i_FRAME4[6]~input_o\,
	datac => \u_comparador|w_sel\(1),
	datad => \u_mux4x1|o_Q[6]~12_combout\,
	combout => \u_mux4x1|o_Q[6]~13_combout\);

-- Location: IOIBUF_X16_Y24_N22
\i_FRAME2[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME2(7),
	o => \i_FRAME2[7]~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\i_FRAME3[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME3(7),
	o => \i_FRAME3[7]~input_o\);

-- Location: IOIBUF_X21_Y24_N1
\i_FRAME1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME1(7),
	o => \i_FRAME1[7]~input_o\);

-- Location: LCCOMB_X21_Y20_N24
\u_mux4x1|o_Q[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[7]~14_combout\ = (\u_comparador|w_sel\(0) & (((\u_comparador|w_sel\(1))))) # (!\u_comparador|w_sel\(0) & ((\u_comparador|w_sel\(1) & (\i_FRAME3[7]~input_o\)) # (!\u_comparador|w_sel\(1) & ((\i_FRAME1[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparador|w_sel\(0),
	datab => \i_FRAME3[7]~input_o\,
	datac => \u_comparador|w_sel\(1),
	datad => \i_FRAME1[7]~input_o\,
	combout => \u_mux4x1|o_Q[7]~14_combout\);

-- Location: IOIBUF_X13_Y24_N1
\i_FRAME4[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME4(7),
	o => \i_FRAME4[7]~input_o\);

-- Location: LCCOMB_X21_Y20_N14
\u_mux4x1|o_Q[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[7]~15_combout\ = (\u_mux4x1|o_Q[7]~14_combout\ & (((\i_FRAME4[7]~input_o\) # (!\u_comparador|w_sel\(0))))) # (!\u_mux4x1|o_Q[7]~14_combout\ & (\i_FRAME2[7]~input_o\ & ((\u_comparador|w_sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_FRAME2[7]~input_o\,
	datab => \u_mux4x1|o_Q[7]~14_combout\,
	datac => \i_FRAME4[7]~input_o\,
	datad => \u_comparador|w_sel\(0),
	combout => \u_mux4x1|o_Q[7]~15_combout\);

-- Location: IOIBUF_X11_Y0_N1
\i_FRAME4[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME4(8),
	o => \i_FRAME4[8]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\i_FRAME1[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME1(8),
	o => \i_FRAME1[8]~input_o\);

-- Location: IOIBUF_X0_Y5_N22
\i_FRAME2[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME2(8),
	o => \i_FRAME2[8]~input_o\);

-- Location: LCCOMB_X7_Y4_N0
\u_mux4x1|o_Q[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[8]~16_combout\ = (\u_comparador|w_sel\(0) & (((\i_FRAME2[8]~input_o\) # (\u_comparador|w_sel\(1))))) # (!\u_comparador|w_sel\(0) & (\i_FRAME1[8]~input_o\ & ((!\u_comparador|w_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_FRAME1[8]~input_o\,
	datab => \u_comparador|w_sel\(0),
	datac => \i_FRAME2[8]~input_o\,
	datad => \u_comparador|w_sel\(1),
	combout => \u_mux4x1|o_Q[8]~16_combout\);

-- Location: IOIBUF_X5_Y0_N15
\i_FRAME3[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME3(8),
	o => \i_FRAME3[8]~input_o\);

-- Location: LCCOMB_X7_Y4_N26
\u_mux4x1|o_Q[8]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[8]~17_combout\ = (\u_mux4x1|o_Q[8]~16_combout\ & ((\i_FRAME4[8]~input_o\) # ((!\u_comparador|w_sel\(1))))) # (!\u_mux4x1|o_Q[8]~16_combout\ & (((\i_FRAME3[8]~input_o\ & \u_comparador|w_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_FRAME4[8]~input_o\,
	datab => \u_mux4x1|o_Q[8]~16_combout\,
	datac => \i_FRAME3[8]~input_o\,
	datad => \u_comparador|w_sel\(1),
	combout => \u_mux4x1|o_Q[8]~17_combout\);

-- Location: IOIBUF_X0_Y8_N1
\i_FRAME2[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME2(9),
	o => \i_FRAME2[9]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\i_FRAME3[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME3(9),
	o => \i_FRAME3[9]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\i_FRAME1[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME1(9),
	o => \i_FRAME1[9]~input_o\);

-- Location: LCCOMB_X7_Y4_N28
\u_mux4x1|o_Q[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[9]~18_combout\ = (\u_comparador|w_sel\(0) & (((\u_comparador|w_sel\(1))))) # (!\u_comparador|w_sel\(0) & ((\u_comparador|w_sel\(1) & (\i_FRAME3[9]~input_o\)) # (!\u_comparador|w_sel\(1) & ((\i_FRAME1[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_FRAME3[9]~input_o\,
	datab => \u_comparador|w_sel\(0),
	datac => \i_FRAME1[9]~input_o\,
	datad => \u_comparador|w_sel\(1),
	combout => \u_mux4x1|o_Q[9]~18_combout\);

-- Location: IOIBUF_X16_Y0_N1
\i_FRAME4[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME4(9),
	o => \i_FRAME4[9]~input_o\);

-- Location: LCCOMB_X7_Y4_N22
\u_mux4x1|o_Q[9]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[9]~19_combout\ = (\u_mux4x1|o_Q[9]~18_combout\ & (((\i_FRAME4[9]~input_o\) # (!\u_comparador|w_sel\(0))))) # (!\u_mux4x1|o_Q[9]~18_combout\ & (\i_FRAME2[9]~input_o\ & ((\u_comparador|w_sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_FRAME2[9]~input_o\,
	datab => \u_mux4x1|o_Q[9]~18_combout\,
	datac => \i_FRAME4[9]~input_o\,
	datad => \u_comparador|w_sel\(0),
	combout => \u_mux4x1|o_Q[9]~19_combout\);

-- Location: IOIBUF_X0_Y4_N15
\i_FRAME3[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME3(10),
	o => \i_FRAME3[10]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\i_FRAME2[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME2(10),
	o => \i_FRAME2[10]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\i_FRAME1[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME1(10),
	o => \i_FRAME1[10]~input_o\);

-- Location: LCCOMB_X7_Y4_N20
\u_mux4x1|o_Q[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[10]~20_combout\ = (\u_comparador|w_sel\(0) & ((\i_FRAME2[10]~input_o\) # ((\u_comparador|w_sel\(1))))) # (!\u_comparador|w_sel\(0) & (((\i_FRAME1[10]~input_o\ & !\u_comparador|w_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_FRAME2[10]~input_o\,
	datab => \u_comparador|w_sel\(0),
	datac => \i_FRAME1[10]~input_o\,
	datad => \u_comparador|w_sel\(1),
	combout => \u_mux4x1|o_Q[10]~20_combout\);

-- Location: IOIBUF_X0_Y8_N15
\i_FRAME4[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME4(10),
	o => \i_FRAME4[10]~input_o\);

-- Location: LCCOMB_X7_Y4_N30
\u_mux4x1|o_Q[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[10]~21_combout\ = (\u_mux4x1|o_Q[10]~20_combout\ & (((\i_FRAME4[10]~input_o\) # (!\u_comparador|w_sel\(1))))) # (!\u_mux4x1|o_Q[10]~20_combout\ & (\i_FRAME3[10]~input_o\ & ((\u_comparador|w_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_FRAME3[10]~input_o\,
	datab => \u_mux4x1|o_Q[10]~20_combout\,
	datac => \i_FRAME4[10]~input_o\,
	datad => \u_comparador|w_sel\(1),
	combout => \u_mux4x1|o_Q[10]~21_combout\);

-- Location: IOIBUF_X0_Y4_N22
\i_FRAME4[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME4(11),
	o => \i_FRAME4[11]~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\i_FRAME2[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME2(11),
	o => \i_FRAME2[11]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\i_FRAME3[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME3(11),
	o => \i_FRAME3[11]~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\i_FRAME1[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME1(11),
	o => \i_FRAME1[11]~input_o\);

-- Location: LCCOMB_X7_Y4_N4
\u_mux4x1|o_Q[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[11]~22_combout\ = (\u_comparador|w_sel\(0) & (((\u_comparador|w_sel\(1))))) # (!\u_comparador|w_sel\(0) & ((\u_comparador|w_sel\(1) & (\i_FRAME3[11]~input_o\)) # (!\u_comparador|w_sel\(1) & ((\i_FRAME1[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_FRAME3[11]~input_o\,
	datab => \u_comparador|w_sel\(0),
	datac => \i_FRAME1[11]~input_o\,
	datad => \u_comparador|w_sel\(1),
	combout => \u_mux4x1|o_Q[11]~22_combout\);

-- Location: LCCOMB_X7_Y4_N6
\u_mux4x1|o_Q[11]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[11]~23_combout\ = (\u_mux4x1|o_Q[11]~22_combout\ & ((\i_FRAME4[11]~input_o\) # ((!\u_comparador|w_sel\(0))))) # (!\u_mux4x1|o_Q[11]~22_combout\ & (((\i_FRAME2[11]~input_o\ & \u_comparador|w_sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_FRAME4[11]~input_o\,
	datab => \i_FRAME2[11]~input_o\,
	datac => \u_mux4x1|o_Q[11]~22_combout\,
	datad => \u_comparador|w_sel\(0),
	combout => \u_mux4x1|o_Q[11]~23_combout\);

-- Location: IOIBUF_X7_Y0_N15
\i_FRAME3[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME3(12),
	o => \i_FRAME3[12]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\i_FRAME1[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME1(12),
	o => \i_FRAME1[12]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\i_FRAME2[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME2(12),
	o => \i_FRAME2[12]~input_o\);

-- Location: LCCOMB_X7_Y4_N16
\u_mux4x1|o_Q[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[12]~24_combout\ = (\u_comparador|w_sel\(0) & (((\i_FRAME2[12]~input_o\) # (\u_comparador|w_sel\(1))))) # (!\u_comparador|w_sel\(0) & (\i_FRAME1[12]~input_o\ & ((!\u_comparador|w_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_FRAME1[12]~input_o\,
	datab => \u_comparador|w_sel\(0),
	datac => \i_FRAME2[12]~input_o\,
	datad => \u_comparador|w_sel\(1),
	combout => \u_mux4x1|o_Q[12]~24_combout\);

-- Location: IOIBUF_X16_Y0_N8
\i_FRAME4[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME4(12),
	o => \i_FRAME4[12]~input_o\);

-- Location: LCCOMB_X7_Y4_N10
\u_mux4x1|o_Q[12]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[12]~25_combout\ = (\u_mux4x1|o_Q[12]~24_combout\ & (((\i_FRAME4[12]~input_o\) # (!\u_comparador|w_sel\(1))))) # (!\u_mux4x1|o_Q[12]~24_combout\ & (\i_FRAME3[12]~input_o\ & ((\u_comparador|w_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_FRAME3[12]~input_o\,
	datab => \u_mux4x1|o_Q[12]~24_combout\,
	datac => \i_FRAME4[12]~input_o\,
	datad => \u_comparador|w_sel\(1),
	combout => \u_mux4x1|o_Q[12]~25_combout\);

-- Location: IOIBUF_X5_Y24_N1
\i_FRAME4[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME4(13),
	o => \i_FRAME4[13]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\i_FRAME3[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME3(13),
	o => \i_FRAME3[13]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\i_FRAME1[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME1(13),
	o => \i_FRAME1[13]~input_o\);

-- Location: LCCOMB_X6_Y20_N18
\u_mux4x1|o_Q[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[13]~26_combout\ = (\u_comparador|w_sel\(0) & (((\u_comparador|w_sel\(1))))) # (!\u_comparador|w_sel\(0) & ((\u_comparador|w_sel\(1) & (\i_FRAME3[13]~input_o\)) # (!\u_comparador|w_sel\(1) & ((\i_FRAME1[13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_FRAME3[13]~input_o\,
	datab => \i_FRAME1[13]~input_o\,
	datac => \u_comparador|w_sel\(0),
	datad => \u_comparador|w_sel\(1),
	combout => \u_mux4x1|o_Q[13]~26_combout\);

-- Location: IOIBUF_X3_Y24_N15
\i_FRAME2[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME2(13),
	o => \i_FRAME2[13]~input_o\);

-- Location: LCCOMB_X6_Y20_N4
\u_mux4x1|o_Q[13]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[13]~27_combout\ = (\u_mux4x1|o_Q[13]~26_combout\ & ((\i_FRAME4[13]~input_o\) # ((!\u_comparador|w_sel\(0))))) # (!\u_mux4x1|o_Q[13]~26_combout\ & (((\u_comparador|w_sel\(0) & \i_FRAME2[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_FRAME4[13]~input_o\,
	datab => \u_mux4x1|o_Q[13]~26_combout\,
	datac => \u_comparador|w_sel\(0),
	datad => \i_FRAME2[13]~input_o\,
	combout => \u_mux4x1|o_Q[13]~27_combout\);

-- Location: IOIBUF_X9_Y0_N8
\i_FRAME4[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME4(14),
	o => \i_FRAME4[14]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\i_FRAME1[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME1(14),
	o => \i_FRAME1[14]~input_o\);

-- Location: IOIBUF_X7_Y24_N15
\i_FRAME2[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME2(14),
	o => \i_FRAME2[14]~input_o\);

-- Location: LCCOMB_X7_Y4_N24
\u_mux4x1|o_Q[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[14]~28_combout\ = (\u_comparador|w_sel\(0) & (((\i_FRAME2[14]~input_o\) # (\u_comparador|w_sel\(1))))) # (!\u_comparador|w_sel\(0) & (\i_FRAME1[14]~input_o\ & ((!\u_comparador|w_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_FRAME1[14]~input_o\,
	datab => \u_comparador|w_sel\(0),
	datac => \i_FRAME2[14]~input_o\,
	datad => \u_comparador|w_sel\(1),
	combout => \u_mux4x1|o_Q[14]~28_combout\);

-- Location: IOIBUF_X13_Y0_N1
\i_FRAME3[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME3(14),
	o => \i_FRAME3[14]~input_o\);

-- Location: LCCOMB_X7_Y4_N14
\u_mux4x1|o_Q[14]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[14]~29_combout\ = (\u_mux4x1|o_Q[14]~28_combout\ & ((\i_FRAME4[14]~input_o\) # ((!\u_comparador|w_sel\(1))))) # (!\u_mux4x1|o_Q[14]~28_combout\ & (((\i_FRAME3[14]~input_o\ & \u_comparador|w_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_FRAME4[14]~input_o\,
	datab => \u_mux4x1|o_Q[14]~28_combout\,
	datac => \i_FRAME3[14]~input_o\,
	datad => \u_comparador|w_sel\(1),
	combout => \u_mux4x1|o_Q[14]~29_combout\);

-- Location: IOIBUF_X1_Y0_N15
\i_FRAME1[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME1(15),
	o => \i_FRAME1[15]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\i_FRAME3[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME3(15),
	o => \i_FRAME3[15]~input_o\);

-- Location: LCCOMB_X7_Y4_N12
\u_mux4x1|o_Q[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[15]~30_combout\ = (\u_comparador|w_sel\(0) & (((\u_comparador|w_sel\(1))))) # (!\u_comparador|w_sel\(0) & ((\u_comparador|w_sel\(1) & ((\i_FRAME3[15]~input_o\))) # (!\u_comparador|w_sel\(1) & (\i_FRAME1[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_FRAME1[15]~input_o\,
	datab => \u_comparador|w_sel\(0),
	datac => \i_FRAME3[15]~input_o\,
	datad => \u_comparador|w_sel\(1),
	combout => \u_mux4x1|o_Q[15]~30_combout\);

-- Location: IOIBUF_X13_Y0_N22
\i_FRAME2[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME2(15),
	o => \i_FRAME2[15]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\i_FRAME4[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_FRAME4(15),
	o => \i_FRAME4[15]~input_o\);

-- Location: LCCOMB_X7_Y4_N2
\u_mux4x1|o_Q[15]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|o_Q[15]~31_combout\ = (\u_mux4x1|o_Q[15]~30_combout\ & (((\i_FRAME4[15]~input_o\) # (!\u_comparador|w_sel\(0))))) # (!\u_mux4x1|o_Q[15]~30_combout\ & (\i_FRAME2[15]~input_o\ & ((\u_comparador|w_sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux4x1|o_Q[15]~30_combout\,
	datab => \i_FRAME2[15]~input_o\,
	datac => \i_FRAME4[15]~input_o\,
	datad => \u_comparador|w_sel\(0),
	combout => \u_mux4x1|o_Q[15]~31_combout\);

-- Location: LCCOMB_X21_Y20_N20
\u_mux4x1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|Equal2~0_combout\ = (\u_comparador|w_sel\(1)) # (\u_comparador|w_sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_comparador|w_sel\(1),
	datad => \u_comparador|w_sel\(0),
	combout => \u_mux4x1|Equal2~0_combout\);

-- Location: LCCOMB_X6_Y20_N2
\u_mux4x1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|Equal1~0_combout\ = (\u_comparador|w_sel\(0) & !\u_comparador|w_sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_comparador|w_sel\(0),
	datad => \u_comparador|w_sel\(1),
	combout => \u_mux4x1|Equal1~0_combout\);

-- Location: LCCOMB_X7_Y4_N8
\u_mux4x1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|Equal1~1_combout\ = (\u_comparador|w_sel\(1) & !\u_comparador|w_sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_comparador|w_sel\(1),
	datad => \u_comparador|w_sel\(0),
	combout => \u_mux4x1|Equal1~1_combout\);

-- Location: LCCOMB_X7_Y4_N18
\u_mux4x1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux4x1|Equal1~2_combout\ = (\u_comparador|w_sel\(1) & \u_comparador|w_sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_comparador|w_sel\(1),
	datad => \u_comparador|w_sel\(0),
	combout => \u_mux4x1|Equal1~2_combout\);

ww_o_FRAME(0) <= \o_FRAME[0]~output_o\;

ww_o_FRAME(1) <= \o_FRAME[1]~output_o\;

ww_o_FRAME(2) <= \o_FRAME[2]~output_o\;

ww_o_FRAME(3) <= \o_FRAME[3]~output_o\;

ww_o_FRAME(4) <= \o_FRAME[4]~output_o\;

ww_o_FRAME(5) <= \o_FRAME[5]~output_o\;

ww_o_FRAME(6) <= \o_FRAME[6]~output_o\;

ww_o_FRAME(7) <= \o_FRAME[7]~output_o\;

ww_o_FRAME(8) <= \o_FRAME[8]~output_o\;

ww_o_FRAME(9) <= \o_FRAME[9]~output_o\;

ww_o_FRAME(10) <= \o_FRAME[10]~output_o\;

ww_o_FRAME(11) <= \o_FRAME[11]~output_o\;

ww_o_FRAME(12) <= \o_FRAME[12]~output_o\;

ww_o_FRAME(13) <= \o_FRAME[13]~output_o\;

ww_o_FRAME(14) <= \o_FRAME[14]~output_o\;

ww_o_FRAME(15) <= \o_FRAME[15]~output_o\;

ww_o_A <= \o_A~output_o\;

ww_o_B <= \o_B~output_o\;

ww_o_C <= \o_C~output_o\;

ww_o_D <= \o_D~output_o\;
END structure;


