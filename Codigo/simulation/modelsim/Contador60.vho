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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/27/2021 22:54:47"

-- 
-- Device: Altera EP4CE10E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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
-- segs[0]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segs[1]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segs[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segs[3]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segs[4]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segs[5]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segs[6]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \bloquefreq1|Add0~0_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta~12_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~1\ : std_logic;
SIGNAL \bloquefreq1|Add0~2_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~3\ : std_logic;
SIGNAL \bloquefreq1|Add0~4_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~5\ : std_logic;
SIGNAL \bloquefreq1|Add0~6_combout\ : std_logic;
SIGNAL \bloquefreq1|Equal0~9_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~7\ : std_logic;
SIGNAL \bloquefreq1|Add0~8_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~9\ : std_logic;
SIGNAL \bloquefreq1|Add0~10_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~11\ : std_logic;
SIGNAL \bloquefreq1|Add0~12_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~13\ : std_logic;
SIGNAL \bloquefreq1|Add0~14_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta~11_combout\ : std_logic;
SIGNAL \bloquefreq1|Equal0~8_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~15\ : std_logic;
SIGNAL \bloquefreq1|Add0~16_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~17\ : std_logic;
SIGNAL \bloquefreq1|Add0~18_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~19\ : std_logic;
SIGNAL \bloquefreq1|Add0~20_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~21\ : std_logic;
SIGNAL \bloquefreq1|Add0~22_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~23\ : std_logic;
SIGNAL \bloquefreq1|Add0~24_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta~10_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~25\ : std_logic;
SIGNAL \bloquefreq1|Add0~26_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta~9_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~27\ : std_logic;
SIGNAL \bloquefreq1|Add0~28_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta~8_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~29\ : std_logic;
SIGNAL \bloquefreq1|Add0~30_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta~7_combout\ : std_logic;
SIGNAL \bloquefreq1|Equal0~5_combout\ : std_logic;
SIGNAL \bloquefreq1|Equal0~6_combout\ : std_logic;
SIGNAL \bloquefreq1|Equal0~7_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~31\ : std_logic;
SIGNAL \bloquefreq1|Add0~32_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~33\ : std_logic;
SIGNAL \bloquefreq1|Add0~34_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta~6_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~35\ : std_logic;
SIGNAL \bloquefreq1|Add0~36_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~37\ : std_logic;
SIGNAL \bloquefreq1|Add0~38_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta~5_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~39\ : std_logic;
SIGNAL \bloquefreq1|Add0~40_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta~4_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~41\ : std_logic;
SIGNAL \bloquefreq1|Add0~42_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta~3_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~43\ : std_logic;
SIGNAL \bloquefreq1|Add0~44_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta~2_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~45\ : std_logic;
SIGNAL \bloquefreq1|Add0~46_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta~1_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~47\ : std_logic;
SIGNAL \bloquefreq1|Add0~48_combout\ : std_logic;
SIGNAL \bloquefreq1|Equal0~1_combout\ : std_logic;
SIGNAL \bloquefreq1|Equal0~2_combout\ : std_logic;
SIGNAL \bloquefreq1|Equal0~0_combout\ : std_logic;
SIGNAL \bloquefreq1|Equal0~3_combout\ : std_logic;
SIGNAL \bloquefreq1|Equal0~4_combout\ : std_logic;
SIGNAL \bloquefreq1|Equal0~10_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~49\ : std_logic;
SIGNAL \bloquefreq1|Add0~50_combout\ : std_logic;
SIGNAL \bloquefreq1|cuenta~0_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~51\ : std_logic;
SIGNAL \bloquefreq1|Add0~52_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~53\ : std_logic;
SIGNAL \bloquefreq1|Add0~54_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~55\ : std_logic;
SIGNAL \bloquefreq1|Add0~56_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~57\ : std_logic;
SIGNAL \bloquefreq1|Add0~58_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~59\ : std_logic;
SIGNAL \bloquefreq1|Add0~60_combout\ : std_logic;
SIGNAL \bloquefreq1|Add0~61\ : std_logic;
SIGNAL \bloquefreq1|Add0~62_combout\ : std_logic;
SIGNAL \bloquefreq1|clkout~feeder_combout\ : std_logic;
SIGNAL \bloquefreq1|clkout~q\ : std_logic;
SIGNAL \bloquefreq1|cuenta\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \bloquefreq1|ALT_INV_clkout~q\ : std_logic;

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

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\bloquefreq1|ALT_INV_clkout~q\ <= NOT \bloquefreq1|clkout~q\;
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
	i => \bloquefreq1|ALT_INV_clkout~q\,
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
	i => \bloquefreq1|clkout~q\,
	devoe => ww_devoe,
	o => \ti1~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\segs[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segs[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\segs[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segs[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\segs[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => \segs[3]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\segs[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segs[4]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\segs[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segs[5]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\segs[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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

-- Location: LCCOMB_X29_Y18_N0
\bloquefreq1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~0_combout\ = \bloquefreq1|cuenta\(0) $ (VCC)
-- \bloquefreq1|Add0~1\ = CARRY(\bloquefreq1|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(0),
	datad => VCC,
	combout => \bloquefreq1|Add0~0_combout\,
	cout => \bloquefreq1|Add0~1\);

-- Location: LCCOMB_X28_Y18_N6
\bloquefreq1|cuenta~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta~12_combout\ = (\bloquefreq1|Add0~0_combout\ & !\bloquefreq1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloquefreq1|Add0~0_combout\,
	datad => \bloquefreq1|Equal0~10_combout\,
	combout => \bloquefreq1|cuenta~12_combout\);

-- Location: FF_X29_Y18_N29
\bloquefreq1|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bloquefreq1|cuenta~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(0));

-- Location: LCCOMB_X29_Y18_N2
\bloquefreq1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~2_combout\ = (\bloquefreq1|cuenta\(1) & (!\bloquefreq1|Add0~1\)) # (!\bloquefreq1|cuenta\(1) & ((\bloquefreq1|Add0~1\) # (GND)))
-- \bloquefreq1|Add0~3\ = CARRY((!\bloquefreq1|Add0~1\) # (!\bloquefreq1|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(1),
	datad => VCC,
	cin => \bloquefreq1|Add0~1\,
	combout => \bloquefreq1|Add0~2_combout\,
	cout => \bloquefreq1|Add0~3\);

-- Location: FF_X29_Y18_N3
\bloquefreq1|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(1));

-- Location: LCCOMB_X29_Y18_N4
\bloquefreq1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~4_combout\ = (\bloquefreq1|cuenta\(2) & (\bloquefreq1|Add0~3\ $ (GND))) # (!\bloquefreq1|cuenta\(2) & (!\bloquefreq1|Add0~3\ & VCC))
-- \bloquefreq1|Add0~5\ = CARRY((\bloquefreq1|cuenta\(2) & !\bloquefreq1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(2),
	datad => VCC,
	cin => \bloquefreq1|Add0~3\,
	combout => \bloquefreq1|Add0~4_combout\,
	cout => \bloquefreq1|Add0~5\);

-- Location: FF_X29_Y18_N5
\bloquefreq1|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(2));

-- Location: LCCOMB_X29_Y18_N6
\bloquefreq1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~6_combout\ = (\bloquefreq1|cuenta\(3) & (!\bloquefreq1|Add0~5\)) # (!\bloquefreq1|cuenta\(3) & ((\bloquefreq1|Add0~5\) # (GND)))
-- \bloquefreq1|Add0~7\ = CARRY((!\bloquefreq1|Add0~5\) # (!\bloquefreq1|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(3),
	datad => VCC,
	cin => \bloquefreq1|Add0~5\,
	combout => \bloquefreq1|Add0~6_combout\,
	cout => \bloquefreq1|Add0~7\);

-- Location: FF_X29_Y18_N7
\bloquefreq1|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(3));

-- Location: LCCOMB_X28_Y18_N22
\bloquefreq1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Equal0~9_combout\ = (!\bloquefreq1|cuenta\(2) & (!\bloquefreq1|cuenta\(1) & (!\bloquefreq1|cuenta\(0) & !\bloquefreq1|cuenta\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(2),
	datab => \bloquefreq1|cuenta\(1),
	datac => \bloquefreq1|cuenta\(0),
	datad => \bloquefreq1|cuenta\(3),
	combout => \bloquefreq1|Equal0~9_combout\);

-- Location: LCCOMB_X29_Y18_N8
\bloquefreq1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~8_combout\ = (\bloquefreq1|cuenta\(4) & (\bloquefreq1|Add0~7\ $ (GND))) # (!\bloquefreq1|cuenta\(4) & (!\bloquefreq1|Add0~7\ & VCC))
-- \bloquefreq1|Add0~9\ = CARRY((\bloquefreq1|cuenta\(4) & !\bloquefreq1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(4),
	datad => VCC,
	cin => \bloquefreq1|Add0~7\,
	combout => \bloquefreq1|Add0~8_combout\,
	cout => \bloquefreq1|Add0~9\);

-- Location: FF_X29_Y18_N9
\bloquefreq1|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(4));

-- Location: LCCOMB_X29_Y18_N10
\bloquefreq1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~10_combout\ = (\bloquefreq1|cuenta\(5) & (!\bloquefreq1|Add0~9\)) # (!\bloquefreq1|cuenta\(5) & ((\bloquefreq1|Add0~9\) # (GND)))
-- \bloquefreq1|Add0~11\ = CARRY((!\bloquefreq1|Add0~9\) # (!\bloquefreq1|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(5),
	datad => VCC,
	cin => \bloquefreq1|Add0~9\,
	combout => \bloquefreq1|Add0~10_combout\,
	cout => \bloquefreq1|Add0~11\);

-- Location: FF_X29_Y18_N11
\bloquefreq1|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(5));

-- Location: LCCOMB_X29_Y18_N12
\bloquefreq1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~12_combout\ = (\bloquefreq1|cuenta\(6) & (\bloquefreq1|Add0~11\ $ (GND))) # (!\bloquefreq1|cuenta\(6) & (!\bloquefreq1|Add0~11\ & VCC))
-- \bloquefreq1|Add0~13\ = CARRY((\bloquefreq1|cuenta\(6) & !\bloquefreq1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(6),
	datad => VCC,
	cin => \bloquefreq1|Add0~11\,
	combout => \bloquefreq1|Add0~12_combout\,
	cout => \bloquefreq1|Add0~13\);

-- Location: FF_X29_Y18_N13
\bloquefreq1|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(6));

-- Location: LCCOMB_X29_Y18_N14
\bloquefreq1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~14_combout\ = (\bloquefreq1|cuenta\(7) & (!\bloquefreq1|Add0~13\)) # (!\bloquefreq1|cuenta\(7) & ((\bloquefreq1|Add0~13\) # (GND)))
-- \bloquefreq1|Add0~15\ = CARRY((!\bloquefreq1|Add0~13\) # (!\bloquefreq1|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(7),
	datad => VCC,
	cin => \bloquefreq1|Add0~13\,
	combout => \bloquefreq1|Add0~14_combout\,
	cout => \bloquefreq1|Add0~15\);

-- Location: LCCOMB_X28_Y18_N12
\bloquefreq1|cuenta~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta~11_combout\ = (\bloquefreq1|Add0~14_combout\ & !\bloquefreq1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloquefreq1|Add0~14_combout\,
	datad => \bloquefreq1|Equal0~10_combout\,
	combout => \bloquefreq1|cuenta~11_combout\);

-- Location: FF_X28_Y18_N13
\bloquefreq1|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(7));

-- Location: LCCOMB_X28_Y18_N24
\bloquefreq1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Equal0~8_combout\ = (!\bloquefreq1|cuenta\(4) & (!\bloquefreq1|cuenta\(5) & (!\bloquefreq1|cuenta\(6) & \bloquefreq1|cuenta\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(4),
	datab => \bloquefreq1|cuenta\(5),
	datac => \bloquefreq1|cuenta\(6),
	datad => \bloquefreq1|cuenta\(7),
	combout => \bloquefreq1|Equal0~8_combout\);

-- Location: LCCOMB_X29_Y18_N16
\bloquefreq1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~16_combout\ = (\bloquefreq1|cuenta\(8) & (\bloquefreq1|Add0~15\ $ (GND))) # (!\bloquefreq1|cuenta\(8) & (!\bloquefreq1|Add0~15\ & VCC))
-- \bloquefreq1|Add0~17\ = CARRY((\bloquefreq1|cuenta\(8) & !\bloquefreq1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(8),
	datad => VCC,
	cin => \bloquefreq1|Add0~15\,
	combout => \bloquefreq1|Add0~16_combout\,
	cout => \bloquefreq1|Add0~17\);

-- Location: FF_X29_Y18_N17
\bloquefreq1|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(8));

-- Location: LCCOMB_X29_Y18_N18
\bloquefreq1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~18_combout\ = (\bloquefreq1|cuenta\(9) & (!\bloquefreq1|Add0~17\)) # (!\bloquefreq1|cuenta\(9) & ((\bloquefreq1|Add0~17\) # (GND)))
-- \bloquefreq1|Add0~19\ = CARRY((!\bloquefreq1|Add0~17\) # (!\bloquefreq1|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(9),
	datad => VCC,
	cin => \bloquefreq1|Add0~17\,
	combout => \bloquefreq1|Add0~18_combout\,
	cout => \bloquefreq1|Add0~19\);

-- Location: FF_X29_Y18_N19
\bloquefreq1|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(9));

-- Location: LCCOMB_X29_Y18_N20
\bloquefreq1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~20_combout\ = (\bloquefreq1|cuenta\(10) & (\bloquefreq1|Add0~19\ $ (GND))) # (!\bloquefreq1|cuenta\(10) & (!\bloquefreq1|Add0~19\ & VCC))
-- \bloquefreq1|Add0~21\ = CARRY((\bloquefreq1|cuenta\(10) & !\bloquefreq1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(10),
	datad => VCC,
	cin => \bloquefreq1|Add0~19\,
	combout => \bloquefreq1|Add0~20_combout\,
	cout => \bloquefreq1|Add0~21\);

-- Location: FF_X29_Y18_N21
\bloquefreq1|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(10));

-- Location: LCCOMB_X29_Y18_N22
\bloquefreq1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~22_combout\ = (\bloquefreq1|cuenta\(11) & (!\bloquefreq1|Add0~21\)) # (!\bloquefreq1|cuenta\(11) & ((\bloquefreq1|Add0~21\) # (GND)))
-- \bloquefreq1|Add0~23\ = CARRY((!\bloquefreq1|Add0~21\) # (!\bloquefreq1|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(11),
	datad => VCC,
	cin => \bloquefreq1|Add0~21\,
	combout => \bloquefreq1|Add0~22_combout\,
	cout => \bloquefreq1|Add0~23\);

-- Location: FF_X29_Y18_N23
\bloquefreq1|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(11));

-- Location: LCCOMB_X29_Y18_N24
\bloquefreq1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~24_combout\ = (\bloquefreq1|cuenta\(12) & (\bloquefreq1|Add0~23\ $ (GND))) # (!\bloquefreq1|cuenta\(12) & (!\bloquefreq1|Add0~23\ & VCC))
-- \bloquefreq1|Add0~25\ = CARRY((\bloquefreq1|cuenta\(12) & !\bloquefreq1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(12),
	datad => VCC,
	cin => \bloquefreq1|Add0~23\,
	combout => \bloquefreq1|Add0~24_combout\,
	cout => \bloquefreq1|Add0~25\);

-- Location: LCCOMB_X28_Y18_N14
\bloquefreq1|cuenta~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta~10_combout\ = (!\bloquefreq1|Equal0~10_combout\ & \bloquefreq1|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|Equal0~10_combout\,
	datac => \bloquefreq1|Add0~24_combout\,
	combout => \bloquefreq1|cuenta~10_combout\);

-- Location: FF_X28_Y18_N15
\bloquefreq1|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(12));

-- Location: LCCOMB_X29_Y18_N26
\bloquefreq1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~26_combout\ = (\bloquefreq1|cuenta\(13) & (!\bloquefreq1|Add0~25\)) # (!\bloquefreq1|cuenta\(13) & ((\bloquefreq1|Add0~25\) # (GND)))
-- \bloquefreq1|Add0~27\ = CARRY((!\bloquefreq1|Add0~25\) # (!\bloquefreq1|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(13),
	datad => VCC,
	cin => \bloquefreq1|Add0~25\,
	combout => \bloquefreq1|Add0~26_combout\,
	cout => \bloquefreq1|Add0~27\);

-- Location: LCCOMB_X28_Y18_N8
\bloquefreq1|cuenta~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta~9_combout\ = (!\bloquefreq1|Equal0~10_combout\ & \bloquefreq1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|Equal0~10_combout\,
	datad => \bloquefreq1|Add0~26_combout\,
	combout => \bloquefreq1|cuenta~9_combout\);

-- Location: FF_X28_Y18_N9
\bloquefreq1|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(13));

-- Location: LCCOMB_X29_Y18_N28
\bloquefreq1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~28_combout\ = (\bloquefreq1|cuenta\(14) & (\bloquefreq1|Add0~27\ $ (GND))) # (!\bloquefreq1|cuenta\(14) & (!\bloquefreq1|Add0~27\ & VCC))
-- \bloquefreq1|Add0~29\ = CARRY((\bloquefreq1|cuenta\(14) & !\bloquefreq1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(14),
	datad => VCC,
	cin => \bloquefreq1|Add0~27\,
	combout => \bloquefreq1|Add0~28_combout\,
	cout => \bloquefreq1|Add0~29\);

-- Location: LCCOMB_X28_Y18_N10
\bloquefreq1|cuenta~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta~8_combout\ = (!\bloquefreq1|Equal0~10_combout\ & \bloquefreq1|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|Equal0~10_combout\,
	datad => \bloquefreq1|Add0~28_combout\,
	combout => \bloquefreq1|cuenta~8_combout\);

-- Location: FF_X28_Y18_N11
\bloquefreq1|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(14));

-- Location: LCCOMB_X29_Y18_N30
\bloquefreq1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~30_combout\ = (\bloquefreq1|cuenta\(15) & (!\bloquefreq1|Add0~29\)) # (!\bloquefreq1|cuenta\(15) & ((\bloquefreq1|Add0~29\) # (GND)))
-- \bloquefreq1|Add0~31\ = CARRY((!\bloquefreq1|Add0~29\) # (!\bloquefreq1|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(15),
	datad => VCC,
	cin => \bloquefreq1|Add0~29\,
	combout => \bloquefreq1|Add0~30_combout\,
	cout => \bloquefreq1|Add0~31\);

-- Location: LCCOMB_X28_Y18_N16
\bloquefreq1|cuenta~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta~7_combout\ = (\bloquefreq1|Add0~30_combout\ & !\bloquefreq1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloquefreq1|Add0~30_combout\,
	datad => \bloquefreq1|Equal0~10_combout\,
	combout => \bloquefreq1|cuenta~7_combout\);

-- Location: FF_X28_Y18_N17
\bloquefreq1|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(15));

-- Location: LCCOMB_X28_Y18_N26
\bloquefreq1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Equal0~5_combout\ = (\bloquefreq1|cuenta\(14) & (\bloquefreq1|cuenta\(12) & (\bloquefreq1|cuenta\(13) & \bloquefreq1|cuenta\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(14),
	datab => \bloquefreq1|cuenta\(12),
	datac => \bloquefreq1|cuenta\(13),
	datad => \bloquefreq1|cuenta\(15),
	combout => \bloquefreq1|Equal0~5_combout\);

-- Location: LCCOMB_X28_Y18_N28
\bloquefreq1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Equal0~6_combout\ = (!\bloquefreq1|cuenta\(10) & !\bloquefreq1|cuenta\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloquefreq1|cuenta\(10),
	datad => \bloquefreq1|cuenta\(11),
	combout => \bloquefreq1|Equal0~6_combout\);

-- Location: LCCOMB_X28_Y18_N30
\bloquefreq1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Equal0~7_combout\ = (!\bloquefreq1|cuenta\(8) & (!\bloquefreq1|cuenta\(9) & (\bloquefreq1|Equal0~5_combout\ & \bloquefreq1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(8),
	datab => \bloquefreq1|cuenta\(9),
	datac => \bloquefreq1|Equal0~5_combout\,
	datad => \bloquefreq1|Equal0~6_combout\,
	combout => \bloquefreq1|Equal0~7_combout\);

-- Location: LCCOMB_X29_Y17_N0
\bloquefreq1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~32_combout\ = (\bloquefreq1|cuenta\(16) & (\bloquefreq1|Add0~31\ $ (GND))) # (!\bloquefreq1|cuenta\(16) & (!\bloquefreq1|Add0~31\ & VCC))
-- \bloquefreq1|Add0~33\ = CARRY((\bloquefreq1|cuenta\(16) & !\bloquefreq1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(16),
	datad => VCC,
	cin => \bloquefreq1|Add0~31\,
	combout => \bloquefreq1|Add0~32_combout\,
	cout => \bloquefreq1|Add0~33\);

-- Location: FF_X29_Y17_N1
\bloquefreq1|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(16));

-- Location: LCCOMB_X29_Y17_N2
\bloquefreq1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~34_combout\ = (\bloquefreq1|cuenta\(17) & (!\bloquefreq1|Add0~33\)) # (!\bloquefreq1|cuenta\(17) & ((\bloquefreq1|Add0~33\) # (GND)))
-- \bloquefreq1|Add0~35\ = CARRY((!\bloquefreq1|Add0~33\) # (!\bloquefreq1|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(17),
	datad => VCC,
	cin => \bloquefreq1|Add0~33\,
	combout => \bloquefreq1|Add0~34_combout\,
	cout => \bloquefreq1|Add0~35\);

-- Location: LCCOMB_X28_Y17_N22
\bloquefreq1|cuenta~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta~6_combout\ = (!\bloquefreq1|Equal0~10_combout\ & \bloquefreq1|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|Equal0~10_combout\,
	datad => \bloquefreq1|Add0~34_combout\,
	combout => \bloquefreq1|cuenta~6_combout\);

-- Location: FF_X28_Y17_N23
\bloquefreq1|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(17));

-- Location: LCCOMB_X29_Y17_N4
\bloquefreq1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~36_combout\ = (\bloquefreq1|cuenta\(18) & (\bloquefreq1|Add0~35\ $ (GND))) # (!\bloquefreq1|cuenta\(18) & (!\bloquefreq1|Add0~35\ & VCC))
-- \bloquefreq1|Add0~37\ = CARRY((\bloquefreq1|cuenta\(18) & !\bloquefreq1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(18),
	datad => VCC,
	cin => \bloquefreq1|Add0~35\,
	combout => \bloquefreq1|Add0~36_combout\,
	cout => \bloquefreq1|Add0~37\);

-- Location: FF_X29_Y17_N5
\bloquefreq1|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(18));

-- Location: LCCOMB_X29_Y17_N6
\bloquefreq1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~38_combout\ = (\bloquefreq1|cuenta\(19) & (!\bloquefreq1|Add0~37\)) # (!\bloquefreq1|cuenta\(19) & ((\bloquefreq1|Add0~37\) # (GND)))
-- \bloquefreq1|Add0~39\ = CARRY((!\bloquefreq1|Add0~37\) # (!\bloquefreq1|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(19),
	datad => VCC,
	cin => \bloquefreq1|Add0~37\,
	combout => \bloquefreq1|Add0~38_combout\,
	cout => \bloquefreq1|Add0~39\);

-- Location: LCCOMB_X28_Y17_N20
\bloquefreq1|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta~5_combout\ = (!\bloquefreq1|Equal0~10_combout\ & \bloquefreq1|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|Equal0~10_combout\,
	datad => \bloquefreq1|Add0~38_combout\,
	combout => \bloquefreq1|cuenta~5_combout\);

-- Location: FF_X28_Y17_N21
\bloquefreq1|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(19));

-- Location: LCCOMB_X29_Y17_N8
\bloquefreq1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~40_combout\ = (\bloquefreq1|cuenta\(20) & (\bloquefreq1|Add0~39\ $ (GND))) # (!\bloquefreq1|cuenta\(20) & (!\bloquefreq1|Add0~39\ & VCC))
-- \bloquefreq1|Add0~41\ = CARRY((\bloquefreq1|cuenta\(20) & !\bloquefreq1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(20),
	datad => VCC,
	cin => \bloquefreq1|Add0~39\,
	combout => \bloquefreq1|Add0~40_combout\,
	cout => \bloquefreq1|Add0~41\);

-- Location: LCCOMB_X28_Y17_N26
\bloquefreq1|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta~4_combout\ = (\bloquefreq1|Add0~40_combout\ & !\bloquefreq1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloquefreq1|Add0~40_combout\,
	datad => \bloquefreq1|Equal0~10_combout\,
	combout => \bloquefreq1|cuenta~4_combout\);

-- Location: FF_X28_Y17_N27
\bloquefreq1|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(20));

-- Location: LCCOMB_X29_Y17_N10
\bloquefreq1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~42_combout\ = (\bloquefreq1|cuenta\(21) & (!\bloquefreq1|Add0~41\)) # (!\bloquefreq1|cuenta\(21) & ((\bloquefreq1|Add0~41\) # (GND)))
-- \bloquefreq1|Add0~43\ = CARRY((!\bloquefreq1|Add0~41\) # (!\bloquefreq1|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(21),
	datad => VCC,
	cin => \bloquefreq1|Add0~41\,
	combout => \bloquefreq1|Add0~42_combout\,
	cout => \bloquefreq1|Add0~43\);

-- Location: LCCOMB_X28_Y17_N16
\bloquefreq1|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta~3_combout\ = (\bloquefreq1|Add0~42_combout\ & !\bloquefreq1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloquefreq1|Add0~42_combout\,
	datad => \bloquefreq1|Equal0~10_combout\,
	combout => \bloquefreq1|cuenta~3_combout\);

-- Location: FF_X28_Y17_N17
\bloquefreq1|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(21));

-- Location: LCCOMB_X29_Y17_N12
\bloquefreq1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~44_combout\ = (\bloquefreq1|cuenta\(22) & (\bloquefreq1|Add0~43\ $ (GND))) # (!\bloquefreq1|cuenta\(22) & (!\bloquefreq1|Add0~43\ & VCC))
-- \bloquefreq1|Add0~45\ = CARRY((\bloquefreq1|cuenta\(22) & !\bloquefreq1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(22),
	datad => VCC,
	cin => \bloquefreq1|Add0~43\,
	combout => \bloquefreq1|Add0~44_combout\,
	cout => \bloquefreq1|Add0~45\);

-- Location: LCCOMB_X28_Y17_N6
\bloquefreq1|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta~2_combout\ = (\bloquefreq1|Add0~44_combout\ & !\bloquefreq1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloquefreq1|Add0~44_combout\,
	datad => \bloquefreq1|Equal0~10_combout\,
	combout => \bloquefreq1|cuenta~2_combout\);

-- Location: FF_X28_Y17_N7
\bloquefreq1|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(22));

-- Location: LCCOMB_X29_Y17_N14
\bloquefreq1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~46_combout\ = (\bloquefreq1|cuenta\(23) & (!\bloquefreq1|Add0~45\)) # (!\bloquefreq1|cuenta\(23) & ((\bloquefreq1|Add0~45\) # (GND)))
-- \bloquefreq1|Add0~47\ = CARRY((!\bloquefreq1|Add0~45\) # (!\bloquefreq1|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(23),
	datad => VCC,
	cin => \bloquefreq1|Add0~45\,
	combout => \bloquefreq1|Add0~46_combout\,
	cout => \bloquefreq1|Add0~47\);

-- Location: LCCOMB_X28_Y17_N28
\bloquefreq1|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta~1_combout\ = (\bloquefreq1|Add0~46_combout\ & !\bloquefreq1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloquefreq1|Add0~46_combout\,
	datad => \bloquefreq1|Equal0~10_combout\,
	combout => \bloquefreq1|cuenta~1_combout\);

-- Location: FF_X28_Y17_N29
\bloquefreq1|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(23));

-- Location: LCCOMB_X29_Y17_N16
\bloquefreq1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~48_combout\ = (\bloquefreq1|cuenta\(24) & (\bloquefreq1|Add0~47\ $ (GND))) # (!\bloquefreq1|cuenta\(24) & (!\bloquefreq1|Add0~47\ & VCC))
-- \bloquefreq1|Add0~49\ = CARRY((\bloquefreq1|cuenta\(24) & !\bloquefreq1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(24),
	datad => VCC,
	cin => \bloquefreq1|Add0~47\,
	combout => \bloquefreq1|Add0~48_combout\,
	cout => \bloquefreq1|Add0~49\);

-- Location: FF_X29_Y17_N17
\bloquefreq1|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(24));

-- Location: LCCOMB_X28_Y17_N10
\bloquefreq1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Equal0~1_combout\ = (\bloquefreq1|cuenta\(25) & (!\bloquefreq1|cuenta\(27) & (!\bloquefreq1|cuenta\(26) & !\bloquefreq1|cuenta\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(25),
	datab => \bloquefreq1|cuenta\(27),
	datac => \bloquefreq1|cuenta\(26),
	datad => \bloquefreq1|cuenta\(24),
	combout => \bloquefreq1|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y17_N4
\bloquefreq1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Equal0~2_combout\ = (\bloquefreq1|cuenta\(22) & (\bloquefreq1|cuenta\(23) & (\bloquefreq1|cuenta\(20) & \bloquefreq1|cuenta\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(22),
	datab => \bloquefreq1|cuenta\(23),
	datac => \bloquefreq1|cuenta\(20),
	datad => \bloquefreq1|cuenta\(21),
	combout => \bloquefreq1|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y17_N8
\bloquefreq1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Equal0~0_combout\ = (!\bloquefreq1|cuenta\(31) & (!\bloquefreq1|cuenta\(30) & (!\bloquefreq1|cuenta\(29) & !\bloquefreq1|cuenta\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(31),
	datab => \bloquefreq1|cuenta\(30),
	datac => \bloquefreq1|cuenta\(29),
	datad => \bloquefreq1|cuenta\(28),
	combout => \bloquefreq1|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y17_N18
\bloquefreq1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Equal0~3_combout\ = (\bloquefreq1|cuenta\(17) & (\bloquefreq1|cuenta\(19) & (!\bloquefreq1|cuenta\(16) & !\bloquefreq1|cuenta\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(17),
	datab => \bloquefreq1|cuenta\(19),
	datac => \bloquefreq1|cuenta\(16),
	datad => \bloquefreq1|cuenta\(18),
	combout => \bloquefreq1|Equal0~3_combout\);

-- Location: LCCOMB_X28_Y17_N0
\bloquefreq1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Equal0~4_combout\ = (\bloquefreq1|Equal0~1_combout\ & (\bloquefreq1|Equal0~2_combout\ & (\bloquefreq1|Equal0~0_combout\ & \bloquefreq1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|Equal0~1_combout\,
	datab => \bloquefreq1|Equal0~2_combout\,
	datac => \bloquefreq1|Equal0~0_combout\,
	datad => \bloquefreq1|Equal0~3_combout\,
	combout => \bloquefreq1|Equal0~4_combout\);

-- Location: LCCOMB_X28_Y18_N20
\bloquefreq1|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Equal0~10_combout\ = (\bloquefreq1|Equal0~9_combout\ & (\bloquefreq1|Equal0~8_combout\ & (\bloquefreq1|Equal0~7_combout\ & \bloquefreq1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|Equal0~9_combout\,
	datab => \bloquefreq1|Equal0~8_combout\,
	datac => \bloquefreq1|Equal0~7_combout\,
	datad => \bloquefreq1|Equal0~4_combout\,
	combout => \bloquefreq1|Equal0~10_combout\);

-- Location: LCCOMB_X29_Y17_N18
\bloquefreq1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~50_combout\ = (\bloquefreq1|cuenta\(25) & (!\bloquefreq1|Add0~49\)) # (!\bloquefreq1|cuenta\(25) & ((\bloquefreq1|Add0~49\) # (GND)))
-- \bloquefreq1|Add0~51\ = CARRY((!\bloquefreq1|Add0~49\) # (!\bloquefreq1|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(25),
	datad => VCC,
	cin => \bloquefreq1|Add0~49\,
	combout => \bloquefreq1|Add0~50_combout\,
	cout => \bloquefreq1|Add0~51\);

-- Location: LCCOMB_X28_Y17_N30
\bloquefreq1|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|cuenta~0_combout\ = (!\bloquefreq1|Equal0~10_combout\ & \bloquefreq1|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|Equal0~10_combout\,
	datad => \bloquefreq1|Add0~50_combout\,
	combout => \bloquefreq1|cuenta~0_combout\);

-- Location: FF_X28_Y17_N31
\bloquefreq1|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(25));

-- Location: LCCOMB_X29_Y17_N20
\bloquefreq1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~52_combout\ = (\bloquefreq1|cuenta\(26) & (\bloquefreq1|Add0~51\ $ (GND))) # (!\bloquefreq1|cuenta\(26) & (!\bloquefreq1|Add0~51\ & VCC))
-- \bloquefreq1|Add0~53\ = CARRY((\bloquefreq1|cuenta\(26) & !\bloquefreq1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(26),
	datad => VCC,
	cin => \bloquefreq1|Add0~51\,
	combout => \bloquefreq1|Add0~52_combout\,
	cout => \bloquefreq1|Add0~53\);

-- Location: FF_X29_Y17_N21
\bloquefreq1|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(26));

-- Location: LCCOMB_X29_Y17_N22
\bloquefreq1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~54_combout\ = (\bloquefreq1|cuenta\(27) & (!\bloquefreq1|Add0~53\)) # (!\bloquefreq1|cuenta\(27) & ((\bloquefreq1|Add0~53\) # (GND)))
-- \bloquefreq1|Add0~55\ = CARRY((!\bloquefreq1|Add0~53\) # (!\bloquefreq1|cuenta\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(27),
	datad => VCC,
	cin => \bloquefreq1|Add0~53\,
	combout => \bloquefreq1|Add0~54_combout\,
	cout => \bloquefreq1|Add0~55\);

-- Location: FF_X29_Y17_N23
\bloquefreq1|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(27));

-- Location: LCCOMB_X29_Y17_N24
\bloquefreq1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~56_combout\ = (\bloquefreq1|cuenta\(28) & (\bloquefreq1|Add0~55\ $ (GND))) # (!\bloquefreq1|cuenta\(28) & (!\bloquefreq1|Add0~55\ & VCC))
-- \bloquefreq1|Add0~57\ = CARRY((\bloquefreq1|cuenta\(28) & !\bloquefreq1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(28),
	datad => VCC,
	cin => \bloquefreq1|Add0~55\,
	combout => \bloquefreq1|Add0~56_combout\,
	cout => \bloquefreq1|Add0~57\);

-- Location: FF_X29_Y17_N25
\bloquefreq1|cuenta[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(28));

-- Location: LCCOMB_X29_Y17_N26
\bloquefreq1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~58_combout\ = (\bloquefreq1|cuenta\(29) & (!\bloquefreq1|Add0~57\)) # (!\bloquefreq1|cuenta\(29) & ((\bloquefreq1|Add0~57\) # (GND)))
-- \bloquefreq1|Add0~59\ = CARRY((!\bloquefreq1|Add0~57\) # (!\bloquefreq1|cuenta\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(29),
	datad => VCC,
	cin => \bloquefreq1|Add0~57\,
	combout => \bloquefreq1|Add0~58_combout\,
	cout => \bloquefreq1|Add0~59\);

-- Location: FF_X29_Y17_N27
\bloquefreq1|cuenta[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(29));

-- Location: LCCOMB_X29_Y17_N28
\bloquefreq1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~60_combout\ = (\bloquefreq1|cuenta\(30) & (\bloquefreq1|Add0~59\ $ (GND))) # (!\bloquefreq1|cuenta\(30) & (!\bloquefreq1|Add0~59\ & VCC))
-- \bloquefreq1|Add0~61\ = CARRY((\bloquefreq1|cuenta\(30) & !\bloquefreq1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloquefreq1|cuenta\(30),
	datad => VCC,
	cin => \bloquefreq1|Add0~59\,
	combout => \bloquefreq1|Add0~60_combout\,
	cout => \bloquefreq1|Add0~61\);

-- Location: FF_X29_Y17_N29
\bloquefreq1|cuenta[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(30));

-- Location: LCCOMB_X29_Y17_N30
\bloquefreq1|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|Add0~62_combout\ = \bloquefreq1|cuenta\(31) $ (\bloquefreq1|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloquefreq1|cuenta\(31),
	cin => \bloquefreq1|Add0~61\,
	combout => \bloquefreq1|Add0~62_combout\);

-- Location: FF_X29_Y17_N31
\bloquefreq1|cuenta[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|cuenta\(31));

-- Location: LCCOMB_X28_Y17_N12
\bloquefreq1|clkout~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloquefreq1|clkout~feeder_combout\ = \bloquefreq1|cuenta\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloquefreq1|cuenta\(31),
	combout => \bloquefreq1|clkout~feeder_combout\);

-- Location: FF_X28_Y17_N13
\bloquefreq1|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloquefreq1|clkout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloquefreq1|clkout~q\);

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


