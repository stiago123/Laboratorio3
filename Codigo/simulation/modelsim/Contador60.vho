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

-- DATE "12/03/2021 01:32:58"

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
	ti0 : OUT std_logic;
	ti1 : OUT std_logic;
	segs : OUT std_logic_vector(6 DOWNTO 0)
	);
END Contador60;

-- Design Ports Information
-- inicio	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alto	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- restart	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \bloquebinBCD|vector[13]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inicio~input_o\ : std_logic;
SIGNAL \alto~input_o\ : std_logic;
SIGNAL \restart~input_o\ : std_logic;
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
SIGNAL \bloquefreq60|LessThan0~6_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan1~7_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan1~8_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan1~6_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan1~9_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan0~0_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan0~1_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan0~2_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan0~3_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan0~4_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan0~5_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan0~7_combout\ : std_logic;
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
SIGNAL \bloquefreq60|LessThan1~0_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan1~1_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan1~2_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan1~3_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan1~4_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan1~5_combout\ : std_logic;
SIGNAL \bloquefreq60|LessThan1~10_combout\ : std_logic;
SIGNAL \bloquefreq60|clkout~q\ : std_logic;
SIGNAL \bloquebinBCD|vector[11]~0_combout\ : std_logic;
SIGNAL \bloquebinBCD|vector[13]~1_combout\ : std_logic;
SIGNAL \bloquebinBCD|vector[13]~1clkctrl_outclk\ : std_logic;
SIGNAL \bloquebinBCD|vector[10]~2_combout\ : std_logic;
SIGNAL \bloquebinBCD|Add1~0_combout\ : std_logic;
SIGNAL \bloqueMult|bcdout~1_combout\ : std_logic;
SIGNAL \bloqueMult|bcdout~2_combout\ : std_logic;
SIGNAL \bloqueMult|bcdout~0_combout\ : std_logic;
SIGNAL \bloquebcdseg|Mux6~0_combout\ : std_logic;
SIGNAL \bloquebcdseg|Mux5~0_combout\ : std_logic;
SIGNAL \bloquebcdseg|Mux4~0_combout\ : std_logic;
SIGNAL \bloquebcdseg|Mux3~0_combout\ : std_logic;
SIGNAL \bloquebcdseg|Mux2~0_combout\ : std_logic;
SIGNAL \bloquebcdseg|Mux1~0_combout\ : std_logic;
SIGNAL \bloquebcdseg|Mux0~0_combout\ : std_logic;
SIGNAL \bloquebinBCD|vector\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \bloquefreq60|cuenta\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \bloqueMult|bcdout\ : std_logic_vector(3 DOWNTO 0);
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

\bloquebinBCD|vector[13]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \bloquebinBCD|vector[13]~1_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
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

-- Location: LCCOMB_X22_Y20_N0
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

-- Location: LCCOMB_X22_Y19_N6
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

-- Location: LCCOMB_X22_Y19_N8
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

-- Location: FF_X23_Y20_N9
\bloquefreq60|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bloquefreq60|cuenta[20]~72_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(20));

-- Location: LCCOMB_X22_Y19_N10
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

-- Location: FF_X22_Y19_N11
\bloquefreq60|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[21]~74_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(21));

-- Location: LCCOMB_X22_Y19_N12
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

-- Location: FF_X22_Y19_N13
\bloquefreq60|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[22]~76_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(22));

-- Location: LCCOMB_X22_Y19_N14
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

-- Location: FF_X22_Y19_N15
\bloquefreq60|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[23]~78_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(23));

-- Location: LCCOMB_X22_Y19_N16
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

-- Location: FF_X22_Y19_N17
\bloquefreq60|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[24]~80_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(24));

-- Location: LCCOMB_X22_Y19_N18
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

-- Location: FF_X22_Y19_N19
\bloquefreq60|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[25]~82_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(25));

-- Location: LCCOMB_X22_Y19_N20
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

-- Location: FF_X22_Y19_N21
\bloquefreq60|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[26]~84_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(26));

-- Location: LCCOMB_X22_Y19_N22
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

-- Location: FF_X22_Y19_N23
\bloquefreq60|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[27]~86_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(27));

-- Location: LCCOMB_X22_Y19_N24
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

-- Location: FF_X22_Y19_N25
\bloquefreq60|cuenta[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[28]~88_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(28));

-- Location: LCCOMB_X22_Y19_N26
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

-- Location: FF_X22_Y19_N27
\bloquefreq60|cuenta[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[29]~90_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(29));

-- Location: LCCOMB_X22_Y19_N28
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

-- Location: FF_X22_Y19_N29
\bloquefreq60|cuenta[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[30]~92_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(30));

-- Location: LCCOMB_X22_Y19_N30
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

-- Location: FF_X22_Y19_N31
\bloquefreq60|cuenta[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[31]~94_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(31));

-- Location: LCCOMB_X23_Y19_N2
\bloquefreq60|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan0~6_combout\ = (!\bloquefreq60|cuenta\(19)) # (!\bloquefreq60|cuenta\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq60|cuenta\(18),
	datac => \bloquefreq60|cuenta\(19),
	combout => \bloquefreq60|LessThan0~6_combout\);

-- Location: LCCOMB_X23_Y20_N22
\bloquefreq60|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan1~7_combout\ = (!\bloquefreq60|cuenta\(24) & (!\bloquefreq60|cuenta\(27) & (!\bloquefreq60|cuenta\(26) & !\bloquefreq60|cuenta\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(24),
	datab => \bloquefreq60|cuenta\(27),
	datac => \bloquefreq60|cuenta\(26),
	datad => \bloquefreq60|cuenta\(25),
	combout => \bloquefreq60|LessThan1~7_combout\);

-- Location: LCCOMB_X23_Y19_N0
\bloquefreq60|LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan1~8_combout\ = (!\bloquefreq60|cuenta\(30) & (!\bloquefreq60|cuenta\(29) & !\bloquefreq60|cuenta\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq60|cuenta\(30),
	datac => \bloquefreq60|cuenta\(29),
	datad => \bloquefreq60|cuenta\(28),
	combout => \bloquefreq60|LessThan1~8_combout\);

-- Location: LCCOMB_X23_Y20_N24
\bloquefreq60|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan1~6_combout\ = (!\bloquefreq60|cuenta\(20) & (!\bloquefreq60|cuenta\(23) & (!\bloquefreq60|cuenta\(21) & !\bloquefreq60|cuenta\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(20),
	datab => \bloquefreq60|cuenta\(23),
	datac => \bloquefreq60|cuenta\(21),
	datad => \bloquefreq60|cuenta\(22),
	combout => \bloquefreq60|LessThan1~6_combout\);

-- Location: LCCOMB_X23_Y20_N8
\bloquefreq60|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan1~9_combout\ = (\bloquefreq60|LessThan1~7_combout\ & (\bloquefreq60|LessThan1~8_combout\ & \bloquefreq60|LessThan1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|LessThan1~7_combout\,
	datab => \bloquefreq60|LessThan1~8_combout\,
	datad => \bloquefreq60|LessThan1~6_combout\,
	combout => \bloquefreq60|LessThan1~9_combout\);

-- Location: LCCOMB_X23_Y20_N4
\bloquefreq60|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan0~0_combout\ = (\bloquefreq60|cuenta\(8) & (\bloquefreq60|cuenta\(9) & \bloquefreq60|cuenta\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(8),
	datac => \bloquefreq60|cuenta\(9),
	datad => \bloquefreq60|cuenta\(10),
	combout => \bloquefreq60|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y20_N16
\bloquefreq60|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan0~1_combout\ = (!\bloquefreq60|cuenta\(3) & (((!\bloquefreq60|cuenta\(0) & !\bloquefreq60|cuenta\(1))) # (!\bloquefreq60|cuenta\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(0),
	datab => \bloquefreq60|cuenta\(3),
	datac => \bloquefreq60|cuenta\(2),
	datad => \bloquefreq60|cuenta\(1),
	combout => \bloquefreq60|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y20_N6
\bloquefreq60|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan0~2_combout\ = (\bloquefreq60|cuenta\(7)) # ((\bloquefreq60|cuenta\(4) & (\bloquefreq60|cuenta\(5) & !\bloquefreq60|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(4),
	datab => \bloquefreq60|cuenta\(5),
	datac => \bloquefreq60|cuenta\(7),
	datad => \bloquefreq60|LessThan0~1_combout\,
	combout => \bloquefreq60|LessThan0~2_combout\);

-- Location: LCCOMB_X23_Y20_N20
\bloquefreq60|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan0~3_combout\ = (!\bloquefreq60|cuenta\(11) & (((!\bloquefreq60|cuenta\(6) & !\bloquefreq60|LessThan0~2_combout\)) # (!\bloquefreq60|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(6),
	datab => \bloquefreq60|cuenta\(11),
	datac => \bloquefreq60|LessThan0~0_combout\,
	datad => \bloquefreq60|LessThan0~2_combout\,
	combout => \bloquefreq60|LessThan0~3_combout\);

-- Location: LCCOMB_X23_Y20_N10
\bloquefreq60|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan0~4_combout\ = (!\bloquefreq60|cuenta\(14) & (((\bloquefreq60|LessThan0~3_combout\) # (!\bloquefreq60|cuenta\(13))) # (!\bloquefreq60|cuenta\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(12),
	datab => \bloquefreq60|cuenta\(14),
	datac => \bloquefreq60|cuenta\(13),
	datad => \bloquefreq60|LessThan0~3_combout\,
	combout => \bloquefreq60|LessThan0~4_combout\);

-- Location: LCCOMB_X23_Y20_N28
\bloquefreq60|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan0~5_combout\ = (!\bloquefreq60|cuenta\(17) & (!\bloquefreq60|cuenta\(16) & ((\bloquefreq60|LessThan0~4_combout\) # (!\bloquefreq60|cuenta\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(15),
	datab => \bloquefreq60|cuenta\(17),
	datac => \bloquefreq60|cuenta\(16),
	datad => \bloquefreq60|LessThan0~4_combout\,
	combout => \bloquefreq60|LessThan0~5_combout\);

-- Location: LCCOMB_X23_Y20_N30
\bloquefreq60|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan0~7_combout\ = (!\bloquefreq60|cuenta\(31) & (((!\bloquefreq60|LessThan0~6_combout\ & !\bloquefreq60|LessThan0~5_combout\)) # (!\bloquefreq60|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(31),
	datab => \bloquefreq60|LessThan0~6_combout\,
	datac => \bloquefreq60|LessThan1~9_combout\,
	datad => \bloquefreq60|LessThan0~5_combout\,
	combout => \bloquefreq60|LessThan0~7_combout\);

-- Location: FF_X22_Y20_N1
\bloquefreq60|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[0]~32_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(0));

-- Location: LCCOMB_X22_Y20_N2
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

-- Location: FF_X22_Y20_N3
\bloquefreq60|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[1]~34_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(1));

-- Location: LCCOMB_X22_Y20_N4
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

-- Location: FF_X22_Y20_N5
\bloquefreq60|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[2]~36_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(2));

-- Location: LCCOMB_X22_Y20_N6
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

-- Location: FF_X22_Y20_N7
\bloquefreq60|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[3]~38_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(3));

-- Location: LCCOMB_X22_Y20_N8
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

-- Location: FF_X22_Y20_N9
\bloquefreq60|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[4]~40_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(4));

-- Location: LCCOMB_X22_Y20_N10
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

-- Location: FF_X22_Y20_N11
\bloquefreq60|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[5]~42_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(5));

-- Location: LCCOMB_X22_Y20_N12
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

-- Location: FF_X22_Y20_N13
\bloquefreq60|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[6]~44_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(6));

-- Location: LCCOMB_X22_Y20_N14
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

-- Location: FF_X22_Y20_N15
\bloquefreq60|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[7]~46_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(7));

-- Location: LCCOMB_X22_Y20_N16
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

-- Location: FF_X22_Y20_N17
\bloquefreq60|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[8]~48_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(8));

-- Location: LCCOMB_X22_Y20_N18
\bloquefreq60|cuenta[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|cuenta[9]~50_combout\ = (\bloquefreq60|cuenta\(9) & (!\bloquefreq60|cuenta[8]~49\)) # (!\bloquefreq60|cuenta\(9) & ((\bloquefreq60|cuenta[8]~49\) # (GND)))
-- \bloquefreq60|cuenta[9]~51\ = CARRY((!\bloquefreq60|cuenta[8]~49\) # (!\bloquefreq60|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(9),
	datad => VCC,
	cin => \bloquefreq60|cuenta[8]~49\,
	combout => \bloquefreq60|cuenta[9]~50_combout\,
	cout => \bloquefreq60|cuenta[9]~51\);

-- Location: FF_X23_Y20_N5
\bloquefreq60|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bloquefreq60|cuenta[9]~50_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(9));

-- Location: LCCOMB_X22_Y20_N20
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

-- Location: FF_X23_Y20_N27
\bloquefreq60|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bloquefreq60|cuenta[10]~52_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(10));

-- Location: LCCOMB_X22_Y20_N22
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

-- Location: FF_X22_Y20_N23
\bloquefreq60|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[11]~54_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(11));

-- Location: LCCOMB_X22_Y20_N24
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

-- Location: FF_X22_Y20_N25
\bloquefreq60|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[12]~56_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(12));

-- Location: LCCOMB_X22_Y20_N26
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

-- Location: FF_X22_Y20_N27
\bloquefreq60|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[13]~58_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(13));

-- Location: LCCOMB_X22_Y20_N28
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

-- Location: FF_X22_Y20_N29
\bloquefreq60|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[14]~60_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(14));

-- Location: LCCOMB_X22_Y20_N30
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

-- Location: FF_X22_Y20_N31
\bloquefreq60|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[15]~62_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(15));

-- Location: LCCOMB_X22_Y19_N0
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

-- Location: FF_X22_Y19_N1
\bloquefreq60|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[16]~64_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(16));

-- Location: LCCOMB_X22_Y19_N2
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

-- Location: FF_X22_Y19_N3
\bloquefreq60|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[17]~66_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(17));

-- Location: LCCOMB_X22_Y19_N4
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

-- Location: FF_X22_Y19_N5
\bloquefreq60|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[18]~68_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(18));

-- Location: FF_X22_Y19_N7
\bloquefreq60|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|cuenta[19]~70_combout\,
	sclr => \bloquefreq60|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|cuenta\(19));

-- Location: LCCOMB_X23_Y20_N0
\bloquefreq60|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan1~0_combout\ = (((!\bloquefreq60|cuenta\(1) & !\bloquefreq60|cuenta\(2))) # (!\bloquefreq60|cuenta\(4))) # (!\bloquefreq60|cuenta\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(1),
	datab => \bloquefreq60|cuenta\(3),
	datac => \bloquefreq60|cuenta\(2),
	datad => \bloquefreq60|cuenta\(4),
	combout => \bloquefreq60|LessThan1~0_combout\);

-- Location: LCCOMB_X23_Y20_N18
\bloquefreq60|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan1~1_combout\ = (\bloquefreq60|cuenta\(7) & ((\bloquefreq60|cuenta\(6)) # ((\bloquefreq60|cuenta\(5)) # (!\bloquefreq60|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(6),
	datab => \bloquefreq60|cuenta\(5),
	datac => \bloquefreq60|cuenta\(7),
	datad => \bloquefreq60|LessThan1~0_combout\,
	combout => \bloquefreq60|LessThan1~1_combout\);

-- Location: LCCOMB_X23_Y20_N12
\bloquefreq60|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan1~2_combout\ = (\bloquefreq60|cuenta\(10)) # ((\bloquefreq60|cuenta\(8) & (\bloquefreq60|cuenta\(9) & \bloquefreq60|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(8),
	datab => \bloquefreq60|cuenta\(10),
	datac => \bloquefreq60|cuenta\(9),
	datad => \bloquefreq60|LessThan1~1_combout\,
	combout => \bloquefreq60|LessThan1~2_combout\);

-- Location: LCCOMB_X23_Y20_N14
\bloquefreq60|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan1~3_combout\ = (!\bloquefreq60|cuenta\(13) & (((!\bloquefreq60|LessThan1~2_combout\) # (!\bloquefreq60|cuenta\(11))) # (!\bloquefreq60|cuenta\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(12),
	datab => \bloquefreq60|cuenta\(11),
	datac => \bloquefreq60|cuenta\(13),
	datad => \bloquefreq60|LessThan1~2_combout\,
	combout => \bloquefreq60|LessThan1~3_combout\);

-- Location: LCCOMB_X24_Y20_N28
\bloquefreq60|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan1~4_combout\ = (!\bloquefreq60|cuenta\(16) & (!\bloquefreq60|cuenta\(15) & ((\bloquefreq60|LessThan1~3_combout\) # (!\bloquefreq60|cuenta\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(16),
	datab => \bloquefreq60|cuenta\(15),
	datac => \bloquefreq60|cuenta\(14),
	datad => \bloquefreq60|LessThan1~3_combout\,
	combout => \bloquefreq60|LessThan1~4_combout\);

-- Location: LCCOMB_X23_Y20_N26
\bloquefreq60|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan1~5_combout\ = ((\bloquefreq60|LessThan1~4_combout\) # (!\bloquefreq60|cuenta\(17))) # (!\bloquefreq60|cuenta\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(18),
	datab => \bloquefreq60|cuenta\(17),
	datad => \bloquefreq60|LessThan1~4_combout\,
	combout => \bloquefreq60|LessThan1~5_combout\);

-- Location: LCCOMB_X23_Y20_N2
\bloquefreq60|LessThan1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq60|LessThan1~10_combout\ = (\bloquefreq60|cuenta\(31)) # ((!\bloquefreq60|cuenta\(19) & (\bloquefreq60|LessThan1~9_combout\ & \bloquefreq60|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq60|cuenta\(19),
	datab => \bloquefreq60|LessThan1~9_combout\,
	datac => \bloquefreq60|LessThan1~5_combout\,
	datad => \bloquefreq60|cuenta\(31),
	combout => \bloquefreq60|LessThan1~10_combout\);

-- Location: FF_X23_Y20_N3
\bloquefreq60|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq60|LessThan1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq60|clkout~q\);

-- Location: LCCOMB_X33_Y12_N14
\bloquebinBCD|vector[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|vector[11]~0_combout\ = \bloquebinBCD|vector\(10) $ (((\bloquebinBCD|vector\(12)) # (!\bloquebinBCD|vector\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|vector\(10),
	datac => \bloquebinBCD|vector\(12),
	datad => \bloquebinBCD|vector\(11),
	combout => \bloquebinBCD|vector[11]~0_combout\);

-- Location: LCCOMB_X33_Y12_N18
\bloquebinBCD|vector[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|vector\(11) = (GLOBAL(\bloquebinBCD|vector[13]~1clkctrl_outclk\) & (\bloquebinBCD|vector[11]~0_combout\)) # (!GLOBAL(\bloquebinBCD|vector[13]~1clkctrl_outclk\) & ((\bloquebinBCD|vector\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|vector[11]~0_combout\,
	datac => \bloquebinBCD|vector\(11),
	datad => \bloquebinBCD|vector[13]~1clkctrl_outclk\,
	combout => \bloquebinBCD|vector\(11));

-- Location: LCCOMB_X33_Y12_N28
\bloquebinBCD|vector[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|vector[13]~1_combout\ = (\bloquebinBCD|vector\(12) & ((\bloquebinBCD|vector\(11)) # (\bloquebinBCD|vector\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|vector\(11),
	datab => \bloquebinBCD|vector\(12),
	datad => \bloquebinBCD|vector\(10),
	combout => \bloquebinBCD|vector[13]~1_combout\);

-- Location: CLKCTRL_G9
\bloquebinBCD|vector[13]~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \bloquebinBCD|vector[13]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \bloquebinBCD|vector[13]~1clkctrl_outclk\);

-- Location: LCCOMB_X33_Y12_N24
\bloquebinBCD|vector[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|vector[10]~2_combout\ = (\bloquebinBCD|vector\(12) & (!\bloquebinBCD|vector\(11))) # (!\bloquebinBCD|vector\(12) & ((!\bloquebinBCD|vector\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|vector\(12),
	datac => \bloquebinBCD|vector\(11),
	datad => \bloquebinBCD|vector\(10),
	combout => \bloquebinBCD|vector[10]~2_combout\);

-- Location: LCCOMB_X33_Y12_N12
\bloquebinBCD|vector[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|vector\(10) = (GLOBAL(\bloquebinBCD|vector[13]~1clkctrl_outclk\) & (\bloquebinBCD|vector[10]~2_combout\)) # (!GLOBAL(\bloquebinBCD|vector[13]~1clkctrl_outclk\) & ((\bloquebinBCD|vector\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquebinBCD|vector[13]~1clkctrl_outclk\,
	datab => \bloquebinBCD|vector[10]~2_combout\,
	datad => \bloquebinBCD|vector\(10),
	combout => \bloquebinBCD|vector\(10));

-- Location: LCCOMB_X33_Y12_N16
\bloquebinBCD|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|Add1~0_combout\ = \bloquebinBCD|vector\(12) $ (((\bloquebinBCD|vector\(10)) # (\bloquebinBCD|vector\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|vector\(10),
	datac => \bloquebinBCD|vector\(12),
	datad => \bloquebinBCD|vector\(11),
	combout => \bloquebinBCD|Add1~0_combout\);

-- Location: LCCOMB_X33_Y12_N30
\bloquebinBCD|vector[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebinBCD|vector\(12) = (GLOBAL(\bloquebinBCD|vector[13]~1clkctrl_outclk\) & (\bloquebinBCD|Add1~0_combout\)) # (!GLOBAL(\bloquebinBCD|vector[13]~1clkctrl_outclk\) & ((\bloquebinBCD|vector\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquebinBCD|Add1~0_combout\,
	datac => \bloquebinBCD|vector\(12),
	datad => \bloquebinBCD|vector[13]~1clkctrl_outclk\,
	combout => \bloquebinBCD|vector\(12));

-- Location: LCCOMB_X33_Y12_N20
\bloqueMult|bcdout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueMult|bcdout~1_combout\ = (\bloquefreq60|clkout~q\ & \bloquebinBCD|vector\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq60|clkout~q\,
	datac => \bloquebinBCD|vector\(12),
	combout => \bloqueMult|bcdout~1_combout\);

-- Location: FF_X33_Y12_N21
\bloqueMult|bcdout[2]\ : dffeas
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
	q => \bloqueMult|bcdout\(2));

-- Location: LCCOMB_X33_Y12_N26
\bloqueMult|bcdout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueMult|bcdout~2_combout\ = (\bloquefreq60|clkout~q\ & \bloquebinBCD|vector\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloquefreq60|clkout~q\,
	datad => \bloquebinBCD|vector\(10),
	combout => \bloqueMult|bcdout~2_combout\);

-- Location: FF_X33_Y12_N27
\bloqueMult|bcdout[0]\ : dffeas
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
	q => \bloqueMult|bcdout\(0));

-- Location: LCCOMB_X33_Y12_N22
\bloqueMult|bcdout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloqueMult|bcdout~0_combout\ = (\bloquebinBCD|vector\(11)) # (!\bloquefreq60|clkout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloquefreq60|clkout~q\,
	datad => \bloquebinBCD|vector\(11),
	combout => \bloqueMult|bcdout~0_combout\);

-- Location: FF_X33_Y12_N23
\bloqueMult|bcdout[1]\ : dffeas
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
	q => \bloqueMult|bcdout\(1));

-- Location: LCCOMB_X18_Y20_N24
\bloquebcdseg|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebcdseg|Mux6~0_combout\ = (\bloqueMult|bcdout\(2) & ((!\bloqueMult|bcdout\(1)) # (!\bloqueMult|bcdout\(0)))) # (!\bloqueMult|bcdout\(2) & ((\bloqueMult|bcdout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueMult|bcdout\(2),
	datac => \bloqueMult|bcdout\(0),
	datad => \bloqueMult|bcdout\(1),
	combout => \bloquebcdseg|Mux6~0_combout\);

-- Location: LCCOMB_X18_Y20_N10
\bloquebcdseg|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebcdseg|Mux5~0_combout\ = (\bloqueMult|bcdout\(2) & (\bloqueMult|bcdout\(0) & \bloqueMult|bcdout\(1))) # (!\bloqueMult|bcdout\(2) & ((\bloqueMult|bcdout\(0)) # (\bloqueMult|bcdout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueMult|bcdout\(2),
	datac => \bloqueMult|bcdout\(0),
	datad => \bloqueMult|bcdout\(1),
	combout => \bloquebcdseg|Mux5~0_combout\);

-- Location: LCCOMB_X18_Y20_N12
\bloquebcdseg|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebcdseg|Mux4~0_combout\ = (\bloqueMult|bcdout\(0)) # ((\bloqueMult|bcdout\(2) & !\bloqueMult|bcdout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueMult|bcdout\(2),
	datac => \bloqueMult|bcdout\(0),
	datad => \bloqueMult|bcdout\(1),
	combout => \bloquebcdseg|Mux4~0_combout\);

-- Location: LCCOMB_X18_Y20_N14
\bloquebcdseg|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebcdseg|Mux3~0_combout\ = (\bloqueMult|bcdout\(2) & (\bloqueMult|bcdout\(0) $ (!\bloqueMult|bcdout\(1)))) # (!\bloqueMult|bcdout\(2) & (\bloqueMult|bcdout\(0) & !\bloqueMult|bcdout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueMult|bcdout\(2),
	datac => \bloqueMult|bcdout\(0),
	datad => \bloqueMult|bcdout\(1),
	combout => \bloquebcdseg|Mux3~0_combout\);

-- Location: LCCOMB_X18_Y20_N4
\bloquebcdseg|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebcdseg|Mux2~0_combout\ = (!\bloqueMult|bcdout\(2) & (!\bloqueMult|bcdout\(0) & \bloqueMult|bcdout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueMult|bcdout\(2),
	datac => \bloqueMult|bcdout\(0),
	datad => \bloqueMult|bcdout\(1),
	combout => \bloquebcdseg|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y20_N2
\bloquebcdseg|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebcdseg|Mux1~0_combout\ = (\bloqueMult|bcdout\(2) & (\bloqueMult|bcdout\(0) $ (\bloqueMult|bcdout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueMult|bcdout\(2),
	datac => \bloqueMult|bcdout\(0),
	datad => \bloqueMult|bcdout\(1),
	combout => \bloquebcdseg|Mux1~0_combout\);

-- Location: LCCOMB_X18_Y20_N8
\bloquebcdseg|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquebcdseg|Mux0~0_combout\ = (!\bloqueMult|bcdout\(1) & (\bloqueMult|bcdout\(2) $ (\bloqueMult|bcdout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloqueMult|bcdout\(2),
	datac => \bloqueMult|bcdout\(0),
	datad => \bloqueMult|bcdout\(1),
	combout => \bloquebcdseg|Mux0~0_combout\);

-- Location: IOIBUF_X21_Y0_N8
\inicio~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inicio,
	o => \inicio~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\alto~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alto,
	o => \alto~input_o\);

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


