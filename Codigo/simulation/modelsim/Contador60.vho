-- Copyright (C) 2021  Intel Corporation. All rights reserved.
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
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "12/07/2021 14:47:08"

-- 
-- Device: Altera EP4CE10E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	Contador60 IS
    PORT (
	inicio : IN std_logic;
	alto : IN std_logic;
	restart : IN std_logic;
	clk : IN std_logic;
	ti0 : BUFFER std_logic;
	ti1 : BUFFER std_logic;
	segs : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Contador60;

-- Design Ports Information
-- ti0	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ti1	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segs[0]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segs[1]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segs[2]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segs[3]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segs[4]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segs[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segs[6]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- restart	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inicio	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alto	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Contador60 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inicio : std_logic;
SIGNAL ww_alto : std_logic;
SIGNAL ww_restart : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_ti0 : std_logic;
SIGNAL ww_ti1 : std_logic;
SIGNAL ww_segs : std_logic_vector(6 DOWNTO 0);
SIGNAL \bloquefreq1|clkout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \restart~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ti0~output_o\ : std_logic;
SIGNAL \ti1~output_o\ : std_logic;
SIGNAL \segs[0]~output_o\ : std_logic;
SIGNAL \segs[1]~output_o\ : std_logic;
SIGNAL \segs[2]~output_o\ : std_logic;
SIGNAL \segs[3]~output_o\ : std_logic;
SIGNAL \segs[4]~output_o\ : std_logic;
SIGNAL \segs[5]~output_o\ : std_logic;
SIGNAL \segs[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \bloquefreq60|cuenta[0]~32_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[19]~71\ : std_logic;
SIGNAL \bloquefreq60|cuenta[20]~72_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[20]~73\ : std_logic;
SIGNAL \bloquefreq60|cuenta[21]~74_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[21]~75\ : std_logic;
SIGNAL \bloquefreq60|cuenta[22]~76_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[22]~77\ : std_logic;
SIGNAL \bloquefreq60|cuenta[23]~78_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[23]~79\ : std_logic;
SIGNAL \bloquefreq60|cuenta[24]~80_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[24]~81\ : std_logic;
SIGNAL \bloquefreq60|cuenta[25]~82_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[25]~83\ : std_logic;
SIGNAL \bloquefreq60|cuenta[26]~84_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[26]~85\ : std_logic;
SIGNAL \bloquefreq60|cuenta[27]~86_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[27]~87\ : std_logic;
SIGNAL \bloquefreq60|cuenta[28]~88_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[28]~89\ : std_logic;
SIGNAL \bloquefreq60|cuenta[29]~90_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[29]~91\ : std_logic;
SIGNAL \bloquefreq60|cuenta[30]~92_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[30]~93\ : std_logic;
SIGNAL \bloquefreq60|cuenta[31]~94_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan1~7_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan1~9_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan1~8_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan1~10_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan0~1_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan0~5_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan0~3_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan0~4_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan0~6_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan1~0_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan0~0_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan0~2_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan0~7_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan0~8_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[0]~33\ : std_logic;
SIGNAL \bloquefreq60|cuenta[1]~34_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[1]~35\ : std_logic;
SIGNAL \bloquefreq60|cuenta[2]~36_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[2]~37\ : std_logic;
SIGNAL \bloquefreq60|cuenta[3]~38_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[3]~39\ : std_logic;
SIGNAL \bloquefreq60|cuenta[4]~40_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[4]~41\ : std_logic;
SIGNAL \bloquefreq60|cuenta[5]~42_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[5]~43\ : std_logic;
SIGNAL \bloquefreq60|cuenta[6]~44_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[6]~45\ : std_logic;
SIGNAL \bloquefreq60|cuenta[7]~46_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[7]~47\ : std_logic;
SIGNAL \bloquefreq60|cuenta[8]~48_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[8]~49\ : std_logic;
SIGNAL \bloquefreq60|cuenta[9]~50_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[9]~51\ : std_logic;
SIGNAL \bloquefreq60|cuenta[10]~52_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[10]~53\ : std_logic;
SIGNAL \bloquefreq60|cuenta[11]~54_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[11]~55\ : std_logic;
SIGNAL \bloquefreq60|cuenta[12]~56_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[12]~57\ : std_logic;
SIGNAL \bloquefreq60|cuenta[13]~58_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[13]~59\ : std_logic;
SIGNAL \bloquefreq60|cuenta[14]~60_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[14]~61\ : std_logic;
SIGNAL \bloquefreq60|cuenta[15]~62_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[15]~63\ : std_logic;
SIGNAL \bloquefreq60|cuenta[16]~64_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[16]~65\ : std_logic;
SIGNAL \bloquefreq60|cuenta[17]~66_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[17]~67\ : std_logic;
SIGNAL \bloquefreq60|cuenta[18]~68_combout\ : std_logic;
SIGNAL \bloquefreq60|cuenta[18]~69\ : std_logic;
SIGNAL \bloquefreq60|cuenta[19]~70_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan1~1_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan1~4_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan1~2_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan1~3_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan1~5_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan1~6_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan1~11_combout\ : std_logic;
SIGNAL \bloquefreq60|clkout~q\ : std_logic;
SIGNAL \bloquebinBCD|Add1~0_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~1\ : std_logic;
SIGNAL \bloquebinBCD|Add1~2_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~7\ : std_logic;
SIGNAL \bloquebinBCD|Add1~12_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~78_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~13\ : std_logic;
SIGNAL \bloquebinBCD|Add1~14_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~79_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~15\ : std_logic;
SIGNAL \bloquebinBCD|Add1~16_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~82_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~17\ : std_logic;
SIGNAL \bloquebinBCD|Add1~18_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~80_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~19\ : std_logic;
SIGNAL \bloquebinBCD|Add1~20_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~81_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~21\ : std_logic;
SIGNAL \bloquebinBCD|Add1~22_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~83_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~23\ : std_logic;
SIGNAL \bloquebinBCD|Add1~24_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~26_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~25\ : std_logic;
SIGNAL \bloquebinBCD|Add1~27_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~29_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~28\ : std_logic;
SIGNAL \bloquebinBCD|Add1~30_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~32_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~31\ : std_logic;
SIGNAL \bloquebinBCD|Add1~33_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~35_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~34\ : std_logic;
SIGNAL \bloquebinBCD|Add1~36_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~88_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~37\ : std_logic;
SIGNAL \bloquebinBCD|Add1~38_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~89_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~39\ : std_logic;
SIGNAL \bloquebinBCD|Add1~40_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~84_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~41\ : std_logic;
SIGNAL \bloquebinBCD|Add1~42_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~85_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~43\ : std_logic;
SIGNAL \bloquebinBCD|Add1~44_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~86_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~45\ : std_logic;
SIGNAL \bloquebinBCD|Add1~46_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~87_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~47\ : std_logic;
SIGNAL \bloquebinBCD|Add1~48_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~50_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~49\ : std_logic;
SIGNAL \bloquebinBCD|Add1~51_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~53_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~52\ : std_logic;
SIGNAL \bloquebinBCD|Add1~54_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~56_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~55\ : std_logic;
SIGNAL \bloquebinBCD|Add1~57_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~59_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~58\ : std_logic;
SIGNAL \bloquebinBCD|Add1~60_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~62_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~61\ : std_logic;
SIGNAL \bloquebinBCD|Add1~63_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~65_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~64\ : std_logic;
SIGNAL \bloquebinBCD|Add1~66_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~68_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~67\ : std_logic;
SIGNAL \bloquebinBCD|Add1~69_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~71_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~70\ : std_logic;
SIGNAL \bloquebinBCD|Add1~72_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~74_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~73\ : std_logic;
SIGNAL \bloquebinBCD|Add1~75_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~77_combout\ : std_logic;
SIGNAL \bloquebinBCD|Equal0~0_combout\ : std_logic;
SIGNAL \bloquebinBCD|Equal0~1_combout\ : std_logic;
SIGNAL \bloquebinBCD|Equal0~2_combout\ : std_logic;
SIGNAL \bloquebinBCD|LessThan3~1_combout\ : std_logic;
SIGNAL \bloquebinBCD|LessThan3~0_combout\ : std_logic;
SIGNAL \bloquebinBCD|process_0~1_combout\ : std_logic;
SIGNAL \bloquebinBCD|LessThan3~2_combout\ : std_logic;
SIGNAL \bloquebinBCD|LessThan3~3_combout\ : std_logic;
SIGNAL \bloquebinBCD|LessThan3~4_combout\ : std_logic;
SIGNAL \bloquebinBCD|LessThan3~5_combout\ : std_logic;
SIGNAL \bloquebinBCD|LessThan3~6_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~10_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~3\ : std_logic;
SIGNAL \bloquebinBCD|Add1~4_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~11_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~5\ : std_logic;
SIGNAL \bloquebinBCD|Add1~6_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~8_combout\ : std_logic;
SIGNAL \bloquebinBCD|process_0~0_combout\ : std_logic;
SIGNAL \bloquebinBCD|Equal0~3_combout\ : std_logic;
SIGNAL \bloquebinBCD|Equal0~5_combout\ : std_logic;
SIGNAL \bloquebinBCD|Equal0~4_combout\ : std_logic;
SIGNAL \bloquebinBCD|Equal0~6_combout\ : std_logic;
SIGNAL \bloquebinBCD|Equal0~7_combout\ : std_logic;
SIGNAL \bloquebinBCD|bcdout[7]~0_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~9_combout\ : std_logic;
SIGNAL \bloquebinBCD|Equal0~8_combout\ : std_logic;
SIGNAL \bloquebinBCD|process_0~2_combout\ : std_logic;
SIGNAL \bloquebinBCD|tempBCD~16_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[0]~32_combout\ : std_logic;
SIGNAL \bloquefreq1|LessThan1~0_combout\ : std_logic;
SIGNAL \bloquefreq1|LessThan1~1_combout\ : std_logic;
SIGNAL \bloquefreq1|LessThan0~3_combout\ : std_logic;
SIGNAL \bloquefreq1|LessThan1~2_combout\ : std_logic;
SIGNAL \bloquefreq1|LessThan0~0_combout\ : std_logic;
SIGNAL \bloquefreq1|LessThan1~4_combout\ : std_logic;
SIGNAL \bloquefreq1|LessThan1~3_combout\ : std_logic;
SIGNAL \bloquefreq1|LessThan0~1_combout\ : std_logic;
SIGNAL \bloquefreq1|LessThan0~2_combout\ : std_logic;
SIGNAL \bloquefreq1|LessThan0~4_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[0]~33\ : std_logic;
SIGNAL \bloquefreq1|cuenta[1]~34_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[1]~35\ : std_logic;
SIGNAL \bloquefreq1|cuenta[2]~36_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[2]~37\ : std_logic;
SIGNAL \bloquefreq1|cuenta[3]~38_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[3]~39\ : std_logic;
SIGNAL \bloquefreq1|cuenta[4]~40_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[4]~41\ : std_logic;
SIGNAL \bloquefreq1|cuenta[5]~42_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[5]~43\ : std_logic;
SIGNAL \bloquefreq1|cuenta[6]~44_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[6]~45\ : std_logic;
SIGNAL \bloquefreq1|cuenta[7]~46_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[7]~47\ : std_logic;
SIGNAL \bloquefreq1|cuenta[8]~48_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[8]~49\ : std_logic;
SIGNAL \bloquefreq1|cuenta[9]~50_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[9]~51\ : std_logic;
SIGNAL \bloquefreq1|cuenta[10]~52_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[10]~53\ : std_logic;
SIGNAL \bloquefreq1|cuenta[11]~54_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[11]~55\ : std_logic;
SIGNAL \bloquefreq1|cuenta[12]~56_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[12]~57\ : std_logic;
SIGNAL \bloquefreq1|cuenta[13]~58_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[13]~59\ : std_logic;
SIGNAL \bloquefreq1|cuenta[14]~60_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[14]~61\ : std_logic;
SIGNAL \bloquefreq1|cuenta[15]~62_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[15]~63\ : std_logic;
SIGNAL \bloquefreq1|cuenta[16]~64_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[16]~65\ : std_logic;
SIGNAL \bloquefreq1|cuenta[17]~66_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[17]~67\ : std_logic;
SIGNAL \bloquefreq1|cuenta[18]~68_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[18]~69\ : std_logic;
SIGNAL \bloquefreq1|cuenta[19]~70_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[19]~71\ : std_logic;
SIGNAL \bloquefreq1|cuenta[20]~72_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[20]~73\ : std_logic;
SIGNAL \bloquefreq1|cuenta[21]~74_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[21]~75\ : std_logic;
SIGNAL \bloquefreq1|cuenta[22]~76_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[22]~77\ : std_logic;
SIGNAL \bloquefreq1|cuenta[23]~78_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[23]~79\ : std_logic;
SIGNAL \bloquefreq1|cuenta[24]~80_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[24]~81\ : std_logic;
SIGNAL \bloquefreq1|cuenta[25]~82_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[25]~83\ : std_logic;
SIGNAL \bloquefreq1|cuenta[26]~84_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[26]~85\ : std_logic;
SIGNAL \bloquefreq1|cuenta[27]~86_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[27]~87\ : std_logic;
SIGNAL \bloquefreq1|cuenta[28]~88_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[28]~89\ : std_logic;
SIGNAL \bloquefreq1|cuenta[29]~90_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[29]~91\ : std_logic;
SIGNAL \bloquefreq1|cuenta[30]~92_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta[30]~93\ : std_logic;
SIGNAL \bloquefreq1|cuenta[31]~94_combout\ : std_logic;
SIGNAL \bloquefreq1|LessThan1~5_combout\ : std_logic;
SIGNAL \bloquefreq1|LessThan1~6_combout\ : std_logic;
SIGNAL \bloquefreq1|LessThan1~7_combout\ : std_logic;
SIGNAL \bloquefreq1|LessThan1~8_combout\ : std_logic;
SIGNAL \bloquefreq1|clkout~q\ : std_logic;
SIGNAL \bloquefreq1|clkout~clkctrl_outclk\ : std_logic;
SIGNAL \bloqueCont|ffjk0|temp~0_combout\ : std_logic;
SIGNAL \restart~input_o\ : std_logic;
SIGNAL \restart~inputclkctrl_outclk\ : std_logic;
SIGNAL \alto~input_o\ : std_logic;
SIGNAL \bloqueAntir|etapa2|Q~0_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[0]~32_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[18]~69\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[19]~70_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[19]~71\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[20]~72_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[20]~73\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[21]~74_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[21]~75\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[22]~76_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[22]~77\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[23]~78_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[23]~79\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[24]~80_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[24]~81\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[25]~82_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[25]~83\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[26]~84_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[26]~85\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[27]~86_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[27]~87\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[28]~88_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[28]~89\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[29]~90_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[29]~91\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[30]~92_combout\ : std_logic;
SIGNAL \bloqueAntir|Equal0~0_combout\ : std_logic;
SIGNAL \bloqueAntir|Equal0~1_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[30]~93\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[31]~94_combout\ : std_logic;
SIGNAL \bloqueAntir|LessThan0~1_combout\ : std_logic;
SIGNAL \bloqueAntir|Equal0~4_combout\ : std_logic;
SIGNAL \bloqueAntir|Equal0~5_combout\ : std_logic;
SIGNAL \bloqueAntir|Equal0~6_combout\ : std_logic;
SIGNAL \bloqueAntir|LessThan0~0_combout\ : std_logic;
SIGNAL \bloqueAntir|LessThan0~2_combout\ : std_logic;
SIGNAL \bloqueAntir|LessThan0~3_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[0]~33\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[1]~34_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[1]~35\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[2]~36_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[2]~37\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[3]~38_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[3]~39\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[4]~40_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[4]~41\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[5]~42_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[5]~43\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[6]~44_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[6]~45\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[7]~46_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[7]~47\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[8]~48_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[8]~49\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[9]~50_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[9]~51\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[10]~52_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[10]~53\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[11]~54_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[11]~55\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[12]~56_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[12]~57\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[13]~58_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[13]~59\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[14]~60_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[14]~61\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[15]~62_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[15]~63\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[16]~64_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[16]~65\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[17]~66_combout\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[17]~67\ : std_logic;
SIGNAL \bloqueAntir|slow_counter[18]~68_combout\ : std_logic;
SIGNAL \bloqueAntir|Equal0~2_combout\ : std_logic;
SIGNAL \bloqueAntir|Equal0~3_combout\ : std_logic;
SIGNAL \bloqueAntir|Equal0~7_combout\ : std_logic;
SIGNAL \bloqueAntir|Equal0~8_combout\ : std_logic;
SIGNAL \bloqueAntir|Equal0~9_combout\ : std_logic;
SIGNAL \bloqueAntir|Equal0~10_combout\ : std_logic;
SIGNAL \bloqueAntir|etapa2|Q~q\ : std_logic;
SIGNAL \bloqueAntir|etapa3|Q~feeder_combout\ : std_logic;
SIGNAL \bloqueAntir|etapa3|Q~q\ : std_logic;
SIGNAL \inicio~input_o\ : std_logic;
SIGNAL \bloqueAntir|etapa0|Q~0_combout\ : std_logic;
SIGNAL \bloqueAntir|etapa0|Q~q\ : std_logic;
SIGNAL \bloqueAntir|etapa1|Q~q\ : std_logic;
SIGNAL \bloqueCtrl|q~0_combout\ : std_logic;
SIGNAL \bloqueCtrl|q~1_combout\ : std_logic;
SIGNAL \bloqueCtrl|q~q\ : std_logic;
SIGNAL \bloqueCont|ffjk0|temp~q\ : std_logic;
SIGNAL \bloquebinBCD|tempBCD~17_combout\ : std_logic;
SIGNAL \bloqueCont|ffjk1|temp~0_combout\ : std_logic;
SIGNAL \bloqueCont|ffjk1|temp~q\ : std_logic;
SIGNAL \bloquebinBCD|tempBCD~15_combout\ : std_logic;
SIGNAL \bloquebinBCD|tempBCD~3_combout\ : std_logic;
SIGNAL \bloqueCont|comb~1_combout\ : std_logic;
SIGNAL \bloqueCont|ffjk3|temp~0_combout\ : std_logic;
SIGNAL \bloqueCont|ffjk5|temp~0_combout\ : std_logic;
SIGNAL \bloqueCont|ffjk5|temp~q\ : std_logic;
SIGNAL \bloqueCont|comb~2_combout\ : std_logic;
SIGNAL \bloqueCont|ffjk3|temp~1_combout\ : std_logic;
SIGNAL \bloqueCont|ffjk3|temp~q\ : std_logic;
SIGNAL \bloqueCont|ffjk4|temp~0_combout\ : std_logic;
SIGNAL \bloqueCont|ffjk4|temp~1_combout\ : std_logic;
SIGNAL \bloqueCont|ffjk4|temp~q\ : std_logic;
SIGNAL \bloqueCont|comb~0_combout\ : std_logic;
SIGNAL \bloqueCont|ffjk2|temp~0_combout\ : std_logic;
SIGNAL \bloqueCont|ffjk2|temp~q\ : std_logic;
SIGNAL \bloquebinBCD|tempBCD~14_combout\ : std_logic;
SIGNAL \bloquebinBCD|tempBCD~13_combout\ : std_logic;
SIGNAL \bloquebinBCD|tempBCD~12_combout\ : std_logic;
SIGNAL \bloquebinBCD|tempBCD~11_combout\ : std_logic;
SIGNAL \bloquebinBCD|tempBCD~10_combout\ : std_logic;
SIGNAL \bloquebinBCD|tempBCD~2_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add0~0_combout\ : std_logic;
SIGNAL \bloquebinBCD|tempBCD~5_combout\ : std_logic;
SIGNAL \bloquebinBCD|tempBCD[11]~1_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add0~1\ : std_logic;
SIGNAL \bloquebinBCD|Add0~2_combout\ : std_logic;
SIGNAL \bloquebinBCD|tempBCD~7_combout\ : std_logic;
SIGNAL \bloquebinBCD|LessThan2~0_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add0~3\ : std_logic;
SIGNAL \bloquebinBCD|Add0~4_combout\ : std_logic;
SIGNAL \bloquebinBCD|tempBCD~9_combout\ : std_logic;
SIGNAL \bloquebinBCD|bcdout[3]~feeder_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add0~5\ : std_logic;
SIGNAL \bloquebinBCD|Add0~6_combout\ : std_logic;
SIGNAL \bloquebinBCD|tempBCD~0_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add0~7\ : std_logic;
SIGNAL \bloquebinBCD|Add0~8_combout\ : std_logic;
SIGNAL \bloquebinBCD|tempBCD~4_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add0~9\ : std_logic;
SIGNAL \bloquebinBCD|Add0~10_combout\ : std_logic;
SIGNAL \bloquebinBCD|tempBCD~6_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add0~11\ : std_logic;
SIGNAL \bloquebinBCD|Add0~12_combout\ : std_logic;
SIGNAL \bloquebinBCD|tempBCD~8_combout\ : std_logic;
SIGNAL \bloquebinBCD|bcdout[7]~feeder_combout\ : std_logic;
SIGNAL \bloqueMult|bcdout~3_combout\ : std_logic;
SIGNAL \bloquebinBCD|bcdout[6]~feeder_combout\ : std_logic;
SIGNAL \bloqueMult|bcdout~2_combout\ : std_logic;
SIGNAL \bloquebinBCD|bcdout[5]~feeder_combout\ : std_logic;
SIGNAL \bloqueMult|bcdout~1_combout\ : std_logic;
SIGNAL \bloquebinBCD|bcdout[4]~feeder_combout\ : std_logic;
SIGNAL \bloqueMult|bcdout~0_combout\ : std_logic;
SIGNAL \bloquebcdseg|Mux6~0_combout\ : std_logic;
SIGNAL \bloquebcdseg|Mux5~0_combout\ : std_logic;
SIGNAL \bloquebcdseg|Mux4~0_combout\ : std_logic;
SIGNAL \bloquebcdseg|Mux3~0_combout\ : std_logic;
SIGNAL \bloquebcdseg|Mux2~0_combout\ : std_logic;
SIGNAL \bloquebcdseg|Mux1~0_combout\ : std_logic;
SIGNAL \bloquebcdseg|Mux0~0_combout\ : std_logic;
SIGNAL \bloquebinBCD|bcdout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \bloquefreq1|cuenta\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \bloquefreq60|cuenta\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \bloqueAntir|slow_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \bloqueMult|bcdout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bloquebinBCD|tempBCD\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \bloquebinBCD|numciclo\ : std_logic_vector(29 DOWNTO 0);
SIGNAL \bloquebcdseg|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \bloquefreq60|ALT_INV_clkout~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_inicio <= inicio;
ww_alto <= alto;
ww_restart <= restart;
ww_clk <= clk;
ti0 <= ww_ti0;
ti1 <= ww_ti1;
segs <= ww_segs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\bloquefreq1|clkout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \bloquefreq1|clkout~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\restart~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \restart~input_o\);
\bloquebcdseg|ALT_INV_Mux6~0_combout\ <= NOT \bloquebcdseg|Mux6~0_combout\;
\bloquefreq60|ALT_INV_clkout~q\ <= NOT \bloquefreq60|clkout~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y24_N16
\ti0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloquefreq60|clkout~q\,
	devoe => ww_devoe,
	o => \ti0~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\ti1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloquefreq60|ALT_INV_clkout~q\,
	devoe => ww_devoe,
	o => \ti1~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\segs[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloquebcdseg|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \segs[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\segs[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloquebcdseg|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \segs[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\segs[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloquebcdseg|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \segs[2]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\segs[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloquebcdseg|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \segs[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\segs[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloquebcdseg|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \segs[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\segs[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloquebcdseg|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \segs[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\segs[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloquebcdseg|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \segs[6]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X23_Y20_N0
\bloquefreq60|cuenta[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[0]~32_combout\ = \bloquefreq60|cuenta\(0) $ (VCC)
-- \bloquefreq60|cuenta[0]~33\ = CARRY(\bloquefreq60|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq60|cuenta\(0),
	datad => VCC,
	combout => \bloquefreq60|cuenta[0]~32_combout\,
	cout => \bloquefreq60|cuenta[0]~33\);

-- Location: LCCOMB_X23_Y19_N6
\bloquefreq60|cuenta[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[19]~70_combout\ = (\bloquefreq60|cuenta\(19) & (!\bloquefreq60|cuenta[18]~69\)) # (!\bloquefreq60|cuenta\(19) & ((\bloquefreq60|cuenta[18]~69\) # (GND)))
-- \bloquefreq60|cuenta[19]~71\ = CARRY((!\bloquefreq60|cuenta[18]~69\) # (!\bloquefreq60|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(19),
	datad => VCC,
	cin => \bloquefreq60|cuenta[18]~69\,
	combout => \bloquefreq60|cuenta[19]~70_combout\,
	cout => \bloquefreq60|cuenta[19]~71\);

-- Location: LCCOMB_X23_Y19_N8
\bloquefreq60|cuenta[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[20]~72_combout\ = (\bloquefreq60|cuenta\(20) & (\bloquefreq60|cuenta[19]~71\ $ (GND))) # (!\bloquefreq60|cuenta\(20) & (!\bloquefreq60|cuenta[19]~71\ & VCC))
-- \bloquefreq60|cuenta[20]~73\ = CARRY((\bloquefreq60|cuenta\(20) & !\bloquefreq60|cuenta[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq60|cuenta\(20),
	datad => VCC,
	cin => \bloquefreq60|cuenta[19]~71\,
	combout => \bloquefreq60|cuenta[20]~72_combout\,
	cout => \bloquefreq60|cuenta[20]~73\);

-- Location: FF_X23_Y19_N9
\bloquefreq60|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[20]~72_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(20));

-- Location: LCCOMB_X23_Y19_N10
\bloquefreq60|cuenta[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[21]~74_combout\ = (\bloquefreq60|cuenta\(21) & (!\bloquefreq60|cuenta[20]~73\)) # (!\bloquefreq60|cuenta\(21) & ((\bloquefreq60|cuenta[20]~73\) # (GND)))
-- \bloquefreq60|cuenta[21]~75\ = CARRY((!\bloquefreq60|cuenta[20]~73\) # (!\bloquefreq60|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(21),
	datad => VCC,
	cin => \bloquefreq60|cuenta[20]~73\,
	combout => \bloquefreq60|cuenta[21]~74_combout\,
	cout => \bloquefreq60|cuenta[21]~75\);

-- Location: FF_X23_Y19_N11
\bloquefreq60|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[21]~74_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(21));

-- Location: LCCOMB_X23_Y19_N12
\bloquefreq60|cuenta[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[22]~76_combout\ = (\bloquefreq60|cuenta\(22) & (\bloquefreq60|cuenta[21]~75\ $ (GND))) # (!\bloquefreq60|cuenta\(22) & (!\bloquefreq60|cuenta[21]~75\ & VCC))
-- \bloquefreq60|cuenta[22]~77\ = CARRY((\bloquefreq60|cuenta\(22) & !\bloquefreq60|cuenta[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(22),
	datad => VCC,
	cin => \bloquefreq60|cuenta[21]~75\,
	combout => \bloquefreq60|cuenta[22]~76_combout\,
	cout => \bloquefreq60|cuenta[22]~77\);

-- Location: FF_X23_Y19_N13
\bloquefreq60|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[22]~76_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(22));

-- Location: LCCOMB_X23_Y19_N14
\bloquefreq60|cuenta[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[23]~78_combout\ = (\bloquefreq60|cuenta\(23) & (!\bloquefreq60|cuenta[22]~77\)) # (!\bloquefreq60|cuenta\(23) & ((\bloquefreq60|cuenta[22]~77\) # (GND)))
-- \bloquefreq60|cuenta[23]~79\ = CARRY((!\bloquefreq60|cuenta[22]~77\) # (!\bloquefreq60|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq60|cuenta\(23),
	datad => VCC,
	cin => \bloquefreq60|cuenta[22]~77\,
	combout => \bloquefreq60|cuenta[23]~78_combout\,
	cout => \bloquefreq60|cuenta[23]~79\);

-- Location: FF_X23_Y19_N15
\bloquefreq60|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[23]~78_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(23));

-- Location: LCCOMB_X23_Y19_N16
\bloquefreq60|cuenta[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[24]~80_combout\ = (\bloquefreq60|cuenta\(24) & (\bloquefreq60|cuenta[23]~79\ $ (GND))) # (!\bloquefreq60|cuenta\(24) & (!\bloquefreq60|cuenta[23]~79\ & VCC))
-- \bloquefreq60|cuenta[24]~81\ = CARRY((\bloquefreq60|cuenta\(24) & !\bloquefreq60|cuenta[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq60|cuenta\(24),
	datad => VCC,
	cin => \bloquefreq60|cuenta[23]~79\,
	combout => \bloquefreq60|cuenta[24]~80_combout\,
	cout => \bloquefreq60|cuenta[24]~81\);

-- Location: FF_X23_Y19_N17
\bloquefreq60|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[24]~80_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(24));

-- Location: LCCOMB_X23_Y19_N18
\bloquefreq60|cuenta[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[25]~82_combout\ = (\bloquefreq60|cuenta\(25) & (!\bloquefreq60|cuenta[24]~81\)) # (!\bloquefreq60|cuenta\(25) & ((\bloquefreq60|cuenta[24]~81\) # (GND)))
-- \bloquefreq60|cuenta[25]~83\ = CARRY((!\bloquefreq60|cuenta[24]~81\) # (!\bloquefreq60|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq60|cuenta\(25),
	datad => VCC,
	cin => \bloquefreq60|cuenta[24]~81\,
	combout => \bloquefreq60|cuenta[25]~82_combout\,
	cout => \bloquefreq60|cuenta[25]~83\);

-- Location: FF_X23_Y19_N19
\bloquefreq60|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[25]~82_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(25));

-- Location: LCCOMB_X23_Y19_N20
\bloquefreq60|cuenta[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[26]~84_combout\ = (\bloquefreq60|cuenta\(26) & (\bloquefreq60|cuenta[25]~83\ $ (GND))) # (!\bloquefreq60|cuenta\(26) & (!\bloquefreq60|cuenta[25]~83\ & VCC))
-- \bloquefreq60|cuenta[26]~85\ = CARRY((\bloquefreq60|cuenta\(26) & !\bloquefreq60|cuenta[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq60|cuenta\(26),
	datad => VCC,
	cin => \bloquefreq60|cuenta[25]~83\,
	combout => \bloquefreq60|cuenta[26]~84_combout\,
	cout => \bloquefreq60|cuenta[26]~85\);

-- Location: FF_X23_Y19_N21
\bloquefreq60|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[26]~84_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(26));

-- Location: LCCOMB_X23_Y19_N22
\bloquefreq60|cuenta[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[27]~86_combout\ = (\bloquefreq60|cuenta\(27) & (!\bloquefreq60|cuenta[26]~85\)) # (!\bloquefreq60|cuenta\(27) & ((\bloquefreq60|cuenta[26]~85\) # (GND)))
-- \bloquefreq60|cuenta[27]~87\ = CARRY((!\bloquefreq60|cuenta[26]~85\) # (!\bloquefreq60|cuenta\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(27),
	datad => VCC,
	cin => \bloquefreq60|cuenta[26]~85\,
	combout => \bloquefreq60|cuenta[27]~86_combout\,
	cout => \bloquefreq60|cuenta[27]~87\);

-- Location: FF_X23_Y19_N23
\bloquefreq60|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[27]~86_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(27));

-- Location: LCCOMB_X23_Y19_N24
\bloquefreq60|cuenta[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[28]~88_combout\ = (\bloquefreq60|cuenta\(28) & (\bloquefreq60|cuenta[27]~87\ $ (GND))) # (!\bloquefreq60|cuenta\(28) & (!\bloquefreq60|cuenta[27]~87\ & VCC))
-- \bloquefreq60|cuenta[28]~89\ = CARRY((\bloquefreq60|cuenta\(28) & !\bloquefreq60|cuenta[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq60|cuenta\(28),
	datad => VCC,
	cin => \bloquefreq60|cuenta[27]~87\,
	combout => \bloquefreq60|cuenta[28]~88_combout\,
	cout => \bloquefreq60|cuenta[28]~89\);

-- Location: FF_X23_Y19_N25
\bloquefreq60|cuenta[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[28]~88_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(28));

-- Location: LCCOMB_X23_Y19_N26
\bloquefreq60|cuenta[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[29]~90_combout\ = (\bloquefreq60|cuenta\(29) & (!\bloquefreq60|cuenta[28]~89\)) # (!\bloquefreq60|cuenta\(29) & ((\bloquefreq60|cuenta[28]~89\) # (GND)))
-- \bloquefreq60|cuenta[29]~91\ = CARRY((!\bloquefreq60|cuenta[28]~89\) # (!\bloquefreq60|cuenta\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(29),
	datad => VCC,
	cin => \bloquefreq60|cuenta[28]~89\,
	combout => \bloquefreq60|cuenta[29]~90_combout\,
	cout => \bloquefreq60|cuenta[29]~91\);

-- Location: FF_X23_Y19_N27
\bloquefreq60|cuenta[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[29]~90_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(29));

-- Location: LCCOMB_X23_Y19_N28
\bloquefreq60|cuenta[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[30]~92_combout\ = (\bloquefreq60|cuenta\(30) & (\bloquefreq60|cuenta[29]~91\ $ (GND))) # (!\bloquefreq60|cuenta\(30) & (!\bloquefreq60|cuenta[29]~91\ & VCC))
-- \bloquefreq60|cuenta[30]~93\ = CARRY((\bloquefreq60|cuenta\(30) & !\bloquefreq60|cuenta[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq60|cuenta\(30),
	datad => VCC,
	cin => \bloquefreq60|cuenta[29]~91\,
	combout => \bloquefreq60|cuenta[30]~92_combout\,
	cout => \bloquefreq60|cuenta[30]~93\);

-- Location: FF_X23_Y19_N29
\bloquefreq60|cuenta[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[30]~92_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(30));

-- Location: LCCOMB_X23_Y19_N30
\bloquefreq60|cuenta[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[31]~94_combout\ = \bloquefreq60|cuenta\(31) $ (\bloquefreq60|cuenta[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(31),
	cin => \bloquefreq60|cuenta[30]~93\,
	combout => \bloquefreq60|cuenta[31]~94_combout\);

-- Location: FF_X23_Y19_N31
\bloquefreq60|cuenta[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[31]~94_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(31));

-- Location: LCCOMB_X22_Y19_N8
\bloquefreq60|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan1~7_combout\ = (!\bloquefreq60|cuenta\(20) & (!\bloquefreq60|cuenta\(22) & (!\bloquefreq60|cuenta\(23) & !\bloquefreq60|cuenta\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(20),
	datab => \bloquefreq60|cuenta\(22),
	datac => \bloquefreq60|cuenta\(23),
	datad => \bloquefreq60|cuenta\(21),
	combout => \bloquefreq60|LessThan1~7_combout\);

-- Location: LCCOMB_X22_Y19_N4
\bloquefreq60|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan1~9_combout\ = (!\bloquefreq60|cuenta\(30) & (!\bloquefreq60|cuenta\(29) & !\bloquefreq60|cuenta\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq60|cuenta\(30),
	datac => \bloquefreq60|cuenta\(29),
	datad => \bloquefreq60|cuenta\(28),
	combout => \bloquefreq60|LessThan1~9_combout\);

-- Location: LCCOMB_X22_Y19_N18
\bloquefreq60|LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan1~8_combout\ = (!\bloquefreq60|cuenta\(26) & (!\bloquefreq60|cuenta\(25) & (!\bloquefreq60|cuenta\(27) & !\bloquefreq60|cuenta\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(26),
	datab => \bloquefreq60|cuenta\(25),
	datac => \bloquefreq60|cuenta\(27),
	datad => \bloquefreq60|cuenta\(24),
	combout => \bloquefreq60|LessThan1~8_combout\);

-- Location: LCCOMB_X22_Y19_N2
\bloquefreq60|LessThan1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan1~10_combout\ = (\bloquefreq60|LessThan1~7_combout\ & (\bloquefreq60|LessThan1~9_combout\ & \bloquefreq60|LessThan1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq60|LessThan1~7_combout\,
	datac => \bloquefreq60|LessThan1~9_combout\,
	datad => \bloquefreq60|LessThan1~8_combout\,
	combout => \bloquefreq60|LessThan1~10_combout\);

-- Location: LCCOMB_X22_Y20_N8
\bloquefreq60|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan0~1_combout\ = (!\bloquefreq60|cuenta\(14) & (!\bloquefreq60|cuenta\(17) & !\bloquefreq60|cuenta\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq60|cuenta\(14),
	datac => \bloquefreq60|cuenta\(17),
	datad => \bloquefreq60|cuenta\(16),
	combout => \bloquefreq60|LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y20_N0
\bloquefreq60|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan0~5_combout\ = (!\bloquefreq60|cuenta\(3) & (((!\bloquefreq60|cuenta\(0) & !\bloquefreq60|cuenta\(1))) # (!\bloquefreq60|cuenta\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(2),
	datab => \bloquefreq60|cuenta\(3),
	datac => \bloquefreq60|cuenta\(0),
	datad => \bloquefreq60|cuenta\(1),
	combout => \bloquefreq60|LessThan0~5_combout\);

-- Location: LCCOMB_X22_Y20_N4
\bloquefreq60|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan0~3_combout\ = (!\bloquefreq60|cuenta\(6) & (!\bloquefreq60|cuenta\(7) & ((!\bloquefreq60|cuenta\(5)) # (!\bloquefreq60|cuenta\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(6),
	datab => \bloquefreq60|cuenta\(7),
	datac => \bloquefreq60|cuenta\(4),
	datad => \bloquefreq60|cuenta\(5),
	combout => \bloquefreq60|LessThan0~3_combout\);

-- Location: LCCOMB_X22_Y20_N10
\bloquefreq60|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan0~4_combout\ = (((\bloquefreq60|LessThan0~3_combout\) # (!\bloquefreq60|cuenta\(8))) # (!\bloquefreq60|cuenta\(9))) # (!\bloquefreq60|cuenta\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(10),
	datab => \bloquefreq60|cuenta\(9),
	datac => \bloquefreq60|LessThan0~3_combout\,
	datad => \bloquefreq60|cuenta\(8),
	combout => \bloquefreq60|LessThan0~4_combout\);

-- Location: LCCOMB_X22_Y20_N22
\bloquefreq60|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan0~6_combout\ = (\bloquefreq60|LessThan0~4_combout\) # ((!\bloquefreq60|cuenta\(6) & (\bloquefreq60|LessThan0~5_combout\ & !\bloquefreq60|cuenta\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(6),
	datab => \bloquefreq60|LessThan0~5_combout\,
	datac => \bloquefreq60|cuenta\(7),
	datad => \bloquefreq60|LessThan0~4_combout\,
	combout => \bloquefreq60|LessThan0~6_combout\);

-- Location: LCCOMB_X22_Y20_N6
\bloquefreq60|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan1~0_combout\ = (!\bloquefreq60|cuenta\(15) & !\bloquefreq60|cuenta\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloquefreq60|cuenta\(15),
	datad => \bloquefreq60|cuenta\(16),
	combout => \bloquefreq60|LessThan1~0_combout\);

-- Location: LCCOMB_X22_Y20_N26
\bloquefreq60|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan0~0_combout\ = (((!\bloquefreq60|cuenta\(17) & \bloquefreq60|LessThan1~0_combout\)) # (!\bloquefreq60|cuenta\(18))) # (!\bloquefreq60|cuenta\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(19),
	datab => \bloquefreq60|cuenta\(18),
	datac => \bloquefreq60|cuenta\(17),
	datad => \bloquefreq60|LessThan1~0_combout\,
	combout => \bloquefreq60|LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y20_N2
\bloquefreq60|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan0~2_combout\ = (\bloquefreq60|LessThan0~0_combout\) # ((\bloquefreq60|LessThan0~1_combout\ & ((!\bloquefreq60|cuenta\(12)) # (!\bloquefreq60|cuenta\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(13),
	datab => \bloquefreq60|LessThan0~1_combout\,
	datac => \bloquefreq60|LessThan0~0_combout\,
	datad => \bloquefreq60|cuenta\(12),
	combout => \bloquefreq60|LessThan0~2_combout\);

-- Location: LCCOMB_X22_Y20_N24
\bloquefreq60|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan0~7_combout\ = (\bloquefreq60|LessThan0~2_combout\) # ((!\bloquefreq60|cuenta\(11) & (\bloquefreq60|LessThan0~1_combout\ & \bloquefreq60|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(11),
	datab => \bloquefreq60|LessThan0~1_combout\,
	datac => \bloquefreq60|LessThan0~6_combout\,
	datad => \bloquefreq60|LessThan0~2_combout\,
	combout => \bloquefreq60|LessThan0~7_combout\);

-- Location: LCCOMB_X22_Y20_N30
\bloquefreq60|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan0~8_combout\ = (!\bloquefreq60|cuenta\(31) & ((!\bloquefreq60|LessThan0~7_combout\) # (!\bloquefreq60|LessThan1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq60|cuenta\(31),
	datac => \bloquefreq60|LessThan1~10_combout\,
	datad => \bloquefreq60|LessThan0~7_combout\,
	combout => \bloquefreq60|LessThan0~8_combout\);

-- Location: FF_X23_Y20_N1
\bloquefreq60|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[0]~32_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(0));

-- Location: LCCOMB_X23_Y20_N2
\bloquefreq60|cuenta[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[1]~34_combout\ = (\bloquefreq60|cuenta\(1) & (!\bloquefreq60|cuenta[0]~33\)) # (!\bloquefreq60|cuenta\(1) & ((\bloquefreq60|cuenta[0]~33\) # (GND)))
-- \bloquefreq60|cuenta[1]~35\ = CARRY((!\bloquefreq60|cuenta[0]~33\) # (!\bloquefreq60|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq60|cuenta\(1),
	datad => VCC,
	cin => \bloquefreq60|cuenta[0]~33\,
	combout => \bloquefreq60|cuenta[1]~34_combout\,
	cout => \bloquefreq60|cuenta[1]~35\);

-- Location: FF_X23_Y20_N3
\bloquefreq60|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[1]~34_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(1));

-- Location: LCCOMB_X23_Y20_N4
\bloquefreq60|cuenta[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[2]~36_combout\ = (\bloquefreq60|cuenta\(2) & (\bloquefreq60|cuenta[1]~35\ $ (GND))) # (!\bloquefreq60|cuenta\(2) & (!\bloquefreq60|cuenta[1]~35\ & VCC))
-- \bloquefreq60|cuenta[2]~37\ = CARRY((\bloquefreq60|cuenta\(2) & !\bloquefreq60|cuenta[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq60|cuenta\(2),
	datad => VCC,
	cin => \bloquefreq60|cuenta[1]~35\,
	combout => \bloquefreq60|cuenta[2]~36_combout\,
	cout => \bloquefreq60|cuenta[2]~37\);

-- Location: FF_X23_Y20_N5
\bloquefreq60|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[2]~36_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(2));

-- Location: LCCOMB_X23_Y20_N6
\bloquefreq60|cuenta[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[3]~38_combout\ = (\bloquefreq60|cuenta\(3) & (!\bloquefreq60|cuenta[2]~37\)) # (!\bloquefreq60|cuenta\(3) & ((\bloquefreq60|cuenta[2]~37\) # (GND)))
-- \bloquefreq60|cuenta[3]~39\ = CARRY((!\bloquefreq60|cuenta[2]~37\) # (!\bloquefreq60|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(3),
	datad => VCC,
	cin => \bloquefreq60|cuenta[2]~37\,
	combout => \bloquefreq60|cuenta[3]~38_combout\,
	cout => \bloquefreq60|cuenta[3]~39\);

-- Location: FF_X23_Y20_N7
\bloquefreq60|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[3]~38_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(3));

-- Location: LCCOMB_X23_Y20_N8
\bloquefreq60|cuenta[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[4]~40_combout\ = (\bloquefreq60|cuenta\(4) & (\bloquefreq60|cuenta[3]~39\ $ (GND))) # (!\bloquefreq60|cuenta\(4) & (!\bloquefreq60|cuenta[3]~39\ & VCC))
-- \bloquefreq60|cuenta[4]~41\ = CARRY((\bloquefreq60|cuenta\(4) & !\bloquefreq60|cuenta[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq60|cuenta\(4),
	datad => VCC,
	cin => \bloquefreq60|cuenta[3]~39\,
	combout => \bloquefreq60|cuenta[4]~40_combout\,
	cout => \bloquefreq60|cuenta[4]~41\);

-- Location: FF_X23_Y20_N9
\bloquefreq60|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[4]~40_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(4));

-- Location: LCCOMB_X23_Y20_N10
\bloquefreq60|cuenta[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[5]~42_combout\ = (\bloquefreq60|cuenta\(5) & (!\bloquefreq60|cuenta[4]~41\)) # (!\bloquefreq60|cuenta\(5) & ((\bloquefreq60|cuenta[4]~41\) # (GND)))
-- \bloquefreq60|cuenta[5]~43\ = CARRY((!\bloquefreq60|cuenta[4]~41\) # (!\bloquefreq60|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(5),
	datad => VCC,
	cin => \bloquefreq60|cuenta[4]~41\,
	combout => \bloquefreq60|cuenta[5]~42_combout\,
	cout => \bloquefreq60|cuenta[5]~43\);

-- Location: FF_X23_Y20_N11
\bloquefreq60|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[5]~42_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(5));

-- Location: LCCOMB_X23_Y20_N12
\bloquefreq60|cuenta[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[6]~44_combout\ = (\bloquefreq60|cuenta\(6) & (\bloquefreq60|cuenta[5]~43\ $ (GND))) # (!\bloquefreq60|cuenta\(6) & (!\bloquefreq60|cuenta[5]~43\ & VCC))
-- \bloquefreq60|cuenta[6]~45\ = CARRY((\bloquefreq60|cuenta\(6) & !\bloquefreq60|cuenta[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(6),
	datad => VCC,
	cin => \bloquefreq60|cuenta[5]~43\,
	combout => \bloquefreq60|cuenta[6]~44_combout\,
	cout => \bloquefreq60|cuenta[6]~45\);

-- Location: FF_X23_Y20_N13
\bloquefreq60|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[6]~44_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(6));

-- Location: LCCOMB_X23_Y20_N14
\bloquefreq60|cuenta[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[7]~46_combout\ = (\bloquefreq60|cuenta\(7) & (!\bloquefreq60|cuenta[6]~45\)) # (!\bloquefreq60|cuenta\(7) & ((\bloquefreq60|cuenta[6]~45\) # (GND)))
-- \bloquefreq60|cuenta[7]~47\ = CARRY((!\bloquefreq60|cuenta[6]~45\) # (!\bloquefreq60|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq60|cuenta\(7),
	datad => VCC,
	cin => \bloquefreq60|cuenta[6]~45\,
	combout => \bloquefreq60|cuenta[7]~46_combout\,
	cout => \bloquefreq60|cuenta[7]~47\);

-- Location: FF_X23_Y20_N15
\bloquefreq60|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[7]~46_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(7));

-- Location: LCCOMB_X23_Y20_N16
\bloquefreq60|cuenta[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[8]~48_combout\ = (\bloquefreq60|cuenta\(8) & (\bloquefreq60|cuenta[7]~47\ $ (GND))) # (!\bloquefreq60|cuenta\(8) & (!\bloquefreq60|cuenta[7]~47\ & VCC))
-- \bloquefreq60|cuenta[8]~49\ = CARRY((\bloquefreq60|cuenta\(8) & !\bloquefreq60|cuenta[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq60|cuenta\(8),
	datad => VCC,
	cin => \bloquefreq60|cuenta[7]~47\,
	combout => \bloquefreq60|cuenta[8]~48_combout\,
	cout => \bloquefreq60|cuenta[8]~49\);

-- Location: FF_X23_Y20_N17
\bloquefreq60|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[8]~48_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(8));

-- Location: LCCOMB_X23_Y20_N18
\bloquefreq60|cuenta[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[9]~50_combout\ = (\bloquefreq60|cuenta\(9) & (!\bloquefreq60|cuenta[8]~49\)) # (!\bloquefreq60|cuenta\(9) & ((\bloquefreq60|cuenta[8]~49\) # (GND)))
-- \bloquefreq60|cuenta[9]~51\ = CARRY((!\bloquefreq60|cuenta[8]~49\) # (!\bloquefreq60|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq60|cuenta\(9),
	datad => VCC,
	cin => \bloquefreq60|cuenta[8]~49\,
	combout => \bloquefreq60|cuenta[9]~50_combout\,
	cout => \bloquefreq60|cuenta[9]~51\);

-- Location: FF_X23_Y20_N19
\bloquefreq60|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[9]~50_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(9));

-- Location: LCCOMB_X23_Y20_N20
\bloquefreq60|cuenta[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[10]~52_combout\ = (\bloquefreq60|cuenta\(10) & (\bloquefreq60|cuenta[9]~51\ $ (GND))) # (!\bloquefreq60|cuenta\(10) & (!\bloquefreq60|cuenta[9]~51\ & VCC))
-- \bloquefreq60|cuenta[10]~53\ = CARRY((\bloquefreq60|cuenta\(10) & !\bloquefreq60|cuenta[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq60|cuenta\(10),
	datad => VCC,
	cin => \bloquefreq60|cuenta[9]~51\,
	combout => \bloquefreq60|cuenta[10]~52_combout\,
	cout => \bloquefreq60|cuenta[10]~53\);

-- Location: FF_X23_Y20_N21
\bloquefreq60|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[10]~52_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(10));

-- Location: LCCOMB_X23_Y20_N22
\bloquefreq60|cuenta[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[11]~54_combout\ = (\bloquefreq60|cuenta\(11) & (!\bloquefreq60|cuenta[10]~53\)) # (!\bloquefreq60|cuenta\(11) & ((\bloquefreq60|cuenta[10]~53\) # (GND)))
-- \bloquefreq60|cuenta[11]~55\ = CARRY((!\bloquefreq60|cuenta[10]~53\) # (!\bloquefreq60|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(11),
	datad => VCC,
	cin => \bloquefreq60|cuenta[10]~53\,
	combout => \bloquefreq60|cuenta[11]~54_combout\,
	cout => \bloquefreq60|cuenta[11]~55\);

-- Location: FF_X23_Y20_N23
\bloquefreq60|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[11]~54_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(11));

-- Location: LCCOMB_X23_Y20_N24
\bloquefreq60|cuenta[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[12]~56_combout\ = (\bloquefreq60|cuenta\(12) & (\bloquefreq60|cuenta[11]~55\ $ (GND))) # (!\bloquefreq60|cuenta\(12) & (!\bloquefreq60|cuenta[11]~55\ & VCC))
-- \bloquefreq60|cuenta[12]~57\ = CARRY((\bloquefreq60|cuenta\(12) & !\bloquefreq60|cuenta[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq60|cuenta\(12),
	datad => VCC,
	cin => \bloquefreq60|cuenta[11]~55\,
	combout => \bloquefreq60|cuenta[12]~56_combout\,
	cout => \bloquefreq60|cuenta[12]~57\);

-- Location: FF_X23_Y20_N25
\bloquefreq60|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[12]~56_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(12));

-- Location: LCCOMB_X23_Y20_N26
\bloquefreq60|cuenta[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[13]~58_combout\ = (\bloquefreq60|cuenta\(13) & (!\bloquefreq60|cuenta[12]~57\)) # (!\bloquefreq60|cuenta\(13) & ((\bloquefreq60|cuenta[12]~57\) # (GND)))
-- \bloquefreq60|cuenta[13]~59\ = CARRY((!\bloquefreq60|cuenta[12]~57\) # (!\bloquefreq60|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(13),
	datad => VCC,
	cin => \bloquefreq60|cuenta[12]~57\,
	combout => \bloquefreq60|cuenta[13]~58_combout\,
	cout => \bloquefreq60|cuenta[13]~59\);

-- Location: FF_X23_Y20_N27
\bloquefreq60|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[13]~58_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(13));

-- Location: LCCOMB_X23_Y20_N28
\bloquefreq60|cuenta[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[14]~60_combout\ = (\bloquefreq60|cuenta\(14) & (\bloquefreq60|cuenta[13]~59\ $ (GND))) # (!\bloquefreq60|cuenta\(14) & (!\bloquefreq60|cuenta[13]~59\ & VCC))
-- \bloquefreq60|cuenta[14]~61\ = CARRY((\bloquefreq60|cuenta\(14) & !\bloquefreq60|cuenta[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq60|cuenta\(14),
	datad => VCC,
	cin => \bloquefreq60|cuenta[13]~59\,
	combout => \bloquefreq60|cuenta[14]~60_combout\,
	cout => \bloquefreq60|cuenta[14]~61\);

-- Location: FF_X23_Y20_N29
\bloquefreq60|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[14]~60_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(14));

-- Location: LCCOMB_X23_Y20_N30
\bloquefreq60|cuenta[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[15]~62_combout\ = (\bloquefreq60|cuenta\(15) & (!\bloquefreq60|cuenta[14]~61\)) # (!\bloquefreq60|cuenta\(15) & ((\bloquefreq60|cuenta[14]~61\) # (GND)))
-- \bloquefreq60|cuenta[15]~63\ = CARRY((!\bloquefreq60|cuenta[14]~61\) # (!\bloquefreq60|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(15),
	datad => VCC,
	cin => \bloquefreq60|cuenta[14]~61\,
	combout => \bloquefreq60|cuenta[15]~62_combout\,
	cout => \bloquefreq60|cuenta[15]~63\);

-- Location: FF_X23_Y20_N31
\bloquefreq60|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[15]~62_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(15));

-- Location: LCCOMB_X23_Y19_N0
\bloquefreq60|cuenta[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[16]~64_combout\ = (\bloquefreq60|cuenta\(16) & (\bloquefreq60|cuenta[15]~63\ $ (GND))) # (!\bloquefreq60|cuenta\(16) & (!\bloquefreq60|cuenta[15]~63\ & VCC))
-- \bloquefreq60|cuenta[16]~65\ = CARRY((\bloquefreq60|cuenta\(16) & !\bloquefreq60|cuenta[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq60|cuenta\(16),
	datad => VCC,
	cin => \bloquefreq60|cuenta[15]~63\,
	combout => \bloquefreq60|cuenta[16]~64_combout\,
	cout => \bloquefreq60|cuenta[16]~65\);

-- Location: FF_X23_Y19_N1
\bloquefreq60|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[16]~64_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(16));

-- Location: LCCOMB_X23_Y19_N2
\bloquefreq60|cuenta[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[17]~66_combout\ = (\bloquefreq60|cuenta\(17) & (!\bloquefreq60|cuenta[16]~65\)) # (!\bloquefreq60|cuenta\(17) & ((\bloquefreq60|cuenta[16]~65\) # (GND)))
-- \bloquefreq60|cuenta[17]~67\ = CARRY((!\bloquefreq60|cuenta[16]~65\) # (!\bloquefreq60|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq60|cuenta\(17),
	datad => VCC,
	cin => \bloquefreq60|cuenta[16]~65\,
	combout => \bloquefreq60|cuenta[17]~66_combout\,
	cout => \bloquefreq60|cuenta[17]~67\);

-- Location: FF_X23_Y19_N3
\bloquefreq60|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[17]~66_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(17));

-- Location: LCCOMB_X23_Y19_N4
\bloquefreq60|cuenta[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[18]~68_combout\ = (\bloquefreq60|cuenta\(18) & (\bloquefreq60|cuenta[17]~67\ $ (GND))) # (!\bloquefreq60|cuenta\(18) & (!\bloquefreq60|cuenta[17]~67\ & VCC))
-- \bloquefreq60|cuenta[18]~69\ = CARRY((\bloquefreq60|cuenta\(18) & !\bloquefreq60|cuenta[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq60|cuenta\(18),
	datad => VCC,
	cin => \bloquefreq60|cuenta[17]~67\,
	combout => \bloquefreq60|cuenta[18]~68_combout\,
	cout => \bloquefreq60|cuenta[18]~69\);

-- Location: FF_X23_Y19_N5
\bloquefreq60|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[18]~68_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(18));

-- Location: FF_X23_Y19_N7
\bloquefreq60|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[19]~70_combout\,
	sclr => \bloquefreq60|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(19));

-- Location: LCCOMB_X22_Y20_N28
\bloquefreq60|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan1~1_combout\ = (((\bloquefreq60|LessThan1~0_combout\ & !\bloquefreq60|cuenta\(14))) # (!\bloquefreq60|cuenta\(17))) # (!\bloquefreq60|cuenta\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|LessThan1~0_combout\,
	datab => \bloquefreq60|cuenta\(18),
	datac => \bloquefreq60|cuenta\(17),
	datad => \bloquefreq60|cuenta\(14),
	combout => \bloquefreq60|LessThan1~1_combout\);

-- Location: LCCOMB_X22_Y20_N14
\bloquefreq60|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan1~4_combout\ = (!\bloquefreq60|cuenta\(10) & (((!\bloquefreq60|cuenta\(8)) # (!\bloquefreq60|cuenta\(7))) # (!\bloquefreq60|cuenta\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(10),
	datab => \bloquefreq60|cuenta\(9),
	datac => \bloquefreq60|cuenta\(7),
	datad => \bloquefreq60|cuenta\(8),
	combout => \bloquefreq60|LessThan1~4_combout\);

-- Location: LCCOMB_X22_Y20_N18
\bloquefreq60|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan1~2_combout\ = (((!\bloquefreq60|cuenta\(2) & !\bloquefreq60|cuenta\(1))) # (!\bloquefreq60|cuenta\(4))) # (!\bloquefreq60|cuenta\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(2),
	datab => \bloquefreq60|cuenta\(3),
	datac => \bloquefreq60|cuenta\(4),
	datad => \bloquefreq60|cuenta\(1),
	combout => \bloquefreq60|LessThan1~2_combout\);

-- Location: LCCOMB_X22_Y20_N12
\bloquefreq60|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan1~3_combout\ = (!\bloquefreq60|cuenta\(6) & (\bloquefreq60|LessThan1~2_combout\ & (!\bloquefreq60|cuenta\(10) & !\bloquefreq60|cuenta\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(6),
	datab => \bloquefreq60|LessThan1~2_combout\,
	datac => \bloquefreq60|cuenta\(10),
	datad => \bloquefreq60|cuenta\(5),
	combout => \bloquefreq60|LessThan1~3_combout\);

-- Location: LCCOMB_X22_Y20_N20
\bloquefreq60|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan1~5_combout\ = (((\bloquefreq60|LessThan1~4_combout\) # (\bloquefreq60|LessThan1~3_combout\)) # (!\bloquefreq60|cuenta\(12))) # (!\bloquefreq60|cuenta\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(11),
	datab => \bloquefreq60|cuenta\(12),
	datac => \bloquefreq60|LessThan1~4_combout\,
	datad => \bloquefreq60|LessThan1~3_combout\,
	combout => \bloquefreq60|LessThan1~5_combout\);

-- Location: LCCOMB_X21_Y20_N16
\bloquefreq60|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan1~6_combout\ = (\bloquefreq60|LessThan1~1_combout\) # ((!\bloquefreq60|cuenta\(13) & (\bloquefreq60|LessThan1~5_combout\ & \bloquefreq60|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(13),
	datab => \bloquefreq60|LessThan1~1_combout\,
	datac => \bloquefreq60|LessThan1~5_combout\,
	datad => \bloquefreq60|LessThan1~0_combout\,
	combout => \bloquefreq60|LessThan1~6_combout\);

-- Location: LCCOMB_X22_Y20_N16
\bloquefreq60|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan1~11_combout\ = (\bloquefreq60|cuenta\(31)) # ((!\bloquefreq60|cuenta\(19) & (\bloquefreq60|LessThan1~10_combout\ & \bloquefreq60|LessThan1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(19),
	datab => \bloquefreq60|LessThan1~10_combout\,
	datac => \bloquefreq60|LessThan1~6_combout\,
	datad => \bloquefreq60|cuenta\(31),
	combout => \bloquefreq60|LessThan1~11_combout\);

-- Location: FF_X22_Y20_N17
\bloquefreq60|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|LessThan1~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|clkout~q\);

-- Location: LCCOMB_X17_Y18_N2
\bloquebinBCD|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~0_combout\ = \bloquebinBCD|numciclo\(0) $ (GND)
-- \bloquebinBCD|Add1~1\ = CARRY(!\bloquebinBCD|numciclo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|numciclo\(0),
	datad => VCC,
	combout => \bloquebinBCD|Add1~0_combout\,
	cout => \bloquebinBCD|Add1~1\);

-- Location: LCCOMB_X17_Y18_N4
\bloquebinBCD|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~2_combout\ = (\bloquebinBCD|numciclo\(1) & (!\bloquebinBCD|Add1~1\)) # (!\bloquebinBCD|numciclo\(1) & ((\bloquebinBCD|Add1~1\) # (GND)))
-- \bloquebinBCD|Add1~3\ = CARRY((!\bloquebinBCD|Add1~1\) # (!\bloquebinBCD|numciclo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|numciclo\(1),
	datad => VCC,
	cin => \bloquebinBCD|Add1~1\,
	combout => \bloquebinBCD|Add1~2_combout\,
	cout => \bloquebinBCD|Add1~3\);

-- Location: LCCOMB_X17_Y18_N8
\bloquebinBCD|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~6_combout\ = (\bloquebinBCD|numciclo\(3) & (!\bloquebinBCD|Add1~5\)) # (!\bloquebinBCD|numciclo\(3) & ((\bloquebinBCD|Add1~5\) # (GND)))
-- \bloquebinBCD|Add1~7\ = CARRY((!\bloquebinBCD|Add1~5\) # (!\bloquebinBCD|numciclo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|numciclo\(3),
	datad => VCC,
	cin => \bloquebinBCD|Add1~5\,
	combout => \bloquebinBCD|Add1~6_combout\,
	cout => \bloquebinBCD|Add1~7\);

-- Location: LCCOMB_X17_Y18_N10
\bloquebinBCD|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~12_combout\ = (\bloquebinBCD|numciclo\(4) & (\bloquebinBCD|Add1~7\ $ (GND))) # (!\bloquebinBCD|numciclo\(4) & (!\bloquebinBCD|Add1~7\ & VCC))
-- \bloquebinBCD|Add1~13\ = CARRY((\bloquebinBCD|numciclo\(4) & !\bloquebinBCD|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(4),
	datad => VCC,
	cin => \bloquebinBCD|Add1~7\,
	combout => \bloquebinBCD|Add1~12_combout\,
	cout => \bloquebinBCD|Add1~13\);

-- Location: LCCOMB_X18_Y18_N20
\bloquebinBCD|Add1~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~78_combout\ = (\bloquebinBCD|Add1~12_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|Add1~12_combout\,
	datac => \bloquebinBCD|bcdout[7]~0_combout\,
	datad => \bloquebinBCD|LessThan3~6_combout\,
	combout => \bloquebinBCD|Add1~78_combout\);

-- Location: FF_X18_Y18_N21
\bloquebinBCD|numciclo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(4));

-- Location: LCCOMB_X17_Y18_N12
\bloquebinBCD|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~14_combout\ = (\bloquebinBCD|numciclo\(5) & (!\bloquebinBCD|Add1~13\)) # (!\bloquebinBCD|numciclo\(5) & ((\bloquebinBCD|Add1~13\) # (GND)))
-- \bloquebinBCD|Add1~15\ = CARRY((!\bloquebinBCD|Add1~13\) # (!\bloquebinBCD|numciclo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|numciclo\(5),
	datad => VCC,
	cin => \bloquebinBCD|Add1~13\,
	combout => \bloquebinBCD|Add1~14_combout\,
	cout => \bloquebinBCD|Add1~15\);

-- Location: LCCOMB_X18_Y18_N14
\bloquebinBCD|Add1~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~79_combout\ = (\bloquebinBCD|Add1~14_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|Add1~14_combout\,
	datac => \bloquebinBCD|bcdout[7]~0_combout\,
	datad => \bloquebinBCD|LessThan3~6_combout\,
	combout => \bloquebinBCD|Add1~79_combout\);

-- Location: FF_X18_Y18_N15
\bloquebinBCD|numciclo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(5));

-- Location: LCCOMB_X17_Y18_N14
\bloquebinBCD|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~16_combout\ = (\bloquebinBCD|numciclo\(6) & (\bloquebinBCD|Add1~15\ $ (GND))) # (!\bloquebinBCD|numciclo\(6) & (!\bloquebinBCD|Add1~15\ & VCC))
-- \bloquebinBCD|Add1~17\ = CARRY((\bloquebinBCD|numciclo\(6) & !\bloquebinBCD|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(6),
	datad => VCC,
	cin => \bloquebinBCD|Add1~15\,
	combout => \bloquebinBCD|Add1~16_combout\,
	cout => \bloquebinBCD|Add1~17\);

-- Location: LCCOMB_X17_Y19_N0
\bloquebinBCD|Add1~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~82_combout\ = (\bloquebinBCD|Add1~16_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|bcdout[7]~0_combout\,
	datac => \bloquebinBCD|Add1~16_combout\,
	datad => \bloquebinBCD|LessThan3~6_combout\,
	combout => \bloquebinBCD|Add1~82_combout\);

-- Location: FF_X17_Y19_N1
\bloquebinBCD|numciclo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(6));

-- Location: LCCOMB_X17_Y18_N16
\bloquebinBCD|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~18_combout\ = (\bloquebinBCD|numciclo\(7) & (!\bloquebinBCD|Add1~17\)) # (!\bloquebinBCD|numciclo\(7) & ((\bloquebinBCD|Add1~17\) # (GND)))
-- \bloquebinBCD|Add1~19\ = CARRY((!\bloquebinBCD|Add1~17\) # (!\bloquebinBCD|numciclo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|numciclo\(7),
	datad => VCC,
	cin => \bloquebinBCD|Add1~17\,
	combout => \bloquebinBCD|Add1~18_combout\,
	cout => \bloquebinBCD|Add1~19\);

-- Location: LCCOMB_X18_Y18_N28
\bloquebinBCD|Add1~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~80_combout\ = (\bloquebinBCD|Add1~18_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|Add1~18_combout\,
	datac => \bloquebinBCD|bcdout[7]~0_combout\,
	datad => \bloquebinBCD|LessThan3~6_combout\,
	combout => \bloquebinBCD|Add1~80_combout\);

-- Location: FF_X18_Y18_N29
\bloquebinBCD|numciclo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(7));

-- Location: LCCOMB_X17_Y18_N18
\bloquebinBCD|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~20_combout\ = (\bloquebinBCD|numciclo\(8) & (\bloquebinBCD|Add1~19\ $ (GND))) # (!\bloquebinBCD|numciclo\(8) & (!\bloquebinBCD|Add1~19\ & VCC))
-- \bloquebinBCD|Add1~21\ = CARRY((\bloquebinBCD|numciclo\(8) & !\bloquebinBCD|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(8),
	datad => VCC,
	cin => \bloquebinBCD|Add1~19\,
	combout => \bloquebinBCD|Add1~20_combout\,
	cout => \bloquebinBCD|Add1~21\);

-- Location: LCCOMB_X18_Y18_N26
\bloquebinBCD|Add1~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~81_combout\ = (\bloquebinBCD|Add1~20_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|Add1~20_combout\,
	datac => \bloquebinBCD|bcdout[7]~0_combout\,
	datad => \bloquebinBCD|LessThan3~6_combout\,
	combout => \bloquebinBCD|Add1~81_combout\);

-- Location: FF_X18_Y18_N27
\bloquebinBCD|numciclo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(8));

-- Location: LCCOMB_X17_Y18_N20
\bloquebinBCD|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~22_combout\ = (\bloquebinBCD|numciclo\(9) & (!\bloquebinBCD|Add1~21\)) # (!\bloquebinBCD|numciclo\(9) & ((\bloquebinBCD|Add1~21\) # (GND)))
-- \bloquebinBCD|Add1~23\ = CARRY((!\bloquebinBCD|Add1~21\) # (!\bloquebinBCD|numciclo\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(9),
	datad => VCC,
	cin => \bloquebinBCD|Add1~21\,
	combout => \bloquebinBCD|Add1~22_combout\,
	cout => \bloquebinBCD|Add1~23\);

-- Location: LCCOMB_X18_Y18_N10
\bloquebinBCD|Add1~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~83_combout\ = (\bloquebinBCD|Add1~22_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|Add1~22_combout\,
	datac => \bloquebinBCD|bcdout[7]~0_combout\,
	datad => \bloquebinBCD|LessThan3~6_combout\,
	combout => \bloquebinBCD|Add1~83_combout\);

-- Location: FF_X18_Y18_N11
\bloquebinBCD|numciclo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(9));

-- Location: LCCOMB_X17_Y18_N22
\bloquebinBCD|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~24_combout\ = (\bloquebinBCD|numciclo\(10) & (\bloquebinBCD|Add1~23\ $ (GND))) # (!\bloquebinBCD|numciclo\(10) & (!\bloquebinBCD|Add1~23\ & VCC))
-- \bloquebinBCD|Add1~25\ = CARRY((\bloquebinBCD|numciclo\(10) & !\bloquebinBCD|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|numciclo\(10),
	datad => VCC,
	cin => \bloquebinBCD|Add1~23\,
	combout => \bloquebinBCD|Add1~24_combout\,
	cout => \bloquebinBCD|Add1~25\);

-- Location: LCCOMB_X18_Y17_N20
\bloquebinBCD|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~26_combout\ = (\bloquebinBCD|Add1~24_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|LessThan3~6_combout\,
	datac => \bloquebinBCD|Add1~24_combout\,
	datad => \bloquebinBCD|bcdout[7]~0_combout\,
	combout => \bloquebinBCD|Add1~26_combout\);

-- Location: FF_X18_Y17_N21
\bloquebinBCD|numciclo[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(10));

-- Location: LCCOMB_X17_Y18_N24
\bloquebinBCD|Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~27_combout\ = (\bloquebinBCD|numciclo\(11) & (!\bloquebinBCD|Add1~25\)) # (!\bloquebinBCD|numciclo\(11) & ((\bloquebinBCD|Add1~25\) # (GND)))
-- \bloquebinBCD|Add1~28\ = CARRY((!\bloquebinBCD|Add1~25\) # (!\bloquebinBCD|numciclo\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|numciclo\(11),
	datad => VCC,
	cin => \bloquebinBCD|Add1~25\,
	combout => \bloquebinBCD|Add1~27_combout\,
	cout => \bloquebinBCD|Add1~28\);

-- Location: LCCOMB_X18_Y17_N10
\bloquebinBCD|Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~29_combout\ = (\bloquebinBCD|Add1~27_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|LessThan3~6_combout\,
	datac => \bloquebinBCD|Add1~27_combout\,
	datad => \bloquebinBCD|bcdout[7]~0_combout\,
	combout => \bloquebinBCD|Add1~29_combout\);

-- Location: FF_X18_Y17_N11
\bloquebinBCD|numciclo[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(11));

-- Location: LCCOMB_X17_Y18_N26
\bloquebinBCD|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~30_combout\ = (\bloquebinBCD|numciclo\(12) & (\bloquebinBCD|Add1~28\ $ (GND))) # (!\bloquebinBCD|numciclo\(12) & (!\bloquebinBCD|Add1~28\ & VCC))
-- \bloquebinBCD|Add1~31\ = CARRY((\bloquebinBCD|numciclo\(12) & !\bloquebinBCD|Add1~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(12),
	datad => VCC,
	cin => \bloquebinBCD|Add1~28\,
	combout => \bloquebinBCD|Add1~30_combout\,
	cout => \bloquebinBCD|Add1~31\);

-- Location: LCCOMB_X18_Y17_N0
\bloquebinBCD|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~32_combout\ = (\bloquebinBCD|Add1~30_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|LessThan3~6_combout\,
	datac => \bloquebinBCD|bcdout[7]~0_combout\,
	datad => \bloquebinBCD|Add1~30_combout\,
	combout => \bloquebinBCD|Add1~32_combout\);

-- Location: FF_X18_Y17_N1
\bloquebinBCD|numciclo[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(12));

-- Location: LCCOMB_X17_Y18_N28
\bloquebinBCD|Add1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~33_combout\ = (\bloquebinBCD|numciclo\(13) & (!\bloquebinBCD|Add1~31\)) # (!\bloquebinBCD|numciclo\(13) & ((\bloquebinBCD|Add1~31\) # (GND)))
-- \bloquebinBCD|Add1~34\ = CARRY((!\bloquebinBCD|Add1~31\) # (!\bloquebinBCD|numciclo\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(13),
	datad => VCC,
	cin => \bloquebinBCD|Add1~31\,
	combout => \bloquebinBCD|Add1~33_combout\,
	cout => \bloquebinBCD|Add1~34\);

-- Location: LCCOMB_X18_Y17_N2
\bloquebinBCD|Add1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~35_combout\ = (\bloquebinBCD|Add1~33_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|LessThan3~6_combout\,
	datac => \bloquebinBCD|Add1~33_combout\,
	datad => \bloquebinBCD|bcdout[7]~0_combout\,
	combout => \bloquebinBCD|Add1~35_combout\);

-- Location: FF_X18_Y17_N3
\bloquebinBCD|numciclo[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(13));

-- Location: LCCOMB_X17_Y18_N30
\bloquebinBCD|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~36_combout\ = (\bloquebinBCD|numciclo\(14) & (\bloquebinBCD|Add1~34\ $ (GND))) # (!\bloquebinBCD|numciclo\(14) & (!\bloquebinBCD|Add1~34\ & VCC))
-- \bloquebinBCD|Add1~37\ = CARRY((\bloquebinBCD|numciclo\(14) & !\bloquebinBCD|Add1~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(14),
	datad => VCC,
	cin => \bloquebinBCD|Add1~34\,
	combout => \bloquebinBCD|Add1~36_combout\,
	cout => \bloquebinBCD|Add1~37\);

-- Location: LCCOMB_X18_Y18_N30
\bloquebinBCD|Add1~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~88_combout\ = (\bloquebinBCD|Add1~36_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|LessThan3~6_combout\,
	datac => \bloquebinBCD|bcdout[7]~0_combout\,
	datad => \bloquebinBCD|Add1~36_combout\,
	combout => \bloquebinBCD|Add1~88_combout\);

-- Location: FF_X18_Y18_N31
\bloquebinBCD|numciclo[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(14));

-- Location: LCCOMB_X17_Y17_N0
\bloquebinBCD|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~38_combout\ = (\bloquebinBCD|numciclo\(15) & (!\bloquebinBCD|Add1~37\)) # (!\bloquebinBCD|numciclo\(15) & ((\bloquebinBCD|Add1~37\) # (GND)))
-- \bloquebinBCD|Add1~39\ = CARRY((!\bloquebinBCD|Add1~37\) # (!\bloquebinBCD|numciclo\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(15),
	datad => VCC,
	cin => \bloquebinBCD|Add1~37\,
	combout => \bloquebinBCD|Add1~38_combout\,
	cout => \bloquebinBCD|Add1~39\);

-- Location: LCCOMB_X17_Y19_N8
\bloquebinBCD|Add1~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~89_combout\ = (\bloquebinBCD|Add1~38_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|bcdout[7]~0_combout\,
	datab => \bloquebinBCD|LessThan3~6_combout\,
	datac => \bloquebinBCD|Add1~38_combout\,
	combout => \bloquebinBCD|Add1~89_combout\);

-- Location: FF_X17_Y19_N9
\bloquebinBCD|numciclo[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(15));

-- Location: LCCOMB_X17_Y17_N2
\bloquebinBCD|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~40_combout\ = (\bloquebinBCD|numciclo\(16) & (\bloquebinBCD|Add1~39\ $ (GND))) # (!\bloquebinBCD|numciclo\(16) & (!\bloquebinBCD|Add1~39\ & VCC))
-- \bloquebinBCD|Add1~41\ = CARRY((\bloquebinBCD|numciclo\(16) & !\bloquebinBCD|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(16),
	datad => VCC,
	cin => \bloquebinBCD|Add1~39\,
	combout => \bloquebinBCD|Add1~40_combout\,
	cout => \bloquebinBCD|Add1~41\);

-- Location: LCCOMB_X17_Y19_N20
\bloquebinBCD|Add1~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~84_combout\ = (\bloquebinBCD|Add1~40_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|LessThan3~6_combout\,
	datac => \bloquebinBCD|Add1~40_combout\,
	datad => \bloquebinBCD|bcdout[7]~0_combout\,
	combout => \bloquebinBCD|Add1~84_combout\);

-- Location: FF_X17_Y19_N21
\bloquebinBCD|numciclo[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(16));

-- Location: LCCOMB_X17_Y17_N4
\bloquebinBCD|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~42_combout\ = (\bloquebinBCD|numciclo\(17) & (!\bloquebinBCD|Add1~41\)) # (!\bloquebinBCD|numciclo\(17) & ((\bloquebinBCD|Add1~41\) # (GND)))
-- \bloquebinBCD|Add1~43\ = CARRY((!\bloquebinBCD|Add1~41\) # (!\bloquebinBCD|numciclo\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(17),
	datad => VCC,
	cin => \bloquebinBCD|Add1~41\,
	combout => \bloquebinBCD|Add1~42_combout\,
	cout => \bloquebinBCD|Add1~43\);

-- Location: LCCOMB_X18_Y18_N12
\bloquebinBCD|Add1~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~85_combout\ = (\bloquebinBCD|Add1~42_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|LessThan3~6_combout\,
	datac => \bloquebinBCD|bcdout[7]~0_combout\,
	datad => \bloquebinBCD|Add1~42_combout\,
	combout => \bloquebinBCD|Add1~85_combout\);

-- Location: FF_X18_Y18_N13
\bloquebinBCD|numciclo[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(17));

-- Location: LCCOMB_X17_Y17_N6
\bloquebinBCD|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~44_combout\ = (\bloquebinBCD|numciclo\(18) & (\bloquebinBCD|Add1~43\ $ (GND))) # (!\bloquebinBCD|numciclo\(18) & (!\bloquebinBCD|Add1~43\ & VCC))
-- \bloquebinBCD|Add1~45\ = CARRY((\bloquebinBCD|numciclo\(18) & !\bloquebinBCD|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(18),
	datad => VCC,
	cin => \bloquebinBCD|Add1~43\,
	combout => \bloquebinBCD|Add1~44_combout\,
	cout => \bloquebinBCD|Add1~45\);

-- Location: LCCOMB_X18_Y18_N18
\bloquebinBCD|Add1~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~86_combout\ = (\bloquebinBCD|Add1~44_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|LessThan3~6_combout\,
	datac => \bloquebinBCD|bcdout[7]~0_combout\,
	datad => \bloquebinBCD|Add1~44_combout\,
	combout => \bloquebinBCD|Add1~86_combout\);

-- Location: FF_X18_Y18_N19
\bloquebinBCD|numciclo[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(18));

-- Location: LCCOMB_X17_Y17_N8
\bloquebinBCD|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~46_combout\ = (\bloquebinBCD|numciclo\(19) & (!\bloquebinBCD|Add1~45\)) # (!\bloquebinBCD|numciclo\(19) & ((\bloquebinBCD|Add1~45\) # (GND)))
-- \bloquebinBCD|Add1~47\ = CARRY((!\bloquebinBCD|Add1~45\) # (!\bloquebinBCD|numciclo\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(19),
	datad => VCC,
	cin => \bloquebinBCD|Add1~45\,
	combout => \bloquebinBCD|Add1~46_combout\,
	cout => \bloquebinBCD|Add1~47\);

-- Location: LCCOMB_X18_Y18_N4
\bloquebinBCD|Add1~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~87_combout\ = (\bloquebinBCD|Add1~46_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|LessThan3~6_combout\,
	datac => \bloquebinBCD|bcdout[7]~0_combout\,
	datad => \bloquebinBCD|Add1~46_combout\,
	combout => \bloquebinBCD|Add1~87_combout\);

-- Location: FF_X18_Y18_N5
\bloquebinBCD|numciclo[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(19));

-- Location: LCCOMB_X17_Y17_N10
\bloquebinBCD|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~48_combout\ = (\bloquebinBCD|numciclo\(20) & (\bloquebinBCD|Add1~47\ $ (GND))) # (!\bloquebinBCD|numciclo\(20) & (!\bloquebinBCD|Add1~47\ & VCC))
-- \bloquebinBCD|Add1~49\ = CARRY((\bloquebinBCD|numciclo\(20) & !\bloquebinBCD|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|numciclo\(20),
	datad => VCC,
	cin => \bloquebinBCD|Add1~47\,
	combout => \bloquebinBCD|Add1~48_combout\,
	cout => \bloquebinBCD|Add1~49\);

-- Location: LCCOMB_X18_Y17_N22
\bloquebinBCD|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~50_combout\ = (\bloquebinBCD|Add1~48_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|LessThan3~6_combout\,
	datac => \bloquebinBCD|bcdout[7]~0_combout\,
	datad => \bloquebinBCD|Add1~48_combout\,
	combout => \bloquebinBCD|Add1~50_combout\);

-- Location: FF_X18_Y17_N23
\bloquebinBCD|numciclo[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(20));

-- Location: LCCOMB_X17_Y17_N12
\bloquebinBCD|Add1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~51_combout\ = (\bloquebinBCD|numciclo\(21) & (!\bloquebinBCD|Add1~49\)) # (!\bloquebinBCD|numciclo\(21) & ((\bloquebinBCD|Add1~49\) # (GND)))
-- \bloquebinBCD|Add1~52\ = CARRY((!\bloquebinBCD|Add1~49\) # (!\bloquebinBCD|numciclo\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|numciclo\(21),
	datad => VCC,
	cin => \bloquebinBCD|Add1~49\,
	combout => \bloquebinBCD|Add1~51_combout\,
	cout => \bloquebinBCD|Add1~52\);

-- Location: LCCOMB_X18_Y17_N12
\bloquebinBCD|Add1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~53_combout\ = (\bloquebinBCD|Add1~51_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|LessThan3~6_combout\,
	datac => \bloquebinBCD|bcdout[7]~0_combout\,
	datad => \bloquebinBCD|Add1~51_combout\,
	combout => \bloquebinBCD|Add1~53_combout\);

-- Location: FF_X18_Y17_N13
\bloquebinBCD|numciclo[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(21));

-- Location: LCCOMB_X17_Y17_N14
\bloquebinBCD|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~54_combout\ = (\bloquebinBCD|numciclo\(22) & (\bloquebinBCD|Add1~52\ $ (GND))) # (!\bloquebinBCD|numciclo\(22) & (!\bloquebinBCD|Add1~52\ & VCC))
-- \bloquebinBCD|Add1~55\ = CARRY((\bloquebinBCD|numciclo\(22) & !\bloquebinBCD|Add1~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(22),
	datad => VCC,
	cin => \bloquebinBCD|Add1~52\,
	combout => \bloquebinBCD|Add1~54_combout\,
	cout => \bloquebinBCD|Add1~55\);

-- Location: LCCOMB_X19_Y17_N24
\bloquebinBCD|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~56_combout\ = (\bloquebinBCD|Add1~54_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|LessThan3~6_combout\,
	datac => \bloquebinBCD|bcdout[7]~0_combout\,
	datad => \bloquebinBCD|Add1~54_combout\,
	combout => \bloquebinBCD|Add1~56_combout\);

-- Location: FF_X19_Y17_N25
\bloquebinBCD|numciclo[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(22));

-- Location: LCCOMB_X17_Y17_N16
\bloquebinBCD|Add1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~57_combout\ = (\bloquebinBCD|numciclo\(23) & (!\bloquebinBCD|Add1~55\)) # (!\bloquebinBCD|numciclo\(23) & ((\bloquebinBCD|Add1~55\) # (GND)))
-- \bloquebinBCD|Add1~58\ = CARRY((!\bloquebinBCD|Add1~55\) # (!\bloquebinBCD|numciclo\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(23),
	datad => VCC,
	cin => \bloquebinBCD|Add1~55\,
	combout => \bloquebinBCD|Add1~57_combout\,
	cout => \bloquebinBCD|Add1~58\);

-- Location: LCCOMB_X18_Y17_N18
\bloquebinBCD|Add1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~59_combout\ = (\bloquebinBCD|Add1~57_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|LessThan3~6_combout\,
	datac => \bloquebinBCD|Add1~57_combout\,
	datad => \bloquebinBCD|bcdout[7]~0_combout\,
	combout => \bloquebinBCD|Add1~59_combout\);

-- Location: FF_X18_Y17_N19
\bloquebinBCD|numciclo[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(23));

-- Location: LCCOMB_X17_Y17_N18
\bloquebinBCD|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~60_combout\ = (\bloquebinBCD|numciclo\(24) & (\bloquebinBCD|Add1~58\ $ (GND))) # (!\bloquebinBCD|numciclo\(24) & (!\bloquebinBCD|Add1~58\ & VCC))
-- \bloquebinBCD|Add1~61\ = CARRY((\bloquebinBCD|numciclo\(24) & !\bloquebinBCD|Add1~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|numciclo\(24),
	datad => VCC,
	cin => \bloquebinBCD|Add1~58\,
	combout => \bloquebinBCD|Add1~60_combout\,
	cout => \bloquebinBCD|Add1~61\);

-- Location: LCCOMB_X18_Y17_N30
\bloquebinBCD|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~62_combout\ = (\bloquebinBCD|Add1~60_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|LessThan3~6_combout\,
	datac => \bloquebinBCD|bcdout[7]~0_combout\,
	datad => \bloquebinBCD|Add1~60_combout\,
	combout => \bloquebinBCD|Add1~62_combout\);

-- Location: FF_X18_Y17_N31
\bloquebinBCD|numciclo[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(24));

-- Location: LCCOMB_X17_Y17_N20
\bloquebinBCD|Add1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~63_combout\ = (\bloquebinBCD|numciclo\(25) & (!\bloquebinBCD|Add1~61\)) # (!\bloquebinBCD|numciclo\(25) & ((\bloquebinBCD|Add1~61\) # (GND)))
-- \bloquebinBCD|Add1~64\ = CARRY((!\bloquebinBCD|Add1~61\) # (!\bloquebinBCD|numciclo\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|numciclo\(25),
	datad => VCC,
	cin => \bloquebinBCD|Add1~61\,
	combout => \bloquebinBCD|Add1~63_combout\,
	cout => \bloquebinBCD|Add1~64\);

-- Location: LCCOMB_X18_Y17_N8
\bloquebinBCD|Add1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~65_combout\ = (\bloquebinBCD|Add1~63_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|LessThan3~6_combout\,
	datac => \bloquebinBCD|bcdout[7]~0_combout\,
	datad => \bloquebinBCD|Add1~63_combout\,
	combout => \bloquebinBCD|Add1~65_combout\);

-- Location: FF_X18_Y17_N9
\bloquebinBCD|numciclo[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(25));

-- Location: LCCOMB_X17_Y17_N22
\bloquebinBCD|Add1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~66_combout\ = (\bloquebinBCD|numciclo\(26) & (\bloquebinBCD|Add1~64\ $ (GND))) # (!\bloquebinBCD|numciclo\(26) & (!\bloquebinBCD|Add1~64\ & VCC))
-- \bloquebinBCD|Add1~67\ = CARRY((\bloquebinBCD|numciclo\(26) & !\bloquebinBCD|Add1~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|numciclo\(26),
	datad => VCC,
	cin => \bloquebinBCD|Add1~64\,
	combout => \bloquebinBCD|Add1~66_combout\,
	cout => \bloquebinBCD|Add1~67\);

-- Location: LCCOMB_X18_Y17_N14
\bloquebinBCD|Add1~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~68_combout\ = (\bloquebinBCD|Add1~66_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|LessThan3~6_combout\,
	datac => \bloquebinBCD|bcdout[7]~0_combout\,
	datad => \bloquebinBCD|Add1~66_combout\,
	combout => \bloquebinBCD|Add1~68_combout\);

-- Location: FF_X18_Y17_N15
\bloquebinBCD|numciclo[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(26));

-- Location: LCCOMB_X17_Y17_N24
\bloquebinBCD|Add1~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~69_combout\ = (\bloquebinBCD|numciclo\(27) & (!\bloquebinBCD|Add1~67\)) # (!\bloquebinBCD|numciclo\(27) & ((\bloquebinBCD|Add1~67\) # (GND)))
-- \bloquebinBCD|Add1~70\ = CARRY((!\bloquebinBCD|Add1~67\) # (!\bloquebinBCD|numciclo\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(27),
	datad => VCC,
	cin => \bloquebinBCD|Add1~67\,
	combout => \bloquebinBCD|Add1~69_combout\,
	cout => \bloquebinBCD|Add1~70\);

-- Location: LCCOMB_X17_Y17_N30
\bloquebinBCD|Add1~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~71_combout\ = (\bloquebinBCD|Add1~69_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|bcdout[7]~0_combout\,
	datac => \bloquebinBCD|LessThan3~6_combout\,
	datad => \bloquebinBCD|Add1~69_combout\,
	combout => \bloquebinBCD|Add1~71_combout\);

-- Location: FF_X17_Y17_N31
\bloquebinBCD|numciclo[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(27));

-- Location: LCCOMB_X17_Y17_N26
\bloquebinBCD|Add1~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~72_combout\ = (\bloquebinBCD|numciclo\(28) & (\bloquebinBCD|Add1~70\ $ (GND))) # (!\bloquebinBCD|numciclo\(28) & (!\bloquebinBCD|Add1~70\ & VCC))
-- \bloquebinBCD|Add1~73\ = CARRY((\bloquebinBCD|numciclo\(28) & !\bloquebinBCD|Add1~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(28),
	datad => VCC,
	cin => \bloquebinBCD|Add1~70\,
	combout => \bloquebinBCD|Add1~72_combout\,
	cout => \bloquebinBCD|Add1~73\);

-- Location: LCCOMB_X18_Y17_N6
\bloquebinBCD|Add1~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~74_combout\ = (\bloquebinBCD|Add1~72_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|LessThan3~6_combout\,
	datac => \bloquebinBCD|Add1~72_combout\,
	datad => \bloquebinBCD|bcdout[7]~0_combout\,
	combout => \bloquebinBCD|Add1~74_combout\);

-- Location: FF_X18_Y17_N7
\bloquebinBCD|numciclo[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(28));

-- Location: LCCOMB_X17_Y17_N28
\bloquebinBCD|Add1~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~75_combout\ = \bloquebinBCD|numciclo\(29) $ (\bloquebinBCD|Add1~73\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|numciclo\(29),
	cin => \bloquebinBCD|Add1~73\,
	combout => \bloquebinBCD|Add1~75_combout\);

-- Location: LCCOMB_X18_Y17_N16
\bloquebinBCD|Add1~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~77_combout\ = (\bloquebinBCD|Add1~75_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|LessThan3~6_combout\,
	datac => \bloquebinBCD|bcdout[7]~0_combout\,
	datad => \bloquebinBCD|Add1~75_combout\,
	combout => \bloquebinBCD|Add1~77_combout\);

-- Location: FF_X18_Y17_N17
\bloquebinBCD|numciclo[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(29));

-- Location: LCCOMB_X18_Y17_N4
\bloquebinBCD|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Equal0~0_combout\ = (!\bloquebinBCD|numciclo\(21) & (!\bloquebinBCD|numciclo\(23) & (!\bloquebinBCD|numciclo\(20) & !\bloquebinBCD|numciclo\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(21),
	datab => \bloquebinBCD|numciclo\(23),
	datac => \bloquebinBCD|numciclo\(20),
	datad => \bloquebinBCD|numciclo\(22),
	combout => \bloquebinBCD|Equal0~0_combout\);

-- Location: LCCOMB_X18_Y17_N28
\bloquebinBCD|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Equal0~1_combout\ = (!\bloquebinBCD|numciclo\(24) & (!\bloquebinBCD|numciclo\(26) & (!\bloquebinBCD|numciclo\(25) & !\bloquebinBCD|numciclo\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(24),
	datab => \bloquebinBCD|numciclo\(26),
	datac => \bloquebinBCD|numciclo\(25),
	datad => \bloquebinBCD|numciclo\(27),
	combout => \bloquebinBCD|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y17_N26
\bloquebinBCD|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Equal0~2_combout\ = (!\bloquebinBCD|numciclo\(28) & (!\bloquebinBCD|numciclo\(29) & (\bloquebinBCD|Equal0~0_combout\ & \bloquebinBCD|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(28),
	datab => \bloquebinBCD|numciclo\(29),
	datac => \bloquebinBCD|Equal0~0_combout\,
	datad => \bloquebinBCD|Equal0~1_combout\,
	combout => \bloquebinBCD|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y19_N30
\bloquebinBCD|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|LessThan3~1_combout\ = (\bloquebinBCD|numciclo\(17) & (\bloquebinBCD|numciclo\(16) & \bloquebinBCD|numciclo\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(17),
	datab => \bloquebinBCD|numciclo\(16),
	datad => \bloquebinBCD|numciclo\(19),
	combout => \bloquebinBCD|LessThan3~1_combout\);

-- Location: LCCOMB_X18_Y17_N24
\bloquebinBCD|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|LessThan3~0_combout\ = (!\bloquebinBCD|numciclo\(11) & (!\bloquebinBCD|numciclo\(12) & (!\bloquebinBCD|numciclo\(10) & !\bloquebinBCD|numciclo\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(11),
	datab => \bloquebinBCD|numciclo\(12),
	datac => \bloquebinBCD|numciclo\(10),
	datad => \bloquebinBCD|numciclo\(13),
	combout => \bloquebinBCD|LessThan3~0_combout\);

-- Location: LCCOMB_X18_Y18_N0
\bloquebinBCD|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|process_0~1_combout\ = (!\bloquebinBCD|numciclo\(1) & (\bloquebinBCD|numciclo\(0) & !\bloquebinBCD|numciclo\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(1),
	datac => \bloquebinBCD|numciclo\(0),
	datad => \bloquebinBCD|numciclo\(2),
	combout => \bloquebinBCD|process_0~1_combout\);

-- Location: LCCOMB_X18_Y19_N10
\bloquebinBCD|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|LessThan3~2_combout\ = (\bloquebinBCD|numciclo\(5)) # ((\bloquebinBCD|numciclo\(4)) # ((\bloquebinBCD|numciclo\(3)) # (!\bloquebinBCD|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(5),
	datab => \bloquebinBCD|numciclo\(4),
	datac => \bloquebinBCD|numciclo\(3),
	datad => \bloquebinBCD|process_0~1_combout\,
	combout => \bloquebinBCD|LessThan3~2_combout\);

-- Location: LCCOMB_X18_Y19_N24
\bloquebinBCD|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|LessThan3~3_combout\ = (\bloquebinBCD|numciclo\(8)) # ((\bloquebinBCD|numciclo\(6) & \bloquebinBCD|LessThan3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|numciclo\(8),
	datac => \bloquebinBCD|numciclo\(6),
	datad => \bloquebinBCD|LessThan3~2_combout\,
	combout => \bloquebinBCD|LessThan3~3_combout\);

-- Location: LCCOMB_X18_Y19_N20
\bloquebinBCD|LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|LessThan3~4_combout\ = ((\bloquebinBCD|numciclo\(9) & ((\bloquebinBCD|numciclo\(7)) # (\bloquebinBCD|LessThan3~3_combout\)))) # (!\bloquebinBCD|LessThan3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(7),
	datab => \bloquebinBCD|numciclo\(9),
	datac => \bloquebinBCD|LessThan3~0_combout\,
	datad => \bloquebinBCD|LessThan3~3_combout\,
	combout => \bloquebinBCD|LessThan3~4_combout\);

-- Location: LCCOMB_X18_Y19_N18
\bloquebinBCD|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|LessThan3~5_combout\ = (\bloquebinBCD|numciclo\(15)) # ((\bloquebinBCD|numciclo\(14) & \bloquebinBCD|LessThan3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(15),
	datab => \bloquebinBCD|numciclo\(14),
	datad => \bloquebinBCD|LessThan3~4_combout\,
	combout => \bloquebinBCD|LessThan3~5_combout\);

-- Location: LCCOMB_X18_Y19_N16
\bloquebinBCD|LessThan3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|LessThan3~6_combout\ = (\bloquebinBCD|Equal0~2_combout\ & (((!\bloquebinBCD|LessThan3~5_combout\) # (!\bloquebinBCD|LessThan3~1_combout\)) # (!\bloquebinBCD|numciclo\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(18),
	datab => \bloquebinBCD|Equal0~2_combout\,
	datac => \bloquebinBCD|LessThan3~1_combout\,
	datad => \bloquebinBCD|LessThan3~5_combout\,
	combout => \bloquebinBCD|LessThan3~6_combout\);

-- Location: LCCOMB_X18_Y18_N22
\bloquebinBCD|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~10_combout\ = (\bloquebinBCD|Add1~2_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|Add1~2_combout\,
	datac => \bloquebinBCD|bcdout[7]~0_combout\,
	datad => \bloquebinBCD|LessThan3~6_combout\,
	combout => \bloquebinBCD|Add1~10_combout\);

-- Location: FF_X18_Y18_N23
\bloquebinBCD|numciclo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(1));

-- Location: LCCOMB_X17_Y18_N6
\bloquebinBCD|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~4_combout\ = (\bloquebinBCD|numciclo\(2) & (\bloquebinBCD|Add1~3\ $ (GND))) # (!\bloquebinBCD|numciclo\(2) & (!\bloquebinBCD|Add1~3\ & VCC))
-- \bloquebinBCD|Add1~5\ = CARRY((\bloquebinBCD|numciclo\(2) & !\bloquebinBCD|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|numciclo\(2),
	datad => VCC,
	cin => \bloquebinBCD|Add1~3\,
	combout => \bloquebinBCD|Add1~4_combout\,
	cout => \bloquebinBCD|Add1~5\);

-- Location: LCCOMB_X18_Y18_N24
\bloquebinBCD|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~11_combout\ = (\bloquebinBCD|Add1~4_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|Add1~4_combout\,
	datac => \bloquebinBCD|bcdout[7]~0_combout\,
	datad => \bloquebinBCD|LessThan3~6_combout\,
	combout => \bloquebinBCD|Add1~11_combout\);

-- Location: FF_X18_Y18_N25
\bloquebinBCD|numciclo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(2));

-- Location: LCCOMB_X17_Y18_N0
\bloquebinBCD|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~8_combout\ = (\bloquebinBCD|Add1~6_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|Add1~6_combout\,
	datac => \bloquebinBCD|bcdout[7]~0_combout\,
	datad => \bloquebinBCD|LessThan3~6_combout\,
	combout => \bloquebinBCD|Add1~8_combout\);

-- Location: FF_X17_Y18_N1
\bloquebinBCD|numciclo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(3));

-- Location: LCCOMB_X18_Y18_N6
\bloquebinBCD|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|process_0~0_combout\ = (!\bloquebinBCD|numciclo\(1) & !\bloquebinBCD|numciclo\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloquebinBCD|numciclo\(1),
	datad => \bloquebinBCD|numciclo\(2),
	combout => \bloquebinBCD|process_0~0_combout\);

-- Location: LCCOMB_X18_Y18_N16
\bloquebinBCD|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Equal0~3_combout\ = (!\bloquebinBCD|numciclo\(8) & (!\bloquebinBCD|numciclo\(4) & (!\bloquebinBCD|numciclo\(5) & !\bloquebinBCD|numciclo\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(8),
	datab => \bloquebinBCD|numciclo\(4),
	datac => \bloquebinBCD|numciclo\(5),
	datad => \bloquebinBCD|numciclo\(7),
	combout => \bloquebinBCD|Equal0~3_combout\);

-- Location: LCCOMB_X17_Y19_N14
\bloquebinBCD|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Equal0~5_combout\ = (!\bloquebinBCD|numciclo\(18) & (!\bloquebinBCD|numciclo\(16) & (!\bloquebinBCD|numciclo\(17) & !\bloquebinBCD|numciclo\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(18),
	datab => \bloquebinBCD|numciclo\(16),
	datac => \bloquebinBCD|numciclo\(17),
	datad => \bloquebinBCD|numciclo\(19),
	combout => \bloquebinBCD|Equal0~5_combout\);

-- Location: LCCOMB_X17_Y19_N2
\bloquebinBCD|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Equal0~4_combout\ = (!\bloquebinBCD|numciclo\(6) & !\bloquebinBCD|numciclo\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|numciclo\(6),
	datad => \bloquebinBCD|numciclo\(9),
	combout => \bloquebinBCD|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y19_N22
\bloquebinBCD|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Equal0~6_combout\ = (!\bloquebinBCD|numciclo\(14) & (!\bloquebinBCD|numciclo\(15) & (\bloquebinBCD|Equal0~5_combout\ & \bloquebinBCD|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(14),
	datab => \bloquebinBCD|numciclo\(15),
	datac => \bloquebinBCD|Equal0~5_combout\,
	datad => \bloquebinBCD|Equal0~4_combout\,
	combout => \bloquebinBCD|Equal0~6_combout\);

-- Location: LCCOMB_X17_Y19_N16
\bloquebinBCD|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Equal0~7_combout\ = (\bloquebinBCD|Equal0~3_combout\ & (\bloquebinBCD|LessThan3~0_combout\ & (\bloquebinBCD|Equal0~6_combout\ & \bloquebinBCD|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|Equal0~3_combout\,
	datab => \bloquebinBCD|LessThan3~0_combout\,
	datac => \bloquebinBCD|Equal0~6_combout\,
	datad => \bloquebinBCD|Equal0~2_combout\,
	combout => \bloquebinBCD|Equal0~7_combout\);

-- Location: LCCOMB_X17_Y19_N10
\bloquebinBCD|bcdout[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|bcdout[7]~0_combout\ = (\bloquebinBCD|numciclo\(3) $ (((\bloquebinBCD|numciclo\(0) & \bloquebinBCD|process_0~0_combout\)))) # (!\bloquebinBCD|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(0),
	datab => \bloquebinBCD|numciclo\(3),
	datac => \bloquebinBCD|process_0~0_combout\,
	datad => \bloquebinBCD|Equal0~7_combout\,
	combout => \bloquebinBCD|bcdout[7]~0_combout\);

-- Location: LCCOMB_X18_Y18_N8
\bloquebinBCD|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~9_combout\ = (!\bloquebinBCD|Add1~0_combout\ & ((\bloquebinBCD|LessThan3~6_combout\) # (!\bloquebinBCD|bcdout[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|Add1~0_combout\,
	datac => \bloquebinBCD|bcdout[7]~0_combout\,
	datad => \bloquebinBCD|LessThan3~6_combout\,
	combout => \bloquebinBCD|Add1~9_combout\);

-- Location: FF_X18_Y18_N9
\bloquebinBCD|numciclo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|Add1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|numciclo\(0));

-- Location: LCCOMB_X17_Y19_N6
\bloquebinBCD|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Equal0~8_combout\ = (!\bloquebinBCD|numciclo\(0) & (!\bloquebinBCD|numciclo\(3) & (\bloquebinBCD|process_0~0_combout\ & \bloquebinBCD|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|numciclo\(0),
	datab => \bloquebinBCD|numciclo\(3),
	datac => \bloquebinBCD|process_0~0_combout\,
	datad => \bloquebinBCD|Equal0~7_combout\,
	combout => \bloquebinBCD|Equal0~8_combout\);

-- Location: LCCOMB_X17_Y19_N12
\bloquebinBCD|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|process_0~2_combout\ = ((\bloquebinBCD|numciclo\(3) & (!\bloquebinBCD|process_0~1_combout\)) # (!\bloquebinBCD|numciclo\(3) & ((\bloquebinBCD|process_0~0_combout\)))) # (!\bloquebinBCD|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|process_0~1_combout\,
	datab => \bloquebinBCD|numciclo\(3),
	datac => \bloquebinBCD|process_0~0_combout\,
	datad => \bloquebinBCD|Equal0~7_combout\,
	combout => \bloquebinBCD|process_0~2_combout\);

-- Location: LCCOMB_X17_Y19_N26
\bloquebinBCD|tempBCD~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|tempBCD~16_combout\ = (\bloquebinBCD|process_0~2_combout\ & \bloquebinBCD|LessThan3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|process_0~2_combout\,
	datad => \bloquebinBCD|LessThan3~6_combout\,
	combout => \bloquebinBCD|tempBCD~16_combout\);

-- Location: LCCOMB_X4_Y4_N0
\bloquefreq1|cuenta[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[0]~32_combout\ = \bloquefreq1|cuenta\(0) $ (VCC)
-- \bloquefreq1|cuenta[0]~33\ = CARRY(\bloquefreq1|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(0),
	datad => VCC,
	combout => \bloquefreq1|cuenta[0]~32_combout\,
	cout => \bloquefreq1|cuenta[0]~33\);

-- Location: LCCOMB_X3_Y3_N14
\bloquefreq1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|LessThan1~0_combout\ = (!\bloquefreq1|cuenta\(27) & (!\bloquefreq1|cuenta\(28) & (!\bloquefreq1|cuenta\(26) & !\bloquefreq1|cuenta\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(27),
	datab => \bloquefreq1|cuenta\(28),
	datac => \bloquefreq1|cuenta\(26),
	datad => \bloquefreq1|cuenta\(29),
	combout => \bloquefreq1|LessThan1~0_combout\);

-- Location: LCCOMB_X3_Y3_N24
\bloquefreq1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|LessThan1~1_combout\ = (!\bloquefreq1|cuenta\(30) & (\bloquefreq1|LessThan1~0_combout\ & !\bloquefreq1|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(30),
	datac => \bloquefreq1|LessThan1~0_combout\,
	datad => \bloquefreq1|cuenta\(25),
	combout => \bloquefreq1|LessThan1~1_combout\);

-- Location: LCCOMB_X3_Y3_N26
\bloquefreq1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|LessThan0~3_combout\ = (!\bloquefreq1|cuenta\(30) & (\bloquefreq1|LessThan1~0_combout\ & !\bloquefreq1|cuenta\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(30),
	datac => \bloquefreq1|LessThan1~0_combout\,
	datad => \bloquefreq1|cuenta\(24),
	combout => \bloquefreq1|LessThan0~3_combout\);

-- Location: LCCOMB_X3_Y3_N18
\bloquefreq1|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|LessThan1~2_combout\ = (\bloquefreq1|cuenta\(19) & (\bloquefreq1|cuenta\(20) & (\bloquefreq1|cuenta\(22) & \bloquefreq1|cuenta\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(19),
	datab => \bloquefreq1|cuenta\(20),
	datac => \bloquefreq1|cuenta\(22),
	datad => \bloquefreq1|cuenta\(21),
	combout => \bloquefreq1|LessThan1~2_combout\);

-- Location: LCCOMB_X3_Y3_N4
\bloquefreq1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|LessThan0~0_combout\ = (((!\bloquefreq1|cuenta\(18) & !\bloquefreq1|cuenta\(17))) # (!\bloquefreq1|LessThan1~2_combout\)) # (!\bloquefreq1|cuenta\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(23),
	datab => \bloquefreq1|cuenta\(18),
	datac => \bloquefreq1|cuenta\(17),
	datad => \bloquefreq1|LessThan1~2_combout\,
	combout => \bloquefreq1|LessThan0~0_combout\);

-- Location: LCCOMB_X3_Y3_N20
\bloquefreq1|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|LessThan1~4_combout\ = (\bloquefreq1|cuenta\(14) & (\bloquefreq1|cuenta\(13) & \bloquefreq1|cuenta\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(14),
	datac => \bloquefreq1|cuenta\(13),
	datad => \bloquefreq1|cuenta\(12),
	combout => \bloquefreq1|LessThan1~4_combout\);

-- Location: LCCOMB_X3_Y3_N28
\bloquefreq1|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|LessThan1~3_combout\ = (!\bloquefreq1|cuenta\(7) & (!\bloquefreq1|cuenta\(9) & (!\bloquefreq1|cuenta\(8) & !\bloquefreq1|cuenta\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(7),
	datab => \bloquefreq1|cuenta\(9),
	datac => \bloquefreq1|cuenta\(8),
	datad => \bloquefreq1|cuenta\(10),
	combout => \bloquefreq1|LessThan1~3_combout\);

-- Location: LCCOMB_X3_Y3_N16
\bloquefreq1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|LessThan0~1_combout\ = (((!\bloquefreq1|cuenta\(11) & \bloquefreq1|LessThan1~3_combout\)) # (!\bloquefreq1|LessThan1~4_combout\)) # (!\bloquefreq1|cuenta\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(15),
	datab => \bloquefreq1|LessThan1~4_combout\,
	datac => \bloquefreq1|cuenta\(11),
	datad => \bloquefreq1|LessThan1~3_combout\,
	combout => \bloquefreq1|LessThan0~1_combout\);

-- Location: LCCOMB_X3_Y3_N2
\bloquefreq1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|LessThan0~2_combout\ = (\bloquefreq1|LessThan0~0_combout\) # ((!\bloquefreq1|cuenta\(18) & (!\bloquefreq1|cuenta\(16) & \bloquefreq1|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(18),
	datab => \bloquefreq1|cuenta\(16),
	datac => \bloquefreq1|LessThan0~0_combout\,
	datad => \bloquefreq1|LessThan0~1_combout\,
	combout => \bloquefreq1|LessThan0~2_combout\);

-- Location: LCCOMB_X3_Y3_N0
\bloquefreq1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|LessThan0~4_combout\ = (!\bloquefreq1|cuenta\(31) & (!\bloquefreq1|LessThan1~1_combout\ & ((!\bloquefreq1|LessThan0~2_combout\) # (!\bloquefreq1|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(31),
	datab => \bloquefreq1|LessThan1~1_combout\,
	datac => \bloquefreq1|LessThan0~3_combout\,
	datad => \bloquefreq1|LessThan0~2_combout\,
	combout => \bloquefreq1|LessThan0~4_combout\);

-- Location: FF_X4_Y4_N1
\bloquefreq1|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[0]~32_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(0));

-- Location: LCCOMB_X4_Y4_N2
\bloquefreq1|cuenta[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[1]~34_combout\ = (\bloquefreq1|cuenta\(1) & (!\bloquefreq1|cuenta[0]~33\)) # (!\bloquefreq1|cuenta\(1) & ((\bloquefreq1|cuenta[0]~33\) # (GND)))
-- \bloquefreq1|cuenta[1]~35\ = CARRY((!\bloquefreq1|cuenta[0]~33\) # (!\bloquefreq1|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(1),
	datad => VCC,
	cin => \bloquefreq1|cuenta[0]~33\,
	combout => \bloquefreq1|cuenta[1]~34_combout\,
	cout => \bloquefreq1|cuenta[1]~35\);

-- Location: FF_X4_Y4_N3
\bloquefreq1|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[1]~34_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(1));

-- Location: LCCOMB_X4_Y4_N4
\bloquefreq1|cuenta[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[2]~36_combout\ = (\bloquefreq1|cuenta\(2) & (\bloquefreq1|cuenta[1]~35\ $ (GND))) # (!\bloquefreq1|cuenta\(2) & (!\bloquefreq1|cuenta[1]~35\ & VCC))
-- \bloquefreq1|cuenta[2]~37\ = CARRY((\bloquefreq1|cuenta\(2) & !\bloquefreq1|cuenta[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(2),
	datad => VCC,
	cin => \bloquefreq1|cuenta[1]~35\,
	combout => \bloquefreq1|cuenta[2]~36_combout\,
	cout => \bloquefreq1|cuenta[2]~37\);

-- Location: FF_X4_Y4_N5
\bloquefreq1|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[2]~36_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(2));

-- Location: LCCOMB_X4_Y4_N6
\bloquefreq1|cuenta[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[3]~38_combout\ = (\bloquefreq1|cuenta\(3) & (!\bloquefreq1|cuenta[2]~37\)) # (!\bloquefreq1|cuenta\(3) & ((\bloquefreq1|cuenta[2]~37\) # (GND)))
-- \bloquefreq1|cuenta[3]~39\ = CARRY((!\bloquefreq1|cuenta[2]~37\) # (!\bloquefreq1|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(3),
	datad => VCC,
	cin => \bloquefreq1|cuenta[2]~37\,
	combout => \bloquefreq1|cuenta[3]~38_combout\,
	cout => \bloquefreq1|cuenta[3]~39\);

-- Location: FF_X4_Y4_N7
\bloquefreq1|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[3]~38_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(3));

-- Location: LCCOMB_X4_Y4_N8
\bloquefreq1|cuenta[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[4]~40_combout\ = (\bloquefreq1|cuenta\(4) & (\bloquefreq1|cuenta[3]~39\ $ (GND))) # (!\bloquefreq1|cuenta\(4) & (!\bloquefreq1|cuenta[3]~39\ & VCC))
-- \bloquefreq1|cuenta[4]~41\ = CARRY((\bloquefreq1|cuenta\(4) & !\bloquefreq1|cuenta[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(4),
	datad => VCC,
	cin => \bloquefreq1|cuenta[3]~39\,
	combout => \bloquefreq1|cuenta[4]~40_combout\,
	cout => \bloquefreq1|cuenta[4]~41\);

-- Location: FF_X4_Y4_N9
\bloquefreq1|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[4]~40_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(4));

-- Location: LCCOMB_X4_Y4_N10
\bloquefreq1|cuenta[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[5]~42_combout\ = (\bloquefreq1|cuenta\(5) & (!\bloquefreq1|cuenta[4]~41\)) # (!\bloquefreq1|cuenta\(5) & ((\bloquefreq1|cuenta[4]~41\) # (GND)))
-- \bloquefreq1|cuenta[5]~43\ = CARRY((!\bloquefreq1|cuenta[4]~41\) # (!\bloquefreq1|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(5),
	datad => VCC,
	cin => \bloquefreq1|cuenta[4]~41\,
	combout => \bloquefreq1|cuenta[5]~42_combout\,
	cout => \bloquefreq1|cuenta[5]~43\);

-- Location: FF_X4_Y4_N11
\bloquefreq1|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[5]~42_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(5));

-- Location: LCCOMB_X4_Y4_N12
\bloquefreq1|cuenta[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[6]~44_combout\ = (\bloquefreq1|cuenta\(6) & (\bloquefreq1|cuenta[5]~43\ $ (GND))) # (!\bloquefreq1|cuenta\(6) & (!\bloquefreq1|cuenta[5]~43\ & VCC))
-- \bloquefreq1|cuenta[6]~45\ = CARRY((\bloquefreq1|cuenta\(6) & !\bloquefreq1|cuenta[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(6),
	datad => VCC,
	cin => \bloquefreq1|cuenta[5]~43\,
	combout => \bloquefreq1|cuenta[6]~44_combout\,
	cout => \bloquefreq1|cuenta[6]~45\);

-- Location: FF_X4_Y4_N13
\bloquefreq1|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[6]~44_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(6));

-- Location: LCCOMB_X4_Y4_N14
\bloquefreq1|cuenta[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[7]~46_combout\ = (\bloquefreq1|cuenta\(7) & (!\bloquefreq1|cuenta[6]~45\)) # (!\bloquefreq1|cuenta\(7) & ((\bloquefreq1|cuenta[6]~45\) # (GND)))
-- \bloquefreq1|cuenta[7]~47\ = CARRY((!\bloquefreq1|cuenta[6]~45\) # (!\bloquefreq1|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(7),
	datad => VCC,
	cin => \bloquefreq1|cuenta[6]~45\,
	combout => \bloquefreq1|cuenta[7]~46_combout\,
	cout => \bloquefreq1|cuenta[7]~47\);

-- Location: FF_X4_Y4_N15
\bloquefreq1|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[7]~46_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(7));

-- Location: LCCOMB_X4_Y4_N16
\bloquefreq1|cuenta[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[8]~48_combout\ = (\bloquefreq1|cuenta\(8) & (\bloquefreq1|cuenta[7]~47\ $ (GND))) # (!\bloquefreq1|cuenta\(8) & (!\bloquefreq1|cuenta[7]~47\ & VCC))
-- \bloquefreq1|cuenta[8]~49\ = CARRY((\bloquefreq1|cuenta\(8) & !\bloquefreq1|cuenta[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(8),
	datad => VCC,
	cin => \bloquefreq1|cuenta[7]~47\,
	combout => \bloquefreq1|cuenta[8]~48_combout\,
	cout => \bloquefreq1|cuenta[8]~49\);

-- Location: FF_X4_Y4_N17
\bloquefreq1|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[8]~48_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(8));

-- Location: LCCOMB_X4_Y4_N18
\bloquefreq1|cuenta[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[9]~50_combout\ = (\bloquefreq1|cuenta\(9) & (!\bloquefreq1|cuenta[8]~49\)) # (!\bloquefreq1|cuenta\(9) & ((\bloquefreq1|cuenta[8]~49\) # (GND)))
-- \bloquefreq1|cuenta[9]~51\ = CARRY((!\bloquefreq1|cuenta[8]~49\) # (!\bloquefreq1|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(9),
	datad => VCC,
	cin => \bloquefreq1|cuenta[8]~49\,
	combout => \bloquefreq1|cuenta[9]~50_combout\,
	cout => \bloquefreq1|cuenta[9]~51\);

-- Location: FF_X4_Y4_N19
\bloquefreq1|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[9]~50_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(9));

-- Location: LCCOMB_X4_Y4_N20
\bloquefreq1|cuenta[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[10]~52_combout\ = (\bloquefreq1|cuenta\(10) & (\bloquefreq1|cuenta[9]~51\ $ (GND))) # (!\bloquefreq1|cuenta\(10) & (!\bloquefreq1|cuenta[9]~51\ & VCC))
-- \bloquefreq1|cuenta[10]~53\ = CARRY((\bloquefreq1|cuenta\(10) & !\bloquefreq1|cuenta[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(10),
	datad => VCC,
	cin => \bloquefreq1|cuenta[9]~51\,
	combout => \bloquefreq1|cuenta[10]~52_combout\,
	cout => \bloquefreq1|cuenta[10]~53\);

-- Location: FF_X4_Y4_N21
\bloquefreq1|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[10]~52_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(10));

-- Location: LCCOMB_X4_Y4_N22
\bloquefreq1|cuenta[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[11]~54_combout\ = (\bloquefreq1|cuenta\(11) & (!\bloquefreq1|cuenta[10]~53\)) # (!\bloquefreq1|cuenta\(11) & ((\bloquefreq1|cuenta[10]~53\) # (GND)))
-- \bloquefreq1|cuenta[11]~55\ = CARRY((!\bloquefreq1|cuenta[10]~53\) # (!\bloquefreq1|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(11),
	datad => VCC,
	cin => \bloquefreq1|cuenta[10]~53\,
	combout => \bloquefreq1|cuenta[11]~54_combout\,
	cout => \bloquefreq1|cuenta[11]~55\);

-- Location: FF_X4_Y4_N23
\bloquefreq1|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[11]~54_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(11));

-- Location: LCCOMB_X4_Y4_N24
\bloquefreq1|cuenta[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[12]~56_combout\ = (\bloquefreq1|cuenta\(12) & (\bloquefreq1|cuenta[11]~55\ $ (GND))) # (!\bloquefreq1|cuenta\(12) & (!\bloquefreq1|cuenta[11]~55\ & VCC))
-- \bloquefreq1|cuenta[12]~57\ = CARRY((\bloquefreq1|cuenta\(12) & !\bloquefreq1|cuenta[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(12),
	datad => VCC,
	cin => \bloquefreq1|cuenta[11]~55\,
	combout => \bloquefreq1|cuenta[12]~56_combout\,
	cout => \bloquefreq1|cuenta[12]~57\);

-- Location: FF_X4_Y4_N25
\bloquefreq1|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[12]~56_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(12));

-- Location: LCCOMB_X4_Y4_N26
\bloquefreq1|cuenta[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[13]~58_combout\ = (\bloquefreq1|cuenta\(13) & (!\bloquefreq1|cuenta[12]~57\)) # (!\bloquefreq1|cuenta\(13) & ((\bloquefreq1|cuenta[12]~57\) # (GND)))
-- \bloquefreq1|cuenta[13]~59\ = CARRY((!\bloquefreq1|cuenta[12]~57\) # (!\bloquefreq1|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(13),
	datad => VCC,
	cin => \bloquefreq1|cuenta[12]~57\,
	combout => \bloquefreq1|cuenta[13]~58_combout\,
	cout => \bloquefreq1|cuenta[13]~59\);

-- Location: FF_X2_Y3_N1
\bloquefreq1|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bloquefreq1|cuenta[13]~58_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(13));

-- Location: LCCOMB_X4_Y4_N28
\bloquefreq1|cuenta[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[14]~60_combout\ = (\bloquefreq1|cuenta\(14) & (\bloquefreq1|cuenta[13]~59\ $ (GND))) # (!\bloquefreq1|cuenta\(14) & (!\bloquefreq1|cuenta[13]~59\ & VCC))
-- \bloquefreq1|cuenta[14]~61\ = CARRY((\bloquefreq1|cuenta\(14) & !\bloquefreq1|cuenta[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(14),
	datad => VCC,
	cin => \bloquefreq1|cuenta[13]~59\,
	combout => \bloquefreq1|cuenta[14]~60_combout\,
	cout => \bloquefreq1|cuenta[14]~61\);

-- Location: FF_X4_Y4_N29
\bloquefreq1|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[14]~60_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(14));

-- Location: LCCOMB_X4_Y4_N30
\bloquefreq1|cuenta[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[15]~62_combout\ = (\bloquefreq1|cuenta\(15) & (!\bloquefreq1|cuenta[14]~61\)) # (!\bloquefreq1|cuenta\(15) & ((\bloquefreq1|cuenta[14]~61\) # (GND)))
-- \bloquefreq1|cuenta[15]~63\ = CARRY((!\bloquefreq1|cuenta[14]~61\) # (!\bloquefreq1|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(15),
	datad => VCC,
	cin => \bloquefreq1|cuenta[14]~61\,
	combout => \bloquefreq1|cuenta[15]~62_combout\,
	cout => \bloquefreq1|cuenta[15]~63\);

-- Location: FF_X3_Y3_N23
\bloquefreq1|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bloquefreq1|cuenta[15]~62_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(15));

-- Location: LCCOMB_X4_Y3_N0
\bloquefreq1|cuenta[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[16]~64_combout\ = (\bloquefreq1|cuenta\(16) & (\bloquefreq1|cuenta[15]~63\ $ (GND))) # (!\bloquefreq1|cuenta\(16) & (!\bloquefreq1|cuenta[15]~63\ & VCC))
-- \bloquefreq1|cuenta[16]~65\ = CARRY((\bloquefreq1|cuenta\(16) & !\bloquefreq1|cuenta[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(16),
	datad => VCC,
	cin => \bloquefreq1|cuenta[15]~63\,
	combout => \bloquefreq1|cuenta[16]~64_combout\,
	cout => \bloquefreq1|cuenta[16]~65\);

-- Location: FF_X4_Y3_N1
\bloquefreq1|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[16]~64_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(16));

-- Location: LCCOMB_X4_Y3_N2
\bloquefreq1|cuenta[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[17]~66_combout\ = (\bloquefreq1|cuenta\(17) & (!\bloquefreq1|cuenta[16]~65\)) # (!\bloquefreq1|cuenta\(17) & ((\bloquefreq1|cuenta[16]~65\) # (GND)))
-- \bloquefreq1|cuenta[17]~67\ = CARRY((!\bloquefreq1|cuenta[16]~65\) # (!\bloquefreq1|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(17),
	datad => VCC,
	cin => \bloquefreq1|cuenta[16]~65\,
	combout => \bloquefreq1|cuenta[17]~66_combout\,
	cout => \bloquefreq1|cuenta[17]~67\);

-- Location: FF_X4_Y3_N3
\bloquefreq1|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[17]~66_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(17));

-- Location: LCCOMB_X4_Y3_N4
\bloquefreq1|cuenta[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[18]~68_combout\ = (\bloquefreq1|cuenta\(18) & (\bloquefreq1|cuenta[17]~67\ $ (GND))) # (!\bloquefreq1|cuenta\(18) & (!\bloquefreq1|cuenta[17]~67\ & VCC))
-- \bloquefreq1|cuenta[18]~69\ = CARRY((\bloquefreq1|cuenta\(18) & !\bloquefreq1|cuenta[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(18),
	datad => VCC,
	cin => \bloquefreq1|cuenta[17]~67\,
	combout => \bloquefreq1|cuenta[18]~68_combout\,
	cout => \bloquefreq1|cuenta[18]~69\);

-- Location: FF_X4_Y3_N5
\bloquefreq1|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[18]~68_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(18));

-- Location: LCCOMB_X4_Y3_N6
\bloquefreq1|cuenta[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[19]~70_combout\ = (\bloquefreq1|cuenta\(19) & (!\bloquefreq1|cuenta[18]~69\)) # (!\bloquefreq1|cuenta\(19) & ((\bloquefreq1|cuenta[18]~69\) # (GND)))
-- \bloquefreq1|cuenta[19]~71\ = CARRY((!\bloquefreq1|cuenta[18]~69\) # (!\bloquefreq1|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(19),
	datad => VCC,
	cin => \bloquefreq1|cuenta[18]~69\,
	combout => \bloquefreq1|cuenta[19]~70_combout\,
	cout => \bloquefreq1|cuenta[19]~71\);

-- Location: FF_X4_Y3_N7
\bloquefreq1|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[19]~70_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(19));

-- Location: LCCOMB_X4_Y3_N8
\bloquefreq1|cuenta[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[20]~72_combout\ = (\bloquefreq1|cuenta\(20) & (\bloquefreq1|cuenta[19]~71\ $ (GND))) # (!\bloquefreq1|cuenta\(20) & (!\bloquefreq1|cuenta[19]~71\ & VCC))
-- \bloquefreq1|cuenta[20]~73\ = CARRY((\bloquefreq1|cuenta\(20) & !\bloquefreq1|cuenta[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(20),
	datad => VCC,
	cin => \bloquefreq1|cuenta[19]~71\,
	combout => \bloquefreq1|cuenta[20]~72_combout\,
	cout => \bloquefreq1|cuenta[20]~73\);

-- Location: FF_X4_Y3_N9
\bloquefreq1|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[20]~72_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(20));

-- Location: LCCOMB_X4_Y3_N10
\bloquefreq1|cuenta[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[21]~74_combout\ = (\bloquefreq1|cuenta\(21) & (!\bloquefreq1|cuenta[20]~73\)) # (!\bloquefreq1|cuenta\(21) & ((\bloquefreq1|cuenta[20]~73\) # (GND)))
-- \bloquefreq1|cuenta[21]~75\ = CARRY((!\bloquefreq1|cuenta[20]~73\) # (!\bloquefreq1|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(21),
	datad => VCC,
	cin => \bloquefreq1|cuenta[20]~73\,
	combout => \bloquefreq1|cuenta[21]~74_combout\,
	cout => \bloquefreq1|cuenta[21]~75\);

-- Location: FF_X4_Y3_N11
\bloquefreq1|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[21]~74_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(21));

-- Location: LCCOMB_X4_Y3_N12
\bloquefreq1|cuenta[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[22]~76_combout\ = (\bloquefreq1|cuenta\(22) & (\bloquefreq1|cuenta[21]~75\ $ (GND))) # (!\bloquefreq1|cuenta\(22) & (!\bloquefreq1|cuenta[21]~75\ & VCC))
-- \bloquefreq1|cuenta[22]~77\ = CARRY((\bloquefreq1|cuenta\(22) & !\bloquefreq1|cuenta[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(22),
	datad => VCC,
	cin => \bloquefreq1|cuenta[21]~75\,
	combout => \bloquefreq1|cuenta[22]~76_combout\,
	cout => \bloquefreq1|cuenta[22]~77\);

-- Location: FF_X4_Y3_N13
\bloquefreq1|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[22]~76_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(22));

-- Location: LCCOMB_X4_Y3_N14
\bloquefreq1|cuenta[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[23]~78_combout\ = (\bloquefreq1|cuenta\(23) & (!\bloquefreq1|cuenta[22]~77\)) # (!\bloquefreq1|cuenta\(23) & ((\bloquefreq1|cuenta[22]~77\) # (GND)))
-- \bloquefreq1|cuenta[23]~79\ = CARRY((!\bloquefreq1|cuenta[22]~77\) # (!\bloquefreq1|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(23),
	datad => VCC,
	cin => \bloquefreq1|cuenta[22]~77\,
	combout => \bloquefreq1|cuenta[23]~78_combout\,
	cout => \bloquefreq1|cuenta[23]~79\);

-- Location: FF_X4_Y3_N15
\bloquefreq1|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[23]~78_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(23));

-- Location: LCCOMB_X4_Y3_N16
\bloquefreq1|cuenta[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[24]~80_combout\ = (\bloquefreq1|cuenta\(24) & (\bloquefreq1|cuenta[23]~79\ $ (GND))) # (!\bloquefreq1|cuenta\(24) & (!\bloquefreq1|cuenta[23]~79\ & VCC))
-- \bloquefreq1|cuenta[24]~81\ = CARRY((\bloquefreq1|cuenta\(24) & !\bloquefreq1|cuenta[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(24),
	datad => VCC,
	cin => \bloquefreq1|cuenta[23]~79\,
	combout => \bloquefreq1|cuenta[24]~80_combout\,
	cout => \bloquefreq1|cuenta[24]~81\);

-- Location: FF_X4_Y3_N17
\bloquefreq1|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[24]~80_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(24));

-- Location: LCCOMB_X4_Y3_N18
\bloquefreq1|cuenta[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[25]~82_combout\ = (\bloquefreq1|cuenta\(25) & (!\bloquefreq1|cuenta[24]~81\)) # (!\bloquefreq1|cuenta\(25) & ((\bloquefreq1|cuenta[24]~81\) # (GND)))
-- \bloquefreq1|cuenta[25]~83\ = CARRY((!\bloquefreq1|cuenta[24]~81\) # (!\bloquefreq1|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(25),
	datad => VCC,
	cin => \bloquefreq1|cuenta[24]~81\,
	combout => \bloquefreq1|cuenta[25]~82_combout\,
	cout => \bloquefreq1|cuenta[25]~83\);

-- Location: FF_X4_Y3_N19
\bloquefreq1|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[25]~82_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(25));

-- Location: LCCOMB_X4_Y3_N20
\bloquefreq1|cuenta[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[26]~84_combout\ = (\bloquefreq1|cuenta\(26) & (\bloquefreq1|cuenta[25]~83\ $ (GND))) # (!\bloquefreq1|cuenta\(26) & (!\bloquefreq1|cuenta[25]~83\ & VCC))
-- \bloquefreq1|cuenta[26]~85\ = CARRY((\bloquefreq1|cuenta\(26) & !\bloquefreq1|cuenta[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(26),
	datad => VCC,
	cin => \bloquefreq1|cuenta[25]~83\,
	combout => \bloquefreq1|cuenta[26]~84_combout\,
	cout => \bloquefreq1|cuenta[26]~85\);

-- Location: FF_X4_Y3_N21
\bloquefreq1|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[26]~84_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(26));

-- Location: LCCOMB_X4_Y3_N22
\bloquefreq1|cuenta[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[27]~86_combout\ = (\bloquefreq1|cuenta\(27) & (!\bloquefreq1|cuenta[26]~85\)) # (!\bloquefreq1|cuenta\(27) & ((\bloquefreq1|cuenta[26]~85\) # (GND)))
-- \bloquefreq1|cuenta[27]~87\ = CARRY((!\bloquefreq1|cuenta[26]~85\) # (!\bloquefreq1|cuenta\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(27),
	datad => VCC,
	cin => \bloquefreq1|cuenta[26]~85\,
	combout => \bloquefreq1|cuenta[27]~86_combout\,
	cout => \bloquefreq1|cuenta[27]~87\);

-- Location: FF_X4_Y3_N23
\bloquefreq1|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[27]~86_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(27));

-- Location: LCCOMB_X4_Y3_N24
\bloquefreq1|cuenta[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[28]~88_combout\ = (\bloquefreq1|cuenta\(28) & (\bloquefreq1|cuenta[27]~87\ $ (GND))) # (!\bloquefreq1|cuenta\(28) & (!\bloquefreq1|cuenta[27]~87\ & VCC))
-- \bloquefreq1|cuenta[28]~89\ = CARRY((\bloquefreq1|cuenta\(28) & !\bloquefreq1|cuenta[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(28),
	datad => VCC,
	cin => \bloquefreq1|cuenta[27]~87\,
	combout => \bloquefreq1|cuenta[28]~88_combout\,
	cout => \bloquefreq1|cuenta[28]~89\);

-- Location: FF_X4_Y3_N25
\bloquefreq1|cuenta[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[28]~88_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(28));

-- Location: LCCOMB_X4_Y3_N26
\bloquefreq1|cuenta[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[29]~90_combout\ = (\bloquefreq1|cuenta\(29) & (!\bloquefreq1|cuenta[28]~89\)) # (!\bloquefreq1|cuenta\(29) & ((\bloquefreq1|cuenta[28]~89\) # (GND)))
-- \bloquefreq1|cuenta[29]~91\ = CARRY((!\bloquefreq1|cuenta[28]~89\) # (!\bloquefreq1|cuenta\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(29),
	datad => VCC,
	cin => \bloquefreq1|cuenta[28]~89\,
	combout => \bloquefreq1|cuenta[29]~90_combout\,
	cout => \bloquefreq1|cuenta[29]~91\);

-- Location: FF_X4_Y3_N27
\bloquefreq1|cuenta[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[29]~90_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(29));

-- Location: LCCOMB_X4_Y3_N28
\bloquefreq1|cuenta[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[30]~92_combout\ = (\bloquefreq1|cuenta\(30) & (\bloquefreq1|cuenta[29]~91\ $ (GND))) # (!\bloquefreq1|cuenta\(30) & (!\bloquefreq1|cuenta[29]~91\ & VCC))
-- \bloquefreq1|cuenta[30]~93\ = CARRY((\bloquefreq1|cuenta\(30) & !\bloquefreq1|cuenta[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(30),
	datad => VCC,
	cin => \bloquefreq1|cuenta[29]~91\,
	combout => \bloquefreq1|cuenta[30]~92_combout\,
	cout => \bloquefreq1|cuenta[30]~93\);

-- Location: FF_X4_Y3_N29
\bloquefreq1|cuenta[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[30]~92_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(30));

-- Location: LCCOMB_X4_Y3_N30
\bloquefreq1|cuenta[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta[31]~94_combout\ = \bloquefreq1|cuenta\(31) $ (\bloquefreq1|cuenta[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(31),
	cin => \bloquefreq1|cuenta[30]~93\,
	combout => \bloquefreq1|cuenta[31]~94_combout\);

-- Location: FF_X4_Y3_N31
\bloquefreq1|cuenta[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta[31]~94_combout\,
	sclr => \bloquefreq1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(31));

-- Location: LCCOMB_X3_Y3_N12
\bloquefreq1|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|LessThan1~5_combout\ = (((!\bloquefreq1|cuenta\(6) & \bloquefreq1|LessThan1~3_combout\)) # (!\bloquefreq1|LessThan1~4_combout\)) # (!\bloquefreq1|cuenta\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(6),
	datab => \bloquefreq1|LessThan1~3_combout\,
	datac => \bloquefreq1|cuenta\(11),
	datad => \bloquefreq1|LessThan1~4_combout\,
	combout => \bloquefreq1|LessThan1~5_combout\);

-- Location: LCCOMB_X3_Y3_N6
\bloquefreq1|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|LessThan1~6_combout\ = (\bloquefreq1|cuenta\(17)) # ((\bloquefreq1|cuenta\(16) & ((\bloquefreq1|cuenta\(15)) # (!\bloquefreq1|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(15),
	datab => \bloquefreq1|cuenta\(17),
	datac => \bloquefreq1|cuenta\(16),
	datad => \bloquefreq1|LessThan1~5_combout\,
	combout => \bloquefreq1|LessThan1~6_combout\);

-- Location: LCCOMB_X3_Y3_N30
\bloquefreq1|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|LessThan1~7_combout\ = (\bloquefreq1|cuenta\(23)) # ((\bloquefreq1|LessThan1~6_combout\ & (\bloquefreq1|cuenta\(18) & \bloquefreq1|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|LessThan1~6_combout\,
	datab => \bloquefreq1|cuenta\(23),
	datac => \bloquefreq1|cuenta\(18),
	datad => \bloquefreq1|LessThan1~2_combout\,
	combout => \bloquefreq1|LessThan1~7_combout\);

-- Location: LCCOMB_X3_Y3_N10
\bloquefreq1|LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|LessThan1~8_combout\ = (\bloquefreq1|cuenta\(31)) # ((\bloquefreq1|LessThan1~1_combout\ & ((!\bloquefreq1|LessThan1~7_combout\) # (!\bloquefreq1|cuenta\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(31),
	datab => \bloquefreq1|cuenta\(24),
	datac => \bloquefreq1|LessThan1~7_combout\,
	datad => \bloquefreq1|LessThan1~1_combout\,
	combout => \bloquefreq1|LessThan1~8_combout\);

-- Location: FF_X3_Y3_N11
\bloquefreq1|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|clkout~q\);

-- Location: CLKCTRL_G1
\bloquefreq1|clkout~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \bloquefreq1|clkout~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \bloquefreq1|clkout~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y19_N18
\bloqueCont|ffjk0|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueCont|ffjk0|temp~0_combout\ = !\bloqueCont|ffjk0|temp~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloqueCont|ffjk0|temp~q\,
	combout => \bloqueCont|ffjk0|temp~0_combout\);

-- Location: IOIBUF_X34_Y12_N8
\restart~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_restart,
	o => \restart~input_o\);

-- Location: CLKCTRL_G7
\restart~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \restart~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \restart~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y9_N1
\alto~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alto,
	o => \alto~input_o\);

-- Location: LCCOMB_X23_Y14_N12
\bloqueAntir|etapa2|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|etapa2|Q~0_combout\ = !\alto~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alto~input_o\,
	combout => \bloqueAntir|etapa2|Q~0_combout\);

-- Location: LCCOMB_X25_Y14_N0
\bloqueAntir|slow_counter[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[0]~32_combout\ = \bloqueAntir|slow_counter\(0) $ (VCC)
-- \bloqueAntir|slow_counter[0]~33\ = CARRY(\bloqueAntir|slow_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloqueAntir|slow_counter\(0),
	datad => VCC,
	combout => \bloqueAntir|slow_counter[0]~32_combout\,
	cout => \bloqueAntir|slow_counter[0]~33\);

-- Location: LCCOMB_X25_Y13_N4
\bloqueAntir|slow_counter[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[18]~68_combout\ = (\bloqueAntir|slow_counter\(18) & (\bloqueAntir|slow_counter[17]~67\ $ (GND))) # (!\bloqueAntir|slow_counter\(18) & (!\bloqueAntir|slow_counter[17]~67\ & VCC))
-- \bloqueAntir|slow_counter[18]~69\ = CARRY((\bloqueAntir|slow_counter\(18) & !\bloqueAntir|slow_counter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloqueAntir|slow_counter\(18),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[17]~67\,
	combout => \bloqueAntir|slow_counter[18]~68_combout\,
	cout => \bloqueAntir|slow_counter[18]~69\);

-- Location: LCCOMB_X25_Y13_N6
\bloqueAntir|slow_counter[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[19]~70_combout\ = (\bloqueAntir|slow_counter\(19) & (!\bloqueAntir|slow_counter[18]~69\)) # (!\bloqueAntir|slow_counter\(19) & ((\bloqueAntir|slow_counter[18]~69\) # (GND)))
-- \bloqueAntir|slow_counter[19]~71\ = CARRY((!\bloqueAntir|slow_counter[18]~69\) # (!\bloqueAntir|slow_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|slow_counter\(19),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[18]~69\,
	combout => \bloqueAntir|slow_counter[19]~70_combout\,
	cout => \bloqueAntir|slow_counter[19]~71\);

-- Location: FF_X25_Y13_N7
\bloqueAntir|slow_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[19]~70_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(19));

-- Location: LCCOMB_X25_Y13_N8
\bloqueAntir|slow_counter[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[20]~72_combout\ = (\bloqueAntir|slow_counter\(20) & (\bloqueAntir|slow_counter[19]~71\ $ (GND))) # (!\bloqueAntir|slow_counter\(20) & (!\bloqueAntir|slow_counter[19]~71\ & VCC))
-- \bloqueAntir|slow_counter[20]~73\ = CARRY((\bloqueAntir|slow_counter\(20) & !\bloqueAntir|slow_counter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloqueAntir|slow_counter\(20),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[19]~71\,
	combout => \bloqueAntir|slow_counter[20]~72_combout\,
	cout => \bloqueAntir|slow_counter[20]~73\);

-- Location: FF_X25_Y13_N9
\bloqueAntir|slow_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[20]~72_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(20));

-- Location: LCCOMB_X25_Y13_N10
\bloqueAntir|slow_counter[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[21]~74_combout\ = (\bloqueAntir|slow_counter\(21) & (!\bloqueAntir|slow_counter[20]~73\)) # (!\bloqueAntir|slow_counter\(21) & ((\bloqueAntir|slow_counter[20]~73\) # (GND)))
-- \bloqueAntir|slow_counter[21]~75\ = CARRY((!\bloqueAntir|slow_counter[20]~73\) # (!\bloqueAntir|slow_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|slow_counter\(21),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[20]~73\,
	combout => \bloqueAntir|slow_counter[21]~74_combout\,
	cout => \bloqueAntir|slow_counter[21]~75\);

-- Location: FF_X25_Y13_N11
\bloqueAntir|slow_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[21]~74_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(21));

-- Location: LCCOMB_X25_Y13_N12
\bloqueAntir|slow_counter[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[22]~76_combout\ = (\bloqueAntir|slow_counter\(22) & (\bloqueAntir|slow_counter[21]~75\ $ (GND))) # (!\bloqueAntir|slow_counter\(22) & (!\bloqueAntir|slow_counter[21]~75\ & VCC))
-- \bloqueAntir|slow_counter[22]~77\ = CARRY((\bloqueAntir|slow_counter\(22) & !\bloqueAntir|slow_counter[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|slow_counter\(22),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[21]~75\,
	combout => \bloqueAntir|slow_counter[22]~76_combout\,
	cout => \bloqueAntir|slow_counter[22]~77\);

-- Location: FF_X25_Y13_N13
\bloqueAntir|slow_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[22]~76_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(22));

-- Location: LCCOMB_X25_Y13_N14
\bloqueAntir|slow_counter[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[23]~78_combout\ = (\bloqueAntir|slow_counter\(23) & (!\bloqueAntir|slow_counter[22]~77\)) # (!\bloqueAntir|slow_counter\(23) & ((\bloqueAntir|slow_counter[22]~77\) # (GND)))
-- \bloqueAntir|slow_counter[23]~79\ = CARRY((!\bloqueAntir|slow_counter[22]~77\) # (!\bloqueAntir|slow_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloqueAntir|slow_counter\(23),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[22]~77\,
	combout => \bloqueAntir|slow_counter[23]~78_combout\,
	cout => \bloqueAntir|slow_counter[23]~79\);

-- Location: FF_X25_Y13_N15
\bloqueAntir|slow_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[23]~78_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(23));

-- Location: LCCOMB_X25_Y13_N16
\bloqueAntir|slow_counter[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[24]~80_combout\ = (\bloqueAntir|slow_counter\(24) & (\bloqueAntir|slow_counter[23]~79\ $ (GND))) # (!\bloqueAntir|slow_counter\(24) & (!\bloqueAntir|slow_counter[23]~79\ & VCC))
-- \bloqueAntir|slow_counter[24]~81\ = CARRY((\bloqueAntir|slow_counter\(24) & !\bloqueAntir|slow_counter[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloqueAntir|slow_counter\(24),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[23]~79\,
	combout => \bloqueAntir|slow_counter[24]~80_combout\,
	cout => \bloqueAntir|slow_counter[24]~81\);

-- Location: FF_X25_Y13_N17
\bloqueAntir|slow_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[24]~80_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(24));

-- Location: LCCOMB_X25_Y13_N18
\bloqueAntir|slow_counter[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[25]~82_combout\ = (\bloqueAntir|slow_counter\(25) & (!\bloqueAntir|slow_counter[24]~81\)) # (!\bloqueAntir|slow_counter\(25) & ((\bloqueAntir|slow_counter[24]~81\) # (GND)))
-- \bloqueAntir|slow_counter[25]~83\ = CARRY((!\bloqueAntir|slow_counter[24]~81\) # (!\bloqueAntir|slow_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloqueAntir|slow_counter\(25),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[24]~81\,
	combout => \bloqueAntir|slow_counter[25]~82_combout\,
	cout => \bloqueAntir|slow_counter[25]~83\);

-- Location: FF_X25_Y13_N19
\bloqueAntir|slow_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[25]~82_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(25));

-- Location: LCCOMB_X25_Y13_N20
\bloqueAntir|slow_counter[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[26]~84_combout\ = (\bloqueAntir|slow_counter\(26) & (\bloqueAntir|slow_counter[25]~83\ $ (GND))) # (!\bloqueAntir|slow_counter\(26) & (!\bloqueAntir|slow_counter[25]~83\ & VCC))
-- \bloqueAntir|slow_counter[26]~85\ = CARRY((\bloqueAntir|slow_counter\(26) & !\bloqueAntir|slow_counter[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloqueAntir|slow_counter\(26),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[25]~83\,
	combout => \bloqueAntir|slow_counter[26]~84_combout\,
	cout => \bloqueAntir|slow_counter[26]~85\);

-- Location: FF_X25_Y13_N21
\bloqueAntir|slow_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[26]~84_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(26));

-- Location: LCCOMB_X25_Y13_N22
\bloqueAntir|slow_counter[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[27]~86_combout\ = (\bloqueAntir|slow_counter\(27) & (!\bloqueAntir|slow_counter[26]~85\)) # (!\bloqueAntir|slow_counter\(27) & ((\bloqueAntir|slow_counter[26]~85\) # (GND)))
-- \bloqueAntir|slow_counter[27]~87\ = CARRY((!\bloqueAntir|slow_counter[26]~85\) # (!\bloqueAntir|slow_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|slow_counter\(27),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[26]~85\,
	combout => \bloqueAntir|slow_counter[27]~86_combout\,
	cout => \bloqueAntir|slow_counter[27]~87\);

-- Location: FF_X25_Y13_N23
\bloqueAntir|slow_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[27]~86_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(27));

-- Location: LCCOMB_X25_Y13_N24
\bloqueAntir|slow_counter[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[28]~88_combout\ = (\bloqueAntir|slow_counter\(28) & (\bloqueAntir|slow_counter[27]~87\ $ (GND))) # (!\bloqueAntir|slow_counter\(28) & (!\bloqueAntir|slow_counter[27]~87\ & VCC))
-- \bloqueAntir|slow_counter[28]~89\ = CARRY((\bloqueAntir|slow_counter\(28) & !\bloqueAntir|slow_counter[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloqueAntir|slow_counter\(28),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[27]~87\,
	combout => \bloqueAntir|slow_counter[28]~88_combout\,
	cout => \bloqueAntir|slow_counter[28]~89\);

-- Location: FF_X25_Y13_N25
\bloqueAntir|slow_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[28]~88_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(28));

-- Location: LCCOMB_X25_Y13_N26
\bloqueAntir|slow_counter[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[29]~90_combout\ = (\bloqueAntir|slow_counter\(29) & (!\bloqueAntir|slow_counter[28]~89\)) # (!\bloqueAntir|slow_counter\(29) & ((\bloqueAntir|slow_counter[28]~89\) # (GND)))
-- \bloqueAntir|slow_counter[29]~91\ = CARRY((!\bloqueAntir|slow_counter[28]~89\) # (!\bloqueAntir|slow_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|slow_counter\(29),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[28]~89\,
	combout => \bloqueAntir|slow_counter[29]~90_combout\,
	cout => \bloqueAntir|slow_counter[29]~91\);

-- Location: FF_X25_Y13_N27
\bloqueAntir|slow_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[29]~90_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(29));

-- Location: LCCOMB_X25_Y13_N28
\bloqueAntir|slow_counter[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[30]~92_combout\ = (\bloqueAntir|slow_counter\(30) & (\bloqueAntir|slow_counter[29]~91\ $ (GND))) # (!\bloqueAntir|slow_counter\(30) & (!\bloqueAntir|slow_counter[29]~91\ & VCC))
-- \bloqueAntir|slow_counter[30]~93\ = CARRY((\bloqueAntir|slow_counter\(30) & !\bloqueAntir|slow_counter[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloqueAntir|slow_counter\(30),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[29]~91\,
	combout => \bloqueAntir|slow_counter[30]~92_combout\,
	cout => \bloqueAntir|slow_counter[30]~93\);

-- Location: FF_X25_Y13_N29
\bloqueAntir|slow_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[30]~92_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(30));

-- Location: LCCOMB_X24_Y14_N6
\bloqueAntir|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|Equal0~0_combout\ = (!\bloqueAntir|slow_counter\(27) & (!\bloqueAntir|slow_counter\(25) & (!\bloqueAntir|slow_counter\(24) & !\bloqueAntir|slow_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|slow_counter\(27),
	datab => \bloqueAntir|slow_counter\(25),
	datac => \bloqueAntir|slow_counter\(24),
	datad => \bloqueAntir|slow_counter\(26),
	combout => \bloqueAntir|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y14_N20
\bloqueAntir|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|Equal0~1_combout\ = (!\bloqueAntir|slow_counter\(29) & (!\bloqueAntir|slow_counter\(28) & (!\bloqueAntir|slow_counter\(30) & \bloqueAntir|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|slow_counter\(29),
	datab => \bloqueAntir|slow_counter\(28),
	datac => \bloqueAntir|slow_counter\(30),
	datad => \bloqueAntir|Equal0~0_combout\,
	combout => \bloqueAntir|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y13_N30
\bloqueAntir|slow_counter[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[31]~94_combout\ = \bloqueAntir|slow_counter\(31) $ (\bloqueAntir|slow_counter[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|slow_counter\(31),
	cin => \bloqueAntir|slow_counter[30]~93\,
	combout => \bloqueAntir|slow_counter[31]~94_combout\);

-- Location: FF_X25_Y13_N31
\bloqueAntir|slow_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[31]~94_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(31));

-- Location: LCCOMB_X24_Y14_N30
\bloqueAntir|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|LessThan0~1_combout\ = (((!\bloqueAntir|slow_counter\(16) & !\bloqueAntir|slow_counter\(15))) # (!\bloqueAntir|Equal0~2_combout\)) # (!\bloqueAntir|slow_counter\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|slow_counter\(16),
	datab => \bloqueAntir|slow_counter\(21),
	datac => \bloqueAntir|slow_counter\(15),
	datad => \bloqueAntir|Equal0~2_combout\,
	combout => \bloqueAntir|LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y14_N14
\bloqueAntir|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|Equal0~4_combout\ = (!\bloqueAntir|slow_counter\(6) & (!\bloqueAntir|slow_counter\(8) & (!\bloqueAntir|slow_counter\(7) & !\bloqueAntir|slow_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|slow_counter\(6),
	datab => \bloqueAntir|slow_counter\(8),
	datac => \bloqueAntir|slow_counter\(7),
	datad => \bloqueAntir|slow_counter\(9),
	combout => \bloqueAntir|Equal0~4_combout\);

-- Location: LCCOMB_X24_Y14_N8
\bloqueAntir|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|Equal0~5_combout\ = (\bloqueAntir|slow_counter\(10) & (\bloqueAntir|slow_counter\(11) & (\bloqueAntir|slow_counter\(12) & \bloqueAntir|slow_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|slow_counter\(10),
	datab => \bloqueAntir|slow_counter\(11),
	datac => \bloqueAntir|slow_counter\(12),
	datad => \bloqueAntir|slow_counter\(13),
	combout => \bloqueAntir|Equal0~5_combout\);

-- Location: LCCOMB_X24_Y14_N2
\bloqueAntir|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|Equal0~6_combout\ = (!\bloqueAntir|slow_counter\(14) & (!\bloqueAntir|slow_counter\(16) & !\bloqueAntir|slow_counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloqueAntir|slow_counter\(14),
	datac => \bloqueAntir|slow_counter\(16),
	datad => \bloqueAntir|slow_counter\(22),
	combout => \bloqueAntir|Equal0~6_combout\);

-- Location: LCCOMB_X24_Y14_N0
\bloqueAntir|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|LessThan0~0_combout\ = (\bloqueAntir|Equal0~6_combout\ & (((!\bloqueAntir|slow_counter\(5) & \bloqueAntir|Equal0~4_combout\)) # (!\bloqueAntir|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|slow_counter\(5),
	datab => \bloqueAntir|Equal0~4_combout\,
	datac => \bloqueAntir|Equal0~5_combout\,
	datad => \bloqueAntir|Equal0~6_combout\,
	combout => \bloqueAntir|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y14_N24
\bloqueAntir|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|LessThan0~2_combout\ = ((\bloqueAntir|LessThan0~0_combout\) # ((!\bloqueAntir|slow_counter\(22) & \bloqueAntir|LessThan0~1_combout\))) # (!\bloqueAntir|slow_counter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|slow_counter\(22),
	datab => \bloqueAntir|slow_counter\(23),
	datac => \bloqueAntir|LessThan0~1_combout\,
	datad => \bloqueAntir|LessThan0~0_combout\,
	combout => \bloqueAntir|LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y14_N18
\bloqueAntir|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|LessThan0~3_combout\ = (!\bloqueAntir|slow_counter\(31) & ((!\bloqueAntir|LessThan0~2_combout\) # (!\bloqueAntir|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloqueAntir|Equal0~1_combout\,
	datac => \bloqueAntir|slow_counter\(31),
	datad => \bloqueAntir|LessThan0~2_combout\,
	combout => \bloqueAntir|LessThan0~3_combout\);

-- Location: FF_X25_Y14_N1
\bloqueAntir|slow_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[0]~32_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(0));

-- Location: LCCOMB_X25_Y14_N2
\bloqueAntir|slow_counter[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[1]~34_combout\ = (\bloqueAntir|slow_counter\(1) & (!\bloqueAntir|slow_counter[0]~33\)) # (!\bloqueAntir|slow_counter\(1) & ((\bloqueAntir|slow_counter[0]~33\) # (GND)))
-- \bloqueAntir|slow_counter[1]~35\ = CARRY((!\bloqueAntir|slow_counter[0]~33\) # (!\bloqueAntir|slow_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloqueAntir|slow_counter\(1),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[0]~33\,
	combout => \bloqueAntir|slow_counter[1]~34_combout\,
	cout => \bloqueAntir|slow_counter[1]~35\);

-- Location: FF_X25_Y14_N3
\bloqueAntir|slow_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[1]~34_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(1));

-- Location: LCCOMB_X25_Y14_N4
\bloqueAntir|slow_counter[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[2]~36_combout\ = (\bloqueAntir|slow_counter\(2) & (\bloqueAntir|slow_counter[1]~35\ $ (GND))) # (!\bloqueAntir|slow_counter\(2) & (!\bloqueAntir|slow_counter[1]~35\ & VCC))
-- \bloqueAntir|slow_counter[2]~37\ = CARRY((\bloqueAntir|slow_counter\(2) & !\bloqueAntir|slow_counter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloqueAntir|slow_counter\(2),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[1]~35\,
	combout => \bloqueAntir|slow_counter[2]~36_combout\,
	cout => \bloqueAntir|slow_counter[2]~37\);

-- Location: FF_X25_Y14_N5
\bloqueAntir|slow_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[2]~36_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(2));

-- Location: LCCOMB_X25_Y14_N6
\bloqueAntir|slow_counter[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[3]~38_combout\ = (\bloqueAntir|slow_counter\(3) & (!\bloqueAntir|slow_counter[2]~37\)) # (!\bloqueAntir|slow_counter\(3) & ((\bloqueAntir|slow_counter[2]~37\) # (GND)))
-- \bloqueAntir|slow_counter[3]~39\ = CARRY((!\bloqueAntir|slow_counter[2]~37\) # (!\bloqueAntir|slow_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|slow_counter\(3),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[2]~37\,
	combout => \bloqueAntir|slow_counter[3]~38_combout\,
	cout => \bloqueAntir|slow_counter[3]~39\);

-- Location: FF_X25_Y14_N7
\bloqueAntir|slow_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[3]~38_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(3));

-- Location: LCCOMB_X25_Y14_N8
\bloqueAntir|slow_counter[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[4]~40_combout\ = (\bloqueAntir|slow_counter\(4) & (\bloqueAntir|slow_counter[3]~39\ $ (GND))) # (!\bloqueAntir|slow_counter\(4) & (!\bloqueAntir|slow_counter[3]~39\ & VCC))
-- \bloqueAntir|slow_counter[4]~41\ = CARRY((\bloqueAntir|slow_counter\(4) & !\bloqueAntir|slow_counter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloqueAntir|slow_counter\(4),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[3]~39\,
	combout => \bloqueAntir|slow_counter[4]~40_combout\,
	cout => \bloqueAntir|slow_counter[4]~41\);

-- Location: FF_X25_Y14_N9
\bloqueAntir|slow_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[4]~40_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(4));

-- Location: LCCOMB_X25_Y14_N10
\bloqueAntir|slow_counter[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[5]~42_combout\ = (\bloqueAntir|slow_counter\(5) & (!\bloqueAntir|slow_counter[4]~41\)) # (!\bloqueAntir|slow_counter\(5) & ((\bloqueAntir|slow_counter[4]~41\) # (GND)))
-- \bloqueAntir|slow_counter[5]~43\ = CARRY((!\bloqueAntir|slow_counter[4]~41\) # (!\bloqueAntir|slow_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|slow_counter\(5),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[4]~41\,
	combout => \bloqueAntir|slow_counter[5]~42_combout\,
	cout => \bloqueAntir|slow_counter[5]~43\);

-- Location: FF_X25_Y14_N11
\bloqueAntir|slow_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[5]~42_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(5));

-- Location: LCCOMB_X25_Y14_N12
\bloqueAntir|slow_counter[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[6]~44_combout\ = (\bloqueAntir|slow_counter\(6) & (\bloqueAntir|slow_counter[5]~43\ $ (GND))) # (!\bloqueAntir|slow_counter\(6) & (!\bloqueAntir|slow_counter[5]~43\ & VCC))
-- \bloqueAntir|slow_counter[6]~45\ = CARRY((\bloqueAntir|slow_counter\(6) & !\bloqueAntir|slow_counter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|slow_counter\(6),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[5]~43\,
	combout => \bloqueAntir|slow_counter[6]~44_combout\,
	cout => \bloqueAntir|slow_counter[6]~45\);

-- Location: FF_X25_Y14_N13
\bloqueAntir|slow_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[6]~44_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(6));

-- Location: LCCOMB_X25_Y14_N14
\bloqueAntir|slow_counter[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[7]~46_combout\ = (\bloqueAntir|slow_counter\(7) & (!\bloqueAntir|slow_counter[6]~45\)) # (!\bloqueAntir|slow_counter\(7) & ((\bloqueAntir|slow_counter[6]~45\) # (GND)))
-- \bloqueAntir|slow_counter[7]~47\ = CARRY((!\bloqueAntir|slow_counter[6]~45\) # (!\bloqueAntir|slow_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloqueAntir|slow_counter\(7),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[6]~45\,
	combout => \bloqueAntir|slow_counter[7]~46_combout\,
	cout => \bloqueAntir|slow_counter[7]~47\);

-- Location: FF_X25_Y14_N15
\bloqueAntir|slow_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[7]~46_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(7));

-- Location: LCCOMB_X25_Y14_N16
\bloqueAntir|slow_counter[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[8]~48_combout\ = (\bloqueAntir|slow_counter\(8) & (\bloqueAntir|slow_counter[7]~47\ $ (GND))) # (!\bloqueAntir|slow_counter\(8) & (!\bloqueAntir|slow_counter[7]~47\ & VCC))
-- \bloqueAntir|slow_counter[8]~49\ = CARRY((\bloqueAntir|slow_counter\(8) & !\bloqueAntir|slow_counter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloqueAntir|slow_counter\(8),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[7]~47\,
	combout => \bloqueAntir|slow_counter[8]~48_combout\,
	cout => \bloqueAntir|slow_counter[8]~49\);

-- Location: FF_X25_Y14_N17
\bloqueAntir|slow_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[8]~48_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(8));

-- Location: LCCOMB_X25_Y14_N18
\bloqueAntir|slow_counter[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[9]~50_combout\ = (\bloqueAntir|slow_counter\(9) & (!\bloqueAntir|slow_counter[8]~49\)) # (!\bloqueAntir|slow_counter\(9) & ((\bloqueAntir|slow_counter[8]~49\) # (GND)))
-- \bloqueAntir|slow_counter[9]~51\ = CARRY((!\bloqueAntir|slow_counter[8]~49\) # (!\bloqueAntir|slow_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloqueAntir|slow_counter\(9),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[8]~49\,
	combout => \bloqueAntir|slow_counter[9]~50_combout\,
	cout => \bloqueAntir|slow_counter[9]~51\);

-- Location: FF_X25_Y14_N19
\bloqueAntir|slow_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[9]~50_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(9));

-- Location: LCCOMB_X25_Y14_N20
\bloqueAntir|slow_counter[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[10]~52_combout\ = (\bloqueAntir|slow_counter\(10) & (\bloqueAntir|slow_counter[9]~51\ $ (GND))) # (!\bloqueAntir|slow_counter\(10) & (!\bloqueAntir|slow_counter[9]~51\ & VCC))
-- \bloqueAntir|slow_counter[10]~53\ = CARRY((\bloqueAntir|slow_counter\(10) & !\bloqueAntir|slow_counter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloqueAntir|slow_counter\(10),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[9]~51\,
	combout => \bloqueAntir|slow_counter[10]~52_combout\,
	cout => \bloqueAntir|slow_counter[10]~53\);

-- Location: FF_X25_Y14_N21
\bloqueAntir|slow_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[10]~52_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(10));

-- Location: LCCOMB_X25_Y14_N22
\bloqueAntir|slow_counter[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[11]~54_combout\ = (\bloqueAntir|slow_counter\(11) & (!\bloqueAntir|slow_counter[10]~53\)) # (!\bloqueAntir|slow_counter\(11) & ((\bloqueAntir|slow_counter[10]~53\) # (GND)))
-- \bloqueAntir|slow_counter[11]~55\ = CARRY((!\bloqueAntir|slow_counter[10]~53\) # (!\bloqueAntir|slow_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|slow_counter\(11),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[10]~53\,
	combout => \bloqueAntir|slow_counter[11]~54_combout\,
	cout => \bloqueAntir|slow_counter[11]~55\);

-- Location: FF_X25_Y14_N23
\bloqueAntir|slow_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[11]~54_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(11));

-- Location: LCCOMB_X25_Y14_N24
\bloqueAntir|slow_counter[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[12]~56_combout\ = (\bloqueAntir|slow_counter\(12) & (\bloqueAntir|slow_counter[11]~55\ $ (GND))) # (!\bloqueAntir|slow_counter\(12) & (!\bloqueAntir|slow_counter[11]~55\ & VCC))
-- \bloqueAntir|slow_counter[12]~57\ = CARRY((\bloqueAntir|slow_counter\(12) & !\bloqueAntir|slow_counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloqueAntir|slow_counter\(12),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[11]~55\,
	combout => \bloqueAntir|slow_counter[12]~56_combout\,
	cout => \bloqueAntir|slow_counter[12]~57\);

-- Location: FF_X25_Y14_N25
\bloqueAntir|slow_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[12]~56_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(12));

-- Location: LCCOMB_X25_Y14_N26
\bloqueAntir|slow_counter[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[13]~58_combout\ = (\bloqueAntir|slow_counter\(13) & (!\bloqueAntir|slow_counter[12]~57\)) # (!\bloqueAntir|slow_counter\(13) & ((\bloqueAntir|slow_counter[12]~57\) # (GND)))
-- \bloqueAntir|slow_counter[13]~59\ = CARRY((!\bloqueAntir|slow_counter[12]~57\) # (!\bloqueAntir|slow_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|slow_counter\(13),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[12]~57\,
	combout => \bloqueAntir|slow_counter[13]~58_combout\,
	cout => \bloqueAntir|slow_counter[13]~59\);

-- Location: FF_X25_Y14_N27
\bloqueAntir|slow_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[13]~58_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(13));

-- Location: LCCOMB_X25_Y14_N28
\bloqueAntir|slow_counter[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[14]~60_combout\ = (\bloqueAntir|slow_counter\(14) & (\bloqueAntir|slow_counter[13]~59\ $ (GND))) # (!\bloqueAntir|slow_counter\(14) & (!\bloqueAntir|slow_counter[13]~59\ & VCC))
-- \bloqueAntir|slow_counter[14]~61\ = CARRY((\bloqueAntir|slow_counter\(14) & !\bloqueAntir|slow_counter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloqueAntir|slow_counter\(14),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[13]~59\,
	combout => \bloqueAntir|slow_counter[14]~60_combout\,
	cout => \bloqueAntir|slow_counter[14]~61\);

-- Location: FF_X25_Y14_N29
\bloqueAntir|slow_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[14]~60_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(14));

-- Location: LCCOMB_X25_Y14_N30
\bloqueAntir|slow_counter[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[15]~62_combout\ = (\bloqueAntir|slow_counter\(15) & (!\bloqueAntir|slow_counter[14]~61\)) # (!\bloqueAntir|slow_counter\(15) & ((\bloqueAntir|slow_counter[14]~61\) # (GND)))
-- \bloqueAntir|slow_counter[15]~63\ = CARRY((!\bloqueAntir|slow_counter[14]~61\) # (!\bloqueAntir|slow_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|slow_counter\(15),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[14]~61\,
	combout => \bloqueAntir|slow_counter[15]~62_combout\,
	cout => \bloqueAntir|slow_counter[15]~63\);

-- Location: FF_X25_Y14_N31
\bloqueAntir|slow_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[15]~62_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(15));

-- Location: LCCOMB_X25_Y13_N0
\bloqueAntir|slow_counter[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[16]~64_combout\ = (\bloqueAntir|slow_counter\(16) & (\bloqueAntir|slow_counter[15]~63\ $ (GND))) # (!\bloqueAntir|slow_counter\(16) & (!\bloqueAntir|slow_counter[15]~63\ & VCC))
-- \bloqueAntir|slow_counter[16]~65\ = CARRY((\bloqueAntir|slow_counter\(16) & !\bloqueAntir|slow_counter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloqueAntir|slow_counter\(16),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[15]~63\,
	combout => \bloqueAntir|slow_counter[16]~64_combout\,
	cout => \bloqueAntir|slow_counter[16]~65\);

-- Location: FF_X25_Y13_N1
\bloqueAntir|slow_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[16]~64_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(16));

-- Location: LCCOMB_X25_Y13_N2
\bloqueAntir|slow_counter[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|slow_counter[17]~66_combout\ = (\bloqueAntir|slow_counter\(17) & (!\bloqueAntir|slow_counter[16]~65\)) # (!\bloqueAntir|slow_counter\(17) & ((\bloqueAntir|slow_counter[16]~65\) # (GND)))
-- \bloqueAntir|slow_counter[17]~67\ = CARRY((!\bloqueAntir|slow_counter[16]~65\) # (!\bloqueAntir|slow_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|slow_counter\(17),
	datad => VCC,
	cin => \bloqueAntir|slow_counter[16]~65\,
	combout => \bloqueAntir|slow_counter[17]~66_combout\,
	cout => \bloqueAntir|slow_counter[17]~67\);

-- Location: FF_X24_Y14_N29
\bloqueAntir|slow_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bloqueAntir|slow_counter[17]~66_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(17));

-- Location: FF_X25_Y13_N5
\bloqueAntir|slow_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|slow_counter[18]~68_combout\,
	sclr => \bloqueAntir|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|slow_counter\(18));

-- Location: LCCOMB_X24_Y14_N10
\bloqueAntir|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|Equal0~2_combout\ = (\bloqueAntir|slow_counter\(18) & (\bloqueAntir|slow_counter\(17) & (\bloqueAntir|slow_counter\(19) & \bloqueAntir|slow_counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|slow_counter\(18),
	datab => \bloqueAntir|slow_counter\(17),
	datac => \bloqueAntir|slow_counter\(19),
	datad => \bloqueAntir|slow_counter\(20),
	combout => \bloqueAntir|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y14_N4
\bloqueAntir|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|Equal0~3_combout\ = (\bloqueAntir|slow_counter\(15) & (\bloqueAntir|slow_counter\(23) & (!\bloqueAntir|slow_counter\(31) & \bloqueAntir|slow_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|slow_counter\(15),
	datab => \bloqueAntir|slow_counter\(23),
	datac => \bloqueAntir|slow_counter\(31),
	datad => \bloqueAntir|slow_counter\(5),
	combout => \bloqueAntir|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y14_N16
\bloqueAntir|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|Equal0~7_combout\ = (!\bloqueAntir|slow_counter\(2) & (!\bloqueAntir|slow_counter\(4) & (!\bloqueAntir|slow_counter\(1) & !\bloqueAntir|slow_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|slow_counter\(2),
	datab => \bloqueAntir|slow_counter\(4),
	datac => \bloqueAntir|slow_counter\(1),
	datad => \bloqueAntir|slow_counter\(3),
	combout => \bloqueAntir|Equal0~7_combout\);

-- Location: LCCOMB_X24_Y14_N28
\bloqueAntir|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|Equal0~8_combout\ = (\bloqueAntir|Equal0~7_combout\ & (!\bloqueAntir|slow_counter\(0) & \bloqueAntir|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|Equal0~7_combout\,
	datab => \bloqueAntir|slow_counter\(0),
	datad => \bloqueAntir|Equal0~6_combout\,
	combout => \bloqueAntir|Equal0~8_combout\);

-- Location: LCCOMB_X24_Y14_N26
\bloqueAntir|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|Equal0~9_combout\ = (\bloqueAntir|Equal0~4_combout\ & (\bloqueAntir|Equal0~5_combout\ & (\bloqueAntir|Equal0~3_combout\ & \bloqueAntir|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|Equal0~4_combout\,
	datab => \bloqueAntir|Equal0~5_combout\,
	datac => \bloqueAntir|Equal0~3_combout\,
	datad => \bloqueAntir|Equal0~8_combout\,
	combout => \bloqueAntir|Equal0~9_combout\);

-- Location: LCCOMB_X24_Y14_N12
\bloqueAntir|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|Equal0~10_combout\ = (\bloqueAntir|Equal0~2_combout\ & (\bloqueAntir|slow_counter\(21) & (\bloqueAntir|Equal0~9_combout\ & \bloqueAntir|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|Equal0~2_combout\,
	datab => \bloqueAntir|slow_counter\(21),
	datac => \bloqueAntir|Equal0~9_combout\,
	datad => \bloqueAntir|Equal0~1_combout\,
	combout => \bloqueAntir|Equal0~10_combout\);

-- Location: FF_X23_Y14_N13
\bloqueAntir|etapa2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|etapa2|Q~0_combout\,
	ena => \bloqueAntir|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|etapa2|Q~q\);

-- Location: LCCOMB_X23_Y14_N30
\bloqueAntir|etapa3|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|etapa3|Q~feeder_combout\ = \bloqueAntir|etapa2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloqueAntir|etapa2|Q~q\,
	combout => \bloqueAntir|etapa3|Q~feeder_combout\);

-- Location: FF_X23_Y14_N31
\bloqueAntir|etapa3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|etapa3|Q~feeder_combout\,
	ena => \bloqueAntir|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|etapa3|Q~q\);

-- Location: IOIBUF_X34_Y10_N8
\inicio~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inicio,
	o => \inicio~input_o\);

-- Location: LCCOMB_X24_Y14_N22
\bloqueAntir|etapa0|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueAntir|etapa0|Q~0_combout\ = !\inicio~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inicio~input_o\,
	combout => \bloqueAntir|etapa0|Q~0_combout\);

-- Location: FF_X24_Y14_N23
\bloqueAntir|etapa0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueAntir|etapa0|Q~0_combout\,
	ena => \bloqueAntir|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|etapa0|Q~q\);

-- Location: FF_X23_Y14_N11
\bloqueAntir|etapa1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bloqueAntir|etapa0|Q~q\,
	sload => VCC,
	ena => \bloqueAntir|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueAntir|etapa1|Q~q\);

-- Location: LCCOMB_X23_Y14_N10
\bloqueCtrl|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueCtrl|q~0_combout\ = (\bloqueCtrl|q~q\) # ((!\bloqueAntir|etapa0|Q~q\ & (\bloqueAntir|etapa1|Q~q\ & !\bloqueAntir|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|etapa0|Q~q\,
	datab => \bloqueCtrl|q~q\,
	datac => \bloqueAntir|etapa1|Q~q\,
	datad => \bloqueAntir|Equal0~10_combout\,
	combout => \bloqueCtrl|q~0_combout\);

-- Location: LCCOMB_X23_Y14_N0
\bloqueCtrl|q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueCtrl|q~1_combout\ = (\bloqueCtrl|q~0_combout\ & ((\bloqueAntir|etapa2|Q~q\) # ((\bloqueAntir|Equal0~10_combout\) # (!\bloqueAntir|etapa3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueAntir|etapa2|Q~q\,
	datab => \bloqueAntir|etapa3|Q~q\,
	datac => \bloqueAntir|Equal0~10_combout\,
	datad => \bloqueCtrl|q~0_combout\,
	combout => \bloqueCtrl|q~1_combout\);

-- Location: FF_X23_Y14_N1
\bloqueCtrl|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueCtrl|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueCtrl|q~q\);

-- Location: FF_X17_Y19_N19
\bloqueCont|ffjk0|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bloquefreq1|clkout~clkctrl_outclk\,
	d => \bloqueCont|ffjk0|temp~0_combout\,
	clrn => \restart~inputclkctrl_outclk\,
	ena => \bloqueCtrl|q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueCont|ffjk0|temp~q\);

-- Location: LCCOMB_X17_Y19_N4
\bloquebinBCD|tempBCD~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|tempBCD~17_combout\ = (\bloquebinBCD|Equal0~8_combout\ & (((\bloqueCont|ffjk0|temp~q\)))) # (!\bloquebinBCD|Equal0~8_combout\ & (\bloquebinBCD|tempBCD~16_combout\ & (\bloquebinBCD|tempBCD\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|tempBCD~16_combout\,
	datab => \bloquebinBCD|Equal0~8_combout\,
	datac => \bloquebinBCD|tempBCD\(1),
	datad => \bloqueCont|ffjk0|temp~q\,
	combout => \bloquebinBCD|tempBCD~17_combout\);

-- Location: FF_X17_Y19_N5
\bloquebinBCD|tempBCD[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|tempBCD~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|tempBCD\(1));

-- Location: LCCOMB_X16_Y19_N24
\bloqueCont|ffjk1|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueCont|ffjk1|temp~0_combout\ = \bloqueCont|ffjk1|temp~q\ $ (((\bloqueCont|ffjk0|temp~q\ & \bloqueCtrl|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloqueCont|ffjk0|temp~q\,
	datac => \bloqueCont|ffjk1|temp~q\,
	datad => \bloqueCtrl|q~q\,
	combout => \bloqueCont|ffjk1|temp~0_combout\);

-- Location: FF_X16_Y19_N25
\bloqueCont|ffjk1|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bloquefreq1|clkout~clkctrl_outclk\,
	d => \bloqueCont|ffjk1|temp~0_combout\,
	clrn => \restart~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueCont|ffjk1|temp~q\);

-- Location: LCCOMB_X16_Y19_N4
\bloquebinBCD|tempBCD~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|tempBCD~15_combout\ = (\bloquebinBCD|Equal0~8_combout\ & (((\bloqueCont|ffjk1|temp~q\)))) # (!\bloquebinBCD|Equal0~8_combout\ & (\bloquebinBCD|tempBCD\(1) & (!\bloquebinBCD|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|Equal0~8_combout\,
	datab => \bloquebinBCD|tempBCD\(1),
	datac => \bloquebinBCD|process_0~2_combout\,
	datad => \bloqueCont|ffjk1|temp~q\,
	combout => \bloquebinBCD|tempBCD~15_combout\);

-- Location: LCCOMB_X16_Y19_N16
\bloquebinBCD|tempBCD~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|tempBCD~3_combout\ = ((\bloquebinBCD|Equal0~8_combout\) # (!\bloquebinBCD|process_0~2_combout\)) # (!\bloquebinBCD|LessThan3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|LessThan3~6_combout\,
	datac => \bloquebinBCD|process_0~2_combout\,
	datad => \bloquebinBCD|Equal0~8_combout\,
	combout => \bloquebinBCD|tempBCD~3_combout\);

-- Location: FF_X16_Y19_N5
\bloquebinBCD|tempBCD[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|tempBCD~15_combout\,
	ena => \bloquebinBCD|tempBCD~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|tempBCD\(2));

-- Location: LCCOMB_X17_Y19_N30
\bloqueCont|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueCont|comb~1_combout\ = (\bloqueCont|ffjk0|temp~q\ & \bloqueCont|ffjk1|temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloqueCont|ffjk0|temp~q\,
	datad => \bloqueCont|ffjk1|temp~q\,
	combout => \bloqueCont|comb~1_combout\);

-- Location: LCCOMB_X16_Y19_N8
\bloqueCont|ffjk3|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueCont|ffjk3|temp~0_combout\ = (\bloqueCont|ffjk0|temp~q\ & (\bloqueCont|ffjk2|temp~q\ & \bloqueCont|ffjk1|temp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloqueCont|ffjk0|temp~q\,
	datac => \bloqueCont|ffjk2|temp~q\,
	datad => \bloqueCont|ffjk1|temp~q\,
	combout => \bloqueCont|ffjk3|temp~0_combout\);

-- Location: LCCOMB_X16_Y19_N20
\bloqueCont|ffjk5|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueCont|ffjk5|temp~0_combout\ = (\bloqueCtrl|q~q\ & ((\bloqueCont|ffjk5|temp~q\ & ((!\bloqueCont|comb~0_combout\))) # (!\bloqueCont|ffjk5|temp~q\ & (\bloqueCont|ffjk2|temp~q\ & \bloqueCont|comb~0_combout\)))) # (!\bloqueCtrl|q~q\ & 
-- (((\bloqueCont|ffjk5|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueCont|ffjk2|temp~q\,
	datab => \bloqueCtrl|q~q\,
	datac => \bloqueCont|ffjk5|temp~q\,
	datad => \bloqueCont|comb~0_combout\,
	combout => \bloqueCont|ffjk5|temp~0_combout\);

-- Location: FF_X16_Y19_N21
\bloqueCont|ffjk5|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bloquefreq1|clkout~clkctrl_outclk\,
	d => \bloqueCont|ffjk5|temp~0_combout\,
	clrn => \restart~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueCont|ffjk5|temp~q\);

-- Location: LCCOMB_X16_Y19_N2
\bloqueCont|comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueCont|comb~2_combout\ = (!\bloqueCont|ffjk2|temp~q\ & (\bloqueCont|ffjk5|temp~q\ & \bloqueCont|comb~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloqueCont|ffjk2|temp~q\,
	datac => \bloqueCont|ffjk5|temp~q\,
	datad => \bloqueCont|comb~0_combout\,
	combout => \bloqueCont|comb~2_combout\);

-- Location: LCCOMB_X16_Y19_N6
\bloqueCont|ffjk3|temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueCont|ffjk3|temp~1_combout\ = \bloqueCont|ffjk3|temp~q\ $ (((\bloqueCtrl|q~q\ & ((\bloqueCont|ffjk3|temp~0_combout\) # (\bloqueCont|comb~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueCont|ffjk3|temp~0_combout\,
	datab => \bloqueCtrl|q~q\,
	datac => \bloqueCont|ffjk3|temp~q\,
	datad => \bloqueCont|comb~2_combout\,
	combout => \bloqueCont|ffjk3|temp~1_combout\);

-- Location: FF_X16_Y19_N7
\bloqueCont|ffjk3|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bloquefreq1|clkout~clkctrl_outclk\,
	d => \bloqueCont|ffjk3|temp~1_combout\,
	clrn => \restart~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueCont|ffjk3|temp~q\);

-- Location: LCCOMB_X16_Y19_N12
\bloqueCont|ffjk4|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueCont|ffjk4|temp~0_combout\ = (\bloqueCont|ffjk2|temp~q\ & (\bloqueCont|ffjk0|temp~q\ & (\bloqueCont|ffjk3|temp~q\ & \bloqueCont|ffjk1|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueCont|ffjk2|temp~q\,
	datab => \bloqueCont|ffjk0|temp~q\,
	datac => \bloqueCont|ffjk3|temp~q\,
	datad => \bloqueCont|ffjk1|temp~q\,
	combout => \bloqueCont|ffjk4|temp~0_combout\);

-- Location: LCCOMB_X16_Y19_N28
\bloqueCont|ffjk4|temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueCont|ffjk4|temp~1_combout\ = \bloqueCont|ffjk4|temp~q\ $ (((\bloqueCtrl|q~q\ & ((\bloqueCont|ffjk4|temp~0_combout\) # (\bloqueCont|comb~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueCont|ffjk4|temp~0_combout\,
	datab => \bloqueCtrl|q~q\,
	datac => \bloqueCont|ffjk4|temp~q\,
	datad => \bloqueCont|comb~2_combout\,
	combout => \bloqueCont|ffjk4|temp~1_combout\);

-- Location: FF_X16_Y19_N29
\bloqueCont|ffjk4|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bloquefreq1|clkout~clkctrl_outclk\,
	d => \bloqueCont|ffjk4|temp~1_combout\,
	clrn => \restart~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueCont|ffjk4|temp~q\);

-- Location: LCCOMB_X17_Y19_N24
\bloqueCont|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueCont|comb~0_combout\ = (\bloqueCont|ffjk4|temp~q\ & (\bloqueCont|ffjk0|temp~q\ & (\bloqueCont|ffjk3|temp~q\ & \bloqueCont|ffjk1|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueCont|ffjk4|temp~q\,
	datab => \bloqueCont|ffjk0|temp~q\,
	datac => \bloqueCont|ffjk3|temp~q\,
	datad => \bloqueCont|ffjk1|temp~q\,
	combout => \bloqueCont|comb~0_combout\);

-- Location: LCCOMB_X17_Y19_N28
\bloqueCont|ffjk2|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueCont|ffjk2|temp~0_combout\ = (\bloqueCont|comb~1_combout\ & (!\bloqueCont|ffjk2|temp~q\ & ((!\bloqueCont|ffjk5|temp~q\) # (!\bloqueCont|comb~0_combout\)))) # (!\bloqueCont|comb~1_combout\ & (((\bloqueCont|ffjk2|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueCont|comb~1_combout\,
	datab => \bloqueCont|comb~0_combout\,
	datac => \bloqueCont|ffjk2|temp~q\,
	datad => \bloqueCont|ffjk5|temp~q\,
	combout => \bloqueCont|ffjk2|temp~0_combout\);

-- Location: FF_X17_Y19_N29
\bloqueCont|ffjk2|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bloquefreq1|clkout~clkctrl_outclk\,
	d => \bloqueCont|ffjk2|temp~0_combout\,
	clrn => \restart~inputclkctrl_outclk\,
	ena => \bloqueCtrl|q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueCont|ffjk2|temp~q\);

-- Location: LCCOMB_X16_Y19_N22
\bloquebinBCD|tempBCD~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|tempBCD~14_combout\ = (\bloquebinBCD|Equal0~8_combout\ & (((\bloqueCont|ffjk2|temp~q\)))) # (!\bloquebinBCD|Equal0~8_combout\ & (\bloquebinBCD|tempBCD\(2) & (!\bloquebinBCD|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|Equal0~8_combout\,
	datab => \bloquebinBCD|tempBCD\(2),
	datac => \bloquebinBCD|process_0~2_combout\,
	datad => \bloqueCont|ffjk2|temp~q\,
	combout => \bloquebinBCD|tempBCD~14_combout\);

-- Location: FF_X16_Y19_N23
\bloquebinBCD|tempBCD[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|tempBCD~14_combout\,
	ena => \bloquebinBCD|tempBCD~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|tempBCD\(3));

-- Location: LCCOMB_X16_Y19_N30
\bloquebinBCD|tempBCD~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|tempBCD~13_combout\ = (\bloquebinBCD|Equal0~8_combout\ & (((\bloqueCont|ffjk3|temp~q\)))) # (!\bloquebinBCD|Equal0~8_combout\ & (\bloquebinBCD|tempBCD\(3) & (!\bloquebinBCD|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|Equal0~8_combout\,
	datab => \bloquebinBCD|tempBCD\(3),
	datac => \bloquebinBCD|process_0~2_combout\,
	datad => \bloqueCont|ffjk3|temp~q\,
	combout => \bloquebinBCD|tempBCD~13_combout\);

-- Location: FF_X16_Y19_N31
\bloquebinBCD|tempBCD[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|tempBCD~13_combout\,
	ena => \bloquebinBCD|tempBCD~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|tempBCD\(4));

-- Location: LCCOMB_X16_Y19_N10
\bloquebinBCD|tempBCD~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|tempBCD~12_combout\ = (\bloquebinBCD|Equal0~8_combout\ & (((\bloqueCont|ffjk4|temp~q\)))) # (!\bloquebinBCD|Equal0~8_combout\ & (\bloquebinBCD|tempBCD\(4) & (!\bloquebinBCD|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|Equal0~8_combout\,
	datab => \bloquebinBCD|tempBCD\(4),
	datac => \bloquebinBCD|process_0~2_combout\,
	datad => \bloqueCont|ffjk4|temp~q\,
	combout => \bloquebinBCD|tempBCD~12_combout\);

-- Location: FF_X16_Y19_N11
\bloquebinBCD|tempBCD[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|tempBCD~12_combout\,
	ena => \bloquebinBCD|tempBCD~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|tempBCD\(5));

-- Location: LCCOMB_X16_Y19_N26
\bloquebinBCD|tempBCD~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|tempBCD~11_combout\ = (\bloquebinBCD|Equal0~8_combout\ & (((\bloqueCont|ffjk5|temp~q\)))) # (!\bloquebinBCD|Equal0~8_combout\ & (\bloquebinBCD|tempBCD\(5) & (!\bloquebinBCD|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|Equal0~8_combout\,
	datab => \bloquebinBCD|tempBCD\(5),
	datac => \bloquebinBCD|process_0~2_combout\,
	datad => \bloqueCont|ffjk5|temp~q\,
	combout => \bloquebinBCD|tempBCD~11_combout\);

-- Location: FF_X16_Y19_N27
\bloquebinBCD|tempBCD[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|tempBCD~11_combout\,
	ena => \bloquebinBCD|tempBCD~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|tempBCD\(6));

-- Location: LCCOMB_X16_Y19_N18
\bloquebinBCD|tempBCD~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|tempBCD~10_combout\ = (\bloquebinBCD|tempBCD\(6) & (!\bloquebinBCD|process_0~2_combout\ & !\bloquebinBCD|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|tempBCD\(6),
	datac => \bloquebinBCD|process_0~2_combout\,
	datad => \bloquebinBCD|Equal0~8_combout\,
	combout => \bloquebinBCD|tempBCD~10_combout\);

-- Location: FF_X16_Y19_N19
\bloquebinBCD|tempBCD[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|tempBCD~10_combout\,
	ena => \bloquebinBCD|tempBCD~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|tempBCD\(7));

-- Location: LCCOMB_X16_Y19_N0
\bloquebinBCD|tempBCD~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|tempBCD~2_combout\ = (\bloquebinBCD|tempBCD\(7) & (!\bloquebinBCD|process_0~2_combout\ & !\bloquebinBCD|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|tempBCD\(7),
	datac => \bloquebinBCD|process_0~2_combout\,
	datad => \bloquebinBCD|Equal0~8_combout\,
	combout => \bloquebinBCD|tempBCD~2_combout\);

-- Location: FF_X16_Y19_N1
\bloquebinBCD|tempBCD[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|tempBCD~2_combout\,
	ena => \bloquebinBCD|tempBCD~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|tempBCD\(8));

-- Location: LCCOMB_X19_Y19_N8
\bloquebinBCD|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add0~0_combout\ = \bloquebinBCD|tempBCD\(8) $ (VCC)
-- \bloquebinBCD|Add0~1\ = CARRY(\bloquebinBCD|tempBCD\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|tempBCD\(8),
	datad => VCC,
	combout => \bloquebinBCD|Add0~0_combout\,
	cout => \bloquebinBCD|Add0~1\);

-- Location: LCCOMB_X18_Y19_N14
\bloquebinBCD|tempBCD~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|tempBCD~5_combout\ = (!\bloquebinBCD|process_0~2_combout\ & ((\bloquebinBCD|LessThan2~0_combout\ & (\bloquebinBCD|tempBCD\(8))) # (!\bloquebinBCD|LessThan2~0_combout\ & ((\bloquebinBCD|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|tempBCD\(8),
	datab => \bloquebinBCD|Add0~0_combout\,
	datac => \bloquebinBCD|LessThan2~0_combout\,
	datad => \bloquebinBCD|process_0~2_combout\,
	combout => \bloquebinBCD|tempBCD~5_combout\);

-- Location: LCCOMB_X18_Y19_N2
\bloquebinBCD|tempBCD[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|tempBCD[11]~1_combout\ = (!\bloquebinBCD|Equal0~8_combout\ & ((!\bloquebinBCD|process_0~2_combout\) # (!\bloquebinBCD|LessThan3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|LessThan3~6_combout\,
	datab => \bloquebinBCD|Equal0~8_combout\,
	datad => \bloquebinBCD|process_0~2_combout\,
	combout => \bloquebinBCD|tempBCD[11]~1_combout\);

-- Location: FF_X18_Y19_N15
\bloquebinBCD|tempBCD[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|tempBCD~5_combout\,
	ena => \bloquebinBCD|tempBCD[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|tempBCD\(9));

-- Location: LCCOMB_X19_Y19_N10
\bloquebinBCD|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add0~2_combout\ = (\bloquebinBCD|tempBCD\(9) & (\bloquebinBCD|Add0~1\ & VCC)) # (!\bloquebinBCD|tempBCD\(9) & (!\bloquebinBCD|Add0~1\))
-- \bloquebinBCD|Add0~3\ = CARRY((!\bloquebinBCD|tempBCD\(9) & !\bloquebinBCD|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|tempBCD\(9),
	datad => VCC,
	cin => \bloquebinBCD|Add0~1\,
	combout => \bloquebinBCD|Add0~2_combout\,
	cout => \bloquebinBCD|Add0~3\);

-- Location: LCCOMB_X18_Y19_N4
\bloquebinBCD|tempBCD~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|tempBCD~7_combout\ = (!\bloquebinBCD|process_0~2_combout\ & ((\bloquebinBCD|LessThan2~0_combout\ & ((\bloquebinBCD|tempBCD\(9)))) # (!\bloquebinBCD|LessThan2~0_combout\ & (\bloquebinBCD|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|LessThan2~0_combout\,
	datab => \bloquebinBCD|Add0~2_combout\,
	datac => \bloquebinBCD|tempBCD\(9),
	datad => \bloquebinBCD|process_0~2_combout\,
	combout => \bloquebinBCD|tempBCD~7_combout\);

-- Location: FF_X18_Y19_N5
\bloquebinBCD|tempBCD[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|tempBCD~7_combout\,
	ena => \bloquebinBCD|tempBCD[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|tempBCD\(10));

-- Location: LCCOMB_X19_Y19_N30
\bloquebinBCD|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|LessThan2~0_combout\ = (!\bloquebinBCD|tempBCD\(11) & (((!\bloquebinBCD|tempBCD\(8) & !\bloquebinBCD|tempBCD\(9))) # (!\bloquebinBCD|tempBCD\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|tempBCD\(8),
	datab => \bloquebinBCD|tempBCD\(10),
	datac => \bloquebinBCD|tempBCD\(11),
	datad => \bloquebinBCD|tempBCD\(9),
	combout => \bloquebinBCD|LessThan2~0_combout\);

-- Location: LCCOMB_X19_Y19_N12
\bloquebinBCD|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add0~4_combout\ = (\bloquebinBCD|tempBCD\(10) & (\bloquebinBCD|Add0~3\ $ (GND))) # (!\bloquebinBCD|tempBCD\(10) & (!\bloquebinBCD|Add0~3\ & VCC))
-- \bloquebinBCD|Add0~5\ = CARRY((\bloquebinBCD|tempBCD\(10) & !\bloquebinBCD|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|tempBCD\(10),
	datad => VCC,
	cin => \bloquebinBCD|Add0~3\,
	combout => \bloquebinBCD|Add0~4_combout\,
	cout => \bloquebinBCD|Add0~5\);

-- Location: LCCOMB_X18_Y19_N26
\bloquebinBCD|tempBCD~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|tempBCD~9_combout\ = (!\bloquebinBCD|process_0~2_combout\ & ((\bloquebinBCD|LessThan2~0_combout\ & (\bloquebinBCD|tempBCD\(10))) # (!\bloquebinBCD|LessThan2~0_combout\ & ((\bloquebinBCD|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|LessThan2~0_combout\,
	datab => \bloquebinBCD|tempBCD\(10),
	datac => \bloquebinBCD|Add0~4_combout\,
	datad => \bloquebinBCD|process_0~2_combout\,
	combout => \bloquebinBCD|tempBCD~9_combout\);

-- Location: FF_X18_Y19_N27
\bloquebinBCD|tempBCD[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|tempBCD~9_combout\,
	ena => \bloquebinBCD|tempBCD[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|tempBCD\(11));

-- Location: LCCOMB_X19_Y19_N28
\bloquebinBCD|bcdout[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|bcdout[3]~feeder_combout\ = \bloquebinBCD|tempBCD\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloquebinBCD|tempBCD\(11),
	combout => \bloquebinBCD|bcdout[3]~feeder_combout\);

-- Location: FF_X19_Y19_N29
\bloquebinBCD|bcdout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|bcdout[3]~feeder_combout\,
	ena => \bloquebinBCD|bcdout[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|bcdout\(3));

-- Location: LCCOMB_X19_Y19_N14
\bloquebinBCD|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add0~6_combout\ = (\bloquebinBCD|tempBCD\(11) & (!\bloquebinBCD|Add0~5\)) # (!\bloquebinBCD|tempBCD\(11) & ((\bloquebinBCD|Add0~5\) # (GND)))
-- \bloquebinBCD|Add0~7\ = CARRY((!\bloquebinBCD|Add0~5\) # (!\bloquebinBCD|tempBCD\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|tempBCD\(11),
	datad => VCC,
	cin => \bloquebinBCD|Add0~5\,
	combout => \bloquebinBCD|Add0~6_combout\,
	cout => \bloquebinBCD|Add0~7\);

-- Location: LCCOMB_X18_Y19_N0
\bloquebinBCD|tempBCD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|tempBCD~0_combout\ = (!\bloquebinBCD|LessThan2~0_combout\ & (\bloquebinBCD|Add0~6_combout\ & !\bloquebinBCD|process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|LessThan2~0_combout\,
	datac => \bloquebinBCD|Add0~6_combout\,
	datad => \bloquebinBCD|process_0~2_combout\,
	combout => \bloquebinBCD|tempBCD~0_combout\);

-- Location: FF_X18_Y19_N1
\bloquebinBCD|tempBCD[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|tempBCD~0_combout\,
	ena => \bloquebinBCD|tempBCD[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|tempBCD\(12));

-- Location: LCCOMB_X19_Y19_N16
\bloquebinBCD|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add0~8_combout\ = (\bloquebinBCD|tempBCD\(12) & (\bloquebinBCD|Add0~7\ $ (GND))) # (!\bloquebinBCD|tempBCD\(12) & (!\bloquebinBCD|Add0~7\ & VCC))
-- \bloquebinBCD|Add0~9\ = CARRY((\bloquebinBCD|tempBCD\(12) & !\bloquebinBCD|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|tempBCD\(12),
	datad => VCC,
	cin => \bloquebinBCD|Add0~7\,
	combout => \bloquebinBCD|Add0~8_combout\,
	cout => \bloquebinBCD|Add0~9\);

-- Location: LCCOMB_X18_Y19_N8
\bloquebinBCD|tempBCD~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|tempBCD~4_combout\ = (!\bloquebinBCD|process_0~2_combout\ & ((\bloquebinBCD|LessThan2~0_combout\ & (\bloquebinBCD|tempBCD\(12))) # (!\bloquebinBCD|LessThan2~0_combout\ & ((\bloquebinBCD|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|process_0~2_combout\,
	datab => \bloquebinBCD|tempBCD\(12),
	datac => \bloquebinBCD|LessThan2~0_combout\,
	datad => \bloquebinBCD|Add0~8_combout\,
	combout => \bloquebinBCD|tempBCD~4_combout\);

-- Location: FF_X18_Y19_N9
\bloquebinBCD|tempBCD[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|tempBCD~4_combout\,
	ena => \bloquebinBCD|tempBCD[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|tempBCD\(13));

-- Location: LCCOMB_X19_Y19_N18
\bloquebinBCD|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add0~10_combout\ = (\bloquebinBCD|tempBCD\(13) & (!\bloquebinBCD|Add0~9\)) # (!\bloquebinBCD|tempBCD\(13) & ((\bloquebinBCD|Add0~9\) # (GND)))
-- \bloquebinBCD|Add0~11\ = CARRY((!\bloquebinBCD|Add0~9\) # (!\bloquebinBCD|tempBCD\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|tempBCD\(13),
	datad => VCC,
	cin => \bloquebinBCD|Add0~9\,
	combout => \bloquebinBCD|Add0~10_combout\,
	cout => \bloquebinBCD|Add0~11\);

-- Location: LCCOMB_X18_Y19_N12
\bloquebinBCD|tempBCD~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|tempBCD~6_combout\ = (!\bloquebinBCD|process_0~2_combout\ & ((\bloquebinBCD|LessThan2~0_combout\ & ((\bloquebinBCD|tempBCD\(13)))) # (!\bloquebinBCD|LessThan2~0_combout\ & (\bloquebinBCD|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|LessThan2~0_combout\,
	datab => \bloquebinBCD|Add0~10_combout\,
	datac => \bloquebinBCD|tempBCD\(13),
	datad => \bloquebinBCD|process_0~2_combout\,
	combout => \bloquebinBCD|tempBCD~6_combout\);

-- Location: FF_X18_Y19_N13
\bloquebinBCD|tempBCD[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|tempBCD~6_combout\,
	ena => \bloquebinBCD|tempBCD[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|tempBCD\(14));

-- Location: LCCOMB_X19_Y19_N20
\bloquebinBCD|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add0~12_combout\ = \bloquebinBCD|Add0~11\ $ (!\bloquebinBCD|tempBCD\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \bloquebinBCD|tempBCD\(14),
	cin => \bloquebinBCD|Add0~11\,
	combout => \bloquebinBCD|Add0~12_combout\);

-- Location: LCCOMB_X18_Y19_N28
\bloquebinBCD|tempBCD~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|tempBCD~8_combout\ = (!\bloquebinBCD|process_0~2_combout\ & ((\bloquebinBCD|LessThan2~0_combout\ & (\bloquebinBCD|tempBCD\(14))) # (!\bloquebinBCD|LessThan2~0_combout\ & ((\bloquebinBCD|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|tempBCD\(14),
	datab => \bloquebinBCD|Add0~12_combout\,
	datac => \bloquebinBCD|LessThan2~0_combout\,
	datad => \bloquebinBCD|process_0~2_combout\,
	combout => \bloquebinBCD|tempBCD~8_combout\);

-- Location: FF_X18_Y19_N29
\bloquebinBCD|tempBCD[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|tempBCD~8_combout\,
	ena => \bloquebinBCD|tempBCD[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|tempBCD\(15));

-- Location: LCCOMB_X19_Y19_N2
\bloquebinBCD|bcdout[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|bcdout[7]~feeder_combout\ = \bloquebinBCD|tempBCD\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloquebinBCD|tempBCD\(15),
	combout => \bloquebinBCD|bcdout[7]~feeder_combout\);

-- Location: FF_X19_Y19_N3
\bloquebinBCD|bcdout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|bcdout[7]~feeder_combout\,
	ena => \bloquebinBCD|bcdout[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|bcdout\(7));

-- Location: LCCOMB_X19_Y20_N26
\bloqueMult|bcdout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueMult|bcdout~3_combout\ = (\bloquefreq60|clkout~q\ & ((\bloquebinBCD|bcdout\(7)))) # (!\bloquefreq60|clkout~q\ & (\bloquebinBCD|bcdout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|bcdout\(3),
	datac => \bloquebinBCD|bcdout\(7),
	datad => \bloquefreq60|clkout~q\,
	combout => \bloqueMult|bcdout~3_combout\);

-- Location: FF_X19_Y20_N27
\bloqueMult|bcdout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueMult|bcdout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueMult|bcdout\(3));

-- Location: LCCOMB_X18_Y19_N22
\bloquebinBCD|bcdout[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|bcdout[6]~feeder_combout\ = \bloquebinBCD|tempBCD\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloquebinBCD|tempBCD\(14),
	combout => \bloquebinBCD|bcdout[6]~feeder_combout\);

-- Location: FF_X18_Y19_N23
\bloquebinBCD|bcdout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|bcdout[6]~feeder_combout\,
	ena => \bloquebinBCD|bcdout[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|bcdout\(6));

-- Location: FF_X18_Y19_N31
\bloquebinBCD|bcdout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bloquebinBCD|tempBCD\(10),
	sload => VCC,
	ena => \bloquebinBCD|bcdout[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|bcdout\(2));

-- Location: LCCOMB_X19_Y20_N20
\bloqueMult|bcdout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueMult|bcdout~2_combout\ = (\bloquefreq60|clkout~q\ & (\bloquebinBCD|bcdout\(6))) # (!\bloquefreq60|clkout~q\ & ((\bloquebinBCD|bcdout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|bcdout\(6),
	datac => \bloquebinBCD|bcdout\(2),
	datad => \bloquefreq60|clkout~q\,
	combout => \bloqueMult|bcdout~2_combout\);

-- Location: FF_X19_Y20_N21
\bloqueMult|bcdout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueMult|bcdout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueMult|bcdout\(2));

-- Location: LCCOMB_X19_Y19_N0
\bloquebinBCD|bcdout[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|bcdout[5]~feeder_combout\ = \bloquebinBCD|tempBCD\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloquebinBCD|tempBCD\(13),
	combout => \bloquebinBCD|bcdout[5]~feeder_combout\);

-- Location: FF_X19_Y19_N1
\bloquebinBCD|bcdout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|bcdout[5]~feeder_combout\,
	ena => \bloquebinBCD|bcdout[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|bcdout\(5));

-- Location: FF_X18_Y19_N3
\bloquebinBCD|bcdout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bloquebinBCD|tempBCD\(9),
	sload => VCC,
	ena => \bloquebinBCD|bcdout[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|bcdout\(1));

-- Location: LCCOMB_X19_Y20_N22
\bloqueMult|bcdout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueMult|bcdout~1_combout\ = (\bloquefreq60|clkout~q\ & (\bloquebinBCD|bcdout\(5))) # (!\bloquefreq60|clkout~q\ & ((\bloquebinBCD|bcdout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|bcdout\(5),
	datac => \bloquebinBCD|bcdout\(1),
	datad => \bloquefreq60|clkout~q\,
	combout => \bloqueMult|bcdout~1_combout\);

-- Location: FF_X19_Y20_N23
\bloqueMult|bcdout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueMult|bcdout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueMult|bcdout\(1));

-- Location: LCCOMB_X18_Y19_N6
\bloquebinBCD|bcdout[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|bcdout[4]~feeder_combout\ = \bloquebinBCD|tempBCD\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloquebinBCD|tempBCD\(12),
	combout => \bloquebinBCD|bcdout[4]~feeder_combout\);

-- Location: FF_X18_Y19_N7
\bloquebinBCD|bcdout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquebinBCD|bcdout[4]~feeder_combout\,
	ena => \bloquebinBCD|bcdout[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|bcdout\(4));

-- Location: FF_X18_Y19_N19
\bloquebinBCD|bcdout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bloquebinBCD|tempBCD\(8),
	sload => VCC,
	ena => \bloquebinBCD|bcdout[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquebinBCD|bcdout\(0));

-- Location: LCCOMB_X19_Y20_N28
\bloqueMult|bcdout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueMult|bcdout~0_combout\ = (\bloquefreq60|clkout~q\ & (\bloquebinBCD|bcdout\(4))) # (!\bloquefreq60|clkout~q\ & ((\bloquebinBCD|bcdout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|bcdout\(4),
	datac => \bloquebinBCD|bcdout\(0),
	datad => \bloquefreq60|clkout~q\,
	combout => \bloqueMult|bcdout~0_combout\);

-- Location: FF_X19_Y20_N29
\bloqueMult|bcdout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloqueMult|bcdout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloqueMult|bcdout\(0));

-- Location: LCCOMB_X19_Y20_N24
\bloquebcdseg|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebcdseg|Mux6~0_combout\ = (\bloqueMult|bcdout\(2) & (!\bloqueMult|bcdout\(3) & ((!\bloqueMult|bcdout\(0)) # (!\bloqueMult|bcdout\(1))))) # (!\bloqueMult|bcdout\(2) & (\bloqueMult|bcdout\(3) $ ((\bloqueMult|bcdout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueMult|bcdout\(3),
	datab => \bloqueMult|bcdout\(2),
	datac => \bloqueMult|bcdout\(1),
	datad => \bloqueMult|bcdout\(0),
	combout => \bloquebcdseg|Mux6~0_combout\);

-- Location: LCCOMB_X19_Y20_N6
\bloquebcdseg|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebcdseg|Mux5~0_combout\ = (\bloqueMult|bcdout\(2) & ((\bloqueMult|bcdout\(3)) # ((\bloqueMult|bcdout\(1) & \bloqueMult|bcdout\(0))))) # (!\bloqueMult|bcdout\(2) & ((\bloqueMult|bcdout\(1)) # ((!\bloqueMult|bcdout\(3) & \bloqueMult|bcdout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueMult|bcdout\(3),
	datab => \bloqueMult|bcdout\(2),
	datac => \bloqueMult|bcdout\(1),
	datad => \bloqueMult|bcdout\(0),
	combout => \bloquebcdseg|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y20_N4
\bloquebcdseg|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebcdseg|Mux4~0_combout\ = (\bloqueMult|bcdout\(0)) # ((\bloqueMult|bcdout\(1) & (\bloqueMult|bcdout\(3))) # (!\bloqueMult|bcdout\(1) & ((\bloqueMult|bcdout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueMult|bcdout\(3),
	datab => \bloqueMult|bcdout\(2),
	datac => \bloqueMult|bcdout\(1),
	datad => \bloqueMult|bcdout\(0),
	combout => \bloquebcdseg|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y20_N10
\bloquebcdseg|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebcdseg|Mux3~0_combout\ = (\bloqueMult|bcdout\(2) & ((\bloqueMult|bcdout\(3)) # (\bloqueMult|bcdout\(1) $ (!\bloqueMult|bcdout\(0))))) # (!\bloqueMult|bcdout\(2) & ((\bloqueMult|bcdout\(1) & (\bloqueMult|bcdout\(3))) # (!\bloqueMult|bcdout\(1) & 
-- ((\bloqueMult|bcdout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueMult|bcdout\(3),
	datab => \bloqueMult|bcdout\(2),
	datac => \bloqueMult|bcdout\(1),
	datad => \bloqueMult|bcdout\(0),
	combout => \bloquebcdseg|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y20_N12
\bloquebcdseg|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebcdseg|Mux2~0_combout\ = (\bloqueMult|bcdout\(2) & (\bloqueMult|bcdout\(3))) # (!\bloqueMult|bcdout\(2) & (\bloqueMult|bcdout\(1) & ((\bloqueMult|bcdout\(3)) # (!\bloqueMult|bcdout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueMult|bcdout\(3),
	datab => \bloqueMult|bcdout\(2),
	datac => \bloqueMult|bcdout\(1),
	datad => \bloqueMult|bcdout\(0),
	combout => \bloquebcdseg|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y20_N2
\bloquebcdseg|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebcdseg|Mux1~0_combout\ = (\bloqueMult|bcdout\(3) & ((\bloqueMult|bcdout\(2)) # ((\bloqueMult|bcdout\(1))))) # (!\bloqueMult|bcdout\(3) & (\bloqueMult|bcdout\(2) & (\bloqueMult|bcdout\(1) $ (\bloqueMult|bcdout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueMult|bcdout\(3),
	datab => \bloqueMult|bcdout\(2),
	datac => \bloqueMult|bcdout\(1),
	datad => \bloqueMult|bcdout\(0),
	combout => \bloquebcdseg|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y20_N0
\bloquebcdseg|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebcdseg|Mux0~0_combout\ = (\bloqueMult|bcdout\(1) & (\bloqueMult|bcdout\(3))) # (!\bloqueMult|bcdout\(1) & (\bloqueMult|bcdout\(2) $ (((!\bloqueMult|bcdout\(3) & \bloqueMult|bcdout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueMult|bcdout\(3),
	datab => \bloqueMult|bcdout\(2),
	datac => \bloqueMult|bcdout\(1),
	datad => \bloqueMult|bcdout\(0),
	combout => \bloquebcdseg|Mux0~0_combout\);

ww_ti0 <= \ti0~output_o\;

ww_ti1 <= \ti1~output_o\;

ww_segs(0) <= \segs[0]~output_o\;

ww_segs(1) <= \segs[1]~output_o\;

ww_segs(2) <= \segs[2]~output_o\;

ww_segs(3) <= \segs[3]~output_o\;

ww_segs(4) <= \segs[4]~output_o\;

ww_segs(5) <= \segs[5]~output_o\;

ww_segs(6) <= \segs[6]~output_o\;
END structure;


