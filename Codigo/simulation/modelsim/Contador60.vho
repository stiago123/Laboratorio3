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

-- DATE "11/26/2021 19:52:59"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	divisor_de_frecuencia IS
    PORT (
	clk : IN std_logic;
	fout : IN STD.STANDARD.integer;
	clkout : OUT std_logic
	);
END divisor_de_frecuencia;

-- Design Ports Information
-- clk	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[0]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[1]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[2]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[3]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[4]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[5]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[6]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[7]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[8]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[9]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[10]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[11]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[12]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[13]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[14]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[15]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[16]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[17]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[18]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[19]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[20]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[21]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[22]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[23]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[24]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[25]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[26]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[27]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[28]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[29]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[30]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout[31]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkout	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF divisor_de_frecuencia IS
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
SIGNAL ww_fout : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_clkout : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \fout[0]~input_o\ : std_logic;
SIGNAL \fout[1]~input_o\ : std_logic;
SIGNAL \fout[2]~input_o\ : std_logic;
SIGNAL \fout[3]~input_o\ : std_logic;
SIGNAL \fout[4]~input_o\ : std_logic;
SIGNAL \fout[5]~input_o\ : std_logic;
SIGNAL \fout[6]~input_o\ : std_logic;
SIGNAL \fout[7]~input_o\ : std_logic;
SIGNAL \fout[8]~input_o\ : std_logic;
SIGNAL \fout[9]~input_o\ : std_logic;
SIGNAL \fout[10]~input_o\ : std_logic;
SIGNAL \fout[11]~input_o\ : std_logic;
SIGNAL \fout[12]~input_o\ : std_logic;
SIGNAL \fout[13]~input_o\ : std_logic;
SIGNAL \fout[14]~input_o\ : std_logic;
SIGNAL \fout[15]~input_o\ : std_logic;
SIGNAL \fout[16]~input_o\ : std_logic;
SIGNAL \fout[17]~input_o\ : std_logic;
SIGNAL \fout[18]~input_o\ : std_logic;
SIGNAL \fout[19]~input_o\ : std_logic;
SIGNAL \fout[20]~input_o\ : std_logic;
SIGNAL \fout[21]~input_o\ : std_logic;
SIGNAL \fout[22]~input_o\ : std_logic;
SIGNAL \fout[23]~input_o\ : std_logic;
SIGNAL \fout[24]~input_o\ : std_logic;
SIGNAL \fout[25]~input_o\ : std_logic;
SIGNAL \fout[26]~input_o\ : std_logic;
SIGNAL \fout[27]~input_o\ : std_logic;
SIGNAL \fout[28]~input_o\ : std_logic;
SIGNAL \fout[29]~input_o\ : std_logic;
SIGNAL \fout[30]~input_o\ : std_logic;
SIGNAL \fout[31]~input_o\ : std_logic;
SIGNAL \clkout~output_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_fout <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(fout, 32);
clkout <= ww_clkout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y24_N23
\clkout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clkout~output_o\);

-- Location: IOIBUF_X3_Y0_N1
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\fout[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(0),
	o => \fout[0]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\fout[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(1),
	o => \fout[1]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\fout[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(2),
	o => \fout[2]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\fout[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(3),
	o => \fout[3]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\fout[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(4),
	o => \fout[4]~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\fout[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(5),
	o => \fout[5]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\fout[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(6),
	o => \fout[6]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\fout[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(7),
	o => \fout[7]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\fout[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(8),
	o => \fout[8]~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\fout[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(9),
	o => \fout[9]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\fout[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(10),
	o => \fout[10]~input_o\);

-- Location: IOIBUF_X28_Y24_N15
\fout[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(11),
	o => \fout[11]~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\fout[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(12),
	o => \fout[12]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\fout[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(13),
	o => \fout[13]~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\fout[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(14),
	o => \fout[14]~input_o\);

-- Location: IOIBUF_X1_Y24_N1
\fout[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(15),
	o => \fout[15]~input_o\);

-- Location: IOIBUF_X34_Y20_N8
\fout[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(16),
	o => \fout[16]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\fout[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(17),
	o => \fout[17]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\fout[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(18),
	o => \fout[18]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\fout[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(19),
	o => \fout[19]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\fout[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(20),
	o => \fout[20]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\fout[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(21),
	o => \fout[21]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\fout[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(22),
	o => \fout[22]~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\fout[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(23),
	o => \fout[23]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\fout[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(24),
	o => \fout[24]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\fout[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(25),
	o => \fout[25]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\fout[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(26),
	o => \fout[26]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\fout[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(27),
	o => \fout[27]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\fout[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(28),
	o => \fout[28]~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\fout[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(29),
	o => \fout[29]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\fout[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(30),
	o => \fout[30]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\fout[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fout(31),
	o => \fout[31]~input_o\);

ww_clkout <= \clkout~output_o\;
END structure;


