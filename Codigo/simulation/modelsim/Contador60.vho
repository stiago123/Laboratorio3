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

-- DATE "12/04/2021 16:16:02"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bcd27seg IS
    PORT (
	clk : IN std_logic;
	bcd : IN std_logic_vector(3 DOWNTO 0);
	hab : BUFFER std_logic;
	seg7 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END bcd27seg;

-- Design Ports Information
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hab	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7[0]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7[1]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7[2]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7[3]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7[4]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7[6]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[0]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[1]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[2]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[3]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bcd27seg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_bcd : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hab : std_logic;
SIGNAL ww_seg7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \hab~output_o\ : std_logic;
SIGNAL \seg7[0]~output_o\ : std_logic;
SIGNAL \seg7[1]~output_o\ : std_logic;
SIGNAL \seg7[2]~output_o\ : std_logic;
SIGNAL \seg7[3]~output_o\ : std_logic;
SIGNAL \seg7[4]~output_o\ : std_logic;
SIGNAL \seg7[5]~output_o\ : std_logic;
SIGNAL \seg7[6]~output_o\ : std_logic;
SIGNAL \bcd[0]~input_o\ : std_logic;
SIGNAL \bcd[1]~input_o\ : std_logic;
SIGNAL \bcd[3]~input_o\ : std_logic;
SIGNAL \bcd[2]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_bcd <= bcd;
hab <= ww_hab;
seg7 <= ww_seg7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y24_N16
\hab~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hab~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\seg7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \seg7[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\seg7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \seg7[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\seg7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \seg7[2]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\seg7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \seg7[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\seg7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \seg7[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\seg7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \seg7[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\seg7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \seg7[6]~output_o\);

-- Location: IOIBUF_X25_Y0_N1
\bcd[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(0),
	o => \bcd[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\bcd[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(1),
	o => \bcd[1]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\bcd[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(3),
	o => \bcd[3]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\bcd[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(2),
	o => \bcd[2]~input_o\);

-- Location: LCCOMB_X23_Y20_N8
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\bcd[1]~input_o\ & (!\bcd[3]~input_o\ & ((!\bcd[2]~input_o\) # (!\bcd[0]~input_o\)))) # (!\bcd[1]~input_o\ & ((\bcd[3]~input_o\ $ (\bcd[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[0]~input_o\,
	datab => \bcd[1]~input_o\,
	datac => \bcd[3]~input_o\,
	datad => \bcd[2]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X23_Y20_N10
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\bcd[0]~input_o\ & ((\bcd[1]~input_o\) # (\bcd[3]~input_o\ $ (!\bcd[2]~input_o\)))) # (!\bcd[0]~input_o\ & ((\bcd[2]~input_o\ & ((\bcd[3]~input_o\))) # (!\bcd[2]~input_o\ & (\bcd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[0]~input_o\,
	datab => \bcd[1]~input_o\,
	datac => \bcd[3]~input_o\,
	datad => \bcd[2]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X23_Y20_N12
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\bcd[0]~input_o\) # ((\bcd[1]~input_o\ & (\bcd[3]~input_o\)) # (!\bcd[1]~input_o\ & ((\bcd[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[0]~input_o\,
	datab => \bcd[1]~input_o\,
	datac => \bcd[3]~input_o\,
	datad => \bcd[2]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X23_Y20_N22
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\bcd[0]~input_o\ & ((\bcd[3]~input_o\) # (\bcd[1]~input_o\ $ (!\bcd[2]~input_o\)))) # (!\bcd[0]~input_o\ & ((\bcd[1]~input_o\ & (\bcd[3]~input_o\)) # (!\bcd[1]~input_o\ & ((\bcd[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[0]~input_o\,
	datab => \bcd[1]~input_o\,
	datac => \bcd[3]~input_o\,
	datad => \bcd[2]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X23_Y20_N24
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\bcd[2]~input_o\ & (((\bcd[3]~input_o\)))) # (!\bcd[2]~input_o\ & (\bcd[1]~input_o\ & ((\bcd[3]~input_o\) # (!\bcd[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[0]~input_o\,
	datab => \bcd[1]~input_o\,
	datac => \bcd[3]~input_o\,
	datad => \bcd[2]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X23_Y20_N2
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\bcd[3]~input_o\ & (((\bcd[1]~input_o\) # (\bcd[2]~input_o\)))) # (!\bcd[3]~input_o\ & (\bcd[2]~input_o\ & (\bcd[0]~input_o\ $ (\bcd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[0]~input_o\,
	datab => \bcd[1]~input_o\,
	datac => \bcd[3]~input_o\,
	datad => \bcd[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X23_Y20_N4
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\bcd[1]~input_o\ & (((\bcd[3]~input_o\)))) # (!\bcd[1]~input_o\ & (\bcd[2]~input_o\ $ (((\bcd[0]~input_o\ & !\bcd[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[0]~input_o\,
	datab => \bcd[1]~input_o\,
	datac => \bcd[3]~input_o\,
	datad => \bcd[2]~input_o\,
	combout => \Mux0~0_combout\);

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

ww_hab <= \hab~output_o\;

ww_seg7(0) <= \seg7[0]~output_o\;

ww_seg7(1) <= \seg7[1]~output_o\;

ww_seg7(2) <= \seg7[2]~output_o\;

ww_seg7(3) <= \seg7[3]~output_o\;

ww_seg7(4) <= \seg7[4]~output_o\;

ww_seg7(5) <= \seg7[5]~output_o\;

ww_seg7(6) <= \seg7[6]~output_o\;
END structure;


