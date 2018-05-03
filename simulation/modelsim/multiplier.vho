-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/09/2016 15:26:12"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	multiplier IS
    PORT (
	clk : IN std_logic;
	start : IN std_logic;
	reset : IN std_logic;
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	done : OUT std_logic;
	stateout : OUT std_logic_vector(1 DOWNTO 0);
	segment : OUT std_logic_vector(6 DOWNTO 0);
	segment2 : OUT std_logic_vector(6 DOWNTO 0);
	segment3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END multiplier;

-- Design Ports Information
-- done	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stateout[0]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stateout[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment2[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment2[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment2[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment2[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment2[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment2[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment2[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment3[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment3[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment3[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment3[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment3[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment3[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment3[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF multiplier IS
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
SIGNAL ww_start : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_done : std_logic;
SIGNAL ww_stateout : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_segment : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segment2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segment3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divided_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \state.s0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \Add9~26_combout\ : std_logic;
SIGNAL \Add9~44_combout\ : std_logic;
SIGNAL \Add9~61\ : std_logic;
SIGNAL \Add9~62_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \BCD~16_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \clk_count~1_combout\ : std_logic;
SIGNAL \clk_count~8_combout\ : std_logic;
SIGNAL \clk_count~11_combout\ : std_logic;
SIGNAL \C~q\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \product[1]~feeder_combout\ : std_logic;
SIGNAL \PPSMPR[1]~feeder_combout\ : std_logic;
SIGNAL \done~output_o\ : std_logic;
SIGNAL \stateout[0]~output_o\ : std_logic;
SIGNAL \stateout[1]~output_o\ : std_logic;
SIGNAL \segment[0]~output_o\ : std_logic;
SIGNAL \segment[1]~output_o\ : std_logic;
SIGNAL \segment[2]~output_o\ : std_logic;
SIGNAL \segment[3]~output_o\ : std_logic;
SIGNAL \segment[4]~output_o\ : std_logic;
SIGNAL \segment[5]~output_o\ : std_logic;
SIGNAL \segment[6]~output_o\ : std_logic;
SIGNAL \segment2[0]~output_o\ : std_logic;
SIGNAL \segment2[1]~output_o\ : std_logic;
SIGNAL \segment2[2]~output_o\ : std_logic;
SIGNAL \segment2[3]~output_o\ : std_logic;
SIGNAL \segment2[4]~output_o\ : std_logic;
SIGNAL \segment2[5]~output_o\ : std_logic;
SIGNAL \segment2[6]~output_o\ : std_logic;
SIGNAL \segment3[0]~output_o\ : std_logic;
SIGNAL \segment3[1]~output_o\ : std_logic;
SIGNAL \segment3[2]~output_o\ : std_logic;
SIGNAL \segment3[3]~output_o\ : std_logic;
SIGNAL \segment3[4]~output_o\ : std_logic;
SIGNAL \segment3[5]~output_o\ : std_logic;
SIGNAL \segment3[6]~output_o\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \clk_count~12_combout\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~13\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \Add9~15\ : std_logic;
SIGNAL \Add9~16_combout\ : std_logic;
SIGNAL \Add9~17\ : std_logic;
SIGNAL \Add9~18_combout\ : std_logic;
SIGNAL \Add9~19\ : std_logic;
SIGNAL \Add9~20_combout\ : std_logic;
SIGNAL \Add9~21\ : std_logic;
SIGNAL \Add9~23\ : std_logic;
SIGNAL \Add9~24_combout\ : std_logic;
SIGNAL \clk_count~9_combout\ : std_logic;
SIGNAL \Add9~25\ : std_logic;
SIGNAL \Add9~27\ : std_logic;
SIGNAL \Add9~28_combout\ : std_logic;
SIGNAL \clk_count~7_combout\ : std_logic;
SIGNAL \Add9~29\ : std_logic;
SIGNAL \Add9~30_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Add9~22_combout\ : std_logic;
SIGNAL \clk_count~10_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Add9~31\ : std_logic;
SIGNAL \Add9~32_combout\ : std_logic;
SIGNAL \clk_count~6_combout\ : std_logic;
SIGNAL \Add9~33\ : std_logic;
SIGNAL \Add9~34_combout\ : std_logic;
SIGNAL \Add9~35\ : std_logic;
SIGNAL \Add9~36_combout\ : std_logic;
SIGNAL \clk_count~5_combout\ : std_logic;
SIGNAL \Add9~37\ : std_logic;
SIGNAL \Add9~38_combout\ : std_logic;
SIGNAL \clk_count~4_combout\ : std_logic;
SIGNAL \Add9~39\ : std_logic;
SIGNAL \Add9~40_combout\ : std_logic;
SIGNAL \clk_count~3_combout\ : std_logic;
SIGNAL \Add9~41\ : std_logic;
SIGNAL \Add9~43\ : std_logic;
SIGNAL \Add9~45\ : std_logic;
SIGNAL \Add9~46_combout\ : std_logic;
SIGNAL \Add9~47\ : std_logic;
SIGNAL \Add9~48_combout\ : std_logic;
SIGNAL \clk_count~0_combout\ : std_logic;
SIGNAL \Add9~49\ : std_logic;
SIGNAL \Add9~50_combout\ : std_logic;
SIGNAL \Add9~51\ : std_logic;
SIGNAL \Add9~52_combout\ : std_logic;
SIGNAL \Add9~53\ : std_logic;
SIGNAL \Add9~55\ : std_logic;
SIGNAL \Add9~56_combout\ : std_logic;
SIGNAL \Add9~57\ : std_logic;
SIGNAL \Add9~58_combout\ : std_logic;
SIGNAL \Add9~59\ : std_logic;
SIGNAL \Add9~60_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add9~54_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add9~42_combout\ : std_logic;
SIGNAL \clk_count~2_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \divided_clk~0_combout\ : std_logic;
SIGNAL \divided_clk~feeder_combout\ : std_logic;
SIGNAL \divided_clk~q\ : std_logic;
SIGNAL \divided_clk~clkctrl_outclk\ : std_logic;
SIGNAL \done~reg0feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \done~reg0_q\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \BC[0]~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \state.s3~q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \state.s0~feeder_combout\ : std_logic;
SIGNAL \state.s0~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \state.s1~q\ : std_logic;
SIGNAL \state.s2~feeder_combout\ : std_logic;
SIGNAL \state.s2~q\ : std_logic;
SIGNAL \done~0_combout\ : std_logic;
SIGNAL \stateout~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \PPS[3]~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \PPSMPR[0]~feeder_combout\ : std_logic;
SIGNAL \PPSMPR[3]~0_combout\ : std_logic;
SIGNAL \product[0]~feeder_combout\ : std_logic;
SIGNAL \product[3]~0_combout\ : std_logic;
SIGNAL \PPSMPR[2]~feeder_combout\ : std_logic;
SIGNAL \PPSMPR[3]~feeder_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \MPD[3]~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \PPSMPR[5]~feeder_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \PPSMPR[4]~feeder_combout\ : std_logic;
SIGNAL \PPSMPR[7]~feeder_combout\ : std_logic;
SIGNAL \BCD~0_combout\ : std_logic;
SIGNAL \BCD~2_combout\ : std_logic;
SIGNAL \BCD~5_combout\ : std_logic;
SIGNAL \BCD~3_combout\ : std_logic;
SIGNAL \BCD~7_combout\ : std_logic;
SIGNAL \BCD~6_combout\ : std_logic;
SIGNAL \BCD~8_combout\ : std_logic;
SIGNAL \BCD~11_combout\ : std_logic;
SIGNAL \BCD~10_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \state.s0~clkctrl_outclk\ : std_logic;
SIGNAL \segment[0]$latch~combout\ : std_logic;
SIGNAL \BCD~9_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \segment[1]$latch~combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \segment[2]$latch~combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \segment[3]$latch~combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \segment[4]$latch~combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \segment[5]$latch~combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \segment[6]$latch~combout\ : std_logic;
SIGNAL \BCD~15_combout\ : std_logic;
SIGNAL \BCD~1_combout\ : std_logic;
SIGNAL \BCD~13_combout\ : std_logic;
SIGNAL \BCD~17_combout\ : std_logic;
SIGNAL \BCD~18_combout\ : std_logic;
SIGNAL \BCD~4_combout\ : std_logic;
SIGNAL \BCD~19_combout\ : std_logic;
SIGNAL \BCD~20_combout\ : std_logic;
SIGNAL \BCD~12_combout\ : std_logic;
SIGNAL \PPSMPR[6]~feeder_combout\ : std_logic;
SIGNAL \BCD~21_combout\ : std_logic;
SIGNAL \BCD~22_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \BCD~14_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \BCD~23_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \segment2[0]$latch~combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \segment2[1]$latch~combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \segment2[2]$latch~combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \segment2[3]$latch~combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \segment2[4]$latch~combout\ : std_logic;
SIGNAL \BCD~24_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \segment2[5]$latch~combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \segment2[6]$latch~combout\ : std_logic;
SIGNAL \BCD~25_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \segment3[0]$latch~combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \segment3[2]$latch~combout\ : std_logic;
SIGNAL \segment3[4]$latch~combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \segment3[5]$latch~combout\ : std_logic;
SIGNAL \segment3[6]$latch~combout\ : std_logic;
SIGNAL product : std_logic_vector(7 DOWNTO 0);
SIGNAL clk_count : std_logic_vector(31 DOWNTO 0);
SIGNAL PPSMPR : std_logic_vector(7 DOWNTO 0);
SIGNAL PPS : std_logic_vector(4 DOWNTO 0);
SIGNAL MPR : std_logic_vector(3 DOWNTO 0);
SIGNAL MPD : std_logic_vector(3 DOWNTO 0);
SIGNAL BC : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_stateout~0_combout\ : std_logic;
SIGNAL \ALT_INV_done~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.s2~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_start <= start;
ww_reset <= reset;
ww_A <= A;
ww_B <= B;
done <= ww_done;
stateout <= ww_stateout;
segment <= ww_segment;
segment2 <= ww_segment2;
segment3 <= ww_segment3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\divided_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divided_clk~q\);

\state.s0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \state.s0~q\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_stateout~0_combout\ <= NOT \stateout~0_combout\;
\ALT_INV_done~0_combout\ <= NOT \done~0_combout\;
\ALT_INV_state.s2~q\ <= NOT \state.s2~q\;

-- Location: LCCOMB_X60_Y20_N10
\Add9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (clk_count(5) & (!\Add9~9\)) # (!clk_count(5) & ((\Add9~9\) # (GND)))
-- \Add9~11\ = CARRY((!\Add9~9\) # (!clk_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(5),
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X60_Y20_N12
\Add9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = (clk_count(6) & (\Add9~11\ $ (GND))) # (!clk_count(6) & (!\Add9~11\ & VCC))
-- \Add9~13\ = CARRY((clk_count(6) & !\Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(6),
	datad => VCC,
	cin => \Add9~11\,
	combout => \Add9~12_combout\,
	cout => \Add9~13\);

-- Location: LCCOMB_X60_Y20_N26
\Add9~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~26_combout\ = (clk_count(13) & (!\Add9~25\)) # (!clk_count(13) & ((\Add9~25\) # (GND)))
-- \Add9~27\ = CARRY((!\Add9~25\) # (!clk_count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(13),
	datad => VCC,
	cin => \Add9~25\,
	combout => \Add9~26_combout\,
	cout => \Add9~27\);

-- Location: LCCOMB_X60_Y19_N12
\Add9~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~44_combout\ = (clk_count(22) & (\Add9~43\ $ (GND))) # (!clk_count(22) & (!\Add9~43\ & VCC))
-- \Add9~45\ = CARRY((clk_count(22) & !\Add9~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(22),
	datad => VCC,
	cin => \Add9~43\,
	combout => \Add9~44_combout\,
	cout => \Add9~45\);

-- Location: LCCOMB_X60_Y19_N28
\Add9~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~60_combout\ = (clk_count(30) & (\Add9~59\ $ (GND))) # (!clk_count(30) & (!\Add9~59\ & VCC))
-- \Add9~61\ = CARRY((clk_count(30) & !\Add9~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(30),
	datad => VCC,
	cin => \Add9~59\,
	combout => \Add9~60_combout\,
	cout => \Add9~61\);

-- Location: LCCOMB_X60_Y19_N30
\Add9~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~62_combout\ = clk_count(31) $ (\Add9~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(31),
	cin => \Add9~61\,
	combout => \Add9~62_combout\);

-- Location: LCCOMB_X114_Y49_N24
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\state.s3~q\) # ((\done~reg0_q\ & ((\state.s2~q\) # (!\state.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datab => \done~reg0_q\,
	datac => \state.s2~q\,
	datad => \state.s3~q\,
	combout => \Selector16~0_combout\);

-- Location: FF_X110_Y49_N11
\product[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	d => \product[1]~feeder_combout\,
	ena => \product[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => product(1));

-- Location: LCCOMB_X112_Y52_N16
\BCD~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~16_combout\ = (product(6)) # (product(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => product(6),
	datac => product(5),
	combout => \BCD~16_combout\);

-- Location: FF_X60_Y19_N31
\clk_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(31));

-- Location: FF_X59_Y19_N11
\clk_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(22));

-- Location: LCCOMB_X59_Y19_N12
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (clk_count(16) & (clk_count(18) & (clk_count(19) & !clk_count(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(16),
	datab => clk_count(18),
	datac => clk_count(19),
	datad => clk_count(17),
	combout => \Equal1~3_combout\);

-- Location: FF_X59_Y20_N9
\clk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(13));

-- Location: FF_X60_Y20_N23
\clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clk_count~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(6));

-- Location: FF_X60_Y20_N11
\clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(5));

-- Location: LCCOMB_X59_Y20_N22
\Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (!clk_count(4) & (!clk_count(7) & (!clk_count(5) & clk_count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(4),
	datab => clk_count(7),
	datac => clk_count(5),
	datad => clk_count(6),
	combout => \Equal1~8_combout\);

-- Location: FF_X113_Y49_N23
\PPSMPR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	d => \PPSMPR[1]~feeder_combout\,
	ena => \PPSMPR[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PPSMPR(1));

-- Location: LCCOMB_X59_Y19_N10
\clk_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~1_combout\ = (!\Equal1~10_combout\ & \Add9~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~10_combout\,
	datac => \Add9~44_combout\,
	combout => \clk_count~1_combout\);

-- Location: LCCOMB_X59_Y20_N8
\clk_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~8_combout\ = (!\Equal1~10_combout\ & \Add9~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~10_combout\,
	datad => \Add9~26_combout\,
	combout => \clk_count~8_combout\);

-- Location: LCCOMB_X59_Y20_N6
\clk_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~11_combout\ = (\Add9~12_combout\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add9~12_combout\,
	datad => \Equal1~10_combout\,
	combout => \clk_count~11_combout\);

-- Location: FF_X112_Y49_N23
\MPD[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	asdata => \A[0]~input_o\,
	sload => VCC,
	ena => \MPD[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MPD(0));

-- Location: FF_X112_Y49_N29
\MPD[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	asdata => \A[3]~input_o\,
	sload => VCC,
	ena => \MPD[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MPD(3));

-- Location: FF_X112_Y49_N27
\MPD[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	asdata => \A[2]~input_o\,
	sload => VCC,
	ena => \MPD[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MPD(2));

-- Location: FF_X113_Y49_N7
C : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	d => \Selector15~1_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C~q\);

-- Location: LCCOMB_X113_Y49_N6
\Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\state.s1~q\ & ((PPS(4)) # ((\C~q\ & !\Selector15~0_combout\)))) # (!\state.s1~q\ & (((\C~q\ & !\Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => PPS(4),
	datac => \C~q\,
	datad => \Selector15~0_combout\,
	combout => \Selector15~1_combout\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X110_Y49_N10
\product[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \product[1]~feeder_combout\ = PPSMPR(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PPSMPR(1),
	combout => \product[1]~feeder_combout\);

-- Location: LCCOMB_X113_Y49_N22
\PPSMPR[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PPSMPR[1]~feeder_combout\ = MPR(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => MPR(2),
	combout => \PPSMPR[1]~feeder_combout\);

-- Location: IOOBUF_X107_Y73_N9
\done~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \done~reg0_q\,
	devoe => ww_devoe,
	o => \done~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\stateout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_done~0_combout\,
	devoe => ww_devoe,
	o => \stateout[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\stateout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_stateout~0_combout\,
	devoe => ww_devoe,
	o => \stateout[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\segment[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segment[0]$latch~combout\,
	devoe => ww_devoe,
	o => \segment[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\segment[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segment[1]$latch~combout\,
	devoe => ww_devoe,
	o => \segment[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\segment[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segment[2]$latch~combout\,
	devoe => ww_devoe,
	o => \segment[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\segment[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segment[3]$latch~combout\,
	devoe => ww_devoe,
	o => \segment[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\segment[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segment[4]$latch~combout\,
	devoe => ww_devoe,
	o => \segment[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\segment[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segment[5]$latch~combout\,
	devoe => ww_devoe,
	o => \segment[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\segment[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segment[6]$latch~combout\,
	devoe => ww_devoe,
	o => \segment[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\segment2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segment2[0]$latch~combout\,
	devoe => ww_devoe,
	o => \segment2[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\segment2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segment2[1]$latch~combout\,
	devoe => ww_devoe,
	o => \segment2[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\segment2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segment2[2]$latch~combout\,
	devoe => ww_devoe,
	o => \segment2[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\segment2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segment2[3]$latch~combout\,
	devoe => ww_devoe,
	o => \segment2[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\segment2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segment2[4]$latch~combout\,
	devoe => ww_devoe,
	o => \segment2[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\segment2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segment2[5]$latch~combout\,
	devoe => ww_devoe,
	o => \segment2[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\segment2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segment2[6]$latch~combout\,
	devoe => ww_devoe,
	o => \segment2[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\segment3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segment3[0]$latch~combout\,
	devoe => ww_devoe,
	o => \segment3[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\segment3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segment3[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\segment3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segment3[2]$latch~combout\,
	devoe => ww_devoe,
	o => \segment3[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\segment3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segment3[0]$latch~combout\,
	devoe => ww_devoe,
	o => \segment3[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\segment3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segment3[4]$latch~combout\,
	devoe => ww_devoe,
	o => \segment3[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\segment3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segment3[5]$latch~combout\,
	devoe => ww_devoe,
	o => \segment3[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\segment3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segment3[6]$latch~combout\,
	devoe => ww_devoe,
	o => \segment3[6]~output_o\);

-- Location: LCCOMB_X60_Y20_N0
\Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = clk_count(0) $ (VCC)
-- \Add9~1\ = CARRY(clk_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(0),
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X60_Y20_N2
\Add9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (clk_count(1) & (!\Add9~1\)) # (!clk_count(1) & ((\Add9~1\) # (GND)))
-- \Add9~3\ = CARRY((!\Add9~1\) # (!clk_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(1),
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: FF_X60_Y20_N3
\clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(1));

-- Location: LCCOMB_X59_Y20_N16
\clk_count~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~12_combout\ = (\Add9~0_combout\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add9~0_combout\,
	datad => \Equal1~10_combout\,
	combout => \clk_count~12_combout\);

-- Location: FF_X60_Y20_N27
\clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clk_count~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(0));

-- Location: LCCOMB_X60_Y20_N4
\Add9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (clk_count(2) & (\Add9~3\ $ (GND))) # (!clk_count(2) & (!\Add9~3\ & VCC))
-- \Add9~5\ = CARRY((clk_count(2) & !\Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(2),
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: FF_X60_Y20_N5
\clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(2));

-- Location: LCCOMB_X60_Y20_N6
\Add9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (clk_count(3) & (!\Add9~5\)) # (!clk_count(3) & ((\Add9~5\) # (GND)))
-- \Add9~7\ = CARRY((!\Add9~5\) # (!clk_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(3),
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: FF_X60_Y20_N7
\clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(3));

-- Location: LCCOMB_X59_Y20_N20
\Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (!clk_count(2) & (!clk_count(1) & (!clk_count(0) & !clk_count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(2),
	datab => clk_count(1),
	datac => clk_count(0),
	datad => clk_count(3),
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X60_Y20_N8
\Add9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = (clk_count(4) & (\Add9~7\ $ (GND))) # (!clk_count(4) & (!\Add9~7\ & VCC))
-- \Add9~9\ = CARRY((clk_count(4) & !\Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(4),
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: FF_X60_Y20_N9
\clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(4));

-- Location: LCCOMB_X60_Y20_N14
\Add9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = (clk_count(7) & (!\Add9~13\)) # (!clk_count(7) & ((\Add9~13\) # (GND)))
-- \Add9~15\ = CARRY((!\Add9~13\) # (!clk_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(7),
	datad => VCC,
	cin => \Add9~13\,
	combout => \Add9~14_combout\,
	cout => \Add9~15\);

-- Location: FF_X60_Y20_N15
\clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(7));

-- Location: LCCOMB_X60_Y20_N16
\Add9~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~16_combout\ = (clk_count(8) & (\Add9~15\ $ (GND))) # (!clk_count(8) & (!\Add9~15\ & VCC))
-- \Add9~17\ = CARRY((clk_count(8) & !\Add9~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(8),
	datad => VCC,
	cin => \Add9~15\,
	combout => \Add9~16_combout\,
	cout => \Add9~17\);

-- Location: FF_X60_Y20_N17
\clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(8));

-- Location: LCCOMB_X60_Y20_N18
\Add9~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~18_combout\ = (clk_count(9) & (!\Add9~17\)) # (!clk_count(9) & ((\Add9~17\) # (GND)))
-- \Add9~19\ = CARRY((!\Add9~17\) # (!clk_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(9),
	datad => VCC,
	cin => \Add9~17\,
	combout => \Add9~18_combout\,
	cout => \Add9~19\);

-- Location: FF_X60_Y20_N19
\clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(9));

-- Location: LCCOMB_X60_Y20_N20
\Add9~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~20_combout\ = (clk_count(10) & (\Add9~19\ $ (GND))) # (!clk_count(10) & (!\Add9~19\ & VCC))
-- \Add9~21\ = CARRY((clk_count(10) & !\Add9~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(10),
	datad => VCC,
	cin => \Add9~19\,
	combout => \Add9~20_combout\,
	cout => \Add9~21\);

-- Location: FF_X60_Y20_N21
\clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(10));

-- Location: LCCOMB_X60_Y20_N22
\Add9~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~22_combout\ = (clk_count(11) & (!\Add9~21\)) # (!clk_count(11) & ((\Add9~21\) # (GND)))
-- \Add9~23\ = CARRY((!\Add9~21\) # (!clk_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(11),
	datad => VCC,
	cin => \Add9~21\,
	combout => \Add9~22_combout\,
	cout => \Add9~23\);

-- Location: LCCOMB_X60_Y20_N24
\Add9~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~24_combout\ = (clk_count(12) & (\Add9~23\ $ (GND))) # (!clk_count(12) & (!\Add9~23\ & VCC))
-- \Add9~25\ = CARRY((clk_count(12) & !\Add9~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(12),
	datad => VCC,
	cin => \Add9~23\,
	combout => \Add9~24_combout\,
	cout => \Add9~25\);

-- Location: LCCOMB_X59_Y20_N10
\clk_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~9_combout\ = (!\Equal1~10_combout\ & \Add9~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~10_combout\,
	datad => \Add9~24_combout\,
	combout => \clk_count~9_combout\);

-- Location: FF_X59_Y20_N11
\clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(12));

-- Location: LCCOMB_X60_Y20_N28
\Add9~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~28_combout\ = (clk_count(14) & (\Add9~27\ $ (GND))) # (!clk_count(14) & (!\Add9~27\ & VCC))
-- \Add9~29\ = CARRY((clk_count(14) & !\Add9~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(14),
	datad => VCC,
	cin => \Add9~27\,
	combout => \Add9~28_combout\,
	cout => \Add9~29\);

-- Location: LCCOMB_X59_Y20_N28
\clk_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~7_combout\ = (!\Equal1~10_combout\ & \Add9~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~10_combout\,
	datad => \Add9~28_combout\,
	combout => \clk_count~7_combout\);

-- Location: FF_X59_Y20_N29
\clk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(14));

-- Location: LCCOMB_X60_Y20_N30
\Add9~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~30_combout\ = (clk_count(15) & (!\Add9~29\)) # (!clk_count(15) & ((\Add9~29\) # (GND)))
-- \Add9~31\ = CARRY((!\Add9~29\) # (!clk_count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(15),
	datad => VCC,
	cin => \Add9~29\,
	combout => \Add9~30_combout\,
	cout => \Add9~31\);

-- Location: FF_X60_Y20_N31
\clk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(15));

-- Location: LCCOMB_X59_Y20_N26
\Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!clk_count(15) & clk_count(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => clk_count(15),
	datad => clk_count(14),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X59_Y20_N14
\clk_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~10_combout\ = (!\Equal1~10_combout\ & \Add9~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~10_combout\,
	datad => \Add9~22_combout\,
	combout => \clk_count~10_combout\);

-- Location: FF_X59_Y20_N15
\clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(11));

-- Location: LCCOMB_X59_Y20_N24
\Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!clk_count(10) & (!clk_count(9) & (clk_count(11) & !clk_count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(10),
	datab => clk_count(9),
	datac => clk_count(11),
	datad => clk_count(8),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X59_Y20_N4
\Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (clk_count(13) & (clk_count(12) & (\Equal1~5_combout\ & \Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(13),
	datab => clk_count(12),
	datac => \Equal1~5_combout\,
	datad => \Equal1~6_combout\,
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X60_Y19_N0
\Add9~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~32_combout\ = (clk_count(16) & (\Add9~31\ $ (GND))) # (!clk_count(16) & (!\Add9~31\ & VCC))
-- \Add9~33\ = CARRY((clk_count(16) & !\Add9~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(16),
	datad => VCC,
	cin => \Add9~31\,
	combout => \Add9~32_combout\,
	cout => \Add9~33\);

-- Location: LCCOMB_X59_Y19_N22
\clk_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~6_combout\ = (\Add9~32_combout\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~32_combout\,
	datac => \Equal1~10_combout\,
	combout => \clk_count~6_combout\);

-- Location: FF_X59_Y19_N23
\clk_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(16));

-- Location: LCCOMB_X60_Y19_N2
\Add9~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~34_combout\ = (clk_count(17) & (!\Add9~33\)) # (!clk_count(17) & ((\Add9~33\) # (GND)))
-- \Add9~35\ = CARRY((!\Add9~33\) # (!clk_count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(17),
	datad => VCC,
	cin => \Add9~33\,
	combout => \Add9~34_combout\,
	cout => \Add9~35\);

-- Location: FF_X60_Y19_N3
\clk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(17));

-- Location: LCCOMB_X60_Y19_N4
\Add9~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~36_combout\ = (clk_count(18) & (\Add9~35\ $ (GND))) # (!clk_count(18) & (!\Add9~35\ & VCC))
-- \Add9~37\ = CARRY((clk_count(18) & !\Add9~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(18),
	datad => VCC,
	cin => \Add9~35\,
	combout => \Add9~36_combout\,
	cout => \Add9~37\);

-- Location: LCCOMB_X59_Y19_N28
\clk_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~5_combout\ = (!\Equal1~10_combout\ & \Add9~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~10_combout\,
	datad => \Add9~36_combout\,
	combout => \clk_count~5_combout\);

-- Location: FF_X59_Y19_N29
\clk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(18));

-- Location: LCCOMB_X60_Y19_N6
\Add9~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~38_combout\ = (clk_count(19) & (!\Add9~37\)) # (!clk_count(19) & ((\Add9~37\) # (GND)))
-- \Add9~39\ = CARRY((!\Add9~37\) # (!clk_count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(19),
	datad => VCC,
	cin => \Add9~37\,
	combout => \Add9~38_combout\,
	cout => \Add9~39\);

-- Location: LCCOMB_X59_Y19_N30
\clk_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~4_combout\ = (!\Equal1~10_combout\ & \Add9~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~10_combout\,
	datad => \Add9~38_combout\,
	combout => \clk_count~4_combout\);

-- Location: FF_X59_Y19_N31
\clk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(19));

-- Location: LCCOMB_X60_Y19_N8
\Add9~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~40_combout\ = (clk_count(20) & (\Add9~39\ $ (GND))) # (!clk_count(20) & (!\Add9~39\ & VCC))
-- \Add9~41\ = CARRY((clk_count(20) & !\Add9~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(20),
	datad => VCC,
	cin => \Add9~39\,
	combout => \Add9~40_combout\,
	cout => \Add9~41\);

-- Location: LCCOMB_X59_Y19_N18
\clk_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~3_combout\ = (!\Equal1~10_combout\ & \Add9~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~10_combout\,
	datac => \Add9~40_combout\,
	combout => \clk_count~3_combout\);

-- Location: FF_X59_Y19_N19
\clk_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(20));

-- Location: LCCOMB_X60_Y19_N10
\Add9~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~42_combout\ = (clk_count(21) & (!\Add9~41\)) # (!clk_count(21) & ((\Add9~41\) # (GND)))
-- \Add9~43\ = CARRY((!\Add9~41\) # (!clk_count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(21),
	datad => VCC,
	cin => \Add9~41\,
	combout => \Add9~42_combout\,
	cout => \Add9~43\);

-- Location: LCCOMB_X60_Y19_N14
\Add9~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~46_combout\ = (clk_count(23) & (!\Add9~45\)) # (!clk_count(23) & ((\Add9~45\) # (GND)))
-- \Add9~47\ = CARRY((!\Add9~45\) # (!clk_count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(23),
	datad => VCC,
	cin => \Add9~45\,
	combout => \Add9~46_combout\,
	cout => \Add9~47\);

-- Location: FF_X60_Y19_N15
\clk_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(23));

-- Location: LCCOMB_X60_Y19_N16
\Add9~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~48_combout\ = (clk_count(24) & (\Add9~47\ $ (GND))) # (!clk_count(24) & (!\Add9~47\ & VCC))
-- \Add9~49\ = CARRY((clk_count(24) & !\Add9~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(24),
	datad => VCC,
	cin => \Add9~47\,
	combout => \Add9~48_combout\,
	cout => \Add9~49\);

-- Location: LCCOMB_X59_Y19_N6
\clk_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~0_combout\ = (!\Equal1~10_combout\ & \Add9~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~10_combout\,
	datad => \Add9~48_combout\,
	combout => \clk_count~0_combout\);

-- Location: FF_X59_Y19_N7
\clk_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(24));

-- Location: LCCOMB_X60_Y19_N18
\Add9~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~50_combout\ = (clk_count(25) & (!\Add9~49\)) # (!clk_count(25) & ((\Add9~49\) # (GND)))
-- \Add9~51\ = CARRY((!\Add9~49\) # (!clk_count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(25),
	datad => VCC,
	cin => \Add9~49\,
	combout => \Add9~50_combout\,
	cout => \Add9~51\);

-- Location: FF_X60_Y19_N19
\clk_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(25));

-- Location: LCCOMB_X60_Y19_N20
\Add9~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~52_combout\ = (clk_count(26) & (\Add9~51\ $ (GND))) # (!clk_count(26) & (!\Add9~51\ & VCC))
-- \Add9~53\ = CARRY((clk_count(26) & !\Add9~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(26),
	datad => VCC,
	cin => \Add9~51\,
	combout => \Add9~52_combout\,
	cout => \Add9~53\);

-- Location: FF_X60_Y19_N21
\clk_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(26));

-- Location: LCCOMB_X60_Y19_N22
\Add9~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~54_combout\ = (clk_count(27) & (!\Add9~53\)) # (!clk_count(27) & ((\Add9~53\) # (GND)))
-- \Add9~55\ = CARRY((!\Add9~53\) # (!clk_count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(27),
	datad => VCC,
	cin => \Add9~53\,
	combout => \Add9~54_combout\,
	cout => \Add9~55\);

-- Location: LCCOMB_X60_Y19_N24
\Add9~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~56_combout\ = (clk_count(28) & (\Add9~55\ $ (GND))) # (!clk_count(28) & (!\Add9~55\ & VCC))
-- \Add9~57\ = CARRY((clk_count(28) & !\Add9~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(28),
	datad => VCC,
	cin => \Add9~55\,
	combout => \Add9~56_combout\,
	cout => \Add9~57\);

-- Location: FF_X60_Y19_N25
\clk_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(28));

-- Location: LCCOMB_X60_Y19_N26
\Add9~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~58_combout\ = (clk_count(29) & (!\Add9~57\)) # (!clk_count(29) & ((\Add9~57\) # (GND)))
-- \Add9~59\ = CARRY((!\Add9~57\) # (!clk_count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(29),
	datad => VCC,
	cin => \Add9~57\,
	combout => \Add9~58_combout\,
	cout => \Add9~59\);

-- Location: FF_X60_Y19_N27
\clk_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(29));

-- Location: FF_X60_Y19_N29
\clk_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(30));

-- Location: LCCOMB_X59_Y19_N24
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!clk_count(31) & (!clk_count(29) & (!clk_count(28) & !clk_count(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(31),
	datab => clk_count(29),
	datac => clk_count(28),
	datad => clk_count(30),
	combout => \Equal1~0_combout\);

-- Location: FF_X60_Y19_N23
\clk_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(27));

-- Location: LCCOMB_X59_Y19_N4
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (clk_count(24) & (!clk_count(25) & (!clk_count(26) & !clk_count(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(24),
	datab => clk_count(25),
	datac => clk_count(26),
	datad => clk_count(27),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X59_Y19_N8
\clk_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~2_combout\ = (!\Equal1~10_combout\ & \Add9~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~10_combout\,
	datac => \Add9~42_combout\,
	combout => \clk_count~2_combout\);

-- Location: FF_X59_Y19_N9
\clk_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(21));

-- Location: LCCOMB_X59_Y19_N20
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (clk_count(22) & (clk_count(21) & (!clk_count(23) & clk_count(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(22),
	datab => clk_count(21),
	datac => clk_count(23),
	datad => clk_count(20),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X59_Y19_N14
\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~3_combout\ & (\Equal1~0_combout\ & (\Equal1~1_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X59_Y20_N18
\Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (\Equal1~8_combout\ & (\Equal1~9_combout\ & (\Equal1~7_combout\ & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~8_combout\,
	datab => \Equal1~9_combout\,
	datac => \Equal1~7_combout\,
	datad => \Equal1~4_combout\,
	combout => \Equal1~10_combout\);

-- Location: LCCOMB_X59_Y20_N12
\divided_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divided_clk~0_combout\ = \divided_clk~q\ $ (\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divided_clk~q\,
	datad => \Equal1~10_combout\,
	combout => \divided_clk~0_combout\);

-- Location: LCCOMB_X59_Y20_N30
\divided_clk~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \divided_clk~feeder_combout\ = \divided_clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divided_clk~0_combout\,
	combout => \divided_clk~feeder_combout\);

-- Location: FF_X59_Y20_N31
divided_clk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divided_clk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divided_clk~q\);

-- Location: CLKCTRL_G16
\divided_clk~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \divided_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \divided_clk~clkctrl_outclk\);

-- Location: LCCOMB_X114_Y49_N8
\done~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \done~reg0feeder_combout\ = \Selector16~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	combout => \done~reg0feeder_combout\);

-- Location: IOIBUF_X115_Y53_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X114_Y49_N9
\done~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	d => \done~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \done~reg0_q\);

-- Location: IOIBUF_X115_Y45_N15
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X111_Y49_N2
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (!BC(0)) # (!\state.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s2~q\,
	datac => BC(0),
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X111_Y49_N28
\BC[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BC[0]~0_combout\ = (\Selector15~0_combout\ & (!\reset~input_o\ & !\state.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~0_combout\,
	datab => \reset~input_o\,
	datad => \state.s1~q\,
	combout => \BC[0]~0_combout\);

-- Location: FF_X111_Y49_N3
\BC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	d => \Selector6~0_combout\,
	ena => \BC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BC(0));

-- Location: LCCOMB_X111_Y49_N24
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = BC(1) $ (!BC(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => BC(1),
	datad => BC(0),
	combout => \Add1~0_combout\);

-- Location: FF_X111_Y49_N25
\BC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	d => \Add1~0_combout\,
	asdata => VCC,
	sload => \ALT_INV_state.s2~q\,
	ena => \BC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BC(1));

-- Location: LCCOMB_X111_Y49_N20
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (!BC(1) & (\state.s2~q\ & !BC(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => BC(1),
	datac => \state.s2~q\,
	datad => BC(0),
	combout => \Selector14~0_combout\);

-- Location: FF_X111_Y49_N21
\state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	d => \Selector14~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s3~q\);

-- Location: LCCOMB_X111_Y49_N6
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (!\state.s3~q\ & ((\start~input_o\) # (\state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datac => \state.s0~q\,
	datad => \state.s3~q\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X111_Y49_N30
\state.s0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.s0~feeder_combout\ = \Selector15~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector15~0_combout\,
	combout => \state.s0~feeder_combout\);

-- Location: FF_X111_Y49_N31
\state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	d => \state.s0~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s0~q\);

-- Location: LCCOMB_X111_Y49_N10
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\state.s2~q\ & ((BC(1)) # (BC(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => BC(1),
	datac => \state.s2~q\,
	datad => BC(0),
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X111_Y49_N18
\Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\Selector12~0_combout\) # ((!\state.s0~q\ & \start~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s0~q\,
	datac => \start~input_o\,
	datad => \Selector12~0_combout\,
	combout => \Selector12~1_combout\);

-- Location: FF_X111_Y49_N19
\state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	d => \Selector12~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s1~q\);

-- Location: LCCOMB_X114_Y49_N22
\state.s2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.s2~feeder_combout\ = \state.s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s1~q\,
	combout => \state.s2~feeder_combout\);

-- Location: FF_X114_Y49_N23
\state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	d => \state.s2~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s2~q\);

-- Location: LCCOMB_X111_Y49_N4
\done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \done~0_combout\ = (\state.s2~q\) # (!\state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s2~q\,
	datac => \state.s0~q\,
	combout => \done~0_combout\);

-- Location: LCCOMB_X111_Y49_N22
\stateout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stateout~0_combout\ = (\state.s1~q\) # (!\state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s0~q\,
	datad => \state.s1~q\,
	combout => \stateout~0_combout\);

-- Location: IOIBUF_X115_Y15_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X112_Y49_N22
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (MPD(0) & (PPS(0) $ (VCC))) # (!MPD(0) & (PPS(0) & VCC))
-- \Add0~1\ = CARRY((MPD(0) & PPS(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MPD(0),
	datab => PPS(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X112_Y49_N20
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (PPS(1) & ((\state.s2~q\) # ((\state.s1~q\ & \Add0~0_combout\)))) # (!PPS(1) & (\state.s1~q\ & ((\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PPS(1),
	datab => \state.s1~q\,
	datac => \state.s2~q\,
	datad => \Add0~0_combout\,
	combout => \Selector4~0_combout\);

-- Location: IOIBUF_X115_Y18_N8
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X111_Y49_N8
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\state.s2~q\ & (MPR(1))) # (!\state.s2~q\ & ((\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MPR(1),
	datac => \state.s2~q\,
	datad => \B[0]~input_o\,
	combout => \Selector10~0_combout\);

-- Location: FF_X111_Y49_N9
\MPR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	d => \Selector10~0_combout\,
	ena => \BC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MPR(0));

-- Location: LCCOMB_X112_Y49_N6
\PPS[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PPS[3]~0_combout\ = (!\reset~input_o\ & (\Selector15~0_combout\ & ((MPR(0)) # (!\state.s1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \state.s1~q\,
	datac => \Selector15~0_combout\,
	datad => MPR(0),
	combout => \PPS[3]~0_combout\);

-- Location: FF_X112_Y49_N21
\PPS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	d => \Selector4~0_combout\,
	ena => \PPS[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PPS(0));

-- Location: LCCOMB_X111_Y49_N14
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state.s2~q\ & ((PPS(0)))) # (!\state.s2~q\ & (\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \state.s2~q\,
	datad => PPS(0),
	combout => \Selector7~0_combout\);

-- Location: FF_X111_Y49_N15
\MPR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	d => \Selector7~0_combout\,
	ena => \BC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MPR(3));

-- Location: IOIBUF_X115_Y10_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X111_Y49_N0
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\state.s2~q\ & (MPR(3))) # (!\state.s2~q\ & ((\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => MPR(3),
	datac => \state.s2~q\,
	datad => \B[2]~input_o\,
	combout => \Selector8~0_combout\);

-- Location: FF_X111_Y49_N1
\MPR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	d => \Selector8~0_combout\,
	ena => \BC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MPR(2));

-- Location: IOIBUF_X115_Y11_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X111_Y49_N26
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\state.s2~q\ & (MPR(2))) # (!\state.s2~q\ & ((\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => MPR(2),
	datac => \state.s2~q\,
	datad => \B[1]~input_o\,
	combout => \Selector9~0_combout\);

-- Location: FF_X111_Y49_N27
\MPR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	d => \Selector9~0_combout\,
	ena => \BC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MPR(1));

-- Location: LCCOMB_X113_Y49_N24
\PPSMPR[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PPSMPR[0]~feeder_combout\ = MPR(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => MPR(1),
	combout => \PPSMPR[0]~feeder_combout\);

-- Location: LCCOMB_X113_Y49_N4
\PPSMPR[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PPSMPR[3]~0_combout\ = (!\reset~input_o\ & \state.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \state.s2~q\,
	combout => \PPSMPR[3]~0_combout\);

-- Location: FF_X113_Y49_N25
\PPSMPR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	d => \PPSMPR[0]~feeder_combout\,
	ena => \PPSMPR[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PPSMPR(0));

-- Location: LCCOMB_X110_Y49_N8
\product[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \product[0]~feeder_combout\ = PPSMPR(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PPSMPR(0),
	combout => \product[0]~feeder_combout\);

-- Location: LCCOMB_X111_Y49_N12
\product[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \product[3]~0_combout\ = (!\reset~input_o\ & \state.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \state.s3~q\,
	combout => \product[3]~0_combout\);

-- Location: FF_X110_Y49_N9
\product[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	d => \product[0]~feeder_combout\,
	ena => \product[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => product(0));

-- Location: LCCOMB_X113_Y49_N20
\PPSMPR[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PPSMPR[2]~feeder_combout\ = MPR(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => MPR(3),
	combout => \PPSMPR[2]~feeder_combout\);

-- Location: FF_X113_Y49_N21
\PPSMPR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	d => \PPSMPR[2]~feeder_combout\,
	ena => \PPSMPR[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PPSMPR(2));

-- Location: FF_X112_Y52_N23
\product[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	asdata => PPSMPR(2),
	sload => VCC,
	ena => \product[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => product(2));

-- Location: LCCOMB_X113_Y49_N30
\PPSMPR[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PPSMPR[3]~feeder_combout\ = PPS(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PPS(0),
	combout => \PPSMPR[3]~feeder_combout\);

-- Location: FF_X113_Y49_N31
\PPSMPR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	d => \PPSMPR[3]~feeder_combout\,
	ena => \PPSMPR[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PPSMPR(3));

-- Location: FF_X112_Y52_N15
\product[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	asdata => PPSMPR(3),
	sload => VCC,
	ena => \product[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => product(3));

-- Location: IOIBUF_X115_Y14_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X111_Y49_N16
\MPD[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MPD[3]~0_combout\ = (\start~input_o\ & (!\state.s0~q\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datac => \state.s0~q\,
	datad => \reset~input_o\,
	combout => \MPD[3]~0_combout\);

-- Location: FF_X112_Y49_N25
\MPD[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	asdata => \A[1]~input_o\,
	sload => VCC,
	ena => \MPD[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MPD(1));

-- Location: LCCOMB_X112_Y49_N24
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (PPS(1) & ((MPD(1) & (\Add0~1\ & VCC)) # (!MPD(1) & (!\Add0~1\)))) # (!PPS(1) & ((MPD(1) & (!\Add0~1\)) # (!MPD(1) & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((PPS(1) & (!MPD(1) & !\Add0~1\)) # (!PPS(1) & ((!\Add0~1\) # (!MPD(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PPS(1),
	datab => MPD(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X112_Y49_N26
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((MPD(2) $ (PPS(2) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((MPD(2) & ((PPS(2)) # (!\Add0~3\))) # (!MPD(2) & (PPS(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => MPD(2),
	datab => PPS(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X112_Y49_N28
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (MPD(3) & ((PPS(3) & (\Add0~5\ & VCC)) # (!PPS(3) & (!\Add0~5\)))) # (!MPD(3) & ((PPS(3) & (!\Add0~5\)) # (!PPS(3) & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((MPD(3) & (!PPS(3) & !\Add0~5\)) # (!MPD(3) & ((!\Add0~5\) # (!PPS(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => MPD(3),
	datab => PPS(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X112_Y49_N30
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \Add0~7\ $ (!PPS(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => PPS(4),
	cin => \Add0~7\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X112_Y49_N18
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\C~q\ & ((\state.s2~q\) # ((\Add0~8_combout\ & \state.s1~q\)))) # (!\C~q\ & (((\Add0~8_combout\ & \state.s1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~q\,
	datab => \state.s2~q\,
	datac => \Add0~8_combout\,
	datad => \state.s1~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X112_Y49_N19
\PPS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	d => \Selector0~0_combout\,
	ena => \PPS[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PPS(4));

-- Location: LCCOMB_X112_Y49_N14
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.s1~q\ & ((\Add0~6_combout\) # ((PPS(4) & \state.s2~q\)))) # (!\state.s1~q\ & (PPS(4) & (\state.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => PPS(4),
	datac => \state.s2~q\,
	datad => \Add0~6_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X112_Y49_N15
\PPS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	d => \Selector1~0_combout\,
	ena => \PPS[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PPS(3));

-- Location: LCCOMB_X112_Y49_N16
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.s1~q\ & ((\Add0~4_combout\) # ((PPS(3) & \state.s2~q\)))) # (!\state.s1~q\ & (PPS(3) & (\state.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => PPS(3),
	datac => \state.s2~q\,
	datad => \Add0~4_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X112_Y49_N17
\PPS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	d => \Selector2~0_combout\,
	ena => \PPS[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PPS(2));

-- Location: LCCOMB_X113_Y49_N18
\PPSMPR[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PPSMPR[5]~feeder_combout\ = PPS(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => PPS(2),
	combout => \PPSMPR[5]~feeder_combout\);

-- Location: FF_X113_Y49_N19
\PPSMPR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	d => \PPSMPR[5]~feeder_combout\,
	ena => \PPSMPR[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PPSMPR(5));

-- Location: FF_X112_Y52_N17
\product[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	asdata => PPSMPR(5),
	sload => VCC,
	ena => \product[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => product(5));

-- Location: LCCOMB_X112_Y49_N12
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.s1~q\ & ((\Add0~2_combout\) # ((\state.s2~q\ & PPS(2))))) # (!\state.s1~q\ & (\state.s2~q\ & ((PPS(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \state.s2~q\,
	datac => \Add0~2_combout\,
	datad => PPS(2),
	combout => \Selector3~0_combout\);

-- Location: FF_X112_Y49_N13
\PPS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	d => \Selector3~0_combout\,
	ena => \PPS[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PPS(1));

-- Location: LCCOMB_X113_Y49_N10
\PPSMPR[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PPSMPR[4]~feeder_combout\ = PPS(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PPS(1),
	combout => \PPSMPR[4]~feeder_combout\);

-- Location: FF_X113_Y49_N11
\PPSMPR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	d => \PPSMPR[4]~feeder_combout\,
	ena => \PPSMPR[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PPSMPR(4));

-- Location: FF_X112_Y52_N5
\product[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	asdata => PPSMPR(4),
	sload => VCC,
	ena => \product[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => product(4));

-- Location: LCCOMB_X113_Y49_N12
\PPSMPR[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PPSMPR[7]~feeder_combout\ = PPS(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PPS(4),
	combout => \PPSMPR[7]~feeder_combout\);

-- Location: FF_X113_Y49_N13
\PPSMPR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	d => \PPSMPR[7]~feeder_combout\,
	ena => \PPSMPR[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PPSMPR(7));

-- Location: FF_X112_Y52_N19
\product[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	asdata => PPSMPR(7),
	sload => VCC,
	ena => \product[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => product(7));

-- Location: LCCOMB_X112_Y52_N8
\BCD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~0_combout\ = (product(6) & ((product(5) & (!product(4) & !product(7))) # (!product(5) & (product(4) & product(7))))) # (!product(6) & (product(4) $ (((!product(5) & product(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => product(6),
	datab => product(5),
	datac => product(4),
	datad => product(7),
	combout => \BCD~0_combout\);

-- Location: LCCOMB_X112_Y52_N0
\BCD~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~2_combout\ = (product(5) & (!product(7) & ((product(4)) # (!product(6))))) # (!product(5) & (product(7) & ((product(6)) # (!product(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => product(6),
	datab => product(5),
	datac => product(4),
	datad => product(7),
	combout => \BCD~2_combout\);

-- Location: LCCOMB_X112_Y52_N12
\BCD~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~5_combout\ = (\BCD~1_combout\ & (product(3) $ ((!\BCD~0_combout\)))) # (!\BCD~1_combout\ & (\BCD~0_combout\ & ((product(3)) # (!\BCD~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~1_combout\,
	datab => product(3),
	datac => \BCD~0_combout\,
	datad => \BCD~2_combout\,
	combout => \BCD~5_combout\);

-- Location: LCCOMB_X112_Y52_N28
\BCD~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~3_combout\ = (\BCD~1_combout\ & (!product(3))) # (!\BCD~1_combout\ & ((product(3) & ((!\BCD~2_combout\))) # (!product(3) & (\BCD~0_combout\ & \BCD~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~1_combout\,
	datab => product(3),
	datac => \BCD~0_combout\,
	datad => \BCD~2_combout\,
	combout => \BCD~3_combout\);

-- Location: LCCOMB_X111_Y52_N2
\BCD~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~7_combout\ = (\BCD~5_combout\ & (((!product(2) & !\BCD~3_combout\)))) # (!\BCD~5_combout\ & (\BCD~4_combout\ & ((product(2)) # (\BCD~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~4_combout\,
	datab => product(2),
	datac => \BCD~5_combout\,
	datad => \BCD~3_combout\,
	combout => \BCD~7_combout\);

-- Location: LCCOMB_X111_Y52_N8
\BCD~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~6_combout\ = (\BCD~4_combout\ & (!product(2))) # (!\BCD~4_combout\ & ((product(2) & (!\BCD~5_combout\)) # (!product(2) & (\BCD~5_combout\ & \BCD~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~4_combout\,
	datab => product(2),
	datac => \BCD~5_combout\,
	datad => \BCD~3_combout\,
	combout => \BCD~6_combout\);

-- Location: LCCOMB_X111_Y52_N24
\BCD~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~8_combout\ = (\BCD~4_combout\ & (product(2) $ (((!\BCD~3_combout\))))) # (!\BCD~4_combout\ & (\BCD~3_combout\ & ((product(2)) # (!\BCD~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~4_combout\,
	datab => product(2),
	datac => \BCD~5_combout\,
	datad => \BCD~3_combout\,
	combout => \BCD~8_combout\);

-- Location: LCCOMB_X111_Y52_N22
\BCD~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~11_combout\ = (\BCD~8_combout\ & (!product(1) & ((!\BCD~6_combout\)))) # (!\BCD~8_combout\ & (\BCD~7_combout\ & ((product(1)) # (\BCD~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => product(1),
	datab => \BCD~7_combout\,
	datac => \BCD~6_combout\,
	datad => \BCD~8_combout\,
	combout => \BCD~11_combout\);

-- Location: LCCOMB_X111_Y52_N20
\BCD~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~10_combout\ = (product(1) & (((\BCD~6_combout\)))) # (!product(1) & ((\BCD~7_combout\ & (!\BCD~6_combout\)) # (!\BCD~7_combout\ & (\BCD~6_combout\ & !\BCD~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => product(1),
	datab => \BCD~7_combout\,
	datac => \BCD~6_combout\,
	datad => \BCD~8_combout\,
	combout => \BCD~10_combout\);

-- Location: LCCOMB_X111_Y52_N12
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\BCD~9_combout\ & (((\BCD~11_combout\)))) # (!\BCD~9_combout\ & (\BCD~10_combout\ $ (((product(0) & !\BCD~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~9_combout\,
	datab => product(0),
	datac => \BCD~11_combout\,
	datad => \BCD~10_combout\,
	combout => \Mux6~0_combout\);

-- Location: CLKCTRL_G9
\state.s0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \state.s0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \state.s0~clkctrl_outclk\);

-- Location: LCCOMB_X110_Y52_N16
\segment[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment[0]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\segment[0]$latch~combout\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((\Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment[0]$latch~combout\,
	datac => \Mux6~0_combout\,
	datad => \state.s0~clkctrl_outclk\,
	combout => \segment[0]$latch~combout\);

-- Location: LCCOMB_X111_Y52_N30
\BCD~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~9_combout\ = (product(1) & (!\BCD~7_combout\ & ((!\BCD~8_combout\)))) # (!product(1) & ((\BCD~7_combout\) # ((\BCD~6_combout\ & \BCD~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => product(1),
	datab => \BCD~7_combout\,
	datac => \BCD~6_combout\,
	datad => \BCD~8_combout\,
	combout => \BCD~9_combout\);

-- Location: LCCOMB_X111_Y52_N18
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\BCD~10_combout\ & ((\BCD~11_combout\) # (product(0) $ (\BCD~9_combout\)))) # (!\BCD~10_combout\ & (((\BCD~11_combout\ & \BCD~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => product(0),
	datab => \BCD~10_combout\,
	datac => \BCD~11_combout\,
	datad => \BCD~9_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X111_Y52_N4
\segment[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment[1]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & ((\segment[1]$latch~combout\))) # (!GLOBAL(\state.s0~clkctrl_outclk\) & (\Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux5~0_combout\,
	datac => \segment[1]$latch~combout\,
	datad => \state.s0~clkctrl_outclk\,
	combout => \segment[1]$latch~combout\);

-- Location: LCCOMB_X111_Y52_N28
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\BCD~10_combout\ & (((\BCD~11_combout\)))) # (!\BCD~10_combout\ & (\BCD~9_combout\ & ((\BCD~11_combout\) # (!product(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => product(0),
	datab => \BCD~10_combout\,
	datac => \BCD~11_combout\,
	datad => \BCD~9_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X111_Y52_N14
\segment[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment[2]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & ((\segment[2]$latch~combout\))) # (!GLOBAL(\state.s0~clkctrl_outclk\) & (\Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux4~0_combout\,
	datac => \segment[2]$latch~combout\,
	datad => \state.s0~clkctrl_outclk\,
	combout => \segment[2]$latch~combout\);

-- Location: LCCOMB_X111_Y52_N6
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (product(0) & ((\BCD~11_combout\) # (\BCD~10_combout\ $ (!\BCD~9_combout\)))) # (!product(0) & ((\BCD~9_combout\ & ((\BCD~11_combout\))) # (!\BCD~9_combout\ & (\BCD~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => product(0),
	datab => \BCD~10_combout\,
	datac => \BCD~11_combout\,
	datad => \BCD~9_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X111_Y52_N16
\segment[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment[3]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & ((\segment[3]$latch~combout\))) # (!GLOBAL(\state.s0~clkctrl_outclk\) & (\Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \segment[3]$latch~combout\,
	datad => \state.s0~clkctrl_outclk\,
	combout => \segment[3]$latch~combout\);

-- Location: LCCOMB_X110_Y52_N4
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (product(0)) # ((\BCD~9_combout\ & ((\BCD~11_combout\))) # (!\BCD~9_combout\ & (\BCD~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~9_combout\,
	datab => product(0),
	datac => \BCD~10_combout\,
	datad => \BCD~11_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X110_Y52_N14
\segment[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment[4]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\segment[4]$latch~combout\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((\Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment[4]$latch~combout\,
	datac => \Mux2~0_combout\,
	datad => \state.s0~clkctrl_outclk\,
	combout => \segment[4]$latch~combout\);

-- Location: LCCOMB_X110_Y52_N22
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\BCD~10_combout\ & ((\BCD~11_combout\) # ((product(0) & \BCD~9_combout\)))) # (!\BCD~10_combout\ & ((\BCD~9_combout\) # ((product(0) & !\BCD~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~10_combout\,
	datab => product(0),
	datac => \BCD~9_combout\,
	datad => \BCD~11_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X110_Y52_N24
\segment[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment[5]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\segment[5]$latch~combout\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((\Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment[5]$latch~combout\,
	datac => \Mux1~0_combout\,
	datad => \state.s0~clkctrl_outclk\,
	combout => \segment[5]$latch~combout\);

-- Location: LCCOMB_X111_Y52_N0
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\BCD~11_combout\) # ((\BCD~10_combout\ & ((!\BCD~9_combout\) # (!product(0)))) # (!\BCD~10_combout\ & ((\BCD~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => product(0),
	datab => \BCD~10_combout\,
	datac => \BCD~11_combout\,
	datad => \BCD~9_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X111_Y52_N10
\segment[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment[6]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\segment[6]$latch~combout\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((!\Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment[6]$latch~combout\,
	datab => \Mux0~0_combout\,
	datad => \state.s0~clkctrl_outclk\,
	combout => \segment[6]$latch~combout\);

-- Location: LCCOMB_X112_Y52_N4
\BCD~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~15_combout\ = (product(6) & ((product(5) & ((product(4)) # (!product(7)))) # (!product(5) & (product(4) & !product(7))))) # (!product(6) & (!product(5) & ((product(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => product(6),
	datab => product(5),
	datac => product(4),
	datad => product(7),
	combout => \BCD~15_combout\);

-- Location: LCCOMB_X112_Y52_N10
\BCD~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~1_combout\ = (product(6) & (!product(4) & (product(5) $ (!product(7))))) # (!product(6) & (!product(5) & (product(4) & product(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => product(6),
	datab => product(5),
	datac => product(4),
	datad => product(7),
	combout => \BCD~1_combout\);

-- Location: LCCOMB_X112_Y52_N14
\BCD~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~13_combout\ = \BCD~1_combout\ $ ((((!\BCD~0_combout\ & !product(3))) # (!\BCD~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~2_combout\,
	datab => \BCD~0_combout\,
	datac => product(3),
	datad => \BCD~1_combout\,
	combout => \BCD~13_combout\);

-- Location: LCCOMB_X112_Y52_N20
\BCD~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~17_combout\ = (\BCD~15_combout\ & (((!product(7)) # (!\BCD~13_combout\)) # (!\BCD~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~16_combout\,
	datab => \BCD~15_combout\,
	datac => \BCD~13_combout\,
	datad => product(7),
	combout => \BCD~17_combout\);

-- Location: LCCOMB_X112_Y52_N26
\BCD~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~18_combout\ = (\BCD~16_combout\ & (!\BCD~15_combout\ & (\BCD~13_combout\ & product(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~16_combout\,
	datab => \BCD~15_combout\,
	datac => \BCD~13_combout\,
	datad => product(7),
	combout => \BCD~18_combout\);

-- Location: LCCOMB_X112_Y52_N2
\BCD~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~4_combout\ = (\BCD~2_combout\ & (((!product(3) & !\BCD~0_combout\)))) # (!\BCD~2_combout\ & (\BCD~1_combout\ & ((product(3)) # (\BCD~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~1_combout\,
	datab => product(3),
	datac => \BCD~0_combout\,
	datad => \BCD~2_combout\,
	combout => \BCD~4_combout\);

-- Location: LCCOMB_X112_Y52_N22
\BCD~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~19_combout\ = \BCD~4_combout\ $ ((((!\BCD~3_combout\ & !product(2))) # (!\BCD~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~5_combout\,
	datab => \BCD~3_combout\,
	datac => product(2),
	datad => \BCD~4_combout\,
	combout => \BCD~19_combout\);

-- Location: LCCOMB_X114_Y52_N0
\BCD~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~20_combout\ = (\BCD~17_combout\ & (((\BCD~14_combout\ & !\BCD~18_combout\)) # (!\BCD~19_combout\))) # (!\BCD~17_combout\ & ((\BCD~18_combout\ $ (\BCD~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~14_combout\,
	datab => \BCD~17_combout\,
	datac => \BCD~18_combout\,
	datad => \BCD~19_combout\,
	combout => \BCD~20_combout\);

-- Location: LCCOMB_X111_Y52_N26
\BCD~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~12_combout\ = \BCD~7_combout\ $ ((((!product(1) & !\BCD~6_combout\)) # (!\BCD~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => product(1),
	datab => \BCD~8_combout\,
	datac => \BCD~6_combout\,
	datad => \BCD~7_combout\,
	combout => \BCD~12_combout\);

-- Location: LCCOMB_X113_Y49_N8
\PPSMPR[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PPSMPR[6]~feeder_combout\ = PPS(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PPS(3),
	combout => \PPSMPR[6]~feeder_combout\);

-- Location: FF_X113_Y49_N9
\PPSMPR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	d => \PPSMPR[6]~feeder_combout\,
	ena => \PPSMPR[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PPSMPR(6));

-- Location: FF_X112_Y52_N31
\product[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divided_clk~clkctrl_outclk\,
	asdata => PPSMPR(6),
	sload => VCC,
	ena => \product[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => product(6));

-- Location: LCCOMB_X112_Y52_N30
\BCD~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~21_combout\ = (product(4) & (product(7) & (product(6) & product(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => product(4),
	datab => product(7),
	datac => product(6),
	datad => product(5),
	combout => \BCD~21_combout\);

-- Location: LCCOMB_X112_Y52_N18
\BCD~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~22_combout\ = (\BCD~21_combout\) # ((!\BCD~13_combout\ & ((!product(7)) # (!\BCD~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~16_combout\,
	datab => \BCD~13_combout\,
	datac => product(7),
	datad => \BCD~21_combout\,
	combout => \BCD~22_combout\);

-- Location: LCCOMB_X112_Y52_N24
\LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (product(6) & product(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => product(6),
	datad => product(7),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X112_Y52_N6
\LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (\LessThan4~0_combout\ & ((product(3)) # ((product(5)) # (product(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => product(3),
	datab => product(5),
	datac => product(4),
	datad => \LessThan4~0_combout\,
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X113_Y52_N8
\BCD~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~14_combout\ = \LessThan4~1_combout\ $ (\BCD~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan4~1_combout\,
	datad => \BCD~13_combout\,
	combout => \BCD~14_combout\);

-- Location: LCCOMB_X114_Y52_N10
\LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (\BCD~18_combout\) # ((\BCD~17_combout\ & ((!\BCD~14_combout\) # (!\BCD~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~17_combout\,
	datab => \BCD~19_combout\,
	datac => \BCD~18_combout\,
	datad => \BCD~14_combout\,
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X114_Y52_N28
\BCD~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~23_combout\ = (\LessThan6~0_combout\ & (\BCD~14_combout\ $ ((!\BCD~19_combout\)))) # (!\LessThan6~0_combout\ & (((\BCD~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~14_combout\,
	datab => \BCD~19_combout\,
	datac => \BCD~22_combout\,
	datad => \LessThan6~0_combout\,
	combout => \BCD~23_combout\);

-- Location: LCCOMB_X114_Y52_N16
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\BCD~20_combout\ & (\BCD~23_combout\ $ (((!\BCD~24_combout\ & !\BCD~12_combout\))))) # (!\BCD~20_combout\ & (\BCD~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~24_combout\,
	datab => \BCD~20_combout\,
	datac => \BCD~12_combout\,
	datad => \BCD~23_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X114_Y52_N20
\segment2[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment2[0]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\segment2[0]$latch~combout\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((\Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment2[0]$latch~combout\,
	datac => \state.s0~clkctrl_outclk\,
	datad => \Mux13~0_combout\,
	combout => \segment2[0]$latch~combout\);

-- Location: LCCOMB_X114_Y52_N2
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\BCD~24_combout\ & (((\BCD~23_combout\)) # (!\BCD~20_combout\))) # (!\BCD~24_combout\ & (\BCD~23_combout\ & (\BCD~20_combout\ $ (\BCD~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~24_combout\,
	datab => \BCD~20_combout\,
	datac => \BCD~12_combout\,
	datad => \BCD~23_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X114_Y52_N30
\segment2[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment2[1]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\segment2[1]$latch~combout\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((\Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment2[1]$latch~combout\,
	datac => \state.s0~clkctrl_outclk\,
	datad => \Mux12~0_combout\,
	combout => \segment2[1]$latch~combout\);

-- Location: LCCOMB_X114_Y52_N24
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\BCD~23_combout\ & (\BCD~24_combout\)) # (!\BCD~23_combout\ & (!\BCD~20_combout\ & ((\BCD~24_combout\) # (\BCD~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~24_combout\,
	datab => \BCD~20_combout\,
	datac => \BCD~12_combout\,
	datad => \BCD~23_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X114_Y52_N8
\segment2[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment2[2]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\segment2[2]$latch~combout\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((\Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment2[2]$latch~combout\,
	datac => \state.s0~clkctrl_outclk\,
	datad => \Mux11~0_combout\,
	combout => \segment2[2]$latch~combout\);

-- Location: LCCOMB_X114_Y52_N6
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\BCD~12_combout\ & ((\BCD~20_combout\ & ((\BCD~23_combout\))) # (!\BCD~20_combout\ & (\BCD~24_combout\)))) # (!\BCD~12_combout\ & ((\BCD~24_combout\) # (\BCD~20_combout\ $ (\BCD~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~24_combout\,
	datab => \BCD~20_combout\,
	datac => \BCD~12_combout\,
	datad => \BCD~23_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X114_Y52_N26
\segment2[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment2[3]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\segment2[3]$latch~combout\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((\Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment2[3]$latch~combout\,
	datac => \state.s0~clkctrl_outclk\,
	datad => \Mux10~0_combout\,
	combout => \segment2[3]$latch~combout\);

-- Location: LCCOMB_X114_Y52_N12
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ((\BCD~20_combout\ & ((\BCD~23_combout\))) # (!\BCD~20_combout\ & (\BCD~24_combout\))) # (!\BCD~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~24_combout\,
	datab => \BCD~20_combout\,
	datac => \BCD~12_combout\,
	datad => \BCD~23_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X114_Y52_N4
\segment2[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment2[4]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\segment2[4]$latch~combout\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((\Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment2[4]$latch~combout\,
	datac => \state.s0~clkctrl_outclk\,
	datad => \Mux9~0_combout\,
	combout => \segment2[4]$latch~combout\);

-- Location: LCCOMB_X114_Y52_N22
\BCD~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~24_combout\ = (\BCD~17_combout\ & (\BCD~14_combout\ & ((\BCD~19_combout\)))) # (!\BCD~17_combout\ & (\BCD~18_combout\ & ((!\BCD~19_combout\) # (!\BCD~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~14_combout\,
	datab => \BCD~18_combout\,
	datac => \BCD~17_combout\,
	datad => \BCD~19_combout\,
	combout => \BCD~24_combout\);

-- Location: LCCOMB_X113_Y52_N18
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\BCD~12_combout\ & ((\BCD~23_combout\ & (\BCD~24_combout\)) # (!\BCD~23_combout\ & ((!\BCD~20_combout\))))) # (!\BCD~12_combout\ & ((\BCD~24_combout\ $ (!\BCD~23_combout\)) # (!\BCD~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~12_combout\,
	datab => \BCD~24_combout\,
	datac => \BCD~20_combout\,
	datad => \BCD~23_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X113_Y52_N28
\segment2[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment2[5]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\segment2[5]$latch~combout\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((\Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment2[5]$latch~combout\,
	datac => \state.s0~clkctrl_outclk\,
	datad => \Mux8~0_combout\,
	combout => \segment2[5]$latch~combout\);

-- Location: LCCOMB_X114_Y52_N18
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\BCD~24_combout\) # ((\BCD~20_combout\ & ((\BCD~23_combout\))) # (!\BCD~20_combout\ & ((\BCD~12_combout\) # (!\BCD~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~24_combout\,
	datab => \BCD~20_combout\,
	datac => \BCD~12_combout\,
	datad => \BCD~23_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X114_Y52_N14
\segment2[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment2[6]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\segment2[6]$latch~combout\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((!\Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment2[6]$latch~combout\,
	datac => \state.s0~clkctrl_outclk\,
	datad => \Mux7~0_combout\,
	combout => \segment2[6]$latch~combout\);

-- Location: LCCOMB_X113_Y52_N20
\BCD~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~25_combout\ = \BCD~18_combout\ $ ((((\BCD~14_combout\ & \BCD~19_combout\)) # (!\BCD~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~14_combout\,
	datab => \BCD~19_combout\,
	datac => \BCD~17_combout\,
	datad => \BCD~18_combout\,
	combout => \BCD~25_combout\);

-- Location: LCCOMB_X113_Y52_N22
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\LessThan4~1_combout\) # (\BCD~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan4~1_combout\,
	datad => \BCD~25_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X113_Y52_N30
\segment3[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment3[0]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\segment3[0]$latch~combout\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((!\Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment3[0]$latch~combout\,
	datac => \Mux15~0_combout\,
	datad => \state.s0~clkctrl_outclk\,
	combout => \segment3[0]$latch~combout\);

-- Location: LCCOMB_X113_Y52_N24
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\LessThan4~1_combout\ & \BCD~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan4~1_combout\,
	datad => \BCD~25_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X113_Y52_N12
\segment3[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment3[2]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\segment3[2]$latch~combout\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((\Mux15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment3[2]$latch~combout\,
	datab => \Mux15~1_combout\,
	datad => \state.s0~clkctrl_outclk\,
	combout => \segment3[2]$latch~combout\);

-- Location: LCCOMB_X113_Y52_N14
\segment3[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment3[4]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & ((\segment3[4]$latch~combout\))) # (!GLOBAL(\state.s0~clkctrl_outclk\) & (!\BCD~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD~25_combout\,
	datac => \segment3[4]$latch~combout\,
	datad => \state.s0~clkctrl_outclk\,
	combout => \segment3[4]$latch~combout\);

-- Location: LCCOMB_X113_Y52_N10
\Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\LessThan4~1_combout\) # (!\BCD~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan4~1_combout\,
	datad => \BCD~25_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X113_Y52_N16
\segment3[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment3[5]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & ((\segment3[5]$latch~combout\))) # (!GLOBAL(\state.s0~clkctrl_outclk\) & (\Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~2_combout\,
	datac => \state.s0~clkctrl_outclk\,
	datad => \segment3[5]$latch~combout\,
	combout => \segment3[5]$latch~combout\);

-- Location: LCCOMB_X113_Y52_N26
\segment3[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment3[6]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & ((\segment3[6]$latch~combout\))) # (!GLOBAL(\state.s0~clkctrl_outclk\) & (!\LessThan4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan4~1_combout\,
	datac => \segment3[6]$latch~combout\,
	datad => \state.s0~clkctrl_outclk\,
	combout => \segment3[6]$latch~combout\);

ww_done <= \done~output_o\;

ww_stateout(0) <= \stateout[0]~output_o\;

ww_stateout(1) <= \stateout[1]~output_o\;

ww_segment(0) <= \segment[0]~output_o\;

ww_segment(1) <= \segment[1]~output_o\;

ww_segment(2) <= \segment[2]~output_o\;

ww_segment(3) <= \segment[3]~output_o\;

ww_segment(4) <= \segment[4]~output_o\;

ww_segment(5) <= \segment[5]~output_o\;

ww_segment(6) <= \segment[6]~output_o\;

ww_segment2(0) <= \segment2[0]~output_o\;

ww_segment2(1) <= \segment2[1]~output_o\;

ww_segment2(2) <= \segment2[2]~output_o\;

ww_segment2(3) <= \segment2[3]~output_o\;

ww_segment2(4) <= \segment2[4]~output_o\;

ww_segment2(5) <= \segment2[5]~output_o\;

ww_segment2(6) <= \segment2[6]~output_o\;

ww_segment3(0) <= \segment3[0]~output_o\;

ww_segment3(1) <= \segment3[1]~output_o\;

ww_segment3(2) <= \segment3[2]~output_o\;

ww_segment3(3) <= \segment3[3]~output_o\;

ww_segment3(4) <= \segment3[4]~output_o\;

ww_segment3(5) <= \segment3[5]~output_o\;

ww_segment3(6) <= \segment3[6]~output_o\;
END structure;


