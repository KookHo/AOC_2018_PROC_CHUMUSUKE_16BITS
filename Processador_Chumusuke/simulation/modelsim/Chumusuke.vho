-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "11/29/2018 17:26:49"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Chumusuke IS
    PORT (
	Clock : IN std_logic;
	out_PC_IN : BUFFER std_logic_vector(15 DOWNTO 0);
	out_ROM_OUTPUT : BUFFER std_logic_vector(15 DOWNTO 0);
	out_ROM_INPUT : BUFFER std_logic_vector(15 DOWNTO 0);
	out_reg_a_data : BUFFER std_logic_vector(15 DOWNTO 0);
	out_reg_b_data : BUFFER std_logic_vector(15 DOWNTO 0);
	out_write_data : BUFFER std_logic_vector(15 DOWNTO 0);
	out_reg_a_addr : BUFFER std_logic_vector(3 DOWNTO 0);
	out_reg_b_addr : BUFFER std_logic_vector(3 DOWNTO 0);
	out_reg_dst_addr : BUFFER std_logic_vector(3 DOWNTO 0);
	out_op_code : BUFFER std_logic_vector(3 DOWNTO 0);
	out_flags_UC : BUFFER std_logic_vector(7 DOWNTO 0);
	out_OP_ULA : BUFFER std_logic_vector(2 DOWNTO 0);
	out_muxRD_out : BUFFER std_logic_vector(3 DOWNTO 0);
	out_signal_ula_in : BUFFER std_logic_vector(15 DOWNTO 0);
	out_branch_sel : BUFFER std_logic;
	out_mux_branch : BUFFER std_logic_vector(15 DOWNTO 0);
	out_signal_extender : BUFFER std_logic_vector(15 DOWNTO 0);
	out_shift_adder_in : BUFFER std_logic_vector(15 DOWNTO 0);
	out_jump_address : BUFFER std_logic_vector(11 DOWNTO 0);
	out_jump_shift : BUFFER std_logic_vector(15 DOWNTO 0);
	out_ula_zero : BUFFER std_logic;
	out_ula_resultado : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END Chumusuke;

-- Design Ports Information
-- out_PC_IN[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_IN[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_IN[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_IN[3]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_IN[4]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_IN[5]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_IN[6]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_IN[7]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_IN[8]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_IN[9]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_IN[10]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_IN[11]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_IN[12]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_IN[13]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_IN[14]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_IN[15]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_OUTPUT[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_OUTPUT[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_OUTPUT[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_OUTPUT[3]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_OUTPUT[4]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_OUTPUT[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_OUTPUT[6]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_OUTPUT[7]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_OUTPUT[8]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_OUTPUT[9]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_OUTPUT[10]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_OUTPUT[11]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_OUTPUT[12]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_OUTPUT[13]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_OUTPUT[14]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_OUTPUT[15]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_INPUT[0]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_INPUT[1]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_INPUT[2]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_INPUT[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_INPUT[4]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_INPUT[5]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_INPUT[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_INPUT[7]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_INPUT[8]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_INPUT[9]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_INPUT[10]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_INPUT[11]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_INPUT[12]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_INPUT[13]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_INPUT[14]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ROM_INPUT[15]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_a_data[0]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_a_data[1]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_a_data[2]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_a_data[3]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_a_data[4]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_a_data[5]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_a_data[6]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_a_data[7]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_a_data[8]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_a_data[9]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_a_data[10]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_a_data[11]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_a_data[12]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_a_data[13]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_a_data[14]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_a_data[15]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_b_data[0]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_b_data[1]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_b_data[2]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_b_data[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_b_data[4]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_b_data[5]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_b_data[6]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_b_data[7]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_b_data[8]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_b_data[9]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_b_data[10]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_b_data[11]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_b_data[12]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_b_data[13]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_b_data[14]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_b_data[15]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_write_data[0]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_write_data[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_write_data[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_write_data[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_write_data[4]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_write_data[5]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_write_data[6]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_write_data[7]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_write_data[8]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_write_data[9]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_write_data[10]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_write_data[11]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_write_data[12]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_write_data[13]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_write_data[14]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_write_data[15]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_a_addr[0]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_a_addr[1]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_a_addr[2]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_a_addr[3]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_b_addr[0]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_b_addr[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_b_addr[2]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_b_addr[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_dst_addr[0]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_dst_addr[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_dst_addr[2]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_reg_dst_addr[3]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_op_code[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_op_code[1]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_op_code[2]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_op_code[3]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_flags_UC[0]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_flags_UC[1]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_flags_UC[2]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_flags_UC[3]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_flags_UC[4]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_flags_UC[5]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_flags_UC[6]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_flags_UC[7]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_OP_ULA[0]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_OP_ULA[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_OP_ULA[2]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_muxRD_out[0]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_muxRD_out[1]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_muxRD_out[2]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_muxRD_out[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_ula_in[0]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_ula_in[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_ula_in[2]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_ula_in[3]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_ula_in[4]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_ula_in[5]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_ula_in[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_ula_in[7]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_ula_in[8]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_ula_in[9]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_ula_in[10]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_ula_in[11]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_ula_in[12]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_ula_in[13]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_ula_in[14]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_ula_in[15]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_branch_sel	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_mux_branch[0]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_mux_branch[1]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_mux_branch[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_mux_branch[3]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_mux_branch[4]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_mux_branch[5]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_mux_branch[6]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_mux_branch[7]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_mux_branch[8]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_mux_branch[9]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_mux_branch[10]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_mux_branch[11]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_mux_branch[12]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_mux_branch[13]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_mux_branch[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_mux_branch[15]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_extender[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_extender[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_extender[2]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_extender[3]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_extender[4]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_extender[5]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_extender[6]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_extender[7]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_extender[8]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_extender[9]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_extender[10]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_extender[11]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_extender[12]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_extender[13]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_extender[14]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_signal_extender[15]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_shift_adder_in[0]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_shift_adder_in[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_shift_adder_in[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_shift_adder_in[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_shift_adder_in[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_shift_adder_in[5]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_shift_adder_in[6]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_shift_adder_in[7]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_shift_adder_in[8]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_shift_adder_in[9]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_shift_adder_in[10]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_shift_adder_in[11]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_shift_adder_in[12]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_shift_adder_in[13]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_shift_adder_in[14]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_shift_adder_in[15]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_address[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_address[1]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_address[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_address[3]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_address[4]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_address[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_address[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_address[7]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_address[8]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_address[9]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_address[10]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_address[11]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_shift[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_shift[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_shift[2]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_shift[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_shift[4]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_shift[5]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_shift[6]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_shift[7]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_shift[8]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_shift[9]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_shift[10]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_shift[11]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_shift[12]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_shift[13]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_shift[14]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jump_shift[15]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula_zero	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula_resultado[0]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula_resultado[1]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula_resultado[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula_resultado[3]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula_resultado[4]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula_resultado[5]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula_resultado[6]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula_resultado[7]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula_resultado[8]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula_resultado[9]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula_resultado[10]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula_resultado[11]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula_resultado[12]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula_resultado[13]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula_resultado[14]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula_resultado[15]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Chumusuke IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_out_PC_IN : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_out_ROM_OUTPUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_out_ROM_INPUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_out_reg_a_data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_out_reg_b_data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_out_write_data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_out_reg_a_addr : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_reg_b_addr : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_reg_dst_addr : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_op_code : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_flags_UC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_OP_ULA : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_out_muxRD_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_signal_ula_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_out_branch_sel : std_logic;
SIGNAL ww_out_mux_branch : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_out_signal_extender : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_out_shift_adder_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_out_jump_address : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_out_jump_shift : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_out_ula_zero : std_logic;
SIGNAL ww_out_ula_resultado : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~1_sumout\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~2\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~5_sumout\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~6\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~10\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~13_sumout\ : std_logic;
SIGNAL \Instruction_Mem|ROM~2_combout\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~14\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~17_sumout\ : std_logic;
SIGNAL \Instruction_Mem|ROM~0_combout\ : std_logic;
SIGNAL \Instruction_Mem|ROM~4_combout\ : std_logic;
SIGNAL \Instruction_Mem|ROM~7_combout\ : std_logic;
SIGNAL \Instruction_Mem|ROM~6_combout\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~1_sumout\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~1_wirecell_combout\ : std_logic;
SIGNAL \Instruction_Mem|ROM~8_combout\ : std_logic;
SIGNAL \Mux_Reg_Dst|SAIDA[1]~0_combout\ : std_logic;
SIGNAL \Mux_Reg_Dst|SAIDA[2]~1_combout\ : std_logic;
SIGNAL \Register_File|Reg~348_combout\ : std_logic;
SIGNAL \Register_File|Reg~37_q\ : std_logic;
SIGNAL \Register_File|Reg~430_combout\ : std_logic;
SIGNAL \Register_File|Reg~349_combout\ : std_logic;
SIGNAL \Register_File|Reg~101_q\ : std_logic;
SIGNAL \Register_File|Reg~312_combout\ : std_logic;
SIGNAL \Register_File|Reg~431_combout\ : std_logic;
SIGNAL \Register_File|Reg~197_q\ : std_logic;
SIGNAL \Register_File|Reg~313_combout\ : std_logic;
SIGNAL \Register_File|Reg~85_q\ : std_logic;
SIGNAL \Register_File|Reg~347_combout\ : std_logic;
SIGNAL \Register_File|Reg~21_q\ : std_logic;
SIGNAL \Register_File|Reg~311_combout\ : std_logic;
SIGNAL \Register_File|Reg~314_combout\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~2\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~5_sumout\ : std_logic;
SIGNAL \Register_File|Reg~38DUPLICATE_q\ : std_logic;
SIGNAL \Register_File|Reg~22_q\ : std_logic;
SIGNAL \Register_File|Reg~277_combout\ : std_logic;
SIGNAL \Register_File|Reg~198_q\ : std_logic;
SIGNAL \Register_File|Reg~279_combout\ : std_logic;
SIGNAL \Register_File|Reg~102_q\ : std_logic;
SIGNAL \Register_File|Reg~86_q\ : std_logic;
SIGNAL \Register_File|Reg~278_combout\ : std_logic;
SIGNAL \Register_File|Reg~280_combout\ : std_logic;
SIGNAL \Arith_Logi_Unit|Equal0~0_combout\ : std_logic;
SIGNAL \Instruction_Mem|ROM~3_combout\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~6\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~9_sumout\ : std_logic;
SIGNAL \Register_File|Reg~199_q\ : std_logic;
SIGNAL \Register_File|Reg~317_combout\ : std_logic;
SIGNAL \Register_File|Reg~23_q\ : std_logic;
SIGNAL \Register_File|Reg~87_q\ : std_logic;
SIGNAL \Register_File|Reg~315_combout\ : std_logic;
SIGNAL \Register_File|Reg~39_q\ : std_logic;
SIGNAL \Register_File|Reg~103_q\ : std_logic;
SIGNAL \Register_File|Reg~316_combout\ : std_logic;
SIGNAL \Register_File|Reg~318_combout\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~10\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~13_sumout\ : std_logic;
SIGNAL \Register_File|Reg~88_q\ : std_logic;
SIGNAL \Register_File|Reg~104_q\ : std_logic;
SIGNAL \Register_File|Reg~320_combout\ : std_logic;
SIGNAL \Register_File|Reg~24_q\ : std_logic;
SIGNAL \Register_File|Reg~40_q\ : std_logic;
SIGNAL \Register_File|Reg~319_combout\ : std_logic;
SIGNAL \Register_File|Reg~200_q\ : std_logic;
SIGNAL \Register_File|Reg~321_combout\ : std_logic;
SIGNAL \Register_File|Reg~322_combout\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~14\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~17_sumout\ : std_logic;
SIGNAL \Register_File|Reg~25_q\ : std_logic;
SIGNAL \Register_File|Reg~428_combout\ : std_logic;
SIGNAL \Register_File|Reg~201_q\ : std_logic;
SIGNAL \Register_File|Reg~418_combout\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~18\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~21_sumout\ : std_logic;
SIGNAL \Register_File|Reg~202_q\ : std_logic;
SIGNAL \Register_File|Reg~293_combout\ : std_logic;
SIGNAL \Register_File|Reg~106_q\ : std_logic;
SIGNAL \Register_File|Reg~42_q\ : std_logic;
SIGNAL \Register_File|Reg~292_combout\ : std_logic;
SIGNAL \Register_File|Reg~26_q\ : std_logic;
SIGNAL \Register_File|Reg~90_q\ : std_logic;
SIGNAL \Register_File|Reg~291_combout\ : std_logic;
SIGNAL \Register_File|Reg~294_combout\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~22\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~25_sumout\ : std_logic;
SIGNAL \Register_File|Reg~203_q\ : std_logic;
SIGNAL \Register_File|Reg~289_combout\ : std_logic;
SIGNAL \Register_File|Reg~91_q\ : std_logic;
SIGNAL \Register_File|Reg~27DUPLICATE_q\ : std_logic;
SIGNAL \Register_File|Reg~43_q\ : std_logic;
SIGNAL \Register_File|Reg~107_q\ : std_logic;
SIGNAL \Register_File|Reg~288_combout\ : std_logic;
SIGNAL \Register_File|Reg~290_combout\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~26\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~29_sumout\ : std_logic;
SIGNAL \Register_File|Reg~204_q\ : std_logic;
SIGNAL \Register_File|Reg~28_q\ : std_logic;
SIGNAL \Register_File|Reg~422_combout\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~30\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~33_sumout\ : std_logic;
SIGNAL \Register_File|Reg~426_combout\ : std_logic;
SIGNAL \Register_File|Reg~93DUPLICATE_q\ : std_logic;
SIGNAL \Register_File|Reg~29_q\ : std_logic;
SIGNAL \Register_File|Reg~284_combout\ : std_logic;
SIGNAL \Register_File|Reg~427_combout\ : std_logic;
SIGNAL \Register_File|Reg~109_q\ : std_logic;
SIGNAL \Register_File|Reg~45_q\ : std_logic;
SIGNAL \Register_File|Reg~285_combout\ : std_logic;
SIGNAL \Register_File|Reg~205_q\ : std_logic;
SIGNAL \Register_File|Reg~286_combout\ : std_logic;
SIGNAL \Register_File|Reg~287_combout\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~34\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~37_sumout\ : std_logic;
SIGNAL \Register_File|Reg~206_q\ : std_logic;
SIGNAL \Register_File|Reg~282_combout\ : std_logic;
SIGNAL \Register_File|Reg~94_q\ : std_logic;
SIGNAL \Register_File|Reg~30_q\ : std_logic;
SIGNAL \Register_File|Reg~110_q\ : std_logic;
SIGNAL \Register_File|Reg~46_q\ : std_logic;
SIGNAL \Register_File|Reg~281_combout\ : std_logic;
SIGNAL \Register_File|Reg~283_combout\ : std_logic;
SIGNAL \Arith_Logi_Unit|Equal0~1_combout\ : std_logic;
SIGNAL \Arith_Logi_Unit|Equal0~3_combout\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~18\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~21_sumout\ : std_logic;
SIGNAL \Branch_Mux|SAIDA[5]~1_combout\ : std_logic;
SIGNAL \Program_Counter|pout[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~22\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~25_sumout\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~26\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~29_sumout\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~30\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~33_sumout\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~34\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~37_sumout\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~38\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~41_sumout\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~42\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~45_sumout\ : std_logic;
SIGNAL \Program_Counter|pout[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~46\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~49_sumout\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~50\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~53_sumout\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~54\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~57_sumout\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~58\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~61_sumout\ : std_logic;
SIGNAL \Instruction_Mem|ROM~1_combout\ : std_logic;
SIGNAL \Instruction_Mem|ROM~5_combout\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~38\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~41_sumout\ : std_logic;
SIGNAL \Register_File|Reg~31_q\ : std_logic;
SIGNAL \Register_File|Reg~207_q\ : std_logic;
SIGNAL \Register_File|Reg~414_combout\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~42\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~45_sumout\ : std_logic;
SIGNAL \Register_File|Reg~48_q\ : std_logic;
SIGNAL \Register_File|Reg~112_q\ : std_logic;
SIGNAL \Register_File|Reg~308_combout\ : std_logic;
SIGNAL \Register_File|Reg~32_q\ : std_logic;
SIGNAL \Register_File|Reg~96_q\ : std_logic;
SIGNAL \Register_File|Reg~307_combout\ : std_logic;
SIGNAL \Register_File|Reg~208_q\ : std_logic;
SIGNAL \Register_File|Reg~309_combout\ : std_logic;
SIGNAL \Register_File|Reg~310_combout\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~46\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~49_sumout\ : std_logic;
SIGNAL \Register_File|Reg~113_q\ : std_logic;
SIGNAL \Register_File|Reg~33_q\ : std_logic;
SIGNAL \Register_File|Reg~49_q\ : std_logic;
SIGNAL \Register_File|Reg~97_q\ : std_logic;
SIGNAL \Register_File|Reg~304_combout\ : std_logic;
SIGNAL \Register_File|Reg~429_combout\ : std_logic;
SIGNAL \Register_File|Reg~209_q\ : std_logic;
SIGNAL \Register_File|Reg~305_combout\ : std_logic;
SIGNAL \Register_File|Reg~306_combout\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~50\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~53_sumout\ : std_logic;
SIGNAL \Register_File|Reg~210_q\ : std_logic;
SIGNAL \Register_File|Reg~302_combout\ : std_logic;
SIGNAL \Register_File|Reg~50_q\ : std_logic;
SIGNAL \Register_File|Reg~114_q\ : std_logic;
SIGNAL \Register_File|Reg~98_q\ : std_logic;
SIGNAL \Register_File|Reg~34_q\ : std_logic;
SIGNAL \Register_File|Reg~301_combout\ : std_logic;
SIGNAL \Register_File|Reg~303_combout\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~54\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~57_sumout\ : std_logic;
SIGNAL \Register_File|Reg~211_q\ : std_logic;
SIGNAL \Register_File|Reg~299_combout\ : std_logic;
SIGNAL \Register_File|Reg~99_q\ : std_logic;
SIGNAL \Register_File|Reg~115_q\ : std_logic;
SIGNAL \Register_File|Reg~35DUPLICATE_q\ : std_logic;
SIGNAL \Register_File|Reg~51_q\ : std_logic;
SIGNAL \Register_File|Reg~298_combout\ : std_logic;
SIGNAL \Register_File|Reg~300_combout\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~58\ : std_logic;
SIGNAL \Arith_Logi_Unit|Add0~61_sumout\ : std_logic;
SIGNAL \Register_File|Reg~52_q\ : std_logic;
SIGNAL \Register_File|Reg~100feeder_combout\ : std_logic;
SIGNAL \Register_File|Reg~100_q\ : std_logic;
SIGNAL \Register_File|Reg~36_q\ : std_logic;
SIGNAL \Register_File|Reg~116_q\ : std_logic;
SIGNAL \Register_File|Reg~295_combout\ : std_logic;
SIGNAL \Register_File|Reg~212_q\ : std_logic;
SIGNAL \Register_File|Reg~296_combout\ : std_logic;
SIGNAL \Register_File|Reg~297_combout\ : std_logic;
SIGNAL \Arith_Logi_Unit|Equal0~2_combout\ : std_logic;
SIGNAL \Prog_Coun_Adder|Add0~9_sumout\ : std_logic;
SIGNAL \Branch_Mux|SAIDA[2]~0_combout\ : std_logic;
SIGNAL \Instruction_Mem|ROM~9_combout\ : std_logic;
SIGNAL \Register_File|Reg~324_combout\ : std_logic;
SIGNAL \Register_File|Reg~197DUPLICATE_q\ : std_logic;
SIGNAL \Register_File|Reg~323_combout\ : std_logic;
SIGNAL \Register_File|Reg~410_combout\ : std_logic;
SIGNAL \Register_File|Reg~326_combout\ : std_logic;
SIGNAL \Register_File|Reg~38_q\ : std_logic;
SIGNAL \Register_File|Reg~325_combout\ : std_logic;
SIGNAL \Register_File|Reg~406_combout\ : std_logic;
SIGNAL \Register_File|Reg~328_combout\ : std_logic;
SIGNAL \Register_File|Reg~327_combout\ : std_logic;
SIGNAL \Register_File|Reg~402_combout\ : std_logic;
SIGNAL \Register_File|Reg~329_combout\ : std_logic;
SIGNAL \Register_File|Reg~330_combout\ : std_logic;
SIGNAL \Register_File|Reg~398_combout\ : std_logic;
SIGNAL \Register_File|Reg~41_q\ : std_logic;
SIGNAL \Register_File|Reg~331_combout\ : std_logic;
SIGNAL \Register_File|Reg~105_q\ : std_logic;
SIGNAL \Register_File|Reg~89_q\ : std_logic;
SIGNAL \Register_File|Reg~332_combout\ : std_logic;
SIGNAL \Register_File|Reg~394_combout\ : std_logic;
SIGNAL \Register_File|Reg~333_combout\ : std_logic;
SIGNAL \Register_File|Reg~334_combout\ : std_logic;
SIGNAL \Register_File|Reg~390_combout\ : std_logic;
SIGNAL \Register_File|Reg~27_q\ : std_logic;
SIGNAL \Register_File|Reg~335_combout\ : std_logic;
SIGNAL \Register_File|Reg~336_combout\ : std_logic;
SIGNAL \Register_File|Reg~386_combout\ : std_logic;
SIGNAL \Register_File|Reg~108_q\ : std_logic;
SIGNAL \Register_File|Reg~92_q\ : std_logic;
SIGNAL \Register_File|Reg~338_combout\ : std_logic;
SIGNAL \Register_File|Reg~44_q\ : std_logic;
SIGNAL \Register_File|Reg~337_combout\ : std_logic;
SIGNAL \Register_File|Reg~382_combout\ : std_logic;
SIGNAL \Register_File|Reg~339_combout\ : std_logic;
SIGNAL \Register_File|Reg~93_q\ : std_logic;
SIGNAL \Register_File|Reg~109DUPLICATE_q\ : std_logic;
SIGNAL \Register_File|Reg~340_combout\ : std_logic;
SIGNAL \Register_File|Reg~378_combout\ : std_logic;
SIGNAL \Register_File|Reg~342_combout\ : std_logic;
SIGNAL \Register_File|Reg~341_combout\ : std_logic;
SIGNAL \Register_File|Reg~374_combout\ : std_logic;
SIGNAL \Register_File|Reg~111_q\ : std_logic;
SIGNAL \Register_File|Reg~95_q\ : std_logic;
SIGNAL \Register_File|Reg~370_combout\ : std_logic;
SIGNAL \Register_File|Reg~343_combout\ : std_logic;
SIGNAL \Register_File|Reg~344_combout\ : std_logic;
SIGNAL \Register_File|Reg~366_combout\ : std_logic;
SIGNAL \Register_File|Reg~362_combout\ : std_logic;
SIGNAL \Register_File|Reg~358_combout\ : std_logic;
SIGNAL \Register_File|Reg~35_q\ : std_logic;
SIGNAL \Register_File|Reg~345_combout\ : std_logic;
SIGNAL \Register_File|Reg~346_combout\ : std_logic;
SIGNAL \Register_File|Reg~354_combout\ : std_logic;
SIGNAL \Register_File|Reg~350_combout\ : std_logic;
SIGNAL \Branch_AND_Gate|S~combout\ : std_logic;
SIGNAL \Arith_Logi_Unit|Equal0~4_combout\ : std_logic;
SIGNAL \Program_Counter|pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Register_File|ALT_INV_Reg~197DUPLICATE_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~109DUPLICATE_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~93DUPLICATE_q\ : std_logic;
SIGNAL \Program_Counter|ALT_INV_pout[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Program_Counter|ALT_INV_pout[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~35DUPLICATE_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~27DUPLICATE_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~38DUPLICATE_q\ : std_logic;
SIGNAL \Mux_Reg_Dst|ALT_INV_SAIDA[2]~1_combout\ : std_logic;
SIGNAL \Mux_Reg_Dst|ALT_INV_SAIDA[1]~0_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~346_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~345_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~344_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~343_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~95_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~111_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~342_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~341_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~340_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~339_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~338_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~108_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~92_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~337_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~336_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~335_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~334_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~333_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~332_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~105_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~89_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~331_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~330_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~329_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~328_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~327_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~326_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~325_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~324_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~323_combout\ : std_logic;
SIGNAL \Instruction_Mem|ALT_INV_ROM~9_combout\ : std_logic;
SIGNAL \Instruction_Mem|ALT_INV_ROM~8_combout\ : std_logic;
SIGNAL \Arith_Logi_Unit|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~322_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~321_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~200_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~320_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~104_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~88_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~319_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~318_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~317_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~199_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~316_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~103_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~315_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~87_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~314_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~313_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~197_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~312_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~101_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~311_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~85_q\ : std_logic;
SIGNAL \Arith_Logi_Unit|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~207_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~310_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~309_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~208_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~308_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~112_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~307_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~96_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~306_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~305_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~209_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~304_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~113_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~97_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~303_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~302_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~210_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~301_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~114_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~98_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~300_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~299_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~211_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~298_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~115_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~99_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~297_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~296_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~212_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~295_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~116_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~100_q\ : std_logic;
SIGNAL \Arith_Logi_Unit|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~201_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~294_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~293_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~202_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~292_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~106_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~291_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~90_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~290_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~289_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~203_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~288_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~107_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~91_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~204_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~287_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~286_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~205_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~285_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~109_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~284_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~93_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~283_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~282_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~206_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~281_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~110_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~94_q\ : std_logic;
SIGNAL \Arith_Logi_Unit|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~280_combout\ : std_logic;
SIGNAL \Instruction_Mem|ALT_INV_ROM~7_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~279_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~198_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~278_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~102_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~86_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~277_combout\ : std_logic;
SIGNAL \Instruction_Mem|ALT_INV_ROM~6_combout\ : std_logic;
SIGNAL \Instruction_Mem|ALT_INV_ROM~5_combout\ : std_logic;
SIGNAL \Instruction_Mem|ALT_INV_ROM~4_combout\ : std_logic;
SIGNAL \Instruction_Mem|ALT_INV_ROM~3_combout\ : std_logic;
SIGNAL \Instruction_Mem|ALT_INV_ROM~2_combout\ : std_logic;
SIGNAL \Program_Counter|ALT_INV_pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Instruction_Mem|ALT_INV_ROM~1_combout\ : std_logic;
SIGNAL \Instruction_Mem|ALT_INV_ROM~0_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~422_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~418_combout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~414_combout\ : std_logic;
SIGNAL \Arith_Logi_Unit|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \Arith_Logi_Unit|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \Arith_Logi_Unit|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \Arith_Logi_Unit|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \Arith_Logi_Unit|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~44_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~41_q\ : std_logic;
SIGNAL \Prog_Coun_Adder|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \Prog_Coun_Adder|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~40_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~24_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~39_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~23_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~37_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~21_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~31_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~48_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~32_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~49_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~33_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~50_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~34_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~51_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~35_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~52_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~36_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~25_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~42_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~26_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~43_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~27_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~28_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~45_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~29_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~46_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~30_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~38_q\ : std_logic;
SIGNAL \Register_File|ALT_INV_Reg~22_q\ : std_logic;

BEGIN

ww_Clock <= Clock;
out_PC_IN <= ww_out_PC_IN;
out_ROM_OUTPUT <= ww_out_ROM_OUTPUT;
out_ROM_INPUT <= ww_out_ROM_INPUT;
out_reg_a_data <= ww_out_reg_a_data;
out_reg_b_data <= ww_out_reg_b_data;
out_write_data <= ww_out_write_data;
out_reg_a_addr <= ww_out_reg_a_addr;
out_reg_b_addr <= ww_out_reg_b_addr;
out_reg_dst_addr <= ww_out_reg_dst_addr;
out_op_code <= ww_out_op_code;
out_flags_UC <= ww_out_flags_UC;
out_OP_ULA <= ww_out_OP_ULA;
out_muxRD_out <= ww_out_muxRD_out;
out_signal_ula_in <= ww_out_signal_ula_in;
out_branch_sel <= ww_out_branch_sel;
out_mux_branch <= ww_out_mux_branch;
out_signal_extender <= ww_out_signal_extender;
out_shift_adder_in <= ww_out_shift_adder_in;
out_jump_address <= ww_out_jump_address;
out_jump_shift <= ww_out_jump_shift;
out_ula_zero <= ww_out_ula_zero;
out_ula_resultado <= ww_out_ula_resultado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Register_File|ALT_INV_Reg~197DUPLICATE_q\ <= NOT \Register_File|Reg~197DUPLICATE_q\;
\Register_File|ALT_INV_Reg~109DUPLICATE_q\ <= NOT \Register_File|Reg~109DUPLICATE_q\;
\Register_File|ALT_INV_Reg~93DUPLICATE_q\ <= NOT \Register_File|Reg~93DUPLICATE_q\;
\Program_Counter|ALT_INV_pout[11]~DUPLICATE_q\ <= NOT \Program_Counter|pout[11]~DUPLICATE_q\;
\Program_Counter|ALT_INV_pout[5]~DUPLICATE_q\ <= NOT \Program_Counter|pout[5]~DUPLICATE_q\;
\Register_File|ALT_INV_Reg~35DUPLICATE_q\ <= NOT \Register_File|Reg~35DUPLICATE_q\;
\Register_File|ALT_INV_Reg~27DUPLICATE_q\ <= NOT \Register_File|Reg~27DUPLICATE_q\;
\Register_File|ALT_INV_Reg~38DUPLICATE_q\ <= NOT \Register_File|Reg~38DUPLICATE_q\;
\Mux_Reg_Dst|ALT_INV_SAIDA[2]~1_combout\ <= NOT \Mux_Reg_Dst|SAIDA[2]~1_combout\;
\Mux_Reg_Dst|ALT_INV_SAIDA[1]~0_combout\ <= NOT \Mux_Reg_Dst|SAIDA[1]~0_combout\;
\Register_File|ALT_INV_Reg~346_combout\ <= NOT \Register_File|Reg~346_combout\;
\Register_File|ALT_INV_Reg~345_combout\ <= NOT \Register_File|Reg~345_combout\;
\Register_File|ALT_INV_Reg~344_combout\ <= NOT \Register_File|Reg~344_combout\;
\Register_File|ALT_INV_Reg~343_combout\ <= NOT \Register_File|Reg~343_combout\;
\Register_File|ALT_INV_Reg~95_q\ <= NOT \Register_File|Reg~95_q\;
\Register_File|ALT_INV_Reg~111_q\ <= NOT \Register_File|Reg~111_q\;
\Register_File|ALT_INV_Reg~342_combout\ <= NOT \Register_File|Reg~342_combout\;
\Register_File|ALT_INV_Reg~341_combout\ <= NOT \Register_File|Reg~341_combout\;
\Register_File|ALT_INV_Reg~340_combout\ <= NOT \Register_File|Reg~340_combout\;
\Register_File|ALT_INV_Reg~339_combout\ <= NOT \Register_File|Reg~339_combout\;
\Register_File|ALT_INV_Reg~338_combout\ <= NOT \Register_File|Reg~338_combout\;
\Register_File|ALT_INV_Reg~108_q\ <= NOT \Register_File|Reg~108_q\;
\Register_File|ALT_INV_Reg~92_q\ <= NOT \Register_File|Reg~92_q\;
\Register_File|ALT_INV_Reg~337_combout\ <= NOT \Register_File|Reg~337_combout\;
\Register_File|ALT_INV_Reg~336_combout\ <= NOT \Register_File|Reg~336_combout\;
\Register_File|ALT_INV_Reg~335_combout\ <= NOT \Register_File|Reg~335_combout\;
\Register_File|ALT_INV_Reg~334_combout\ <= NOT \Register_File|Reg~334_combout\;
\Register_File|ALT_INV_Reg~333_combout\ <= NOT \Register_File|Reg~333_combout\;
\Register_File|ALT_INV_Reg~332_combout\ <= NOT \Register_File|Reg~332_combout\;
\Register_File|ALT_INV_Reg~105_q\ <= NOT \Register_File|Reg~105_q\;
\Register_File|ALT_INV_Reg~89_q\ <= NOT \Register_File|Reg~89_q\;
\Register_File|ALT_INV_Reg~331_combout\ <= NOT \Register_File|Reg~331_combout\;
\Register_File|ALT_INV_Reg~330_combout\ <= NOT \Register_File|Reg~330_combout\;
\Register_File|ALT_INV_Reg~329_combout\ <= NOT \Register_File|Reg~329_combout\;
\Register_File|ALT_INV_Reg~328_combout\ <= NOT \Register_File|Reg~328_combout\;
\Register_File|ALT_INV_Reg~327_combout\ <= NOT \Register_File|Reg~327_combout\;
\Register_File|ALT_INV_Reg~326_combout\ <= NOT \Register_File|Reg~326_combout\;
\Register_File|ALT_INV_Reg~325_combout\ <= NOT \Register_File|Reg~325_combout\;
\Register_File|ALT_INV_Reg~324_combout\ <= NOT \Register_File|Reg~324_combout\;
\Register_File|ALT_INV_Reg~323_combout\ <= NOT \Register_File|Reg~323_combout\;
\Instruction_Mem|ALT_INV_ROM~9_combout\ <= NOT \Instruction_Mem|ROM~9_combout\;
\Instruction_Mem|ALT_INV_ROM~8_combout\ <= NOT \Instruction_Mem|ROM~8_combout\;
\Arith_Logi_Unit|ALT_INV_Equal0~3_combout\ <= NOT \Arith_Logi_Unit|Equal0~3_combout\;
\Register_File|ALT_INV_Reg~322_combout\ <= NOT \Register_File|Reg~322_combout\;
\Register_File|ALT_INV_Reg~321_combout\ <= NOT \Register_File|Reg~321_combout\;
\Register_File|ALT_INV_Reg~200_q\ <= NOT \Register_File|Reg~200_q\;
\Register_File|ALT_INV_Reg~320_combout\ <= NOT \Register_File|Reg~320_combout\;
\Register_File|ALT_INV_Reg~104_q\ <= NOT \Register_File|Reg~104_q\;
\Register_File|ALT_INV_Reg~88_q\ <= NOT \Register_File|Reg~88_q\;
\Register_File|ALT_INV_Reg~319_combout\ <= NOT \Register_File|Reg~319_combout\;
\Register_File|ALT_INV_Reg~318_combout\ <= NOT \Register_File|Reg~318_combout\;
\Register_File|ALT_INV_Reg~317_combout\ <= NOT \Register_File|Reg~317_combout\;
\Register_File|ALT_INV_Reg~199_q\ <= NOT \Register_File|Reg~199_q\;
\Register_File|ALT_INV_Reg~316_combout\ <= NOT \Register_File|Reg~316_combout\;
\Register_File|ALT_INV_Reg~103_q\ <= NOT \Register_File|Reg~103_q\;
\Register_File|ALT_INV_Reg~315_combout\ <= NOT \Register_File|Reg~315_combout\;
\Register_File|ALT_INV_Reg~87_q\ <= NOT \Register_File|Reg~87_q\;
\Register_File|ALT_INV_Reg~314_combout\ <= NOT \Register_File|Reg~314_combout\;
\Register_File|ALT_INV_Reg~313_combout\ <= NOT \Register_File|Reg~313_combout\;
\Register_File|ALT_INV_Reg~197_q\ <= NOT \Register_File|Reg~197_q\;
\Register_File|ALT_INV_Reg~312_combout\ <= NOT \Register_File|Reg~312_combout\;
\Register_File|ALT_INV_Reg~101_q\ <= NOT \Register_File|Reg~101_q\;
\Register_File|ALT_INV_Reg~311_combout\ <= NOT \Register_File|Reg~311_combout\;
\Register_File|ALT_INV_Reg~85_q\ <= NOT \Register_File|Reg~85_q\;
\Arith_Logi_Unit|ALT_INV_Equal0~2_combout\ <= NOT \Arith_Logi_Unit|Equal0~2_combout\;
\Register_File|ALT_INV_Reg~207_q\ <= NOT \Register_File|Reg~207_q\;
\Register_File|ALT_INV_Reg~310_combout\ <= NOT \Register_File|Reg~310_combout\;
\Register_File|ALT_INV_Reg~309_combout\ <= NOT \Register_File|Reg~309_combout\;
\Register_File|ALT_INV_Reg~208_q\ <= NOT \Register_File|Reg~208_q\;
\Register_File|ALT_INV_Reg~308_combout\ <= NOT \Register_File|Reg~308_combout\;
\Register_File|ALT_INV_Reg~112_q\ <= NOT \Register_File|Reg~112_q\;
\Register_File|ALT_INV_Reg~307_combout\ <= NOT \Register_File|Reg~307_combout\;
\Register_File|ALT_INV_Reg~96_q\ <= NOT \Register_File|Reg~96_q\;
\Register_File|ALT_INV_Reg~306_combout\ <= NOT \Register_File|Reg~306_combout\;
\Register_File|ALT_INV_Reg~305_combout\ <= NOT \Register_File|Reg~305_combout\;
\Register_File|ALT_INV_Reg~209_q\ <= NOT \Register_File|Reg~209_q\;
\Register_File|ALT_INV_Reg~304_combout\ <= NOT \Register_File|Reg~304_combout\;
\Register_File|ALT_INV_Reg~113_q\ <= NOT \Register_File|Reg~113_q\;
\Register_File|ALT_INV_Reg~97_q\ <= NOT \Register_File|Reg~97_q\;
\Register_File|ALT_INV_Reg~303_combout\ <= NOT \Register_File|Reg~303_combout\;
\Register_File|ALT_INV_Reg~302_combout\ <= NOT \Register_File|Reg~302_combout\;
\Register_File|ALT_INV_Reg~210_q\ <= NOT \Register_File|Reg~210_q\;
\Register_File|ALT_INV_Reg~301_combout\ <= NOT \Register_File|Reg~301_combout\;
\Register_File|ALT_INV_Reg~114_q\ <= NOT \Register_File|Reg~114_q\;
\Register_File|ALT_INV_Reg~98_q\ <= NOT \Register_File|Reg~98_q\;
\Register_File|ALT_INV_Reg~300_combout\ <= NOT \Register_File|Reg~300_combout\;
\Register_File|ALT_INV_Reg~299_combout\ <= NOT \Register_File|Reg~299_combout\;
\Register_File|ALT_INV_Reg~211_q\ <= NOT \Register_File|Reg~211_q\;
\Register_File|ALT_INV_Reg~298_combout\ <= NOT \Register_File|Reg~298_combout\;
\Register_File|ALT_INV_Reg~115_q\ <= NOT \Register_File|Reg~115_q\;
\Register_File|ALT_INV_Reg~99_q\ <= NOT \Register_File|Reg~99_q\;
\Register_File|ALT_INV_Reg~297_combout\ <= NOT \Register_File|Reg~297_combout\;
\Register_File|ALT_INV_Reg~296_combout\ <= NOT \Register_File|Reg~296_combout\;
\Register_File|ALT_INV_Reg~212_q\ <= NOT \Register_File|Reg~212_q\;
\Register_File|ALT_INV_Reg~295_combout\ <= NOT \Register_File|Reg~295_combout\;
\Register_File|ALT_INV_Reg~116_q\ <= NOT \Register_File|Reg~116_q\;
\Register_File|ALT_INV_Reg~100_q\ <= NOT \Register_File|Reg~100_q\;
\Arith_Logi_Unit|ALT_INV_Equal0~1_combout\ <= NOT \Arith_Logi_Unit|Equal0~1_combout\;
\Register_File|ALT_INV_Reg~201_q\ <= NOT \Register_File|Reg~201_q\;
\Register_File|ALT_INV_Reg~294_combout\ <= NOT \Register_File|Reg~294_combout\;
\Register_File|ALT_INV_Reg~293_combout\ <= NOT \Register_File|Reg~293_combout\;
\Register_File|ALT_INV_Reg~202_q\ <= NOT \Register_File|Reg~202_q\;
\Register_File|ALT_INV_Reg~292_combout\ <= NOT \Register_File|Reg~292_combout\;
\Register_File|ALT_INV_Reg~106_q\ <= NOT \Register_File|Reg~106_q\;
\Register_File|ALT_INV_Reg~291_combout\ <= NOT \Register_File|Reg~291_combout\;
\Register_File|ALT_INV_Reg~90_q\ <= NOT \Register_File|Reg~90_q\;
\Register_File|ALT_INV_Reg~290_combout\ <= NOT \Register_File|Reg~290_combout\;
\Register_File|ALT_INV_Reg~289_combout\ <= NOT \Register_File|Reg~289_combout\;
\Register_File|ALT_INV_Reg~203_q\ <= NOT \Register_File|Reg~203_q\;
\Register_File|ALT_INV_Reg~288_combout\ <= NOT \Register_File|Reg~288_combout\;
\Register_File|ALT_INV_Reg~107_q\ <= NOT \Register_File|Reg~107_q\;
\Register_File|ALT_INV_Reg~91_q\ <= NOT \Register_File|Reg~91_q\;
\Register_File|ALT_INV_Reg~204_q\ <= NOT \Register_File|Reg~204_q\;
\Register_File|ALT_INV_Reg~287_combout\ <= NOT \Register_File|Reg~287_combout\;
\Register_File|ALT_INV_Reg~286_combout\ <= NOT \Register_File|Reg~286_combout\;
\Register_File|ALT_INV_Reg~205_q\ <= NOT \Register_File|Reg~205_q\;
\Register_File|ALT_INV_Reg~285_combout\ <= NOT \Register_File|Reg~285_combout\;
\Register_File|ALT_INV_Reg~109_q\ <= NOT \Register_File|Reg~109_q\;
\Register_File|ALT_INV_Reg~284_combout\ <= NOT \Register_File|Reg~284_combout\;
\Register_File|ALT_INV_Reg~93_q\ <= NOT \Register_File|Reg~93_q\;
\Register_File|ALT_INV_Reg~283_combout\ <= NOT \Register_File|Reg~283_combout\;
\Register_File|ALT_INV_Reg~282_combout\ <= NOT \Register_File|Reg~282_combout\;
\Register_File|ALT_INV_Reg~206_q\ <= NOT \Register_File|Reg~206_q\;
\Register_File|ALT_INV_Reg~281_combout\ <= NOT \Register_File|Reg~281_combout\;
\Register_File|ALT_INV_Reg~110_q\ <= NOT \Register_File|Reg~110_q\;
\Register_File|ALT_INV_Reg~94_q\ <= NOT \Register_File|Reg~94_q\;
\Arith_Logi_Unit|ALT_INV_Equal0~0_combout\ <= NOT \Arith_Logi_Unit|Equal0~0_combout\;
\Register_File|ALT_INV_Reg~280_combout\ <= NOT \Register_File|Reg~280_combout\;
\Instruction_Mem|ALT_INV_ROM~7_combout\ <= NOT \Instruction_Mem|ROM~7_combout\;
\Register_File|ALT_INV_Reg~279_combout\ <= NOT \Register_File|Reg~279_combout\;
\Register_File|ALT_INV_Reg~198_q\ <= NOT \Register_File|Reg~198_q\;
\Register_File|ALT_INV_Reg~278_combout\ <= NOT \Register_File|Reg~278_combout\;
\Register_File|ALT_INV_Reg~102_q\ <= NOT \Register_File|Reg~102_q\;
\Register_File|ALT_INV_Reg~86_q\ <= NOT \Register_File|Reg~86_q\;
\Register_File|ALT_INV_Reg~277_combout\ <= NOT \Register_File|Reg~277_combout\;
\Instruction_Mem|ALT_INV_ROM~6_combout\ <= NOT \Instruction_Mem|ROM~6_combout\;
\Instruction_Mem|ALT_INV_ROM~5_combout\ <= NOT \Instruction_Mem|ROM~5_combout\;
\Instruction_Mem|ALT_INV_ROM~4_combout\ <= NOT \Instruction_Mem|ROM~4_combout\;
\Instruction_Mem|ALT_INV_ROM~3_combout\ <= NOT \Instruction_Mem|ROM~3_combout\;
\Instruction_Mem|ALT_INV_ROM~2_combout\ <= NOT \Instruction_Mem|ROM~2_combout\;
\Program_Counter|ALT_INV_pout\(3) <= NOT \Program_Counter|pout\(3);
\Program_Counter|ALT_INV_pout\(2) <= NOT \Program_Counter|pout\(2);
\Instruction_Mem|ALT_INV_ROM~1_combout\ <= NOT \Instruction_Mem|ROM~1_combout\;
\Program_Counter|ALT_INV_pout\(15) <= NOT \Program_Counter|pout\(15);
\Program_Counter|ALT_INV_pout\(14) <= NOT \Program_Counter|pout\(14);
\Program_Counter|ALT_INV_pout\(13) <= NOT \Program_Counter|pout\(13);
\Program_Counter|ALT_INV_pout\(12) <= NOT \Program_Counter|pout\(12);
\Program_Counter|ALT_INV_pout\(11) <= NOT \Program_Counter|pout\(11);
\Program_Counter|ALT_INV_pout\(10) <= NOT \Program_Counter|pout\(10);
\Instruction_Mem|ALT_INV_ROM~0_combout\ <= NOT \Instruction_Mem|ROM~0_combout\;
\Program_Counter|ALT_INV_pout\(9) <= NOT \Program_Counter|pout\(9);
\Program_Counter|ALT_INV_pout\(8) <= NOT \Program_Counter|pout\(8);
\Program_Counter|ALT_INV_pout\(7) <= NOT \Program_Counter|pout\(7);
\Program_Counter|ALT_INV_pout\(6) <= NOT \Program_Counter|pout\(6);
\Program_Counter|ALT_INV_pout\(4) <= NOT \Program_Counter|pout\(4);
\Program_Counter|ALT_INV_pout\(1) <= NOT \Program_Counter|pout\(1);
\Program_Counter|ALT_INV_pout\(0) <= NOT \Program_Counter|pout\(0);
\Register_File|ALT_INV_Reg~422_combout\ <= NOT \Register_File|Reg~422_combout\;
\Register_File|ALT_INV_Reg~418_combout\ <= NOT \Register_File|Reg~418_combout\;
\Register_File|ALT_INV_Reg~414_combout\ <= NOT \Register_File|Reg~414_combout\;
\Arith_Logi_Unit|ALT_INV_Add0~61_sumout\ <= NOT \Arith_Logi_Unit|Add0~61_sumout\;
\Arith_Logi_Unit|ALT_INV_Add0~49_sumout\ <= NOT \Arith_Logi_Unit|Add0~49_sumout\;
\Arith_Logi_Unit|ALT_INV_Add0~33_sumout\ <= NOT \Arith_Logi_Unit|Add0~33_sumout\;
\Arith_Logi_Unit|ALT_INV_Add0~17_sumout\ <= NOT \Arith_Logi_Unit|Add0~17_sumout\;
\Arith_Logi_Unit|ALT_INV_Add0~1_sumout\ <= NOT \Arith_Logi_Unit|Add0~1_sumout\;
\Register_File|ALT_INV_Reg~44_q\ <= NOT \Register_File|Reg~44_q\;
\Register_File|ALT_INV_Reg~41_q\ <= NOT \Register_File|Reg~41_q\;
\Prog_Coun_Adder|ALT_INV_Add0~21_sumout\ <= NOT \Prog_Coun_Adder|Add0~21_sumout\;
\Prog_Coun_Adder|ALT_INV_Add0~9_sumout\ <= NOT \Prog_Coun_Adder|Add0~9_sumout\;
\Register_File|ALT_INV_Reg~40_q\ <= NOT \Register_File|Reg~40_q\;
\Register_File|ALT_INV_Reg~24_q\ <= NOT \Register_File|Reg~24_q\;
\Register_File|ALT_INV_Reg~39_q\ <= NOT \Register_File|Reg~39_q\;
\Register_File|ALT_INV_Reg~23_q\ <= NOT \Register_File|Reg~23_q\;
\Register_File|ALT_INV_Reg~37_q\ <= NOT \Register_File|Reg~37_q\;
\Register_File|ALT_INV_Reg~21_q\ <= NOT \Register_File|Reg~21_q\;
\Register_File|ALT_INV_Reg~31_q\ <= NOT \Register_File|Reg~31_q\;
\Register_File|ALT_INV_Reg~48_q\ <= NOT \Register_File|Reg~48_q\;
\Register_File|ALT_INV_Reg~32_q\ <= NOT \Register_File|Reg~32_q\;
\Register_File|ALT_INV_Reg~49_q\ <= NOT \Register_File|Reg~49_q\;
\Register_File|ALT_INV_Reg~33_q\ <= NOT \Register_File|Reg~33_q\;
\Register_File|ALT_INV_Reg~50_q\ <= NOT \Register_File|Reg~50_q\;
\Register_File|ALT_INV_Reg~34_q\ <= NOT \Register_File|Reg~34_q\;
\Register_File|ALT_INV_Reg~51_q\ <= NOT \Register_File|Reg~51_q\;
\Register_File|ALT_INV_Reg~35_q\ <= NOT \Register_File|Reg~35_q\;
\Register_File|ALT_INV_Reg~52_q\ <= NOT \Register_File|Reg~52_q\;
\Register_File|ALT_INV_Reg~36_q\ <= NOT \Register_File|Reg~36_q\;
\Register_File|ALT_INV_Reg~25_q\ <= NOT \Register_File|Reg~25_q\;
\Register_File|ALT_INV_Reg~42_q\ <= NOT \Register_File|Reg~42_q\;
\Register_File|ALT_INV_Reg~26_q\ <= NOT \Register_File|Reg~26_q\;
\Register_File|ALT_INV_Reg~43_q\ <= NOT \Register_File|Reg~43_q\;
\Register_File|ALT_INV_Reg~27_q\ <= NOT \Register_File|Reg~27_q\;
\Register_File|ALT_INV_Reg~28_q\ <= NOT \Register_File|Reg~28_q\;
\Register_File|ALT_INV_Reg~45_q\ <= NOT \Register_File|Reg~45_q\;
\Register_File|ALT_INV_Reg~29_q\ <= NOT \Register_File|Reg~29_q\;
\Register_File|ALT_INV_Reg~46_q\ <= NOT \Register_File|Reg~46_q\;
\Register_File|ALT_INV_Reg~30_q\ <= NOT \Register_File|Reg~30_q\;
\Register_File|ALT_INV_Reg~38_q\ <= NOT \Register_File|Reg~38_q\;
\Register_File|ALT_INV_Reg~22_q\ <= NOT \Register_File|Reg~22_q\;

-- Location: IOOBUF_X40_Y0_N36
\out_PC_IN[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_out_PC_IN(0));

-- Location: IOOBUF_X28_Y0_N2
\out_PC_IN[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~5_sumout\,
	devoe => ww_devoe,
	o => ww_out_PC_IN(1));

-- Location: IOOBUF_X8_Y0_N19
\out_PC_IN[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Branch_Mux|SAIDA[2]~0_combout\,
	devoe => ww_devoe,
	o => ww_out_PC_IN(2));

-- Location: IOOBUF_X38_Y0_N53
\out_PC_IN[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~13_sumout\,
	devoe => ww_devoe,
	o => ww_out_PC_IN(3));

-- Location: IOOBUF_X36_Y0_N2
\out_PC_IN[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_out_PC_IN(4));

-- Location: IOOBUF_X50_Y0_N76
\out_PC_IN[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Branch_Mux|SAIDA[5]~1_combout\,
	devoe => ww_devoe,
	o => ww_out_PC_IN(5));

-- Location: IOOBUF_X68_Y81_N53
\out_PC_IN[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_out_PC_IN(6));

-- Location: IOOBUF_X70_Y81_N36
\out_PC_IN[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~29_sumout\,
	devoe => ww_devoe,
	o => ww_out_PC_IN(7));

-- Location: IOOBUF_X66_Y81_N42
\out_PC_IN[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~33_sumout\,
	devoe => ww_devoe,
	o => ww_out_PC_IN(8));

-- Location: IOOBUF_X32_Y0_N36
\out_PC_IN[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~37_sumout\,
	devoe => ww_devoe,
	o => ww_out_PC_IN(9));

-- Location: IOOBUF_X8_Y0_N53
\out_PC_IN[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~41_sumout\,
	devoe => ww_devoe,
	o => ww_out_PC_IN(10));

-- Location: IOOBUF_X26_Y0_N93
\out_PC_IN[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~45_sumout\,
	devoe => ww_devoe,
	o => ww_out_PC_IN(11));

-- Location: IOOBUF_X30_Y0_N19
\out_PC_IN[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~49_sumout\,
	devoe => ww_devoe,
	o => ww_out_PC_IN(12));

-- Location: IOOBUF_X70_Y81_N53
\out_PC_IN[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~53_sumout\,
	devoe => ww_devoe,
	o => ww_out_PC_IN(13));

-- Location: IOOBUF_X64_Y81_N19
\out_PC_IN[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~57_sumout\,
	devoe => ww_devoe,
	o => ww_out_PC_IN(14));

-- Location: IOOBUF_X68_Y81_N19
\out_PC_IN[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~61_sumout\,
	devoe => ww_devoe,
	o => ww_out_PC_IN(15));

-- Location: IOOBUF_X34_Y81_N59
\out_ROM_OUTPUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~5_combout\,
	devoe => ww_devoe,
	o => ww_out_ROM_OUTPUT(0));

-- Location: IOOBUF_X52_Y81_N36
\out_ROM_OUTPUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~4_combout\,
	devoe => ww_devoe,
	o => ww_out_ROM_OUTPUT(1));

-- Location: IOOBUF_X50_Y81_N42
\out_ROM_OUTPUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~6_combout\,
	devoe => ww_devoe,
	o => ww_out_ROM_OUTPUT(2));

-- Location: IOOBUF_X86_Y81_N2
\out_ROM_OUTPUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~5_combout\,
	devoe => ww_devoe,
	o => ww_out_ROM_OUTPUT(3));

-- Location: IOOBUF_X66_Y81_N93
\out_ROM_OUTPUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~3_combout\,
	devoe => ww_devoe,
	o => ww_out_ROM_OUTPUT(4));

-- Location: IOOBUF_X36_Y81_N36
\out_ROM_OUTPUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~9_combout\,
	devoe => ww_devoe,
	o => ww_out_ROM_OUTPUT(5));

-- Location: IOOBUF_X76_Y81_N19
\out_ROM_OUTPUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~7_combout\,
	devoe => ww_devoe,
	o => ww_out_ROM_OUTPUT(6));

-- Location: IOOBUF_X36_Y81_N53
\out_ROM_OUTPUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~9_combout\,
	devoe => ww_devoe,
	o => ww_out_ROM_OUTPUT(7));

-- Location: IOOBUF_X62_Y81_N53
\out_ROM_OUTPUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~6_combout\,
	devoe => ww_devoe,
	o => ww_out_ROM_OUTPUT(8));

-- Location: IOOBUF_X88_Y81_N20
\out_ROM_OUTPUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~5_combout\,
	devoe => ww_devoe,
	o => ww_out_ROM_OUTPUT(9));

-- Location: IOOBUF_X52_Y81_N53
\out_ROM_OUTPUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~4_combout\,
	devoe => ww_devoe,
	o => ww_out_ROM_OUTPUT(10));

-- Location: IOOBUF_X82_Y81_N59
\out_ROM_OUTPUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~7_combout\,
	devoe => ww_devoe,
	o => ww_out_ROM_OUTPUT(11));

-- Location: IOOBUF_X36_Y81_N19
\out_ROM_OUTPUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_ROM_OUTPUT(12));

-- Location: IOOBUF_X4_Y0_N2
\out_ROM_OUTPUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_ROM_OUTPUT(13));

-- Location: IOOBUF_X66_Y81_N76
\out_ROM_OUTPUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~3_combout\,
	devoe => ww_devoe,
	o => ww_out_ROM_OUTPUT(14));

-- Location: IOOBUF_X88_Y81_N3
\out_ROM_OUTPUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_ROM_OUTPUT(15));

-- Location: IOOBUF_X89_Y8_N39
\out_ROM_INPUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_Counter|pout\(0),
	devoe => ww_devoe,
	o => ww_out_ROM_INPUT(0));

-- Location: IOOBUF_X89_Y6_N39
\out_ROM_INPUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_Counter|pout\(1),
	devoe => ww_devoe,
	o => ww_out_ROM_INPUT(1));

-- Location: IOOBUF_X64_Y0_N2
\out_ROM_INPUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_Counter|pout\(2),
	devoe => ww_devoe,
	o => ww_out_ROM_INPUT(2));

-- Location: IOOBUF_X68_Y0_N19
\out_ROM_INPUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_Counter|pout\(3),
	devoe => ww_devoe,
	o => ww_out_ROM_INPUT(3));

-- Location: IOOBUF_X62_Y0_N19
\out_ROM_INPUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_Counter|pout\(4),
	devoe => ww_devoe,
	o => ww_out_ROM_INPUT(4));

-- Location: IOOBUF_X66_Y0_N59
\out_ROM_INPUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_Counter|pout\(5),
	devoe => ww_devoe,
	o => ww_out_ROM_INPUT(5));

-- Location: IOOBUF_X60_Y0_N53
\out_ROM_INPUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_Counter|pout\(6),
	devoe => ww_devoe,
	o => ww_out_ROM_INPUT(6));

-- Location: IOOBUF_X58_Y0_N93
\out_ROM_INPUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_Counter|pout\(7),
	devoe => ww_devoe,
	o => ww_out_ROM_INPUT(7));

-- Location: IOOBUF_X62_Y0_N36
\out_ROM_INPUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_Counter|pout\(8),
	devoe => ww_devoe,
	o => ww_out_ROM_INPUT(8));

-- Location: IOOBUF_X38_Y0_N19
\out_ROM_INPUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_Counter|pout\(9),
	devoe => ww_devoe,
	o => ww_out_ROM_INPUT(9));

-- Location: IOOBUF_X66_Y0_N93
\out_ROM_INPUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_Counter|pout\(10),
	devoe => ww_devoe,
	o => ww_out_ROM_INPUT(10));

-- Location: IOOBUF_X50_Y0_N42
\out_ROM_INPUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_Counter|pout[11]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_out_ROM_INPUT(11));

-- Location: IOOBUF_X66_Y0_N42
\out_ROM_INPUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_Counter|pout\(12),
	devoe => ww_devoe,
	o => ww_out_ROM_INPUT(12));

-- Location: IOOBUF_X60_Y0_N36
\out_ROM_INPUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_Counter|pout\(13),
	devoe => ww_devoe,
	o => ww_out_ROM_INPUT(13));

-- Location: IOOBUF_X26_Y0_N76
\out_ROM_INPUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_Counter|pout\(14),
	devoe => ww_devoe,
	o => ww_out_ROM_INPUT(14));

-- Location: IOOBUF_X38_Y0_N36
\out_ROM_INPUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_Counter|pout\(15),
	devoe => ww_devoe,
	o => ww_out_ROM_INPUT(15));

-- Location: IOOBUF_X72_Y0_N2
\out_reg_a_data[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~314_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_a_data(0));

-- Location: IOOBUF_X89_Y8_N22
\out_reg_a_data[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~280_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_a_data(1));

-- Location: IOOBUF_X68_Y0_N53
\out_reg_a_data[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~318_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_a_data(2));

-- Location: IOOBUF_X72_Y0_N36
\out_reg_a_data[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~322_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_a_data(3));

-- Location: IOOBUF_X64_Y0_N36
\out_reg_a_data[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~418_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_a_data(4));

-- Location: IOOBUF_X70_Y0_N53
\out_reg_a_data[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~294_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_a_data(5));

-- Location: IOOBUF_X68_Y0_N2
\out_reg_a_data[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~290_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_a_data(6));

-- Location: IOOBUF_X72_Y0_N19
\out_reg_a_data[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~422_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_a_data(7));

-- Location: IOOBUF_X70_Y0_N36
\out_reg_a_data[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~287_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_a_data(8));

-- Location: IOOBUF_X28_Y0_N19
\out_reg_a_data[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~283_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_a_data(9));

-- Location: IOOBUF_X72_Y0_N53
\out_reg_a_data[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~414_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_a_data(10));

-- Location: IOOBUF_X89_Y8_N5
\out_reg_a_data[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~310_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_a_data(11));

-- Location: IOOBUF_X70_Y0_N2
\out_reg_a_data[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~306_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_a_data(12));

-- Location: IOOBUF_X68_Y0_N36
\out_reg_a_data[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~303_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_a_data(13));

-- Location: IOOBUF_X89_Y6_N22
\out_reg_a_data[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~300_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_a_data(14));

-- Location: IOOBUF_X89_Y4_N62
\out_reg_a_data[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~297_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_a_data(15));

-- Location: IOOBUF_X89_Y4_N79
\out_reg_b_data[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~410_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_b_data(0));

-- Location: IOOBUF_X66_Y0_N76
\out_reg_b_data[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~406_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_b_data(1));

-- Location: IOOBUF_X89_Y6_N5
\out_reg_b_data[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~402_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_b_data(2));

-- Location: IOOBUF_X64_Y0_N19
\out_reg_b_data[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~398_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_b_data(3));

-- Location: IOOBUF_X89_Y35_N79
\out_reg_b_data[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~394_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_b_data(4));

-- Location: IOOBUF_X54_Y0_N19
\out_reg_b_data[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~390_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_b_data(5));

-- Location: IOOBUF_X58_Y0_N59
\out_reg_b_data[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~386_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_b_data(6));

-- Location: IOOBUF_X89_Y4_N96
\out_reg_b_data[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~382_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_b_data(7));

-- Location: IOOBUF_X64_Y0_N53
\out_reg_b_data[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~378_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_b_data(8));

-- Location: IOOBUF_X60_Y0_N2
\out_reg_b_data[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~374_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_b_data(9));

-- Location: IOOBUF_X89_Y8_N56
\out_reg_b_data[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~370_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_b_data(10));

-- Location: IOOBUF_X89_Y6_N56
\out_reg_b_data[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~366_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_b_data(11));

-- Location: IOOBUF_X54_Y0_N2
\out_reg_b_data[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~362_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_b_data(12));

-- Location: IOOBUF_X60_Y0_N19
\out_reg_b_data[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~358_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_b_data(13));

-- Location: IOOBUF_X70_Y0_N19
\out_reg_b_data[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~354_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_b_data(14));

-- Location: IOOBUF_X89_Y35_N45
\out_reg_b_data[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Register_File|Reg~350_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_b_data(15));

-- Location: IOOBUF_X62_Y0_N2
\out_write_data[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_out_write_data(0));

-- Location: IOOBUF_X56_Y0_N53
\out_write_data[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~5_sumout\,
	devoe => ww_devoe,
	o => ww_out_write_data(1));

-- Location: IOOBUF_X34_Y0_N59
\out_write_data[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~9_sumout\,
	devoe => ww_devoe,
	o => ww_out_write_data(2));

-- Location: IOOBUF_X58_Y0_N42
\out_write_data[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~13_sumout\,
	devoe => ww_devoe,
	o => ww_out_write_data(3));

-- Location: IOOBUF_X89_Y36_N39
\out_write_data[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_out_write_data(4));

-- Location: IOOBUF_X89_Y9_N39
\out_write_data[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~21_sumout\,
	devoe => ww_devoe,
	o => ww_out_write_data(5));

-- Location: IOOBUF_X54_Y0_N53
\out_write_data[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_out_write_data(6));

-- Location: IOOBUF_X74_Y81_N59
\out_write_data[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~29_sumout\,
	devoe => ww_devoe,
	o => ww_out_write_data(7));

-- Location: IOOBUF_X52_Y0_N19
\out_write_data[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~33_sumout\,
	devoe => ww_devoe,
	o => ww_out_write_data(8));

-- Location: IOOBUF_X89_Y9_N22
\out_write_data[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~37_sumout\,
	devoe => ww_devoe,
	o => ww_out_write_data(9));

-- Location: IOOBUF_X72_Y81_N36
\out_write_data[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~41_sumout\,
	devoe => ww_devoe,
	o => ww_out_write_data(10));

-- Location: IOOBUF_X36_Y0_N19
\out_write_data[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~45_sumout\,
	devoe => ww_devoe,
	o => ww_out_write_data(11));

-- Location: IOOBUF_X52_Y0_N2
\out_write_data[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~49_sumout\,
	devoe => ww_devoe,
	o => ww_out_write_data(12));

-- Location: IOOBUF_X40_Y0_N53
\out_write_data[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~53_sumout\,
	devoe => ww_devoe,
	o => ww_out_write_data(13));

-- Location: IOOBUF_X56_Y0_N36
\out_write_data[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~57_sumout\,
	devoe => ww_devoe,
	o => ww_out_write_data(14));

-- Location: IOOBUF_X50_Y0_N93
\out_write_data[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~61_sumout\,
	devoe => ww_devoe,
	o => ww_out_write_data(15));

-- Location: IOOBUF_X60_Y81_N2
\out_reg_a_addr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~6_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_a_addr(0));

-- Location: IOOBUF_X38_Y81_N53
\out_reg_a_addr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~5_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_a_addr(1));

-- Location: IOOBUF_X32_Y81_N19
\out_reg_a_addr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~4_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_a_addr(2));

-- Location: IOOBUF_X84_Y81_N36
\out_reg_a_addr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~7_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_a_addr(3));

-- Location: IOOBUF_X78_Y81_N36
\out_reg_b_addr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~3_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_b_addr(0));

-- Location: IOOBUF_X56_Y81_N36
\out_reg_b_addr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~9_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_b_addr(1));

-- Location: IOOBUF_X76_Y81_N2
\out_reg_b_addr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~7_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_b_addr(2));

-- Location: IOOBUF_X54_Y81_N2
\out_reg_b_addr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~9_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_b_addr(3));

-- Location: IOOBUF_X64_Y81_N53
\out_reg_dst_addr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~5_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_dst_addr(0));

-- Location: IOOBUF_X60_Y81_N19
\out_reg_dst_addr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~4_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_dst_addr(1));

-- Location: IOOBUF_X52_Y81_N2
\out_reg_dst_addr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~6_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_dst_addr(2));

-- Location: IOOBUF_X34_Y0_N42
\out_reg_dst_addr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~5_combout\,
	devoe => ww_devoe,
	o => ww_out_reg_dst_addr(3));

-- Location: IOOBUF_X30_Y81_N19
\out_op_code[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_op_code(0));

-- Location: IOOBUF_X58_Y81_N93
\out_op_code[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_op_code(1));

-- Location: IOOBUF_X78_Y81_N19
\out_op_code[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~3_combout\,
	devoe => ww_devoe,
	o => ww_out_op_code(2));

-- Location: IOOBUF_X89_Y37_N22
\out_op_code[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_op_code(3));

-- Location: IOOBUF_X6_Y0_N36
\out_flags_UC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_flags_UC(0));

-- Location: IOOBUF_X30_Y81_N2
\out_flags_UC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_flags_UC(1));

-- Location: IOOBUF_X80_Y81_N53
\out_flags_UC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~3_combout\,
	devoe => ww_devoe,
	o => ww_out_flags_UC(2));

-- Location: IOOBUF_X6_Y0_N2
\out_flags_UC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_flags_UC(3));

-- Location: IOOBUF_X88_Y81_N54
\out_flags_UC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_out_flags_UC(4));

-- Location: IOOBUF_X30_Y0_N2
\out_flags_UC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_flags_UC(5));

-- Location: IOOBUF_X78_Y81_N53
\out_flags_UC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	devoe => ww_devoe,
	o => ww_out_flags_UC(6));

-- Location: IOOBUF_X6_Y0_N53
\out_flags_UC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_flags_UC(7));

-- Location: IOOBUF_X26_Y81_N93
\out_OP_ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_OP_ULA(0));

-- Location: IOOBUF_X28_Y0_N53
\out_OP_ULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_OP_ULA(1));

-- Location: IOOBUF_X34_Y81_N93
\out_OP_ULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_OP_ULA(2));

-- Location: IOOBUF_X89_Y38_N39
\out_muxRD_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~5_combout\,
	devoe => ww_devoe,
	o => ww_out_muxRD_out(0));

-- Location: IOOBUF_X74_Y81_N93
\out_muxRD_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_Reg_Dst|SAIDA[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_out_muxRD_out(1));

-- Location: IOOBUF_X89_Y4_N45
\out_muxRD_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_Reg_Dst|SAIDA[2]~1_combout\,
	devoe => ww_devoe,
	o => ww_out_muxRD_out(2));

-- Location: IOOBUF_X72_Y81_N53
\out_muxRD_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_Reg_Dst|SAIDA[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_out_muxRD_out(3));

-- Location: IOOBUF_X64_Y81_N2
\out_signal_ula_in[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~5_combout\,
	devoe => ww_devoe,
	o => ww_out_signal_ula_in(0));

-- Location: IOOBUF_X28_Y81_N53
\out_signal_ula_in[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~4_combout\,
	devoe => ww_devoe,
	o => ww_out_signal_ula_in(1));

-- Location: IOOBUF_X40_Y81_N53
\out_signal_ula_in[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~6_combout\,
	devoe => ww_devoe,
	o => ww_out_signal_ula_in(2));

-- Location: IOOBUF_X34_Y0_N76
\out_signal_ula_in[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~5_combout\,
	devoe => ww_devoe,
	o => ww_out_signal_ula_in(3));

-- Location: IOOBUF_X28_Y0_N36
\out_signal_ula_in[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_signal_ula_in(4));

-- Location: IOOBUF_X28_Y81_N2
\out_signal_ula_in[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_signal_ula_in(5));

-- Location: IOOBUF_X58_Y81_N42
\out_signal_ula_in[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_signal_ula_in(6));

-- Location: IOOBUF_X74_Y81_N42
\out_signal_ula_in[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_signal_ula_in(7));

-- Location: IOOBUF_X76_Y81_N53
\out_signal_ula_in[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_signal_ula_in(8));

-- Location: IOOBUF_X26_Y81_N42
\out_signal_ula_in[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_signal_ula_in(9));

-- Location: IOOBUF_X4_Y0_N53
\out_signal_ula_in[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_signal_ula_in(10));

-- Location: IOOBUF_X2_Y0_N59
\out_signal_ula_in[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_signal_ula_in(11));

-- Location: IOOBUF_X56_Y81_N53
\out_signal_ula_in[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_signal_ula_in(12));

-- Location: IOOBUF_X86_Y81_N36
\out_signal_ula_in[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_signal_ula_in(13));

-- Location: IOOBUF_X89_Y35_N96
\out_signal_ula_in[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_signal_ula_in(14));

-- Location: IOOBUF_X80_Y81_N36
\out_signal_ula_in[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_signal_ula_in(15));

-- Location: IOOBUF_X89_Y36_N22
\out_branch_sel~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Branch_AND_Gate|S~combout\,
	devoe => ww_devoe,
	o => ww_out_branch_sel);

-- Location: IOOBUF_X40_Y0_N19
\out_mux_branch[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_out_mux_branch(0));

-- Location: IOOBUF_X30_Y0_N53
\out_mux_branch[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~5_sumout\,
	devoe => ww_devoe,
	o => ww_out_mux_branch(1));

-- Location: IOOBUF_X26_Y0_N59
\out_mux_branch[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Branch_Mux|SAIDA[2]~0_combout\,
	devoe => ww_devoe,
	o => ww_out_mux_branch(2));

-- Location: IOOBUF_X38_Y0_N2
\out_mux_branch[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~13_sumout\,
	devoe => ww_devoe,
	o => ww_out_mux_branch(3));

-- Location: IOOBUF_X36_Y0_N36
\out_mux_branch[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_out_mux_branch(4));

-- Location: IOOBUF_X40_Y0_N2
\out_mux_branch[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Branch_Mux|SAIDA[5]~1_combout\,
	devoe => ww_devoe,
	o => ww_out_mux_branch(5));

-- Location: IOOBUF_X70_Y81_N2
\out_mux_branch[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_out_mux_branch(6));

-- Location: IOOBUF_X68_Y81_N2
\out_mux_branch[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~29_sumout\,
	devoe => ww_devoe,
	o => ww_out_mux_branch(7));

-- Location: IOOBUF_X62_Y81_N2
\out_mux_branch[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~33_sumout\,
	devoe => ww_devoe,
	o => ww_out_mux_branch(8));

-- Location: IOOBUF_X32_Y0_N19
\out_mux_branch[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~37_sumout\,
	devoe => ww_devoe,
	o => ww_out_mux_branch(9));

-- Location: IOOBUF_X26_Y0_N42
\out_mux_branch[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~41_sumout\,
	devoe => ww_devoe,
	o => ww_out_mux_branch(10));

-- Location: IOOBUF_X6_Y0_N19
\out_mux_branch[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~45_sumout\,
	devoe => ww_devoe,
	o => ww_out_mux_branch(11));

-- Location: IOOBUF_X32_Y0_N53
\out_mux_branch[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~49_sumout\,
	devoe => ww_devoe,
	o => ww_out_mux_branch(12));

-- Location: IOOBUF_X68_Y81_N36
\out_mux_branch[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~53_sumout\,
	devoe => ww_devoe,
	o => ww_out_mux_branch(13));

-- Location: IOOBUF_X66_Y81_N59
\out_mux_branch[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~57_sumout\,
	devoe => ww_devoe,
	o => ww_out_mux_branch(14));

-- Location: IOOBUF_X70_Y81_N19
\out_mux_branch[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Prog_Coun_Adder|Add0~61_sumout\,
	devoe => ww_devoe,
	o => ww_out_mux_branch(15));

-- Location: IOOBUF_X34_Y81_N42
\out_signal_extender[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~5_combout\,
	devoe => ww_devoe,
	o => ww_out_signal_extender(0));

-- Location: IOOBUF_X50_Y81_N59
\out_signal_extender[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~4_combout\,
	devoe => ww_devoe,
	o => ww_out_signal_extender(1));

-- Location: IOOBUF_X40_Y81_N2
\out_signal_extender[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~6_combout\,
	devoe => ww_devoe,
	o => ww_out_signal_extender(2));

-- Location: IOOBUF_X86_Y81_N19
\out_signal_extender[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~5_combout\,
	devoe => ww_devoe,
	o => ww_out_signal_extender(3));

-- Location: IOOBUF_X89_Y38_N5
\out_signal_extender[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_signal_extender(4));

-- Location: IOOBUF_X56_Y81_N19
\out_signal_extender[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_signal_extender(5));

-- Location: IOOBUF_X89_Y37_N56
\out_signal_extender[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_signal_extender(6));

-- Location: IOOBUF_X4_Y0_N36
\out_signal_extender[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_signal_extender(7));

-- Location: IOOBUF_X36_Y81_N2
\out_signal_extender[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_signal_extender(8));

-- Location: IOOBUF_X82_Y81_N76
\out_signal_extender[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_signal_extender(9));

-- Location: IOOBUF_X89_Y38_N56
\out_signal_extender[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_signal_extender(10));

-- Location: IOOBUF_X32_Y81_N53
\out_signal_extender[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_signal_extender(11));

-- Location: IOOBUF_X62_Y81_N19
\out_signal_extender[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_signal_extender(12));

-- Location: IOOBUF_X38_Y81_N19
\out_signal_extender[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_signal_extender(13));

-- Location: IOOBUF_X89_Y36_N56
\out_signal_extender[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_signal_extender(14));

-- Location: IOOBUF_X2_Y0_N93
\out_signal_extender[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_signal_extender(15));

-- Location: IOOBUF_X2_Y0_N76
\out_shift_adder_in[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_shift_adder_in(0));

-- Location: IOOBUF_X4_Y0_N19
\out_shift_adder_in[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_shift_adder_in(1));

-- Location: IOOBUF_X89_Y37_N5
\out_shift_adder_in[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~5_combout\,
	devoe => ww_devoe,
	o => ww_out_shift_adder_in(2));

-- Location: IOOBUF_X32_Y81_N36
\out_shift_adder_in[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~4_combout\,
	devoe => ww_devoe,
	o => ww_out_shift_adder_in(3));

-- Location: IOOBUF_X54_Y81_N53
\out_shift_adder_in[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~6_combout\,
	devoe => ww_devoe,
	o => ww_out_shift_adder_in(4));

-- Location: IOOBUF_X76_Y81_N36
\out_shift_adder_in[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~5_combout\,
	devoe => ww_devoe,
	o => ww_out_shift_adder_in(5));

-- Location: IOOBUF_X84_Y81_N19
\out_shift_adder_in[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_shift_adder_in(6));

-- Location: IOOBUF_X86_Y81_N53
\out_shift_adder_in[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_shift_adder_in(7));

-- Location: IOOBUF_X80_Y81_N2
\out_shift_adder_in[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_shift_adder_in(8));

-- Location: IOOBUF_X32_Y81_N2
\out_shift_adder_in[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_shift_adder_in(9));

-- Location: IOOBUF_X26_Y81_N76
\out_shift_adder_in[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_shift_adder_in(10));

-- Location: IOOBUF_X62_Y81_N36
\out_shift_adder_in[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_shift_adder_in(11));

-- Location: IOOBUF_X89_Y35_N62
\out_shift_adder_in[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_shift_adder_in(12));

-- Location: IOOBUF_X78_Y81_N2
\out_shift_adder_in[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_shift_adder_in(13));

-- Location: IOOBUF_X60_Y81_N36
\out_shift_adder_in[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_shift_adder_in(14));

-- Location: IOOBUF_X60_Y81_N53
\out_shift_adder_in[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_shift_adder_in(15));

-- Location: IOOBUF_X30_Y81_N53
\out_jump_address[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~5_combout\,
	devoe => ww_devoe,
	o => ww_out_jump_address(0));

-- Location: IOOBUF_X28_Y81_N36
\out_jump_address[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~4_combout\,
	devoe => ww_devoe,
	o => ww_out_jump_address(1));

-- Location: IOOBUF_X50_Y81_N76
\out_jump_address[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~6_combout\,
	devoe => ww_devoe,
	o => ww_out_jump_address(2));

-- Location: IOOBUF_X88_Y81_N37
\out_jump_address[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~5_combout\,
	devoe => ww_devoe,
	o => ww_out_jump_address(3));

-- Location: IOOBUF_X80_Y81_N19
\out_jump_address[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~3_combout\,
	devoe => ww_devoe,
	o => ww_out_jump_address(4));

-- Location: IOOBUF_X54_Y81_N36
\out_jump_address[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~9_combout\,
	devoe => ww_devoe,
	o => ww_out_jump_address(5));

-- Location: IOOBUF_X84_Y81_N53
\out_jump_address[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~7_combout\,
	devoe => ww_devoe,
	o => ww_out_jump_address(6));

-- Location: IOOBUF_X38_Y81_N2
\out_jump_address[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~9_combout\,
	devoe => ww_devoe,
	o => ww_out_jump_address(7));

-- Location: IOOBUF_X40_Y81_N36
\out_jump_address[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~6_combout\,
	devoe => ww_devoe,
	o => ww_out_jump_address(8));

-- Location: IOOBUF_X89_Y38_N22
\out_jump_address[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~5_combout\,
	devoe => ww_devoe,
	o => ww_out_jump_address(9));

-- Location: IOOBUF_X50_Y81_N93
\out_jump_address[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~4_combout\,
	devoe => ww_devoe,
	o => ww_out_jump_address(10));

-- Location: IOOBUF_X82_Y81_N42
\out_jump_address[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~7_combout\,
	devoe => ww_devoe,
	o => ww_out_jump_address(11));

-- Location: IOOBUF_X30_Y81_N36
\out_jump_shift[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~5_combout\,
	devoe => ww_devoe,
	o => ww_out_jump_shift(0));

-- Location: IOOBUF_X58_Y81_N59
\out_jump_shift[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~4_combout\,
	devoe => ww_devoe,
	o => ww_out_jump_shift(1));

-- Location: IOOBUF_X64_Y81_N36
\out_jump_shift[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~6_combout\,
	devoe => ww_devoe,
	o => ww_out_jump_shift(2));

-- Location: IOOBUF_X34_Y81_N76
\out_jump_shift[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~5_combout\,
	devoe => ww_devoe,
	o => ww_out_jump_shift(3));

-- Location: IOOBUF_X72_Y81_N19
\out_jump_shift[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~3_combout\,
	devoe => ww_devoe,
	o => ww_out_jump_shift(4));

-- Location: IOOBUF_X38_Y81_N36
\out_jump_shift[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~9_combout\,
	devoe => ww_devoe,
	o => ww_out_jump_shift(5));

-- Location: IOOBUF_X82_Y81_N93
\out_jump_shift[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~7_combout\,
	devoe => ww_devoe,
	o => ww_out_jump_shift(6));

-- Location: IOOBUF_X54_Y81_N19
\out_jump_shift[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~9_combout\,
	devoe => ww_devoe,
	o => ww_out_jump_shift(7));

-- Location: IOOBUF_X58_Y81_N76
\out_jump_shift[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~6_combout\,
	devoe => ww_devoe,
	o => ww_out_jump_shift(8));

-- Location: IOOBUF_X52_Y81_N19
\out_jump_shift[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~5_combout\,
	devoe => ww_devoe,
	o => ww_out_jump_shift(9));

-- Location: IOOBUF_X28_Y81_N19
\out_jump_shift[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~4_combout\,
	devoe => ww_devoe,
	o => ww_out_jump_shift(10));

-- Location: IOOBUF_X84_Y81_N2
\out_jump_shift[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_Mem|ROM~7_combout\,
	devoe => ww_devoe,
	o => ww_out_jump_shift(11));

-- Location: IOOBUF_X40_Y81_N19
\out_jump_shift[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_jump_shift(12));

-- Location: IOOBUF_X26_Y81_N59
\out_jump_shift[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_jump_shift(13));

-- Location: IOOBUF_X8_Y0_N36
\out_jump_shift[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_Counter|pout\(14),
	devoe => ww_devoe,
	o => ww_out_jump_shift(14));

-- Location: IOOBUF_X30_Y0_N36
\out_jump_shift[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_Counter|pout\(15),
	devoe => ww_devoe,
	o => ww_out_jump_shift(15));

-- Location: IOOBUF_X2_Y0_N42
\out_ula_zero~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Equal0~4_combout\,
	devoe => ww_devoe,
	o => ww_out_ula_zero);

-- Location: IOOBUF_X62_Y0_N53
\out_ula_resultado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_out_ula_resultado(0));

-- Location: IOOBUF_X56_Y0_N19
\out_ula_resultado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~5_sumout\,
	devoe => ww_devoe,
	o => ww_out_ula_resultado(1));

-- Location: IOOBUF_X32_Y0_N2
\out_ula_resultado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~9_sumout\,
	devoe => ww_devoe,
	o => ww_out_ula_resultado(2));

-- Location: IOOBUF_X58_Y0_N76
\out_ula_resultado[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~13_sumout\,
	devoe => ww_devoe,
	o => ww_out_ula_resultado(3));

-- Location: IOOBUF_X89_Y36_N5
\out_ula_resultado[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_out_ula_resultado(4));

-- Location: IOOBUF_X89_Y9_N5
\out_ula_resultado[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~21_sumout\,
	devoe => ww_devoe,
	o => ww_out_ula_resultado(5));

-- Location: IOOBUF_X54_Y0_N36
\out_ula_resultado[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_out_ula_resultado(6));

-- Location: IOOBUF_X74_Y81_N76
\out_ula_resultado[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~29_sumout\,
	devoe => ww_devoe,
	o => ww_out_ula_resultado(7));

-- Location: IOOBUF_X52_Y0_N53
\out_ula_resultado[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~33_sumout\,
	devoe => ww_devoe,
	o => ww_out_ula_resultado(8));

-- Location: IOOBUF_X89_Y9_N56
\out_ula_resultado[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~37_sumout\,
	devoe => ww_devoe,
	o => ww_out_ula_resultado(9));

-- Location: IOOBUF_X72_Y81_N2
\out_ula_resultado[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~41_sumout\,
	devoe => ww_devoe,
	o => ww_out_ula_resultado(10));

-- Location: IOOBUF_X36_Y0_N53
\out_ula_resultado[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~45_sumout\,
	devoe => ww_devoe,
	o => ww_out_ula_resultado(11));

-- Location: IOOBUF_X52_Y0_N36
\out_ula_resultado[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~49_sumout\,
	devoe => ww_devoe,
	o => ww_out_ula_resultado(12));

-- Location: IOOBUF_X34_Y0_N93
\out_ula_resultado[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~53_sumout\,
	devoe => ww_devoe,
	o => ww_out_ula_resultado(13));

-- Location: IOOBUF_X56_Y0_N2
\out_ula_resultado[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~57_sumout\,
	devoe => ww_devoe,
	o => ww_out_ula_resultado(14));

-- Location: IOOBUF_X50_Y0_N59
\out_ula_resultado[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Arith_Logi_Unit|Add0~61_sumout\,
	devoe => ww_devoe,
	o => ww_out_ula_resultado(15));

-- Location: IOIBUF_X56_Y81_N1
\Clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G13
\Clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~input_o\,
	outclk => \Clock~inputCLKENA0_outclk\);

-- Location: FF_X72_Y7_N8
\Program_Counter|pout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Prog_Coun_Adder|Add0~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_Counter|pout\(0));

-- Location: LABCELL_X71_Y7_N0
\Prog_Coun_Adder|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prog_Coun_Adder|Add0~1_sumout\ = SUM(( \Program_Counter|pout\(0) ) + ( VCC ) + ( !VCC ))
-- \Prog_Coun_Adder|Add0~2\ = CARRY(( \Program_Counter|pout\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Program_Counter|ALT_INV_pout\(0),
	cin => GND,
	sumout => \Prog_Coun_Adder|Add0~1_sumout\,
	cout => \Prog_Coun_Adder|Add0~2\);

-- Location: FF_X72_Y7_N2
\Program_Counter|pout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Prog_Coun_Adder|Add0~5_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_Counter|pout\(1));

-- Location: LABCELL_X71_Y7_N3
\Prog_Coun_Adder|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prog_Coun_Adder|Add0~5_sumout\ = SUM(( \Program_Counter|pout\(1) ) + ( GND ) + ( \Prog_Coun_Adder|Add0~2\ ))
-- \Prog_Coun_Adder|Add0~6\ = CARRY(( \Program_Counter|pout\(1) ) + ( GND ) + ( \Prog_Coun_Adder|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Program_Counter|ALT_INV_pout\(1),
	cin => \Prog_Coun_Adder|Add0~2\,
	sumout => \Prog_Coun_Adder|Add0~5_sumout\,
	cout => \Prog_Coun_Adder|Add0~6\);

-- Location: FF_X72_Y7_N17
\Program_Counter|pout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Branch_Mux|SAIDA[2]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_Counter|pout\(2));

-- Location: LABCELL_X71_Y7_N6
\Prog_Coun_Adder|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prog_Coun_Adder|Add0~9_sumout\ = SUM(( \Program_Counter|pout\(2) ) + ( GND ) + ( \Prog_Coun_Adder|Add0~6\ ))
-- \Prog_Coun_Adder|Add0~10\ = CARRY(( \Program_Counter|pout\(2) ) + ( GND ) + ( \Prog_Coun_Adder|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Program_Counter|ALT_INV_pout\(2),
	cin => \Prog_Coun_Adder|Add0~6\,
	sumout => \Prog_Coun_Adder|Add0~9_sumout\,
	cout => \Prog_Coun_Adder|Add0~10\);

-- Location: LABCELL_X71_Y7_N9
\Prog_Coun_Adder|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prog_Coun_Adder|Add0~13_sumout\ = SUM(( \Program_Counter|pout\(3) ) + ( GND ) + ( \Prog_Coun_Adder|Add0~10\ ))
-- \Prog_Coun_Adder|Add0~14\ = CARRY(( \Program_Counter|pout\(3) ) + ( GND ) + ( \Prog_Coun_Adder|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Program_Counter|ALT_INV_pout\(3),
	cin => \Prog_Coun_Adder|Add0~10\,
	sumout => \Prog_Coun_Adder|Add0~13_sumout\,
	cout => \Prog_Coun_Adder|Add0~14\);

-- Location: FF_X72_Y7_N32
\Program_Counter|pout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Prog_Coun_Adder|Add0~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_Counter|pout\(3));

-- Location: MLABCELL_X72_Y7_N57
\Instruction_Mem|ROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Instruction_Mem|ROM~2_combout\ = ( !\Program_Counter|pout\(3) & ( !\Program_Counter|pout\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Program_Counter|ALT_INV_pout\(2),
	dataf => \Program_Counter|ALT_INV_pout\(3),
	combout => \Instruction_Mem|ROM~2_combout\);

-- Location: LABCELL_X71_Y7_N12
\Prog_Coun_Adder|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prog_Coun_Adder|Add0~17_sumout\ = SUM(( \Program_Counter|pout\(4) ) + ( GND ) + ( \Prog_Coun_Adder|Add0~14\ ))
-- \Prog_Coun_Adder|Add0~18\ = CARRY(( \Program_Counter|pout\(4) ) + ( GND ) + ( \Prog_Coun_Adder|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Program_Counter|ALT_INV_pout\(4),
	cin => \Prog_Coun_Adder|Add0~14\,
	sumout => \Prog_Coun_Adder|Add0~17_sumout\,
	cout => \Prog_Coun_Adder|Add0~18\);

-- Location: FF_X71_Y7_N38
\Program_Counter|pout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Prog_Coun_Adder|Add0~17_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_Counter|pout\(4));

-- Location: LABCELL_X71_Y7_N54
\Instruction_Mem|ROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Instruction_Mem|ROM~0_combout\ = ( !\Program_Counter|pout\(9) & ( !\Program_Counter|pout[5]~DUPLICATE_q\ & ( (!\Program_Counter|pout\(8) & (!\Program_Counter|pout\(6) & (!\Program_Counter|pout\(4) & !\Program_Counter|pout\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(8),
	datab => \Program_Counter|ALT_INV_pout\(6),
	datac => \Program_Counter|ALT_INV_pout\(4),
	datad => \Program_Counter|ALT_INV_pout\(7),
	datae => \Program_Counter|ALT_INV_pout\(9),
	dataf => \Program_Counter|ALT_INV_pout[5]~DUPLICATE_q\,
	combout => \Instruction_Mem|ROM~0_combout\);

-- Location: MLABCELL_X72_Y7_N54
\Instruction_Mem|ROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Instruction_Mem|ROM~4_combout\ = ( \Instruction_Mem|ROM~0_combout\ & ( (!\Program_Counter|pout\(1) & (\Program_Counter|pout\(0) & (\Instruction_Mem|ROM~1_combout\ & \Instruction_Mem|ROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(1),
	datab => \Program_Counter|ALT_INV_pout\(0),
	datac => \Instruction_Mem|ALT_INV_ROM~1_combout\,
	datad => \Instruction_Mem|ALT_INV_ROM~2_combout\,
	dataf => \Instruction_Mem|ALT_INV_ROM~0_combout\,
	combout => \Instruction_Mem|ROM~4_combout\);

-- Location: MLABCELL_X72_Y8_N36
\Instruction_Mem|ROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Instruction_Mem|ROM~7_combout\ = ( \Instruction_Mem|ROM~0_combout\ & ( (!\Program_Counter|pout\(0) & (\Instruction_Mem|ROM~2_combout\ & \Instruction_Mem|ROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Program_Counter|ALT_INV_pout\(0),
	datac => \Instruction_Mem|ALT_INV_ROM~2_combout\,
	datad => \Instruction_Mem|ALT_INV_ROM~1_combout\,
	dataf => \Instruction_Mem|ALT_INV_ROM~0_combout\,
	combout => \Instruction_Mem|ROM~7_combout\);

-- Location: MLABCELL_X72_Y7_N3
\Instruction_Mem|ROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Instruction_Mem|ROM~6_combout\ = ( \Instruction_Mem|ROM~1_combout\ & ( (\Instruction_Mem|ROM~0_combout\ & (!\Program_Counter|pout\(0) & (\Instruction_Mem|ROM~2_combout\ & \Program_Counter|pout\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~0_combout\,
	datab => \Program_Counter|ALT_INV_pout\(0),
	datac => \Instruction_Mem|ALT_INV_ROM~2_combout\,
	datad => \Program_Counter|ALT_INV_pout\(1),
	dataf => \Instruction_Mem|ALT_INV_ROM~1_combout\,
	combout => \Instruction_Mem|ROM~6_combout\);

-- Location: LABCELL_X73_Y8_N0
\Arith_Logi_Unit|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Arith_Logi_Unit|Add0~1_sumout\ = SUM(( \Register_File|Reg~314_combout\ ) + ( \Instruction_Mem|ROM~5_combout\ ) + ( !VCC ))
-- \Arith_Logi_Unit|Add0~2\ = CARRY(( \Register_File|Reg~314_combout\ ) + ( \Instruction_Mem|ROM~5_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~5_combout\,
	datac => \Register_File|ALT_INV_Reg~314_combout\,
	cin => GND,
	sumout => \Arith_Logi_Unit|Add0~1_sumout\,
	cout => \Arith_Logi_Unit|Add0~2\);

-- Location: LABCELL_X75_Y8_N48
\Arith_Logi_Unit|Add0~1_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \Arith_Logi_Unit|Add0~1_wirecell_combout\ = ( !\Arith_Logi_Unit|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Arith_Logi_Unit|ALT_INV_Add0~1_sumout\,
	combout => \Arith_Logi_Unit|Add0~1_wirecell_combout\);

-- Location: MLABCELL_X72_Y7_N0
\Instruction_Mem|ROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Instruction_Mem|ROM~8_combout\ = ( !\Program_Counter|pout\(3) & ( (!\Program_Counter|pout\(2) & (!\Program_Counter|pout\(0) $ (!\Program_Counter|pout\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Program_Counter|ALT_INV_pout\(0),
	datac => \Program_Counter|ALT_INV_pout\(2),
	datad => \Program_Counter|ALT_INV_pout\(1),
	dataf => \Program_Counter|ALT_INV_pout\(3),
	combout => \Instruction_Mem|ROM~8_combout\);

-- Location: LABCELL_X74_Y7_N3
\Mux_Reg_Dst|SAIDA[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux_Reg_Dst|SAIDA[1]~0_combout\ = ( !\Program_Counter|pout\(1) & ( \Instruction_Mem|ROM~0_combout\ & ( (\Instruction_Mem|ROM~1_combout\ & (\Instruction_Mem|ROM~2_combout\ & ((\Instruction_Mem|ROM~8_combout\) # (\Program_Counter|pout\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~1_combout\,
	datab => \Program_Counter|ALT_INV_pout\(0),
	datac => \Instruction_Mem|ALT_INV_ROM~2_combout\,
	datad => \Instruction_Mem|ALT_INV_ROM~8_combout\,
	datae => \Program_Counter|ALT_INV_pout\(1),
	dataf => \Instruction_Mem|ALT_INV_ROM~0_combout\,
	combout => \Mux_Reg_Dst|SAIDA[1]~0_combout\);

-- Location: LABCELL_X74_Y7_N30
\Mux_Reg_Dst|SAIDA[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux_Reg_Dst|SAIDA[2]~1_combout\ = ( \Instruction_Mem|ROM~1_combout\ & ( (!\Program_Counter|pout\(0) & (\Instruction_Mem|ROM~0_combout\ & \Instruction_Mem|ROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Program_Counter|ALT_INV_pout\(0),
	datac => \Instruction_Mem|ALT_INV_ROM~0_combout\,
	datad => \Instruction_Mem|ALT_INV_ROM~2_combout\,
	dataf => \Instruction_Mem|ALT_INV_ROM~1_combout\,
	combout => \Mux_Reg_Dst|SAIDA[2]~1_combout\);

-- Location: LABCELL_X74_Y7_N18
\Register_File|Reg~348\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~348_combout\ = ( !\Mux_Reg_Dst|SAIDA[2]~1_combout\ & ( (!\Mux_Reg_Dst|SAIDA[1]~0_combout\ & \Instruction_Mem|ROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mux_Reg_Dst|ALT_INV_SAIDA[1]~0_combout\,
	datad => \Instruction_Mem|ALT_INV_ROM~5_combout\,
	dataf => \Mux_Reg_Dst|ALT_INV_SAIDA[2]~1_combout\,
	combout => \Register_File|Reg~348_combout\);

-- Location: FF_X75_Y8_N49
\Register_File|Reg~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Arith_Logi_Unit|Add0~1_wirecell_combout\,
	ena => \Register_File|Reg~348_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~37_q\);

-- Location: LABCELL_X71_Y8_N18
\Register_File|Reg~430\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~430_combout\ = ( !\Arith_Logi_Unit|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Arith_Logi_Unit|ALT_INV_Add0~1_sumout\,
	combout => \Register_File|Reg~430_combout\);

-- Location: LABCELL_X74_Y7_N6
\Register_File|Reg~349\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~349_combout\ = ( \Instruction_Mem|ROM~0_combout\ & ( \Instruction_Mem|ROM~1_combout\ & ( (!\Instruction_Mem|ROM~8_combout\ & (\Instruction_Mem|ROM~2_combout\ & (!\Program_Counter|pout\(1) & !\Program_Counter|pout\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~8_combout\,
	datab => \Instruction_Mem|ALT_INV_ROM~2_combout\,
	datac => \Program_Counter|ALT_INV_pout\(1),
	datad => \Program_Counter|ALT_INV_pout\(0),
	datae => \Instruction_Mem|ALT_INV_ROM~0_combout\,
	dataf => \Instruction_Mem|ALT_INV_ROM~1_combout\,
	combout => \Register_File|Reg~349_combout\);

-- Location: FF_X71_Y8_N19
\Register_File|Reg~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Register_File|Reg~430_combout\,
	ena => \Register_File|Reg~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~101_q\);

-- Location: MLABCELL_X72_Y8_N3
\Register_File|Reg~312\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~312_combout\ = ( \Instruction_Mem|ROM~4_combout\ & ( (\Register_File|Reg~101_q\ & !\Instruction_Mem|ROM~7_combout\) ) ) # ( !\Instruction_Mem|ROM~4_combout\ & ( (\Register_File|Reg~37_q\ & !\Instruction_Mem|ROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~37_q\,
	datac => \Register_File|ALT_INV_Reg~101_q\,
	datad => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	dataf => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	combout => \Register_File|Reg~312_combout\);

-- Location: LABCELL_X71_Y8_N51
\Register_File|Reg~431\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~431_combout\ = ( !\Arith_Logi_Unit|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Arith_Logi_Unit|ALT_INV_Add0~1_sumout\,
	combout => \Register_File|Reg~431_combout\);

-- Location: FF_X71_Y8_N53
\Register_File|Reg~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Register_File|Reg~431_combout\,
	ena => \Instruction_Mem|ROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~197_q\);

-- Location: MLABCELL_X72_Y8_N21
\Register_File|Reg~313\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~313_combout\ = ( \Instruction_Mem|ROM~7_combout\ & ( (\Register_File|Reg~197_q\ & !\Instruction_Mem|ROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~197_q\,
	datac => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	dataf => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	combout => \Register_File|Reg~313_combout\);

-- Location: FF_X75_Y8_N41
\Register_File|Reg~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~1_sumout\,
	sload => VCC,
	ena => \Instruction_Mem|ROM~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~85_q\);

-- Location: LABCELL_X74_Y7_N33
\Register_File|Reg~347\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~347_combout\ = ( !\Mux_Reg_Dst|SAIDA[1]~0_combout\ & ( (!\Instruction_Mem|ROM~5_combout\ & !\Mux_Reg_Dst|SAIDA[2]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~5_combout\,
	datac => \Mux_Reg_Dst|ALT_INV_SAIDA[2]~1_combout\,
	dataf => \Mux_Reg_Dst|ALT_INV_SAIDA[1]~0_combout\,
	combout => \Register_File|Reg~347_combout\);

-- Location: FF_X74_Y8_N32
\Register_File|Reg~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~1_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~21_q\);

-- Location: LABCELL_X74_Y8_N30
\Register_File|Reg~311\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~311_combout\ = ( !\Instruction_Mem|ROM~7_combout\ & ( (!\Instruction_Mem|ROM~4_combout\ & ((\Register_File|Reg~21_q\))) # (\Instruction_Mem|ROM~4_combout\ & (\Register_File|Reg~85_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~85_q\,
	datac => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	datad => \Register_File|ALT_INV_Reg~21_q\,
	dataf => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	combout => \Register_File|Reg~311_combout\);

-- Location: LABCELL_X73_Y8_N51
\Register_File|Reg~314\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~314_combout\ = ( \Register_File|Reg~311_combout\ & ( (!\Instruction_Mem|ROM~6_combout\ & (!\Instruction_Mem|ROM~5_combout\)) # (\Instruction_Mem|ROM~6_combout\ & ((!\Instruction_Mem|ROM~5_combout\ & (!\Register_File|Reg~312_combout\)) # 
-- (\Instruction_Mem|ROM~5_combout\ & ((!\Register_File|Reg~313_combout\))))) ) ) # ( !\Register_File|Reg~311_combout\ & ( (\Instruction_Mem|ROM~6_combout\ & ((!\Instruction_Mem|ROM~5_combout\ & (!\Register_File|Reg~312_combout\)) # 
-- (\Instruction_Mem|ROM~5_combout\ & ((!\Register_File|Reg~313_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101000000010100010100000011011001110010001101100111001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~6_combout\,
	datab => \Instruction_Mem|ALT_INV_ROM~5_combout\,
	datac => \Register_File|ALT_INV_Reg~312_combout\,
	datad => \Register_File|ALT_INV_Reg~313_combout\,
	dataf => \Register_File|ALT_INV_Reg~311_combout\,
	combout => \Register_File|Reg~314_combout\);

-- Location: LABCELL_X73_Y8_N3
\Arith_Logi_Unit|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Arith_Logi_Unit|Add0~5_sumout\ = SUM(( \Register_File|Reg~280_combout\ ) + ( \Instruction_Mem|ROM~4_combout\ ) + ( \Arith_Logi_Unit|Add0~2\ ))
-- \Arith_Logi_Unit|Add0~6\ = CARRY(( \Register_File|Reg~280_combout\ ) + ( \Instruction_Mem|ROM~4_combout\ ) + ( \Arith_Logi_Unit|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	datad => \Register_File|ALT_INV_Reg~280_combout\,
	cin => \Arith_Logi_Unit|Add0~2\,
	sumout => \Arith_Logi_Unit|Add0~5_sumout\,
	cout => \Arith_Logi_Unit|Add0~6\);

-- Location: FF_X72_Y7_N29
\Register_File|Reg~38DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~5_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~348_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~38DUPLICATE_q\);

-- Location: FF_X73_Y7_N26
\Register_File|Reg~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~5_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~22_q\);

-- Location: MLABCELL_X72_Y7_N51
\Register_File|Reg~277\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~277_combout\ = ( !\Instruction_Mem|ROM~5_combout\ & ( (!\Instruction_Mem|ROM~6_combout\ & ((\Register_File|Reg~22_q\))) # (\Instruction_Mem|ROM~6_combout\ & (\Register_File|Reg~38DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~38DUPLICATE_q\,
	datac => \Register_File|ALT_INV_Reg~22_q\,
	datad => \Instruction_Mem|ALT_INV_ROM~6_combout\,
	dataf => \Instruction_Mem|ALT_INV_ROM~5_combout\,
	combout => \Register_File|Reg~277_combout\);

-- Location: FF_X73_Y8_N32
\Register_File|Reg~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~5_sumout\,
	sload => VCC,
	ena => \Instruction_Mem|ROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~198_q\);

-- Location: LABCELL_X73_Y8_N48
\Register_File|Reg~279\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~279_combout\ = (\Instruction_Mem|ROM~6_combout\ & (\Instruction_Mem|ROM~5_combout\ & \Register_File|Reg~198_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~6_combout\,
	datab => \Instruction_Mem|ALT_INV_ROM~5_combout\,
	datac => \Register_File|ALT_INV_Reg~198_q\,
	combout => \Register_File|Reg~279_combout\);

-- Location: FF_X72_Y8_N29
\Register_File|Reg~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~5_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~102_q\);

-- Location: FF_X73_Y6_N22
\Register_File|Reg~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~5_sumout\,
	sload => VCC,
	ena => \Instruction_Mem|ROM~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~86_q\);

-- Location: MLABCELL_X72_Y7_N48
\Register_File|Reg~278\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~278_combout\ = ( !\Instruction_Mem|ROM~5_combout\ & ( (!\Instruction_Mem|ROM~6_combout\ & ((\Register_File|Reg~86_q\))) # (\Instruction_Mem|ROM~6_combout\ & (\Register_File|Reg~102_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Register_File|ALT_INV_Reg~102_q\,
	datac => \Register_File|ALT_INV_Reg~86_q\,
	datad => \Instruction_Mem|ALT_INV_ROM~6_combout\,
	dataf => \Instruction_Mem|ALT_INV_ROM~5_combout\,
	combout => \Register_File|Reg~278_combout\);

-- Location: LABCELL_X73_Y8_N57
\Register_File|Reg~280\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~280_combout\ = ( \Register_File|Reg~278_combout\ & ( (!\Instruction_Mem|ROM~7_combout\ & (((\Register_File|Reg~277_combout\)) # (\Instruction_Mem|ROM~4_combout\))) # (\Instruction_Mem|ROM~7_combout\ & (!\Instruction_Mem|ROM~4_combout\ & 
-- ((\Register_File|Reg~279_combout\)))) ) ) # ( !\Register_File|Reg~278_combout\ & ( (!\Instruction_Mem|ROM~4_combout\ & ((!\Instruction_Mem|ROM~7_combout\ & (\Register_File|Reg~277_combout\)) # (\Instruction_Mem|ROM~7_combout\ & 
-- ((\Register_File|Reg~279_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000101010011011100010101001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	datab => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	datac => \Register_File|ALT_INV_Reg~277_combout\,
	datad => \Register_File|ALT_INV_Reg~279_combout\,
	dataf => \Register_File|ALT_INV_Reg~278_combout\,
	combout => \Register_File|Reg~280_combout\);

-- Location: LABCELL_X73_Y7_N48
\Arith_Logi_Unit|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Arith_Logi_Unit|Equal0~0_combout\ = ( \Register_File|Reg~280_combout\ & ( !\Instruction_Mem|ROM~4_combout\ ) ) # ( !\Register_File|Reg~280_combout\ & ( \Instruction_Mem|ROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	dataf => \Register_File|ALT_INV_Reg~280_combout\,
	combout => \Arith_Logi_Unit|Equal0~0_combout\);

-- Location: LABCELL_X74_Y7_N21
\Instruction_Mem|ROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Instruction_Mem|ROM~3_combout\ = ( \Instruction_Mem|ROM~1_combout\ & ( (!\Program_Counter|pout\(1) & (!\Program_Counter|pout\(0) & (\Instruction_Mem|ROM~2_combout\ & \Instruction_Mem|ROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(1),
	datab => \Program_Counter|ALT_INV_pout\(0),
	datac => \Instruction_Mem|ALT_INV_ROM~2_combout\,
	datad => \Instruction_Mem|ALT_INV_ROM~0_combout\,
	dataf => \Instruction_Mem|ALT_INV_ROM~1_combout\,
	combout => \Instruction_Mem|ROM~3_combout\);

-- Location: LABCELL_X73_Y8_N6
\Arith_Logi_Unit|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Arith_Logi_Unit|Add0~9_sumout\ = SUM(( \Register_File|Reg~318_combout\ ) + ( \Instruction_Mem|ROM~6_combout\ ) + ( \Arith_Logi_Unit|Add0~6\ ))
-- \Arith_Logi_Unit|Add0~10\ = CARRY(( \Register_File|Reg~318_combout\ ) + ( \Instruction_Mem|ROM~6_combout\ ) + ( \Arith_Logi_Unit|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Instruction_Mem|ALT_INV_ROM~6_combout\,
	datad => \Register_File|ALT_INV_Reg~318_combout\,
	cin => \Arith_Logi_Unit|Add0~6\,
	sumout => \Arith_Logi_Unit|Add0~9_sumout\,
	cout => \Arith_Logi_Unit|Add0~10\);

-- Location: FF_X73_Y8_N8
\Register_File|Reg~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Arith_Logi_Unit|Add0~9_sumout\,
	ena => \Instruction_Mem|ROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~199_q\);

-- Location: MLABCELL_X72_Y8_N15
\Register_File|Reg~317\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~317_combout\ = ( \Instruction_Mem|ROM~7_combout\ & ( (!\Instruction_Mem|ROM~4_combout\ & \Register_File|Reg~199_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	datad => \Register_File|ALT_INV_Reg~199_q\,
	dataf => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	combout => \Register_File|Reg~317_combout\);

-- Location: FF_X75_Y8_N7
\Register_File|Reg~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~9_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~23_q\);

-- Location: FF_X71_Y8_N40
\Register_File|Reg~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~9_sumout\,
	sload => VCC,
	ena => \Instruction_Mem|ROM~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~87_q\);

-- Location: MLABCELL_X72_Y8_N51
\Register_File|Reg~315\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~315_combout\ = ( \Instruction_Mem|ROM~4_combout\ & ( (!\Instruction_Mem|ROM~7_combout\ & \Register_File|Reg~87_q\) ) ) # ( !\Instruction_Mem|ROM~4_combout\ & ( (!\Instruction_Mem|ROM~7_combout\ & \Register_File|Reg~23_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	datab => \Register_File|ALT_INV_Reg~23_q\,
	datac => \Register_File|ALT_INV_Reg~87_q\,
	dataf => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	combout => \Register_File|Reg~315_combout\);

-- Location: FF_X75_Y8_N25
\Register_File|Reg~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~9_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~348_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~39_q\);

-- Location: FF_X72_Y8_N40
\Register_File|Reg~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~9_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~103_q\);

-- Location: MLABCELL_X72_Y8_N39
\Register_File|Reg~316\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~316_combout\ = ( \Instruction_Mem|ROM~4_combout\ & ( (!\Instruction_Mem|ROM~7_combout\ & \Register_File|Reg~103_q\) ) ) # ( !\Instruction_Mem|ROM~4_combout\ & ( (!\Instruction_Mem|ROM~7_combout\ & \Register_File|Reg~39_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	datac => \Register_File|ALT_INV_Reg~39_q\,
	datad => \Register_File|ALT_INV_Reg~103_q\,
	dataf => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	combout => \Register_File|Reg~316_combout\);

-- Location: MLABCELL_X72_Y8_N12
\Register_File|Reg~318\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~318_combout\ = ( \Register_File|Reg~316_combout\ & ( (!\Instruction_Mem|ROM~5_combout\ & (((\Instruction_Mem|ROM~6_combout\) # (\Register_File|Reg~315_combout\)))) # (\Instruction_Mem|ROM~5_combout\ & (\Register_File|Reg~317_combout\ & 
-- ((\Instruction_Mem|ROM~6_combout\)))) ) ) # ( !\Register_File|Reg~316_combout\ & ( (!\Instruction_Mem|ROM~5_combout\ & (((\Register_File|Reg~315_combout\ & !\Instruction_Mem|ROM~6_combout\)))) # (\Instruction_Mem|ROM~5_combout\ & 
-- (\Register_File|Reg~317_combout\ & ((\Instruction_Mem|ROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001000010100001000100001010101110110000101010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~5_combout\,
	datab => \Register_File|ALT_INV_Reg~317_combout\,
	datac => \Register_File|ALT_INV_Reg~315_combout\,
	datad => \Instruction_Mem|ALT_INV_ROM~6_combout\,
	dataf => \Register_File|ALT_INV_Reg~316_combout\,
	combout => \Register_File|Reg~318_combout\);

-- Location: LABCELL_X73_Y8_N9
\Arith_Logi_Unit|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Arith_Logi_Unit|Add0~13_sumout\ = SUM(( \Register_File|Reg~322_combout\ ) + ( \Instruction_Mem|ROM~5_combout\ ) + ( \Arith_Logi_Unit|Add0~10\ ))
-- \Arith_Logi_Unit|Add0~14\ = CARRY(( \Register_File|Reg~322_combout\ ) + ( \Instruction_Mem|ROM~5_combout\ ) + ( \Arith_Logi_Unit|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~5_combout\,
	datad => \Register_File|ALT_INV_Reg~322_combout\,
	cin => \Arith_Logi_Unit|Add0~10\,
	sumout => \Arith_Logi_Unit|Add0~13_sumout\,
	cout => \Arith_Logi_Unit|Add0~14\);

-- Location: FF_X73_Y7_N14
\Register_File|Reg~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~13_sumout\,
	sload => VCC,
	ena => \Instruction_Mem|ROM~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~88_q\);

-- Location: FF_X74_Y8_N25
\Register_File|Reg~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~13_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~104_q\);

-- Location: LABCELL_X74_Y8_N24
\Register_File|Reg~320\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~320_combout\ = ( \Register_File|Reg~104_q\ & ( \Instruction_Mem|ROM~6_combout\ & ( !\Instruction_Mem|ROM~5_combout\ ) ) ) # ( \Register_File|Reg~104_q\ & ( !\Instruction_Mem|ROM~6_combout\ & ( (\Register_File|Reg~88_q\ & 
-- !\Instruction_Mem|ROM~5_combout\) ) ) ) # ( !\Register_File|Reg~104_q\ & ( !\Instruction_Mem|ROM~6_combout\ & ( (\Register_File|Reg~88_q\ & !\Instruction_Mem|ROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Register_File|ALT_INV_Reg~88_q\,
	datad => \Instruction_Mem|ALT_INV_ROM~5_combout\,
	datae => \Register_File|ALT_INV_Reg~104_q\,
	dataf => \Instruction_Mem|ALT_INV_ROM~6_combout\,
	combout => \Register_File|Reg~320_combout\);

-- Location: FF_X73_Y7_N28
\Register_File|Reg~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~13_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~24_q\);

-- Location: FF_X73_Y7_N56
\Register_File|Reg~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~13_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~348_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~40_q\);

-- Location: LABCELL_X73_Y7_N33
\Register_File|Reg~319\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~319_combout\ = ( \Instruction_Mem|ROM~6_combout\ & ( (!\Instruction_Mem|ROM~5_combout\ & \Register_File|Reg~40_q\) ) ) # ( !\Instruction_Mem|ROM~6_combout\ & ( (\Register_File|Reg~24_q\ & !\Instruction_Mem|ROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Register_File|ALT_INV_Reg~24_q\,
	datac => \Instruction_Mem|ALT_INV_ROM~5_combout\,
	datad => \Register_File|ALT_INV_Reg~40_q\,
	dataf => \Instruction_Mem|ALT_INV_ROM~6_combout\,
	combout => \Register_File|Reg~319_combout\);

-- Location: FF_X73_Y8_N11
\Register_File|Reg~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Arith_Logi_Unit|Add0~13_sumout\,
	ena => \Instruction_Mem|ROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~200_q\);

-- Location: LABCELL_X73_Y7_N45
\Register_File|Reg~321\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~321_combout\ = ( \Instruction_Mem|ROM~6_combout\ & ( (\Register_File|Reg~200_q\ & \Instruction_Mem|ROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~200_q\,
	datac => \Instruction_Mem|ALT_INV_ROM~5_combout\,
	dataf => \Instruction_Mem|ALT_INV_ROM~6_combout\,
	combout => \Register_File|Reg~321_combout\);

-- Location: LABCELL_X74_Y8_N36
\Register_File|Reg~322\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~322_combout\ = ( \Register_File|Reg~321_combout\ & ( (!\Instruction_Mem|ROM~7_combout\ & ((!\Instruction_Mem|ROM~4_combout\ & ((\Register_File|Reg~319_combout\))) # (\Instruction_Mem|ROM~4_combout\ & (\Register_File|Reg~320_combout\)))) 
-- # (\Instruction_Mem|ROM~7_combout\ & (!\Instruction_Mem|ROM~4_combout\)) ) ) # ( !\Register_File|Reg~321_combout\ & ( (!\Instruction_Mem|ROM~7_combout\ & ((!\Instruction_Mem|ROM~4_combout\ & ((\Register_File|Reg~319_combout\))) # 
-- (\Instruction_Mem|ROM~4_combout\ & (\Register_File|Reg~320_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	datab => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	datac => \Register_File|ALT_INV_Reg~320_combout\,
	datad => \Register_File|ALT_INV_Reg~319_combout\,
	dataf => \Register_File|ALT_INV_Reg~321_combout\,
	combout => \Register_File|Reg~322_combout\);

-- Location: LABCELL_X73_Y8_N12
\Arith_Logi_Unit|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Arith_Logi_Unit|Add0~17_sumout\ = SUM(( \Register_File|Reg~418_combout\ ) + ( GND ) + ( \Arith_Logi_Unit|Add0~14\ ))
-- \Arith_Logi_Unit|Add0~18\ = CARRY(( \Register_File|Reg~418_combout\ ) + ( GND ) + ( \Arith_Logi_Unit|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Register_File|ALT_INV_Reg~418_combout\,
	cin => \Arith_Logi_Unit|Add0~14\,
	sumout => \Arith_Logi_Unit|Add0~17_sumout\,
	cout => \Arith_Logi_Unit|Add0~18\);

-- Location: FF_X74_Y8_N58
\Register_File|Reg~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~17_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~25_q\);

-- Location: LABCELL_X74_Y8_N18
\Register_File|Reg~428\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~428_combout\ = ( !\Arith_Logi_Unit|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Arith_Logi_Unit|ALT_INV_Add0~17_sumout\,
	combout => \Register_File|Reg~428_combout\);

-- Location: FF_X74_Y8_N19
\Register_File|Reg~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Register_File|Reg~428_combout\,
	ena => \Instruction_Mem|ROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~201_q\);

-- Location: MLABCELL_X72_Y7_N24
\Register_File|Reg~418\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~418_combout\ = ( \Program_Counter|pout\(1) & ( \Instruction_Mem|ROM~7_combout\ & ( (\Instruction_Mem|ROM~5_combout\ & ((!\Register_File|Reg~201_q\) # (\Program_Counter|pout\(0)))) ) ) ) # ( !\Program_Counter|pout\(1) & ( 
-- \Instruction_Mem|ROM~7_combout\ & ( \Instruction_Mem|ROM~5_combout\ ) ) ) # ( \Program_Counter|pout\(1) & ( !\Instruction_Mem|ROM~7_combout\ & ( (\Instruction_Mem|ROM~5_combout\) # (\Register_File|Reg~25_q\) ) ) ) # ( !\Program_Counter|pout\(1) & ( 
-- !\Instruction_Mem|ROM~7_combout\ & ( (\Instruction_Mem|ROM~5_combout\) # (\Register_File|Reg~25_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111100001111000011110000110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~25_q\,
	datab => \Register_File|ALT_INV_Reg~201_q\,
	datac => \Instruction_Mem|ALT_INV_ROM~5_combout\,
	datad => \Program_Counter|ALT_INV_pout\(0),
	datae => \Program_Counter|ALT_INV_pout\(1),
	dataf => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	combout => \Register_File|Reg~418_combout\);

-- Location: LABCELL_X73_Y8_N15
\Arith_Logi_Unit|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Arith_Logi_Unit|Add0~21_sumout\ = SUM(( \Register_File|Reg~294_combout\ ) + ( GND ) + ( \Arith_Logi_Unit|Add0~18\ ))
-- \Arith_Logi_Unit|Add0~22\ = CARRY(( \Register_File|Reg~294_combout\ ) + ( GND ) + ( \Arith_Logi_Unit|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Register_File|ALT_INV_Reg~294_combout\,
	cin => \Arith_Logi_Unit|Add0~18\,
	sumout => \Arith_Logi_Unit|Add0~21_sumout\,
	cout => \Arith_Logi_Unit|Add0~22\);

-- Location: FF_X73_Y8_N17
\Register_File|Reg~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Arith_Logi_Unit|Add0~21_sumout\,
	ena => \Instruction_Mem|ROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~202_q\);

-- Location: MLABCELL_X72_Y8_N54
\Register_File|Reg~293\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~293_combout\ = ( !\Instruction_Mem|ROM~4_combout\ & ( (\Instruction_Mem|ROM~7_combout\ & \Register_File|Reg~202_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	datac => \Register_File|ALT_INV_Reg~202_q\,
	dataf => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	combout => \Register_File|Reg~293_combout\);

-- Location: FF_X72_Y8_N5
\Register_File|Reg~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~21_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~106_q\);

-- Location: FF_X72_Y8_N47
\Register_File|Reg~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~21_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~348_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~42_q\);

-- Location: LABCELL_X71_Y8_N33
\Register_File|Reg~292\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~292_combout\ = ( !\Instruction_Mem|ROM~7_combout\ & ( \Instruction_Mem|ROM~4_combout\ & ( \Register_File|Reg~106_q\ ) ) ) # ( !\Instruction_Mem|ROM~7_combout\ & ( !\Instruction_Mem|ROM~4_combout\ & ( \Register_File|Reg~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~106_q\,
	datad => \Register_File|ALT_INV_Reg~42_q\,
	datae => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	dataf => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	combout => \Register_File|Reg~292_combout\);

-- Location: FF_X74_Y8_N56
\Register_File|Reg~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~21_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~26_q\);

-- Location: FF_X72_Y8_N11
\Register_File|Reg~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~21_sumout\,
	sload => VCC,
	ena => \Instruction_Mem|ROM~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~90_q\);

-- Location: MLABCELL_X72_Y8_N9
\Register_File|Reg~291\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~291_combout\ = ( \Instruction_Mem|ROM~4_combout\ & ( (!\Instruction_Mem|ROM~7_combout\ & \Register_File|Reg~90_q\) ) ) # ( !\Instruction_Mem|ROM~4_combout\ & ( (!\Instruction_Mem|ROM~7_combout\ & \Register_File|Reg~26_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	datac => \Register_File|ALT_INV_Reg~26_q\,
	datad => \Register_File|ALT_INV_Reg~90_q\,
	dataf => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	combout => \Register_File|Reg~291_combout\);

-- Location: MLABCELL_X72_Y8_N24
\Register_File|Reg~294\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~294_combout\ = ( \Register_File|Reg~292_combout\ & ( \Register_File|Reg~291_combout\ & ( (!\Instruction_Mem|ROM~5_combout\) # ((\Instruction_Mem|ROM~6_combout\ & \Register_File|Reg~293_combout\)) ) ) ) # ( 
-- !\Register_File|Reg~292_combout\ & ( \Register_File|Reg~291_combout\ & ( (!\Instruction_Mem|ROM~6_combout\ & ((!\Instruction_Mem|ROM~5_combout\))) # (\Instruction_Mem|ROM~6_combout\ & (\Register_File|Reg~293_combout\ & \Instruction_Mem|ROM~5_combout\)) ) 
-- ) ) # ( \Register_File|Reg~292_combout\ & ( !\Register_File|Reg~291_combout\ & ( (\Instruction_Mem|ROM~6_combout\ & ((!\Instruction_Mem|ROM~5_combout\) # (\Register_File|Reg~293_combout\))) ) ) ) # ( !\Register_File|Reg~292_combout\ & ( 
-- !\Register_File|Reg~291_combout\ & ( (\Instruction_Mem|ROM~6_combout\ & (\Register_File|Reg~293_combout\ & \Instruction_Mem|ROM~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101010101010000010110101010000001011111111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~6_combout\,
	datac => \Register_File|ALT_INV_Reg~293_combout\,
	datad => \Instruction_Mem|ALT_INV_ROM~5_combout\,
	datae => \Register_File|ALT_INV_Reg~292_combout\,
	dataf => \Register_File|ALT_INV_Reg~291_combout\,
	combout => \Register_File|Reg~294_combout\);

-- Location: LABCELL_X73_Y8_N18
\Arith_Logi_Unit|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Arith_Logi_Unit|Add0~25_sumout\ = SUM(( \Register_File|Reg~290_combout\ ) + ( GND ) + ( \Arith_Logi_Unit|Add0~22\ ))
-- \Arith_Logi_Unit|Add0~26\ = CARRY(( \Register_File|Reg~290_combout\ ) + ( GND ) + ( \Arith_Logi_Unit|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Register_File|ALT_INV_Reg~290_combout\,
	cin => \Arith_Logi_Unit|Add0~22\,
	sumout => \Arith_Logi_Unit|Add0~25_sumout\,
	cout => \Arith_Logi_Unit|Add0~26\);

-- Location: FF_X73_Y8_N20
\Register_File|Reg~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Arith_Logi_Unit|Add0~25_sumout\,
	ena => \Instruction_Mem|ROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~203_q\);

-- Location: MLABCELL_X72_Y8_N18
\Register_File|Reg~289\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~289_combout\ = ( \Instruction_Mem|ROM~6_combout\ & ( (!\Instruction_Mem|ROM~4_combout\ & \Register_File|Reg~203_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	datac => \Register_File|ALT_INV_Reg~203_q\,
	dataf => \Instruction_Mem|ALT_INV_ROM~6_combout\,
	combout => \Register_File|Reg~289_combout\);

-- Location: FF_X72_Y8_N53
\Register_File|Reg~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~25_sumout\,
	sload => VCC,
	ena => \Instruction_Mem|ROM~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~91_q\);

-- Location: FF_X74_Y8_N10
\Register_File|Reg~27DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~25_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~27DUPLICATE_q\);

-- Location: FF_X72_Y8_N20
\Register_File|Reg~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~25_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~348_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~43_q\);

-- Location: FF_X74_Y8_N50
\Register_File|Reg~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~25_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~107_q\);

-- Location: MLABCELL_X72_Y8_N42
\Register_File|Reg~288\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~288_combout\ = ( \Instruction_Mem|ROM~6_combout\ & ( \Instruction_Mem|ROM~4_combout\ & ( \Register_File|Reg~107_q\ ) ) ) # ( !\Instruction_Mem|ROM~6_combout\ & ( \Instruction_Mem|ROM~4_combout\ & ( \Register_File|Reg~91_q\ ) ) ) # ( 
-- \Instruction_Mem|ROM~6_combout\ & ( !\Instruction_Mem|ROM~4_combout\ & ( \Register_File|Reg~43_q\ ) ) ) # ( !\Instruction_Mem|ROM~6_combout\ & ( !\Instruction_Mem|ROM~4_combout\ & ( \Register_File|Reg~27DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~91_q\,
	datab => \Register_File|ALT_INV_Reg~27DUPLICATE_q\,
	datac => \Register_File|ALT_INV_Reg~43_q\,
	datad => \Register_File|ALT_INV_Reg~107_q\,
	datae => \Instruction_Mem|ALT_INV_ROM~6_combout\,
	dataf => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	combout => \Register_File|Reg~288_combout\);

-- Location: MLABCELL_X72_Y8_N57
\Register_File|Reg~290\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~290_combout\ = ( \Register_File|Reg~288_combout\ & ( (!\Instruction_Mem|ROM~7_combout\ & ((!\Instruction_Mem|ROM~5_combout\))) # (\Instruction_Mem|ROM~7_combout\ & (\Register_File|Reg~289_combout\ & \Instruction_Mem|ROM~5_combout\)) ) ) 
-- # ( !\Register_File|Reg~288_combout\ & ( (\Instruction_Mem|ROM~7_combout\ & (\Register_File|Reg~289_combout\ & \Instruction_Mem|ROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010110101010000001011010101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	datac => \Register_File|ALT_INV_Reg~289_combout\,
	datad => \Instruction_Mem|ALT_INV_ROM~5_combout\,
	dataf => \Register_File|ALT_INV_Reg~288_combout\,
	combout => \Register_File|Reg~290_combout\);

-- Location: LABCELL_X73_Y8_N21
\Arith_Logi_Unit|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Arith_Logi_Unit|Add0~29_sumout\ = SUM(( \Register_File|Reg~422_combout\ ) + ( GND ) + ( \Arith_Logi_Unit|Add0~26\ ))
-- \Arith_Logi_Unit|Add0~30\ = CARRY(( \Register_File|Reg~422_combout\ ) + ( GND ) + ( \Arith_Logi_Unit|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Register_File|ALT_INV_Reg~422_combout\,
	cin => \Arith_Logi_Unit|Add0~26\,
	sumout => \Arith_Logi_Unit|Add0~29_sumout\,
	cout => \Arith_Logi_Unit|Add0~30\);

-- Location: FF_X73_Y8_N14
\Register_File|Reg~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~29_sumout\,
	sload => VCC,
	ena => \Instruction_Mem|ROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~204_q\);

-- Location: FF_X74_Y8_N7
\Register_File|Reg~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~29_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~28_q\);

-- Location: LABCELL_X74_Y8_N6
\Register_File|Reg~422\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~422_combout\ = ( \Register_File|Reg~28_q\ & ( \Instruction_Mem|ROM~7_combout\ & ( (\Program_Counter|pout\(1) & (!\Program_Counter|pout\(0) & (\Register_File|Reg~204_q\ & \Instruction_Mem|ROM~5_combout\))) ) ) ) # ( 
-- !\Register_File|Reg~28_q\ & ( \Instruction_Mem|ROM~7_combout\ & ( (\Program_Counter|pout\(1) & (!\Program_Counter|pout\(0) & (\Register_File|Reg~204_q\ & \Instruction_Mem|ROM~5_combout\))) ) ) ) # ( \Register_File|Reg~28_q\ & ( 
-- !\Instruction_Mem|ROM~7_combout\ & ( !\Instruction_Mem|ROM~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(1),
	datab => \Program_Counter|ALT_INV_pout\(0),
	datac => \Register_File|ALT_INV_Reg~204_q\,
	datad => \Instruction_Mem|ALT_INV_ROM~5_combout\,
	datae => \Register_File|ALT_INV_Reg~28_q\,
	dataf => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	combout => \Register_File|Reg~422_combout\);

-- Location: LABCELL_X73_Y8_N24
\Arith_Logi_Unit|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Arith_Logi_Unit|Add0~33_sumout\ = SUM(( \Register_File|Reg~287_combout\ ) + ( GND ) + ( \Arith_Logi_Unit|Add0~30\ ))
-- \Arith_Logi_Unit|Add0~34\ = CARRY(( \Register_File|Reg~287_combout\ ) + ( GND ) + ( \Arith_Logi_Unit|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Register_File|ALT_INV_Reg~287_combout\,
	cin => \Arith_Logi_Unit|Add0~30\,
	sumout => \Arith_Logi_Unit|Add0~33_sumout\,
	cout => \Arith_Logi_Unit|Add0~34\);

-- Location: LABCELL_X73_Y7_N42
\Register_File|Reg~426\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~426_combout\ = ( !\Arith_Logi_Unit|Add0~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Arith_Logi_Unit|ALT_INV_Add0~33_sumout\,
	combout => \Register_File|Reg~426_combout\);

-- Location: FF_X73_Y7_N44
\Register_File|Reg~93DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Register_File|Reg~426_combout\,
	ena => \Instruction_Mem|ROM~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~93DUPLICATE_q\);

-- Location: FF_X73_Y7_N53
\Register_File|Reg~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~33_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~29_q\);

-- Location: LABCELL_X73_Y7_N51
\Register_File|Reg~284\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~284_combout\ = ( \Instruction_Mem|ROM~7_combout\ & ( \Instruction_Mem|ROM~4_combout\ ) ) # ( !\Instruction_Mem|ROM~7_combout\ & ( (!\Instruction_Mem|ROM~4_combout\ & ((\Register_File|Reg~29_q\))) # (\Instruction_Mem|ROM~4_combout\ & 
-- (!\Register_File|Reg~93DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111010010100001111101001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	datac => \Register_File|ALT_INV_Reg~93DUPLICATE_q\,
	datad => \Register_File|ALT_INV_Reg~29_q\,
	dataf => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	combout => \Register_File|Reg~284_combout\);

-- Location: MLABCELL_X72_Y8_N0
\Register_File|Reg~427\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~427_combout\ = !\Arith_Logi_Unit|Add0~33_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Arith_Logi_Unit|ALT_INV_Add0~33_sumout\,
	combout => \Register_File|Reg~427_combout\);

-- Location: FF_X72_Y8_N2
\Register_File|Reg~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Register_File|Reg~427_combout\,
	ena => \Register_File|Reg~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~109_q\);

-- Location: FF_X72_Y8_N32
\Register_File|Reg~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~33_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~348_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~45_q\);

-- Location: MLABCELL_X72_Y8_N30
\Register_File|Reg~285\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~285_combout\ = ( \Instruction_Mem|ROM~4_combout\ & ( (!\Register_File|Reg~109_q\) # (\Instruction_Mem|ROM~7_combout\) ) ) # ( !\Instruction_Mem|ROM~4_combout\ & ( (!\Instruction_Mem|ROM~7_combout\ & \Register_File|Reg~45_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000010101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~109_q\,
	datac => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	datad => \Register_File|ALT_INV_Reg~45_q\,
	dataf => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	combout => \Register_File|Reg~285_combout\);

-- Location: FF_X73_Y8_N26
\Register_File|Reg~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Arith_Logi_Unit|Add0~33_sumout\,
	ena => \Instruction_Mem|ROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~205_q\);

-- Location: LABCELL_X73_Y7_N15
\Register_File|Reg~286\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~286_combout\ = ( \Instruction_Mem|ROM~7_combout\ & ( (!\Instruction_Mem|ROM~4_combout\ & !\Register_File|Reg~205_q\) ) ) # ( !\Instruction_Mem|ROM~7_combout\ & ( !\Instruction_Mem|ROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	datad => \Register_File|ALT_INV_Reg~205_q\,
	dataf => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	combout => \Register_File|Reg~286_combout\);

-- Location: LABCELL_X73_Y7_N36
\Register_File|Reg~287\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~287_combout\ = ( \Register_File|Reg~285_combout\ & ( \Register_File|Reg~286_combout\ & ( (!\Instruction_Mem|ROM~5_combout\ & (((\Instruction_Mem|ROM~6_combout\) # (\Register_File|Reg~284_combout\)))) # (\Instruction_Mem|ROM~5_combout\ & 
-- (\Instruction_Mem|ROM~4_combout\ & ((!\Instruction_Mem|ROM~6_combout\)))) ) ) ) # ( !\Register_File|Reg~285_combout\ & ( \Register_File|Reg~286_combout\ & ( (!\Instruction_Mem|ROM~6_combout\ & ((!\Instruction_Mem|ROM~5_combout\ & 
-- ((\Register_File|Reg~284_combout\))) # (\Instruction_Mem|ROM~5_combout\ & (\Instruction_Mem|ROM~4_combout\)))) ) ) ) # ( \Register_File|Reg~285_combout\ & ( !\Register_File|Reg~286_combout\ & ( ((!\Instruction_Mem|ROM~5_combout\ & 
-- ((\Register_File|Reg~284_combout\))) # (\Instruction_Mem|ROM~5_combout\ & (\Instruction_Mem|ROM~4_combout\))) # (\Instruction_Mem|ROM~6_combout\) ) ) ) # ( !\Register_File|Reg~285_combout\ & ( !\Register_File|Reg~286_combout\ & ( 
-- (!\Instruction_Mem|ROM~5_combout\ & (((\Register_File|Reg~284_combout\ & !\Instruction_Mem|ROM~6_combout\)))) # (\Instruction_Mem|ROM~5_combout\ & (((\Instruction_Mem|ROM~6_combout\)) # (\Instruction_Mem|ROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100110011000111011111111100011101000000000001110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	datab => \Instruction_Mem|ALT_INV_ROM~5_combout\,
	datac => \Register_File|ALT_INV_Reg~284_combout\,
	datad => \Instruction_Mem|ALT_INV_ROM~6_combout\,
	datae => \Register_File|ALT_INV_Reg~285_combout\,
	dataf => \Register_File|ALT_INV_Reg~286_combout\,
	combout => \Register_File|Reg~287_combout\);

-- Location: LABCELL_X73_Y8_N27
\Arith_Logi_Unit|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Arith_Logi_Unit|Add0~37_sumout\ = SUM(( \Register_File|Reg~283_combout\ ) + ( GND ) + ( \Arith_Logi_Unit|Add0~34\ ))
-- \Arith_Logi_Unit|Add0~38\ = CARRY(( \Register_File|Reg~283_combout\ ) + ( GND ) + ( \Arith_Logi_Unit|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Register_File|ALT_INV_Reg~283_combout\,
	cin => \Arith_Logi_Unit|Add0~34\,
	sumout => \Arith_Logi_Unit|Add0~37_sumout\,
	cout => \Arith_Logi_Unit|Add0~38\);

-- Location: FF_X73_Y8_N29
\Register_File|Reg~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Arith_Logi_Unit|Add0~37_sumout\,
	ena => \Instruction_Mem|ROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~206_q\);

-- Location: MLABCELL_X72_Y8_N33
\Register_File|Reg~282\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~282_combout\ = ( \Instruction_Mem|ROM~6_combout\ & ( (!\Instruction_Mem|ROM~4_combout\ & \Register_File|Reg~206_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	datac => \Register_File|ALT_INV_Reg~206_q\,
	dataf => \Instruction_Mem|ALT_INV_ROM~6_combout\,
	combout => \Register_File|Reg~282_combout\);

-- Location: FF_X72_Y8_N56
\Register_File|Reg~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~37_sumout\,
	sload => VCC,
	ena => \Instruction_Mem|ROM~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~94_q\);

-- Location: FF_X74_Y8_N16
\Register_File|Reg~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~37_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~30_q\);

-- Location: FF_X74_Y7_N17
\Register_File|Reg~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~37_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~110_q\);

-- Location: FF_X73_Y7_N59
\Register_File|Reg~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~37_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~348_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~46_q\);

-- Location: LABCELL_X73_Y7_N57
\Register_File|Reg~281\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~281_combout\ = ( \Register_File|Reg~46_q\ & ( \Instruction_Mem|ROM~4_combout\ & ( (!\Instruction_Mem|ROM~6_combout\ & (\Register_File|Reg~94_q\)) # (\Instruction_Mem|ROM~6_combout\ & ((\Register_File|Reg~110_q\))) ) ) ) # ( 
-- !\Register_File|Reg~46_q\ & ( \Instruction_Mem|ROM~4_combout\ & ( (!\Instruction_Mem|ROM~6_combout\ & (\Register_File|Reg~94_q\)) # (\Instruction_Mem|ROM~6_combout\ & ((\Register_File|Reg~110_q\))) ) ) ) # ( \Register_File|Reg~46_q\ & ( 
-- !\Instruction_Mem|ROM~4_combout\ & ( (\Instruction_Mem|ROM~6_combout\) # (\Register_File|Reg~30_q\) ) ) ) # ( !\Register_File|Reg~46_q\ & ( !\Instruction_Mem|ROM~4_combout\ & ( (\Register_File|Reg~30_q\ & !\Instruction_Mem|ROM~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~94_q\,
	datab => \Register_File|ALT_INV_Reg~30_q\,
	datac => \Instruction_Mem|ALT_INV_ROM~6_combout\,
	datad => \Register_File|ALT_INV_Reg~110_q\,
	datae => \Register_File|ALT_INV_Reg~46_q\,
	dataf => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	combout => \Register_File|Reg~281_combout\);

-- Location: LABCELL_X73_Y8_N54
\Register_File|Reg~283\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~283_combout\ = ( \Register_File|Reg~281_combout\ & ( (!\Instruction_Mem|ROM~7_combout\ & (!\Instruction_Mem|ROM~5_combout\)) # (\Instruction_Mem|ROM~7_combout\ & (\Instruction_Mem|ROM~5_combout\ & \Register_File|Reg~282_combout\)) ) ) # 
-- ( !\Register_File|Reg~281_combout\ & ( (\Instruction_Mem|ROM~7_combout\ & (\Instruction_Mem|ROM~5_combout\ & \Register_File|Reg~282_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010110100000101001011010000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	datac => \Instruction_Mem|ALT_INV_ROM~5_combout\,
	datad => \Register_File|ALT_INV_Reg~282_combout\,
	dataf => \Register_File|ALT_INV_Reg~281_combout\,
	combout => \Register_File|Reg~283_combout\);

-- Location: MLABCELL_X72_Y7_N33
\Arith_Logi_Unit|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Arith_Logi_Unit|Equal0~1_combout\ = ( !\Register_File|Reg~287_combout\ & ( !\Register_File|Reg~294_combout\ & ( (!\Register_File|Reg~418_combout\ & (!\Register_File|Reg~422_combout\ & (!\Register_File|Reg~290_combout\ & 
-- !\Register_File|Reg~283_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~418_combout\,
	datab => \Register_File|ALT_INV_Reg~422_combout\,
	datac => \Register_File|ALT_INV_Reg~290_combout\,
	datad => \Register_File|ALT_INV_Reg~283_combout\,
	datae => \Register_File|ALT_INV_Reg~287_combout\,
	dataf => \Register_File|ALT_INV_Reg~294_combout\,
	combout => \Arith_Logi_Unit|Equal0~1_combout\);

-- Location: MLABCELL_X72_Y7_N12
\Arith_Logi_Unit|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Arith_Logi_Unit|Equal0~3_combout\ = ( \Register_File|Reg~322_combout\ & ( (\Instruction_Mem|ROM~5_combout\ & (\Register_File|Reg~314_combout\ & (!\Instruction_Mem|ROM~6_combout\ $ (\Register_File|Reg~318_combout\)))) ) ) # ( 
-- !\Register_File|Reg~322_combout\ & ( (!\Instruction_Mem|ROM~5_combout\ & (!\Register_File|Reg~314_combout\ & (!\Instruction_Mem|ROM~6_combout\ $ (\Register_File|Reg~318_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000100001000000000000000000001000010000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~6_combout\,
	datab => \Instruction_Mem|ALT_INV_ROM~5_combout\,
	datac => \Register_File|ALT_INV_Reg~318_combout\,
	datad => \Register_File|ALT_INV_Reg~314_combout\,
	dataf => \Register_File|ALT_INV_Reg~322_combout\,
	combout => \Arith_Logi_Unit|Equal0~3_combout\);

-- Location: LABCELL_X71_Y7_N15
\Prog_Coun_Adder|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prog_Coun_Adder|Add0~21_sumout\ = SUM(( \Program_Counter|pout[5]~DUPLICATE_q\ ) + ( GND ) + ( \Prog_Coun_Adder|Add0~18\ ))
-- \Prog_Coun_Adder|Add0~22\ = CARRY(( \Program_Counter|pout[5]~DUPLICATE_q\ ) + ( GND ) + ( \Prog_Coun_Adder|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout[5]~DUPLICATE_q\,
	cin => \Prog_Coun_Adder|Add0~18\,
	sumout => \Prog_Coun_Adder|Add0~21_sumout\,
	cout => \Prog_Coun_Adder|Add0~22\);

-- Location: MLABCELL_X72_Y7_N45
\Branch_Mux|SAIDA[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Branch_Mux|SAIDA[5]~1_combout\ = ( \Arith_Logi_Unit|Equal0~3_combout\ & ( \Prog_Coun_Adder|Add0~21_sumout\ ) ) # ( !\Arith_Logi_Unit|Equal0~3_combout\ & ( \Prog_Coun_Adder|Add0~21_sumout\ ) ) # ( \Arith_Logi_Unit|Equal0~3_combout\ & ( 
-- !\Prog_Coun_Adder|Add0~21_sumout\ & ( (\Arith_Logi_Unit|Equal0~2_combout\ & (!\Arith_Logi_Unit|Equal0~0_combout\ & (\Instruction_Mem|ROM~3_combout\ & \Arith_Logi_Unit|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Arith_Logi_Unit|ALT_INV_Equal0~2_combout\,
	datab => \Arith_Logi_Unit|ALT_INV_Equal0~0_combout\,
	datac => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datad => \Arith_Logi_Unit|ALT_INV_Equal0~1_combout\,
	datae => \Arith_Logi_Unit|ALT_INV_Equal0~3_combout\,
	dataf => \Prog_Coun_Adder|ALT_INV_Add0~21_sumout\,
	combout => \Branch_Mux|SAIDA[5]~1_combout\);

-- Location: FF_X72_Y7_N41
\Program_Counter|pout[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Branch_Mux|SAIDA[5]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_Counter|pout[5]~DUPLICATE_q\);

-- Location: LABCELL_X71_Y7_N18
\Prog_Coun_Adder|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prog_Coun_Adder|Add0~25_sumout\ = SUM(( \Program_Counter|pout\(6) ) + ( GND ) + ( \Prog_Coun_Adder|Add0~22\ ))
-- \Prog_Coun_Adder|Add0~26\ = CARRY(( \Program_Counter|pout\(6) ) + ( GND ) + ( \Prog_Coun_Adder|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Program_Counter|ALT_INV_pout\(6),
	cin => \Prog_Coun_Adder|Add0~22\,
	sumout => \Prog_Coun_Adder|Add0~25_sumout\,
	cout => \Prog_Coun_Adder|Add0~26\);

-- Location: FF_X71_Y7_N41
\Program_Counter|pout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Prog_Coun_Adder|Add0~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_Counter|pout\(6));

-- Location: LABCELL_X71_Y7_N21
\Prog_Coun_Adder|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prog_Coun_Adder|Add0~29_sumout\ = SUM(( \Program_Counter|pout\(7) ) + ( GND ) + ( \Prog_Coun_Adder|Add0~26\ ))
-- \Prog_Coun_Adder|Add0~30\ = CARRY(( \Program_Counter|pout\(7) ) + ( GND ) + ( \Prog_Coun_Adder|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Program_Counter|ALT_INV_pout\(7),
	cin => \Prog_Coun_Adder|Add0~26\,
	sumout => \Prog_Coun_Adder|Add0~29_sumout\,
	cout => \Prog_Coun_Adder|Add0~30\);

-- Location: FF_X71_Y7_N44
\Program_Counter|pout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Prog_Coun_Adder|Add0~29_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_Counter|pout\(7));

-- Location: LABCELL_X71_Y7_N24
\Prog_Coun_Adder|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prog_Coun_Adder|Add0~33_sumout\ = SUM(( \Program_Counter|pout\(8) ) + ( GND ) + ( \Prog_Coun_Adder|Add0~30\ ))
-- \Prog_Coun_Adder|Add0~34\ = CARRY(( \Program_Counter|pout\(8) ) + ( GND ) + ( \Prog_Coun_Adder|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Program_Counter|ALT_INV_pout\(8),
	cin => \Prog_Coun_Adder|Add0~30\,
	sumout => \Prog_Coun_Adder|Add0~33_sumout\,
	cout => \Prog_Coun_Adder|Add0~34\);

-- Location: FF_X71_Y7_N26
\Program_Counter|pout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Prog_Coun_Adder|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_Counter|pout\(8));

-- Location: LABCELL_X71_Y7_N27
\Prog_Coun_Adder|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prog_Coun_Adder|Add0~37_sumout\ = SUM(( \Program_Counter|pout\(9) ) + ( GND ) + ( \Prog_Coun_Adder|Add0~34\ ))
-- \Prog_Coun_Adder|Add0~38\ = CARRY(( \Program_Counter|pout\(9) ) + ( GND ) + ( \Prog_Coun_Adder|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Program_Counter|ALT_INV_pout\(9),
	cin => \Prog_Coun_Adder|Add0~34\,
	sumout => \Prog_Coun_Adder|Add0~37_sumout\,
	cout => \Prog_Coun_Adder|Add0~38\);

-- Location: FF_X71_Y7_N29
\Program_Counter|pout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Prog_Coun_Adder|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_Counter|pout\(9));

-- Location: LABCELL_X71_Y7_N30
\Prog_Coun_Adder|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prog_Coun_Adder|Add0~41_sumout\ = SUM(( \Program_Counter|pout\(10) ) + ( GND ) + ( \Prog_Coun_Adder|Add0~38\ ))
-- \Prog_Coun_Adder|Add0~42\ = CARRY(( \Program_Counter|pout\(10) ) + ( GND ) + ( \Prog_Coun_Adder|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Program_Counter|ALT_INV_pout\(10),
	cin => \Prog_Coun_Adder|Add0~38\,
	sumout => \Prog_Coun_Adder|Add0~41_sumout\,
	cout => \Prog_Coun_Adder|Add0~42\);

-- Location: FF_X71_Y7_N35
\Program_Counter|pout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Prog_Coun_Adder|Add0~41_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_Counter|pout\(10));

-- Location: LABCELL_X71_Y7_N33
\Prog_Coun_Adder|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prog_Coun_Adder|Add0~45_sumout\ = SUM(( \Program_Counter|pout[11]~DUPLICATE_q\ ) + ( GND ) + ( \Prog_Coun_Adder|Add0~42\ ))
-- \Prog_Coun_Adder|Add0~46\ = CARRY(( \Program_Counter|pout[11]~DUPLICATE_q\ ) + ( GND ) + ( \Prog_Coun_Adder|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Program_Counter|ALT_INV_pout[11]~DUPLICATE_q\,
	cin => \Prog_Coun_Adder|Add0~42\,
	sumout => \Prog_Coun_Adder|Add0~45_sumout\,
	cout => \Prog_Coun_Adder|Add0~46\);

-- Location: FF_X71_Y7_N49
\Program_Counter|pout[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Prog_Coun_Adder|Add0~45_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_Counter|pout[11]~DUPLICATE_q\);

-- Location: LABCELL_X71_Y7_N36
\Prog_Coun_Adder|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prog_Coun_Adder|Add0~49_sumout\ = SUM(( \Program_Counter|pout\(12) ) + ( GND ) + ( \Prog_Coun_Adder|Add0~46\ ))
-- \Prog_Coun_Adder|Add0~50\ = CARRY(( \Program_Counter|pout\(12) ) + ( GND ) + ( \Prog_Coun_Adder|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Program_Counter|ALT_INV_pout\(12),
	cin => \Prog_Coun_Adder|Add0~46\,
	sumout => \Prog_Coun_Adder|Add0~49_sumout\,
	cout => \Prog_Coun_Adder|Add0~50\);

-- Location: FF_X71_Y7_N56
\Program_Counter|pout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Prog_Coun_Adder|Add0~49_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_Counter|pout\(12));

-- Location: LABCELL_X71_Y7_N39
\Prog_Coun_Adder|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prog_Coun_Adder|Add0~53_sumout\ = SUM(( \Program_Counter|pout\(13) ) + ( GND ) + ( \Prog_Coun_Adder|Add0~50\ ))
-- \Prog_Coun_Adder|Add0~54\ = CARRY(( \Program_Counter|pout\(13) ) + ( GND ) + ( \Prog_Coun_Adder|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(13),
	cin => \Prog_Coun_Adder|Add0~50\,
	sumout => \Prog_Coun_Adder|Add0~53_sumout\,
	cout => \Prog_Coun_Adder|Add0~54\);

-- Location: FF_X71_Y7_N53
\Program_Counter|pout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Prog_Coun_Adder|Add0~53_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_Counter|pout\(13));

-- Location: LABCELL_X71_Y7_N42
\Prog_Coun_Adder|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prog_Coun_Adder|Add0~57_sumout\ = SUM(( \Program_Counter|pout\(14) ) + ( GND ) + ( \Prog_Coun_Adder|Add0~54\ ))
-- \Prog_Coun_Adder|Add0~58\ = CARRY(( \Program_Counter|pout\(14) ) + ( GND ) + ( \Prog_Coun_Adder|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Program_Counter|ALT_INV_pout\(14),
	cin => \Prog_Coun_Adder|Add0~54\,
	sumout => \Prog_Coun_Adder|Add0~57_sumout\,
	cout => \Prog_Coun_Adder|Add0~58\);

-- Location: FF_X71_Y7_N59
\Program_Counter|pout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Prog_Coun_Adder|Add0~57_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_Counter|pout\(14));

-- Location: LABCELL_X71_Y7_N45
\Prog_Coun_Adder|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Prog_Coun_Adder|Add0~61_sumout\ = SUM(( \Program_Counter|pout\(15) ) + ( GND ) + ( \Prog_Coun_Adder|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Program_Counter|ALT_INV_pout\(15),
	cin => \Prog_Coun_Adder|Add0~58\,
	sumout => \Prog_Coun_Adder|Add0~61_sumout\);

-- Location: FF_X71_Y7_N47
\Program_Counter|pout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Prog_Coun_Adder|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_Counter|pout\(15));

-- Location: FF_X71_Y7_N50
\Program_Counter|pout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Prog_Coun_Adder|Add0~45_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_Counter|pout\(11));

-- Location: LABCELL_X71_Y7_N51
\Instruction_Mem|ROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Instruction_Mem|ROM~1_combout\ = ( !\Program_Counter|pout\(13) & ( !\Program_Counter|pout\(11) & ( (!\Program_Counter|pout\(12) & (!\Program_Counter|pout\(15) & (!\Program_Counter|pout\(14) & !\Program_Counter|pout\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(12),
	datab => \Program_Counter|ALT_INV_pout\(15),
	datac => \Program_Counter|ALT_INV_pout\(14),
	datad => \Program_Counter|ALT_INV_pout\(10),
	datae => \Program_Counter|ALT_INV_pout\(13),
	dataf => \Program_Counter|ALT_INV_pout\(11),
	combout => \Instruction_Mem|ROM~1_combout\);

-- Location: MLABCELL_X72_Y7_N18
\Instruction_Mem|ROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Instruction_Mem|ROM~5_combout\ = ( \Instruction_Mem|ROM~0_combout\ & ( (\Instruction_Mem|ROM~2_combout\ & (\Instruction_Mem|ROM~1_combout\ & !\Program_Counter|pout\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Instruction_Mem|ALT_INV_ROM~2_combout\,
	datac => \Instruction_Mem|ALT_INV_ROM~1_combout\,
	datad => \Program_Counter|ALT_INV_pout\(1),
	dataf => \Instruction_Mem|ALT_INV_ROM~0_combout\,
	combout => \Instruction_Mem|ROM~5_combout\);

-- Location: LABCELL_X73_Y8_N30
\Arith_Logi_Unit|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Arith_Logi_Unit|Add0~41_sumout\ = SUM(( \Register_File|Reg~414_combout\ ) + ( GND ) + ( \Arith_Logi_Unit|Add0~38\ ))
-- \Arith_Logi_Unit|Add0~42\ = CARRY(( \Register_File|Reg~414_combout\ ) + ( GND ) + ( \Arith_Logi_Unit|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Register_File|ALT_INV_Reg~414_combout\,
	cin => \Arith_Logi_Unit|Add0~38\,
	sumout => \Arith_Logi_Unit|Add0~41_sumout\,
	cout => \Arith_Logi_Unit|Add0~42\);

-- Location: FF_X74_Y7_N35
\Register_File|Reg~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~41_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~31_q\);

-- Location: FF_X74_Y8_N2
\Register_File|Reg~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~41_sumout\,
	sload => VCC,
	ena => \Instruction_Mem|ROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~207_q\);

-- Location: LABCELL_X74_Y8_N0
\Register_File|Reg~414\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~414_combout\ = ( \Register_File|Reg~207_q\ & ( \Instruction_Mem|ROM~7_combout\ & ( (!\Program_Counter|pout\(0) & (\Program_Counter|pout\(1) & \Instruction_Mem|ROM~5_combout\)) ) ) ) # ( \Register_File|Reg~207_q\ & ( 
-- !\Instruction_Mem|ROM~7_combout\ & ( (\Register_File|Reg~31_q\ & !\Instruction_Mem|ROM~5_combout\) ) ) ) # ( !\Register_File|Reg~207_q\ & ( !\Instruction_Mem|ROM~7_combout\ & ( (\Register_File|Reg~31_q\ & !\Instruction_Mem|ROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(0),
	datab => \Register_File|ALT_INV_Reg~31_q\,
	datac => \Program_Counter|ALT_INV_pout\(1),
	datad => \Instruction_Mem|ALT_INV_ROM~5_combout\,
	datae => \Register_File|ALT_INV_Reg~207_q\,
	dataf => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	combout => \Register_File|Reg~414_combout\);

-- Location: LABCELL_X73_Y8_N33
\Arith_Logi_Unit|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Arith_Logi_Unit|Add0~45_sumout\ = SUM(( \Register_File|Reg~310_combout\ ) + ( GND ) + ( \Arith_Logi_Unit|Add0~42\ ))
-- \Arith_Logi_Unit|Add0~46\ = CARRY(( \Register_File|Reg~310_combout\ ) + ( GND ) + ( \Arith_Logi_Unit|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Register_File|ALT_INV_Reg~310_combout\,
	cin => \Arith_Logi_Unit|Add0~42\,
	sumout => \Arith_Logi_Unit|Add0~45_sumout\,
	cout => \Arith_Logi_Unit|Add0~46\);

-- Location: FF_X72_Y6_N49
\Register_File|Reg~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~45_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~348_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~48_q\);

-- Location: FF_X73_Y6_N55
\Register_File|Reg~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~45_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~112_q\);

-- Location: LABCELL_X73_Y6_N54
\Register_File|Reg~308\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~308_combout\ = ( \Register_File|Reg~112_q\ & ( !\Instruction_Mem|ROM~7_combout\ & ( (\Instruction_Mem|ROM~4_combout\) # (\Register_File|Reg~48_q\) ) ) ) # ( !\Register_File|Reg~112_q\ & ( !\Instruction_Mem|ROM~7_combout\ & ( 
-- (\Register_File|Reg~48_q\ & !\Instruction_Mem|ROM~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Register_File|ALT_INV_Reg~48_q\,
	datac => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	datae => \Register_File|ALT_INV_Reg~112_q\,
	dataf => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	combout => \Register_File|Reg~308_combout\);

-- Location: FF_X73_Y8_N53
\Register_File|Reg~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~45_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~32_q\);

-- Location: FF_X73_Y6_N46
\Register_File|Reg~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~45_sumout\,
	sload => VCC,
	ena => \Instruction_Mem|ROM~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~96_q\);

-- Location: LABCELL_X73_Y6_N45
\Register_File|Reg~307\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~307_combout\ = ( \Register_File|Reg~96_q\ & ( !\Instruction_Mem|ROM~7_combout\ & ( (\Instruction_Mem|ROM~4_combout\) # (\Register_File|Reg~32_q\) ) ) ) # ( !\Register_File|Reg~96_q\ & ( !\Instruction_Mem|ROM~7_combout\ & ( 
-- (\Register_File|Reg~32_q\ & !\Instruction_Mem|ROM~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Register_File|ALT_INV_Reg~32_q\,
	datad => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	datae => \Register_File|ALT_INV_Reg~96_q\,
	dataf => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	combout => \Register_File|Reg~307_combout\);

-- Location: FF_X73_Y8_N35
\Register_File|Reg~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Arith_Logi_Unit|Add0~45_sumout\,
	ena => \Instruction_Mem|ROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~208_q\);

-- Location: LABCELL_X73_Y6_N12
\Register_File|Reg~309\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~309_combout\ = ( !\Instruction_Mem|ROM~4_combout\ & ( \Instruction_Mem|ROM~7_combout\ & ( \Register_File|Reg~208_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Register_File|ALT_INV_Reg~208_q\,
	datae => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	dataf => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	combout => \Register_File|Reg~309_combout\);

-- Location: LABCELL_X73_Y6_N33
\Register_File|Reg~310\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~310_combout\ = ( \Register_File|Reg~307_combout\ & ( \Register_File|Reg~309_combout\ & ( (!\Instruction_Mem|ROM~6_combout\ & (!\Instruction_Mem|ROM~5_combout\)) # (\Instruction_Mem|ROM~6_combout\ & ((\Register_File|Reg~308_combout\) # 
-- (\Instruction_Mem|ROM~5_combout\))) ) ) ) # ( !\Register_File|Reg~307_combout\ & ( \Register_File|Reg~309_combout\ & ( (\Instruction_Mem|ROM~6_combout\ & ((\Register_File|Reg~308_combout\) # (\Instruction_Mem|ROM~5_combout\))) ) ) ) # ( 
-- \Register_File|Reg~307_combout\ & ( !\Register_File|Reg~309_combout\ & ( (!\Instruction_Mem|ROM~5_combout\ & ((!\Instruction_Mem|ROM~6_combout\) # (\Register_File|Reg~308_combout\))) ) ) ) # ( !\Register_File|Reg~307_combout\ & ( 
-- !\Register_File|Reg~309_combout\ & ( (\Instruction_Mem|ROM~6_combout\ & (!\Instruction_Mem|ROM~5_combout\ & \Register_File|Reg~308_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000110000001111000000000011001100111100001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Instruction_Mem|ALT_INV_ROM~6_combout\,
	datac => \Instruction_Mem|ALT_INV_ROM~5_combout\,
	datad => \Register_File|ALT_INV_Reg~308_combout\,
	datae => \Register_File|ALT_INV_Reg~307_combout\,
	dataf => \Register_File|ALT_INV_Reg~309_combout\,
	combout => \Register_File|Reg~310_combout\);

-- Location: LABCELL_X73_Y8_N36
\Arith_Logi_Unit|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Arith_Logi_Unit|Add0~49_sumout\ = SUM(( \Register_File|Reg~306_combout\ ) + ( GND ) + ( \Arith_Logi_Unit|Add0~46\ ))
-- \Arith_Logi_Unit|Add0~50\ = CARRY(( \Register_File|Reg~306_combout\ ) + ( GND ) + ( \Arith_Logi_Unit|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Register_File|ALT_INV_Reg~306_combout\,
	cin => \Arith_Logi_Unit|Add0~46\,
	sumout => \Arith_Logi_Unit|Add0~49_sumout\,
	cout => \Arith_Logi_Unit|Add0~50\);

-- Location: FF_X74_Y8_N28
\Register_File|Reg~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~49_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~113_q\);

-- Location: FF_X74_Y7_N5
\Register_File|Reg~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~49_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~33_q\);

-- Location: FF_X72_Y8_N35
\Register_File|Reg~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~49_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~348_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~49_q\);

-- Location: FF_X72_Y8_N8
\Register_File|Reg~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~49_sumout\,
	sload => VCC,
	ena => \Instruction_Mem|ROM~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~97_q\);

-- Location: LABCELL_X73_Y6_N6
\Register_File|Reg~304\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~304_combout\ = ( \Instruction_Mem|ROM~6_combout\ & ( \Instruction_Mem|ROM~4_combout\ & ( \Register_File|Reg~113_q\ ) ) ) # ( !\Instruction_Mem|ROM~6_combout\ & ( \Instruction_Mem|ROM~4_combout\ & ( \Register_File|Reg~97_q\ ) ) ) # ( 
-- \Instruction_Mem|ROM~6_combout\ & ( !\Instruction_Mem|ROM~4_combout\ & ( \Register_File|Reg~49_q\ ) ) ) # ( !\Instruction_Mem|ROM~6_combout\ & ( !\Instruction_Mem|ROM~4_combout\ & ( \Register_File|Reg~33_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~113_q\,
	datab => \Register_File|ALT_INV_Reg~33_q\,
	datac => \Register_File|ALT_INV_Reg~49_q\,
	datad => \Register_File|ALT_INV_Reg~97_q\,
	datae => \Instruction_Mem|ALT_INV_ROM~6_combout\,
	dataf => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	combout => \Register_File|Reg~304_combout\);

-- Location: LABCELL_X74_Y8_N39
\Register_File|Reg~429\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~429_combout\ = ( !\Arith_Logi_Unit|Add0~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Arith_Logi_Unit|ALT_INV_Add0~49_sumout\,
	combout => \Register_File|Reg~429_combout\);

-- Location: FF_X74_Y8_N40
\Register_File|Reg~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Register_File|Reg~429_combout\,
	ena => \Instruction_Mem|ROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~209_q\);

-- Location: LABCELL_X73_Y6_N0
\Register_File|Reg~305\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~305_combout\ = ( \Instruction_Mem|ROM~6_combout\ & ( !\Instruction_Mem|ROM~4_combout\ & ( \Register_File|Reg~209_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Register_File|ALT_INV_Reg~209_q\,
	datae => \Instruction_Mem|ALT_INV_ROM~6_combout\,
	dataf => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	combout => \Register_File|Reg~305_combout\);

-- Location: LABCELL_X73_Y6_N36
\Register_File|Reg~306\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~306_combout\ = ( \Register_File|Reg~305_combout\ & ( \Instruction_Mem|ROM~7_combout\ & ( !\Instruction_Mem|ROM~5_combout\ ) ) ) # ( !\Register_File|Reg~305_combout\ & ( \Instruction_Mem|ROM~7_combout\ ) ) # ( 
-- \Register_File|Reg~305_combout\ & ( !\Instruction_Mem|ROM~7_combout\ & ( (!\Instruction_Mem|ROM~5_combout\ & \Register_File|Reg~304_combout\) ) ) ) # ( !\Register_File|Reg~305_combout\ & ( !\Instruction_Mem|ROM~7_combout\ & ( 
-- (!\Instruction_Mem|ROM~5_combout\ & \Register_File|Reg~304_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011111111111111111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Instruction_Mem|ALT_INV_ROM~5_combout\,
	datad => \Register_File|ALT_INV_Reg~304_combout\,
	datae => \Register_File|ALT_INV_Reg~305_combout\,
	dataf => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	combout => \Register_File|Reg~306_combout\);

-- Location: LABCELL_X73_Y8_N39
\Arith_Logi_Unit|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Arith_Logi_Unit|Add0~53_sumout\ = SUM(( \Register_File|Reg~303_combout\ ) + ( GND ) + ( \Arith_Logi_Unit|Add0~50\ ))
-- \Arith_Logi_Unit|Add0~54\ = CARRY(( \Register_File|Reg~303_combout\ ) + ( GND ) + ( \Arith_Logi_Unit|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Register_File|ALT_INV_Reg~303_combout\,
	cin => \Arith_Logi_Unit|Add0~50\,
	sumout => \Arith_Logi_Unit|Add0~53_sumout\,
	cout => \Arith_Logi_Unit|Add0~54\);

-- Location: FF_X73_Y8_N40
\Register_File|Reg~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Arith_Logi_Unit|Add0~53_sumout\,
	ena => \Instruction_Mem|ROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~210_q\);

-- Location: LABCELL_X71_Y8_N45
\Register_File|Reg~302\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~302_combout\ = ( !\Instruction_Mem|ROM~4_combout\ & ( (\Register_File|Reg~210_q\ & \Instruction_Mem|ROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Register_File|ALT_INV_Reg~210_q\,
	datad => \Instruction_Mem|ALT_INV_ROM~6_combout\,
	dataf => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	combout => \Register_File|Reg~302_combout\);

-- Location: FF_X72_Y8_N43
\Register_File|Reg~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~53_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~348_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~50_q\);

-- Location: FF_X72_Y8_N26
\Register_File|Reg~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~53_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~114_q\);

-- Location: FF_X72_Y8_N49
\Register_File|Reg~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~53_sumout\,
	sload => VCC,
	ena => \Instruction_Mem|ROM~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~98_q\);

-- Location: FF_X74_Y8_N13
\Register_File|Reg~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~53_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~34_q\);

-- Location: LABCELL_X71_Y8_N0
\Register_File|Reg~301\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~301_combout\ = ( \Instruction_Mem|ROM~6_combout\ & ( \Instruction_Mem|ROM~4_combout\ & ( \Register_File|Reg~114_q\ ) ) ) # ( !\Instruction_Mem|ROM~6_combout\ & ( \Instruction_Mem|ROM~4_combout\ & ( \Register_File|Reg~98_q\ ) ) ) # ( 
-- \Instruction_Mem|ROM~6_combout\ & ( !\Instruction_Mem|ROM~4_combout\ & ( \Register_File|Reg~50_q\ ) ) ) # ( !\Instruction_Mem|ROM~6_combout\ & ( !\Instruction_Mem|ROM~4_combout\ & ( \Register_File|Reg~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~50_q\,
	datab => \Register_File|ALT_INV_Reg~114_q\,
	datac => \Register_File|ALT_INV_Reg~98_q\,
	datad => \Register_File|ALT_INV_Reg~34_q\,
	datae => \Instruction_Mem|ALT_INV_ROM~6_combout\,
	dataf => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	combout => \Register_File|Reg~301_combout\);

-- Location: MLABCELL_X72_Y8_N6
\Register_File|Reg~303\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~303_combout\ = ( \Register_File|Reg~301_combout\ & ( (!\Instruction_Mem|ROM~7_combout\ & (!\Instruction_Mem|ROM~5_combout\)) # (\Instruction_Mem|ROM~7_combout\ & (\Instruction_Mem|ROM~5_combout\ & \Register_File|Reg~302_combout\)) ) ) # 
-- ( !\Register_File|Reg~301_combout\ & ( (\Instruction_Mem|ROM~7_combout\ & (\Instruction_Mem|ROM~5_combout\ & \Register_File|Reg~302_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000110001001100010011000100110001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	datab => \Instruction_Mem|ALT_INV_ROM~5_combout\,
	datac => \Register_File|ALT_INV_Reg~302_combout\,
	dataf => \Register_File|ALT_INV_Reg~301_combout\,
	combout => \Register_File|Reg~303_combout\);

-- Location: LABCELL_X73_Y8_N42
\Arith_Logi_Unit|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Arith_Logi_Unit|Add0~57_sumout\ = SUM(( \Register_File|Reg~300_combout\ ) + ( GND ) + ( \Arith_Logi_Unit|Add0~54\ ))
-- \Arith_Logi_Unit|Add0~58\ = CARRY(( \Register_File|Reg~300_combout\ ) + ( GND ) + ( \Arith_Logi_Unit|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Register_File|ALT_INV_Reg~300_combout\,
	cin => \Arith_Logi_Unit|Add0~54\,
	sumout => \Arith_Logi_Unit|Add0~57_sumout\,
	cout => \Arith_Logi_Unit|Add0~58\);

-- Location: FF_X73_Y8_N44
\Register_File|Reg~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Arith_Logi_Unit|Add0~57_sumout\,
	ena => \Instruction_Mem|ROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~211_q\);

-- Location: LABCELL_X73_Y7_N18
\Register_File|Reg~299\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~299_combout\ = ( \Instruction_Mem|ROM~6_combout\ & ( (!\Instruction_Mem|ROM~4_combout\ & \Register_File|Reg~211_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	datad => \Register_File|ALT_INV_Reg~211_q\,
	dataf => \Instruction_Mem|ALT_INV_ROM~6_combout\,
	combout => \Register_File|Reg~299_combout\);

-- Location: FF_X73_Y7_N40
\Register_File|Reg~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~57_sumout\,
	sload => VCC,
	ena => \Instruction_Mem|ROM~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~99_q\);

-- Location: FF_X74_Y8_N53
\Register_File|Reg~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~57_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~115_q\);

-- Location: FF_X73_Y7_N8
\Register_File|Reg~35DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~57_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~35DUPLICATE_q\);

-- Location: FF_X72_Y8_N23
\Register_File|Reg~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~57_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~348_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~51_q\);

-- Location: LABCELL_X73_Y7_N9
\Register_File|Reg~298\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~298_combout\ = ( \Register_File|Reg~51_q\ & ( \Instruction_Mem|ROM~6_combout\ & ( (!\Instruction_Mem|ROM~4_combout\) # (\Register_File|Reg~115_q\) ) ) ) # ( !\Register_File|Reg~51_q\ & ( \Instruction_Mem|ROM~6_combout\ & ( 
-- (\Register_File|Reg~115_q\ & \Instruction_Mem|ROM~4_combout\) ) ) ) # ( \Register_File|Reg~51_q\ & ( !\Instruction_Mem|ROM~6_combout\ & ( (!\Instruction_Mem|ROM~4_combout\ & ((\Register_File|Reg~35DUPLICATE_q\))) # (\Instruction_Mem|ROM~4_combout\ & 
-- (\Register_File|Reg~99_q\)) ) ) ) # ( !\Register_File|Reg~51_q\ & ( !\Instruction_Mem|ROM~6_combout\ & ( (!\Instruction_Mem|ROM~4_combout\ & ((\Register_File|Reg~35DUPLICATE_q\))) # (\Instruction_Mem|ROM~4_combout\ & (\Register_File|Reg~99_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~99_q\,
	datab => \Register_File|ALT_INV_Reg~115_q\,
	datac => \Register_File|ALT_INV_Reg~35DUPLICATE_q\,
	datad => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	datae => \Register_File|ALT_INV_Reg~51_q\,
	dataf => \Instruction_Mem|ALT_INV_ROM~6_combout\,
	combout => \Register_File|Reg~298_combout\);

-- Location: LABCELL_X73_Y7_N3
\Register_File|Reg~300\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~300_combout\ = ( \Instruction_Mem|ROM~7_combout\ & ( (\Register_File|Reg~299_combout\ & \Instruction_Mem|ROM~5_combout\) ) ) # ( !\Instruction_Mem|ROM~7_combout\ & ( (\Register_File|Reg~298_combout\ & !\Instruction_Mem|ROM~5_combout\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~299_combout\,
	datac => \Register_File|ALT_INV_Reg~298_combout\,
	datad => \Instruction_Mem|ALT_INV_ROM~5_combout\,
	dataf => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	combout => \Register_File|Reg~300_combout\);

-- Location: LABCELL_X73_Y8_N45
\Arith_Logi_Unit|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Arith_Logi_Unit|Add0~61_sumout\ = SUM(( \Register_File|Reg~297_combout\ ) + ( GND ) + ( \Arith_Logi_Unit|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Register_File|ALT_INV_Reg~297_combout\,
	cin => \Arith_Logi_Unit|Add0~58\,
	sumout => \Arith_Logi_Unit|Add0~61_sumout\);

-- Location: FF_X72_Y7_N26
\Register_File|Reg~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~61_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~348_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~52_q\);

-- Location: MLABCELL_X72_Y8_N48
\Register_File|Reg~100feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~100feeder_combout\ = ( \Arith_Logi_Unit|Add0~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Arith_Logi_Unit|ALT_INV_Add0~61_sumout\,
	combout => \Register_File|Reg~100feeder_combout\);

-- Location: FF_X72_Y8_N50
\Register_File|Reg~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Register_File|Reg~100feeder_combout\,
	ena => \Instruction_Mem|ROM~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~100_q\);

-- Location: FF_X73_Y8_N50
\Register_File|Reg~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~61_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~36_q\);

-- Location: FF_X73_Y8_N2
\Register_File|Reg~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~61_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~116_q\);

-- Location: MLABCELL_X72_Y7_N9
\Register_File|Reg~295\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~295_combout\ = ( \Instruction_Mem|ROM~6_combout\ & ( \Register_File|Reg~116_q\ & ( (\Instruction_Mem|ROM~4_combout\) # (\Register_File|Reg~52_q\) ) ) ) # ( !\Instruction_Mem|ROM~6_combout\ & ( \Register_File|Reg~116_q\ & ( 
-- (!\Instruction_Mem|ROM~4_combout\ & ((\Register_File|Reg~36_q\))) # (\Instruction_Mem|ROM~4_combout\ & (\Register_File|Reg~100_q\)) ) ) ) # ( \Instruction_Mem|ROM~6_combout\ & ( !\Register_File|Reg~116_q\ & ( (\Register_File|Reg~52_q\ & 
-- !\Instruction_Mem|ROM~4_combout\) ) ) ) # ( !\Instruction_Mem|ROM~6_combout\ & ( !\Register_File|Reg~116_q\ & ( (!\Instruction_Mem|ROM~4_combout\ & ((\Register_File|Reg~36_q\))) # (\Instruction_Mem|ROM~4_combout\ & (\Register_File|Reg~100_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011010101010000000000001111001100110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~52_q\,
	datab => \Register_File|ALT_INV_Reg~100_q\,
	datac => \Register_File|ALT_INV_Reg~36_q\,
	datad => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	datae => \Instruction_Mem|ALT_INV_ROM~6_combout\,
	dataf => \Register_File|ALT_INV_Reg~116_q\,
	combout => \Register_File|Reg~295_combout\);

-- Location: FF_X73_Y8_N46
\Register_File|Reg~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Arith_Logi_Unit|Add0~61_sumout\,
	ena => \Instruction_Mem|ROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~212_q\);

-- Location: MLABCELL_X72_Y7_N15
\Register_File|Reg~296\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~296_combout\ = ( \Register_File|Reg~212_q\ & ( (\Instruction_Mem|ROM~6_combout\ & !\Instruction_Mem|ROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~6_combout\,
	datac => \Instruction_Mem|ALT_INV_ROM~4_combout\,
	dataf => \Register_File|ALT_INV_Reg~212_q\,
	combout => \Register_File|Reg~296_combout\);

-- Location: MLABCELL_X72_Y7_N21
\Register_File|Reg~297\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~297_combout\ = ( \Instruction_Mem|ROM~7_combout\ & ( (\Instruction_Mem|ROM~5_combout\ & \Register_File|Reg~296_combout\) ) ) # ( !\Instruction_Mem|ROM~7_combout\ & ( (!\Instruction_Mem|ROM~5_combout\ & \Register_File|Reg~295_combout\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~5_combout\,
	datac => \Register_File|ALT_INV_Reg~295_combout\,
	datad => \Register_File|ALT_INV_Reg~296_combout\,
	dataf => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	combout => \Register_File|Reg~297_combout\);

-- Location: MLABCELL_X72_Y7_N36
\Arith_Logi_Unit|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Arith_Logi_Unit|Equal0~2_combout\ = ( !\Register_File|Reg~310_combout\ & ( !\Register_File|Reg~303_combout\ & ( (!\Register_File|Reg~297_combout\ & (!\Register_File|Reg~414_combout\ & (!\Register_File|Reg~300_combout\ & 
-- !\Register_File|Reg~306_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~297_combout\,
	datab => \Register_File|ALT_INV_Reg~414_combout\,
	datac => \Register_File|ALT_INV_Reg~300_combout\,
	datad => \Register_File|ALT_INV_Reg~306_combout\,
	datae => \Register_File|ALT_INV_Reg~310_combout\,
	dataf => \Register_File|ALT_INV_Reg~303_combout\,
	combout => \Arith_Logi_Unit|Equal0~2_combout\);

-- Location: MLABCELL_X72_Y7_N42
\Branch_Mux|SAIDA[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Branch_Mux|SAIDA[2]~0_combout\ = ( \Arith_Logi_Unit|Equal0~3_combout\ & ( \Prog_Coun_Adder|Add0~9_sumout\ ) ) # ( !\Arith_Logi_Unit|Equal0~3_combout\ & ( \Prog_Coun_Adder|Add0~9_sumout\ ) ) # ( \Arith_Logi_Unit|Equal0~3_combout\ & ( 
-- !\Prog_Coun_Adder|Add0~9_sumout\ & ( (\Arith_Logi_Unit|Equal0~2_combout\ & (!\Arith_Logi_Unit|Equal0~0_combout\ & (\Arith_Logi_Unit|Equal0~1_combout\ & \Instruction_Mem|ROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Arith_Logi_Unit|ALT_INV_Equal0~2_combout\,
	datab => \Arith_Logi_Unit|ALT_INV_Equal0~0_combout\,
	datac => \Arith_Logi_Unit|ALT_INV_Equal0~1_combout\,
	datad => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datae => \Arith_Logi_Unit|ALT_INV_Equal0~3_combout\,
	dataf => \Prog_Coun_Adder|ALT_INV_Add0~9_sumout\,
	combout => \Branch_Mux|SAIDA[2]~0_combout\);

-- Location: LABCELL_X74_Y7_N12
\Instruction_Mem|ROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Instruction_Mem|ROM~9_combout\ = ( \Instruction_Mem|ROM~8_combout\ & ( \Instruction_Mem|ROM~0_combout\ & ( \Instruction_Mem|ROM~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Instruction_Mem|ALT_INV_ROM~1_combout\,
	datae => \Instruction_Mem|ALT_INV_ROM~8_combout\,
	dataf => \Instruction_Mem|ALT_INV_ROM~0_combout\,
	combout => \Instruction_Mem|ROM~9_combout\);

-- Location: FF_X72_Y7_N40
\Program_Counter|pout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Branch_Mux|SAIDA[5]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_Counter|pout\(5));

-- Location: LABCELL_X75_Y8_N39
\Register_File|Reg~324\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~324_combout\ = ( \Register_File|Reg~85_q\ & ( \Register_File|Reg~101_q\ & ( !\Instruction_Mem|ROM~3_combout\ $ (\Instruction_Mem|ROM~9_combout\) ) ) ) # ( !\Register_File|Reg~85_q\ & ( \Register_File|Reg~101_q\ & ( 
-- (\Instruction_Mem|ROM~3_combout\ & \Instruction_Mem|ROM~9_combout\) ) ) ) # ( \Register_File|Reg~85_q\ & ( !\Register_File|Reg~101_q\ & ( (!\Instruction_Mem|ROM~9_combout\) # (\Instruction_Mem|ROM~3_combout\) ) ) ) # ( !\Register_File|Reg~85_q\ & ( 
-- !\Register_File|Reg~101_q\ & ( \Instruction_Mem|ROM~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110111011101110100010001000100011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datab => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datae => \Register_File|ALT_INV_Reg~85_q\,
	dataf => \Register_File|ALT_INV_Reg~101_q\,
	combout => \Register_File|Reg~324_combout\);

-- Location: FF_X71_Y8_N52
\Register_File|Reg~197DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Register_File|Reg~431_combout\,
	ena => \Instruction_Mem|ROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~197DUPLICATE_q\);

-- Location: LABCELL_X74_Y8_N33
\Register_File|Reg~323\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~323_combout\ = ( \Register_File|Reg~21_q\ & ( (!\Instruction_Mem|ROM~3_combout\ & ((!\Instruction_Mem|ROM~9_combout\))) # (\Instruction_Mem|ROM~3_combout\ & ((!\Register_File|Reg~37_q\) # (\Instruction_Mem|ROM~9_combout\))) ) ) # ( 
-- !\Register_File|Reg~21_q\ & ( (\Instruction_Mem|ROM~3_combout\ & ((!\Register_File|Reg~37_q\) # (\Instruction_Mem|ROM~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110011001100000011001111111100001100111111110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datac => \Register_File|ALT_INV_Reg~37_q\,
	datad => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	dataf => \Register_File|ALT_INV_Reg~21_q\,
	combout => \Register_File|Reg~323_combout\);

-- Location: LABCELL_X71_Y8_N54
\Register_File|Reg~410\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~410_combout\ = ( \Instruction_Mem|ROM~7_combout\ & ( \Register_File|Reg~323_combout\ & ( (!\Instruction_Mem|ROM~9_combout\ & (\Register_File|Reg~324_combout\)) # (\Instruction_Mem|ROM~9_combout\ & ((\Instruction_Mem|ROM~3_combout\))) ) 
-- ) ) # ( !\Instruction_Mem|ROM~7_combout\ & ( \Register_File|Reg~323_combout\ & ( (!\Instruction_Mem|ROM~9_combout\) # ((\Instruction_Mem|ROM~3_combout\ & !\Register_File|Reg~197DUPLICATE_q\)) ) ) ) # ( \Instruction_Mem|ROM~7_combout\ & ( 
-- !\Register_File|Reg~323_combout\ & ( (!\Instruction_Mem|ROM~9_combout\ & (\Register_File|Reg~324_combout\)) # (\Instruction_Mem|ROM~9_combout\ & ((\Instruction_Mem|ROM~3_combout\))) ) ) ) # ( !\Instruction_Mem|ROM~7_combout\ & ( 
-- !\Register_File|Reg~323_combout\ & ( (\Instruction_Mem|ROM~9_combout\ & (\Instruction_Mem|ROM~3_combout\ & !\Register_File|Reg~197DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000010001110100011111001111110011000100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~324_combout\,
	datab => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datac => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datad => \Register_File|ALT_INV_Reg~197DUPLICATE_q\,
	datae => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	dataf => \Register_File|ALT_INV_Reg~323_combout\,
	combout => \Register_File|Reg~410_combout\);

-- Location: LABCELL_X73_Y6_N21
\Register_File|Reg~326\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~326_combout\ = ( \Register_File|Reg~102_q\ & ( (!\Instruction_Mem|ROM~9_combout\ & ((\Register_File|Reg~86_q\) # (\Instruction_Mem|ROM~3_combout\))) ) ) # ( !\Register_File|Reg~102_q\ & ( (!\Instruction_Mem|ROM~9_combout\ & 
-- (!\Instruction_Mem|ROM~3_combout\ & \Register_File|Reg~86_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000100010101010100010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datab => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datad => \Register_File|ALT_INV_Reg~86_q\,
	dataf => \Register_File|ALT_INV_Reg~102_q\,
	combout => \Register_File|Reg~326_combout\);

-- Location: FF_X72_Y7_N28
\Register_File|Reg~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~5_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~348_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~38_q\);

-- Location: LABCELL_X73_Y7_N0
\Register_File|Reg~325\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~325_combout\ = ( \Register_File|Reg~22_q\ & ( (!\Instruction_Mem|ROM~9_combout\ & ((!\Instruction_Mem|ROM~3_combout\) # (\Register_File|Reg~38_q\))) ) ) # ( !\Register_File|Reg~22_q\ & ( (!\Instruction_Mem|ROM~9_combout\ & 
-- (\Instruction_Mem|ROM~3_combout\ & \Register_File|Reg~38_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011000000110011001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datac => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datad => \Register_File|ALT_INV_Reg~38_q\,
	dataf => \Register_File|ALT_INV_Reg~22_q\,
	combout => \Register_File|Reg~325_combout\);

-- Location: LABCELL_X73_Y6_N24
\Register_File|Reg~406\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~406_combout\ = ( \Register_File|Reg~325_combout\ & ( \Instruction_Mem|ROM~7_combout\ & ( (!\Instruction_Mem|ROM~9_combout\ & \Register_File|Reg~326_combout\) ) ) ) # ( !\Register_File|Reg~325_combout\ & ( \Instruction_Mem|ROM~7_combout\ 
-- & ( (!\Instruction_Mem|ROM~9_combout\ & \Register_File|Reg~326_combout\) ) ) ) # ( \Register_File|Reg~325_combout\ & ( !\Instruction_Mem|ROM~7_combout\ & ( (!\Instruction_Mem|ROM~9_combout\) # ((\Register_File|Reg~198_q\ & 
-- \Instruction_Mem|ROM~3_combout\)) ) ) ) # ( !\Register_File|Reg~325_combout\ & ( !\Instruction_Mem|ROM~7_combout\ & ( (\Instruction_Mem|ROM~9_combout\ & (\Register_File|Reg~198_q\ & \Instruction_Mem|ROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001101010101011101100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datab => \Register_File|ALT_INV_Reg~198_q\,
	datac => \Register_File|ALT_INV_Reg~326_combout\,
	datad => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datae => \Register_File|ALT_INV_Reg~325_combout\,
	dataf => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	combout => \Register_File|Reg~406_combout\);

-- Location: MLABCELL_X72_Y6_N36
\Register_File|Reg~328\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~328_combout\ = ( \Register_File|Reg~103_q\ & ( !\Instruction_Mem|ROM~9_combout\ & ( (\Register_File|Reg~87_q\) # (\Instruction_Mem|ROM~3_combout\) ) ) ) # ( !\Register_File|Reg~103_q\ & ( !\Instruction_Mem|ROM~9_combout\ & ( 
-- (!\Instruction_Mem|ROM~3_combout\ & \Register_File|Reg~87_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datac => \Register_File|ALT_INV_Reg~87_q\,
	datae => \Register_File|ALT_INV_Reg~103_q\,
	dataf => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	combout => \Register_File|Reg~328_combout\);

-- Location: LABCELL_X75_Y8_N6
\Register_File|Reg~327\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~327_combout\ = ( \Register_File|Reg~23_q\ & ( \Register_File|Reg~39_q\ & ( !\Instruction_Mem|ROM~9_combout\ ) ) ) # ( !\Register_File|Reg~23_q\ & ( \Register_File|Reg~39_q\ & ( (!\Instruction_Mem|ROM~9_combout\ & 
-- \Instruction_Mem|ROM~3_combout\) ) ) ) # ( \Register_File|Reg~23_q\ & ( !\Register_File|Reg~39_q\ & ( (!\Instruction_Mem|ROM~9_combout\ & !\Instruction_Mem|ROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000001100000011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datac => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datae => \Register_File|ALT_INV_Reg~23_q\,
	dataf => \Register_File|ALT_INV_Reg~39_q\,
	combout => \Register_File|Reg~327_combout\);

-- Location: MLABCELL_X72_Y6_N30
\Register_File|Reg~402\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~402_combout\ = ( \Register_File|Reg~328_combout\ & ( \Register_File|Reg~327_combout\ & ( (!\Instruction_Mem|ROM~9_combout\) # ((\Instruction_Mem|ROM~3_combout\ & (!\Instruction_Mem|ROM~7_combout\ & \Register_File|Reg~199_q\))) ) ) ) # ( 
-- !\Register_File|Reg~328_combout\ & ( \Register_File|Reg~327_combout\ & ( (!\Instruction_Mem|ROM~7_combout\ & ((!\Instruction_Mem|ROM~9_combout\) # ((\Instruction_Mem|ROM~3_combout\ & \Register_File|Reg~199_q\)))) ) ) ) # ( \Register_File|Reg~328_combout\ 
-- & ( !\Register_File|Reg~327_combout\ & ( (!\Instruction_Mem|ROM~7_combout\ & (\Instruction_Mem|ROM~3_combout\ & (\Instruction_Mem|ROM~9_combout\ & \Register_File|Reg~199_q\))) # (\Instruction_Mem|ROM~7_combout\ & (((!\Instruction_Mem|ROM~9_combout\)))) ) 
-- ) ) # ( !\Register_File|Reg~328_combout\ & ( !\Register_File|Reg~327_combout\ & ( (\Instruction_Mem|ROM~3_combout\ & (!\Instruction_Mem|ROM~7_combout\ & (\Instruction_Mem|ROM~9_combout\ & \Register_File|Reg~199_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100001100000011010011000000110001001111000011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datab => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	datac => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datad => \Register_File|ALT_INV_Reg~199_q\,
	datae => \Register_File|ALT_INV_Reg~328_combout\,
	dataf => \Register_File|ALT_INV_Reg~327_combout\,
	combout => \Register_File|Reg~402_combout\);

-- Location: LABCELL_X73_Y7_N12
\Register_File|Reg~329\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~329_combout\ = ( !\Instruction_Mem|ROM~9_combout\ & ( (!\Instruction_Mem|ROM~3_combout\ & ((\Register_File|Reg~24_q\))) # (\Instruction_Mem|ROM~3_combout\ & (\Register_File|Reg~40_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~40_q\,
	datab => \Register_File|ALT_INV_Reg~24_q\,
	datac => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	dataf => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	combout => \Register_File|Reg~329_combout\);

-- Location: LABCELL_X74_Y7_N42
\Register_File|Reg~330\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~330_combout\ = ( \Register_File|Reg~104_q\ & ( (!\Instruction_Mem|ROM~9_combout\ & ((\Register_File|Reg~88_q\) # (\Instruction_Mem|ROM~3_combout\))) ) ) # ( !\Register_File|Reg~104_q\ & ( (!\Instruction_Mem|ROM~3_combout\ & 
-- (!\Instruction_Mem|ROM~9_combout\ & \Register_File|Reg~88_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datab => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datac => \Register_File|ALT_INV_Reg~88_q\,
	dataf => \Register_File|ALT_INV_Reg~104_q\,
	combout => \Register_File|Reg~330_combout\);

-- Location: LABCELL_X73_Y7_N24
\Register_File|Reg~398\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~398_combout\ = ( \Register_File|Reg~330_combout\ & ( \Instruction_Mem|ROM~9_combout\ & ( (\Register_File|Reg~200_q\ & (\Instruction_Mem|ROM~3_combout\ & !\Instruction_Mem|ROM~7_combout\)) ) ) ) # ( !\Register_File|Reg~330_combout\ & ( 
-- \Instruction_Mem|ROM~9_combout\ & ( (\Register_File|Reg~200_q\ & (\Instruction_Mem|ROM~3_combout\ & !\Instruction_Mem|ROM~7_combout\)) ) ) ) # ( \Register_File|Reg~330_combout\ & ( !\Instruction_Mem|ROM~9_combout\ & ( (\Instruction_Mem|ROM~7_combout\) # 
-- (\Register_File|Reg~329_combout\) ) ) ) # ( !\Register_File|Reg~330_combout\ & ( !\Instruction_Mem|ROM~9_combout\ & ( (\Register_File|Reg~329_combout\ & !\Instruction_Mem|ROM~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~200_q\,
	datab => \Register_File|ALT_INV_Reg~329_combout\,
	datac => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datad => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	datae => \Register_File|ALT_INV_Reg~330_combout\,
	dataf => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	combout => \Register_File|Reg~398_combout\);

-- Location: FF_X73_Y7_N32
\Register_File|Reg~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~17_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~348_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~41_q\);

-- Location: LABCELL_X73_Y7_N30
\Register_File|Reg~331\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~331_combout\ = ( \Instruction_Mem|ROM~9_combout\ ) # ( !\Instruction_Mem|ROM~9_combout\ & ( (!\Instruction_Mem|ROM~3_combout\ & (\Register_File|Reg~25_q\)) # (\Instruction_Mem|ROM~3_combout\ & ((\Register_File|Reg~41_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datac => \Register_File|ALT_INV_Reg~25_q\,
	datad => \Register_File|ALT_INV_Reg~41_q\,
	dataf => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	combout => \Register_File|Reg~331_combout\);

-- Location: FF_X74_Y8_N46
\Register_File|Reg~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~17_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~105_q\);

-- Location: FF_X73_Y7_N23
\Register_File|Reg~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~17_sumout\,
	sload => VCC,
	ena => \Instruction_Mem|ROM~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~89_q\);

-- Location: LABCELL_X73_Y7_N21
\Register_File|Reg~332\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~332_combout\ = ( \Instruction_Mem|ROM~9_combout\ ) # ( !\Instruction_Mem|ROM~9_combout\ & ( (!\Instruction_Mem|ROM~3_combout\ & ((\Register_File|Reg~89_q\))) # (\Instruction_Mem|ROM~3_combout\ & (\Register_File|Reg~105_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datac => \Register_File|ALT_INV_Reg~105_q\,
	datad => \Register_File|ALT_INV_Reg~89_q\,
	dataf => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	combout => \Register_File|Reg~332_combout\);

-- Location: LABCELL_X74_Y7_N39
\Register_File|Reg~394\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~394_combout\ = ( \Register_File|Reg~332_combout\ & ( \Instruction_Mem|ROM~3_combout\ & ( ((!\Instruction_Mem|ROM~9_combout\ & ((\Register_File|Reg~331_combout\))) # (\Instruction_Mem|ROM~9_combout\ & (!\Register_File|Reg~201_q\))) # 
-- (\Instruction_Mem|ROM~7_combout\) ) ) ) # ( !\Register_File|Reg~332_combout\ & ( \Instruction_Mem|ROM~3_combout\ & ( (!\Instruction_Mem|ROM~7_combout\ & ((!\Instruction_Mem|ROM~9_combout\ & ((\Register_File|Reg~331_combout\))) # 
-- (\Instruction_Mem|ROM~9_combout\ & (!\Register_File|Reg~201_q\)))) # (\Instruction_Mem|ROM~7_combout\ & (\Instruction_Mem|ROM~9_combout\)) ) ) ) # ( \Register_File|Reg~332_combout\ & ( !\Instruction_Mem|ROM~3_combout\ & ( 
-- ((\Register_File|Reg~331_combout\) # (\Instruction_Mem|ROM~9_combout\)) # (\Instruction_Mem|ROM~7_combout\) ) ) ) # ( !\Register_File|Reg~332_combout\ & ( !\Instruction_Mem|ROM~3_combout\ & ( ((!\Instruction_Mem|ROM~7_combout\ & 
-- \Register_File|Reg~331_combout\)) # (\Instruction_Mem|ROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110111011011101111111111100110001101110010111010111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	datab => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datac => \Register_File|ALT_INV_Reg~201_q\,
	datad => \Register_File|ALT_INV_Reg~331_combout\,
	datae => \Register_File|ALT_INV_Reg~332_combout\,
	dataf => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	combout => \Register_File|Reg~394_combout\);

-- Location: LABCELL_X71_Y8_N21
\Register_File|Reg~333\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~333_combout\ = ( \Instruction_Mem|ROM~3_combout\ & ( (\Register_File|Reg~42_q\ & !\Instruction_Mem|ROM~9_combout\) ) ) # ( !\Instruction_Mem|ROM~3_combout\ & ( (!\Instruction_Mem|ROM~9_combout\ & \Register_File|Reg~26_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~42_q\,
	datab => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datac => \Register_File|ALT_INV_Reg~26_q\,
	dataf => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	combout => \Register_File|Reg~333_combout\);

-- Location: LABCELL_X71_Y8_N42
\Register_File|Reg~334\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~334_combout\ = (!\Instruction_Mem|ROM~9_combout\ & ((!\Instruction_Mem|ROM~3_combout\ & (\Register_File|Reg~90_q\)) # (\Instruction_Mem|ROM~3_combout\ & ((\Register_File|Reg~106_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000000110001000100000011000100010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~90_q\,
	datab => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datac => \Register_File|ALT_INV_Reg~106_q\,
	datad => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	combout => \Register_File|Reg~334_combout\);

-- Location: LABCELL_X71_Y8_N36
\Register_File|Reg~390\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~390_combout\ = ( \Register_File|Reg~333_combout\ & ( \Register_File|Reg~334_combout\ & ( (!\Instruction_Mem|ROM~9_combout\) # ((!\Instruction_Mem|ROM~7_combout\ & (\Instruction_Mem|ROM~3_combout\ & \Register_File|Reg~202_q\))) ) ) ) # ( 
-- !\Register_File|Reg~333_combout\ & ( \Register_File|Reg~334_combout\ & ( (!\Instruction_Mem|ROM~7_combout\ & (\Instruction_Mem|ROM~3_combout\ & (\Register_File|Reg~202_q\ & \Instruction_Mem|ROM~9_combout\))) # (\Instruction_Mem|ROM~7_combout\ & 
-- (((!\Instruction_Mem|ROM~9_combout\)))) ) ) ) # ( \Register_File|Reg~333_combout\ & ( !\Register_File|Reg~334_combout\ & ( (!\Instruction_Mem|ROM~7_combout\ & ((!\Instruction_Mem|ROM~9_combout\) # ((\Instruction_Mem|ROM~3_combout\ & 
-- \Register_File|Reg~202_q\)))) ) ) ) # ( !\Register_File|Reg~333_combout\ & ( !\Register_File|Reg~334_combout\ & ( (!\Instruction_Mem|ROM~7_combout\ & (\Instruction_Mem|ROM~3_combout\ & (\Register_File|Reg~202_q\ & \Instruction_Mem|ROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010101010100000001001010101000000101111111100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	datab => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datac => \Register_File|ALT_INV_Reg~202_q\,
	datad => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datae => \Register_File|ALT_INV_Reg~333_combout\,
	dataf => \Register_File|ALT_INV_Reg~334_combout\,
	combout => \Register_File|Reg~390_combout\);

-- Location: FF_X74_Y8_N11
\Register_File|Reg~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~25_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~27_q\);

-- Location: LABCELL_X74_Y8_N48
\Register_File|Reg~335\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~335_combout\ = ( \Register_File|Reg~27_q\ & ( (!\Instruction_Mem|ROM~9_combout\ & ((!\Instruction_Mem|ROM~3_combout\) # (\Register_File|Reg~43_q\))) ) ) # ( !\Register_File|Reg~27_q\ & ( (!\Instruction_Mem|ROM~9_combout\ & 
-- (\Instruction_Mem|ROM~3_combout\ & \Register_File|Reg~43_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datab => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datac => \Register_File|ALT_INV_Reg~43_q\,
	dataf => \Register_File|ALT_INV_Reg~27_q\,
	combout => \Register_File|Reg~335_combout\);

-- Location: LABCELL_X75_Y8_N57
\Register_File|Reg~336\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~336_combout\ = ( \Register_File|Reg~91_q\ & ( \Register_File|Reg~107_q\ & ( !\Instruction_Mem|ROM~9_combout\ ) ) ) # ( !\Register_File|Reg~91_q\ & ( \Register_File|Reg~107_q\ & ( (\Instruction_Mem|ROM~3_combout\ & 
-- !\Instruction_Mem|ROM~9_combout\) ) ) ) # ( \Register_File|Reg~91_q\ & ( !\Register_File|Reg~107_q\ & ( (!\Instruction_Mem|ROM~3_combout\ & !\Instruction_Mem|ROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000001010000010100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datac => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datae => \Register_File|ALT_INV_Reg~91_q\,
	dataf => \Register_File|ALT_INV_Reg~107_q\,
	combout => \Register_File|Reg~336_combout\);

-- Location: LABCELL_X71_Y8_N24
\Register_File|Reg~386\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~386_combout\ = ( \Instruction_Mem|ROM~7_combout\ & ( \Instruction_Mem|ROM~3_combout\ & ( (!\Instruction_Mem|ROM~9_combout\ & \Register_File|Reg~336_combout\) ) ) ) # ( !\Instruction_Mem|ROM~7_combout\ & ( \Instruction_Mem|ROM~3_combout\ 
-- & ( (!\Instruction_Mem|ROM~9_combout\ & (\Register_File|Reg~335_combout\)) # (\Instruction_Mem|ROM~9_combout\ & ((\Register_File|Reg~203_q\))) ) ) ) # ( \Instruction_Mem|ROM~7_combout\ & ( !\Instruction_Mem|ROM~3_combout\ & ( 
-- (!\Instruction_Mem|ROM~9_combout\ & \Register_File|Reg~336_combout\) ) ) ) # ( !\Instruction_Mem|ROM~7_combout\ & ( !\Instruction_Mem|ROM~3_combout\ & ( (\Register_File|Reg~335_combout\ & !\Instruction_Mem|ROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000011000000110001000100011101110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~335_combout\,
	datab => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datac => \Register_File|ALT_INV_Reg~336_combout\,
	datad => \Register_File|ALT_INV_Reg~203_q\,
	datae => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	dataf => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	combout => \Register_File|Reg~386_combout\);

-- Location: FF_X73_Y8_N4
\Register_File|Reg~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~29_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~108_q\);

-- Location: FF_X75_Y8_N14
\Register_File|Reg~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~29_sumout\,
	sload => VCC,
	ena => \Instruction_Mem|ROM~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~92_q\);

-- Location: LABCELL_X75_Y8_N12
\Register_File|Reg~338\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~338_combout\ = ( \Register_File|Reg~92_q\ & ( (!\Instruction_Mem|ROM~9_combout\ & ((!\Instruction_Mem|ROM~3_combout\) # (\Register_File|Reg~108_q\))) ) ) # ( !\Register_File|Reg~92_q\ & ( (\Instruction_Mem|ROM~3_combout\ & 
-- (!\Instruction_Mem|ROM~9_combout\ & \Register_File|Reg~108_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100100011001000110000000100000001001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datab => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datac => \Register_File|ALT_INV_Reg~108_q\,
	datae => \Register_File|ALT_INV_Reg~92_q\,
	combout => \Register_File|Reg~338_combout\);

-- Location: FF_X75_Y8_N32
\Register_File|Reg~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~29_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~348_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~44_q\);

-- Location: LABCELL_X75_Y8_N30
\Register_File|Reg~337\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~337_combout\ = ( \Register_File|Reg~44_q\ & ( (!\Instruction_Mem|ROM~9_combout\ & ((\Instruction_Mem|ROM~3_combout\) # (\Register_File|Reg~28_q\))) ) ) # ( !\Register_File|Reg~44_q\ & ( (\Register_File|Reg~28_q\ & 
-- (!\Instruction_Mem|ROM~9_combout\ & !\Instruction_Mem|ROM~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010011000100110001000000010000000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~28_q\,
	datab => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datac => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datae => \Register_File|ALT_INV_Reg~44_q\,
	combout => \Register_File|Reg~337_combout\);

-- Location: LABCELL_X74_Y8_N54
\Register_File|Reg~382\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~382_combout\ = ( \Register_File|Reg~204_q\ & ( \Register_File|Reg~337_combout\ & ( (!\Instruction_Mem|ROM~9_combout\ & (((!\Instruction_Mem|ROM~7_combout\)) # (\Register_File|Reg~338_combout\))) # (\Instruction_Mem|ROM~9_combout\ & 
-- (((\Instruction_Mem|ROM~3_combout\ & !\Instruction_Mem|ROM~7_combout\)))) ) ) ) # ( !\Register_File|Reg~204_q\ & ( \Register_File|Reg~337_combout\ & ( (!\Instruction_Mem|ROM~9_combout\ & ((!\Instruction_Mem|ROM~7_combout\) # 
-- (\Register_File|Reg~338_combout\))) ) ) ) # ( \Register_File|Reg~204_q\ & ( !\Register_File|Reg~337_combout\ & ( (!\Instruction_Mem|ROM~9_combout\ & (\Register_File|Reg~338_combout\ & ((\Instruction_Mem|ROM~7_combout\)))) # 
-- (\Instruction_Mem|ROM~9_combout\ & (((\Instruction_Mem|ROM~3_combout\ & !\Instruction_Mem|ROM~7_combout\)))) ) ) ) # ( !\Register_File|Reg~204_q\ & ( !\Register_File|Reg~337_combout\ & ( (!\Instruction_Mem|ROM~9_combout\ & (\Register_File|Reg~338_combout\ 
-- & \Instruction_Mem|ROM~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000001010010001010101010001000101010111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datab => \Register_File|ALT_INV_Reg~338_combout\,
	datac => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datad => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	datae => \Register_File|ALT_INV_Reg~204_q\,
	dataf => \Register_File|ALT_INV_Reg~337_combout\,
	combout => \Register_File|Reg~382_combout\);

-- Location: LABCELL_X71_Y8_N48
\Register_File|Reg~339\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~339_combout\ = ( \Register_File|Reg~45_q\ & ( (!\Instruction_Mem|ROM~9_combout\ & ((\Register_File|Reg~29_q\) # (\Instruction_Mem|ROM~3_combout\))) ) ) # ( !\Register_File|Reg~45_q\ & ( (!\Instruction_Mem|ROM~3_combout\ & 
-- (!\Instruction_Mem|ROM~9_combout\ & \Register_File|Reg~29_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datab => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datac => \Register_File|ALT_INV_Reg~29_q\,
	dataf => \Register_File|ALT_INV_Reg~45_q\,
	combout => \Register_File|Reg~339_combout\);

-- Location: FF_X73_Y7_N43
\Register_File|Reg~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Register_File|Reg~426_combout\,
	ena => \Instruction_Mem|ROM~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~93_q\);

-- Location: FF_X72_Y8_N1
\Register_File|Reg~109DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Register_File|Reg~427_combout\,
	ena => \Register_File|Reg~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~109DUPLICATE_q\);

-- Location: LABCELL_X74_Y7_N51
\Register_File|Reg~340\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~340_combout\ = ( \Instruction_Mem|ROM~3_combout\ & ( \Register_File|Reg~109DUPLICATE_q\ & ( \Instruction_Mem|ROM~9_combout\ ) ) ) # ( !\Instruction_Mem|ROM~3_combout\ & ( \Register_File|Reg~109DUPLICATE_q\ & ( 
-- (!\Register_File|Reg~93_q\) # (\Instruction_Mem|ROM~9_combout\) ) ) ) # ( \Instruction_Mem|ROM~3_combout\ & ( !\Register_File|Reg~109DUPLICATE_q\ ) ) # ( !\Instruction_Mem|ROM~3_combout\ & ( !\Register_File|Reg~109DUPLICATE_q\ & ( 
-- (!\Register_File|Reg~93_q\) # (\Instruction_Mem|ROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111111111111111111111001111110011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Register_File|ALT_INV_Reg~93_q\,
	datac => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datae => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	dataf => \Register_File|ALT_INV_Reg~109DUPLICATE_q\,
	combout => \Register_File|Reg~340_combout\);

-- Location: MLABCELL_X72_Y6_N24
\Register_File|Reg~378\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~378_combout\ = ( \Register_File|Reg~340_combout\ & ( \Register_File|Reg~205_q\ & ( ((!\Instruction_Mem|ROM~9_combout\ & ((\Register_File|Reg~339_combout\))) # (\Instruction_Mem|ROM~9_combout\ & (\Instruction_Mem|ROM~3_combout\))) # 
-- (\Instruction_Mem|ROM~7_combout\) ) ) ) # ( !\Register_File|Reg~340_combout\ & ( \Register_File|Reg~205_q\ & ( (!\Instruction_Mem|ROM~9_combout\ & (!\Instruction_Mem|ROM~7_combout\ & ((\Register_File|Reg~339_combout\)))) # (\Instruction_Mem|ROM~9_combout\ 
-- & (((\Instruction_Mem|ROM~3_combout\)) # (\Instruction_Mem|ROM~7_combout\))) ) ) ) # ( \Register_File|Reg~340_combout\ & ( !\Register_File|Reg~205_q\ & ( ((!\Instruction_Mem|ROM~9_combout\ & \Register_File|Reg~339_combout\)) # 
-- (\Instruction_Mem|ROM~7_combout\) ) ) ) # ( !\Register_File|Reg~340_combout\ & ( !\Register_File|Reg~205_q\ & ( (!\Instruction_Mem|ROM~9_combout\ & (!\Instruction_Mem|ROM~7_combout\ & \Register_File|Reg~339_combout\)) # (\Instruction_Mem|ROM~9_combout\ & 
-- (\Instruction_Mem|ROM~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110011001001100111011101100010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datab => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	datac => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datad => \Register_File|ALT_INV_Reg~339_combout\,
	datae => \Register_File|ALT_INV_Reg~340_combout\,
	dataf => \Register_File|ALT_INV_Reg~205_q\,
	combout => \Register_File|Reg~378_combout\);

-- Location: LABCELL_X74_Y7_N45
\Register_File|Reg~342\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~342_combout\ = ( \Register_File|Reg~94_q\ & ( (!\Instruction_Mem|ROM~9_combout\ & ((!\Instruction_Mem|ROM~3_combout\) # (\Register_File|Reg~110_q\))) ) ) # ( !\Register_File|Reg~94_q\ & ( (\Instruction_Mem|ROM~3_combout\ & 
-- (!\Instruction_Mem|ROM~9_combout\ & \Register_File|Reg~110_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datab => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datac => \Register_File|ALT_INV_Reg~110_q\,
	dataf => \Register_File|ALT_INV_Reg~94_q\,
	combout => \Register_File|Reg~342_combout\);

-- Location: LABCELL_X74_Y8_N15
\Register_File|Reg~341\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~341_combout\ = ( \Register_File|Reg~30_q\ & ( (!\Instruction_Mem|ROM~9_combout\ & ((!\Instruction_Mem|ROM~3_combout\) # (\Register_File|Reg~46_q\))) ) ) # ( !\Register_File|Reg~30_q\ & ( (\Register_File|Reg~46_q\ & 
-- (\Instruction_Mem|ROM~3_combout\ & !\Instruction_Mem|ROM~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000111100110000000000000011000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Register_File|ALT_INV_Reg~46_q\,
	datac => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datad => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datae => \Register_File|ALT_INV_Reg~30_q\,
	combout => \Register_File|Reg~341_combout\);

-- Location: LABCELL_X74_Y7_N54
\Register_File|Reg~374\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~374_combout\ = ( \Register_File|Reg~342_combout\ & ( \Register_File|Reg~341_combout\ & ( (!\Instruction_Mem|ROM~9_combout\) # ((\Instruction_Mem|ROM~3_combout\ & (!\Instruction_Mem|ROM~7_combout\ & \Register_File|Reg~206_q\))) ) ) ) # ( 
-- !\Register_File|Reg~342_combout\ & ( \Register_File|Reg~341_combout\ & ( (!\Instruction_Mem|ROM~7_combout\ & ((!\Instruction_Mem|ROM~9_combout\) # ((\Instruction_Mem|ROM~3_combout\ & \Register_File|Reg~206_q\)))) ) ) ) # ( \Register_File|Reg~342_combout\ 
-- & ( !\Register_File|Reg~341_combout\ & ( (!\Instruction_Mem|ROM~9_combout\ & (((\Instruction_Mem|ROM~7_combout\)))) # (\Instruction_Mem|ROM~9_combout\ & (\Instruction_Mem|ROM~3_combout\ & (!\Instruction_Mem|ROM~7_combout\ & \Register_File|Reg~206_q\))) ) 
-- ) ) # ( !\Register_File|Reg~342_combout\ & ( !\Register_File|Reg~341_combout\ & ( (\Instruction_Mem|ROM~3_combout\ & (\Instruction_Mem|ROM~9_combout\ & (!\Instruction_Mem|ROM~7_combout\ & \Register_File|Reg~206_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000011000001110011000000110100001100110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datab => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datac => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	datad => \Register_File|ALT_INV_Reg~206_q\,
	datae => \Register_File|ALT_INV_Reg~342_combout\,
	dataf => \Register_File|ALT_INV_Reg~341_combout\,
	combout => \Register_File|Reg~374_combout\);

-- Location: FF_X74_Y8_N44
\Register_File|Reg~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~41_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~111_q\);

-- Location: FF_X74_Y7_N37
\Register_File|Reg~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~41_sumout\,
	sload => VCC,
	ena => \Instruction_Mem|ROM~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~95_q\);

-- Location: LABCELL_X74_Y8_N42
\Register_File|Reg~370\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~370_combout\ = ( \Register_File|Reg~111_q\ & ( \Register_File|Reg~95_q\ & ( (!\Instruction_Mem|ROM~9_combout\ & ((\Instruction_Mem|ROM~7_combout\) # (\Register_File|Reg~31_q\))) ) ) ) # ( !\Register_File|Reg~111_q\ & ( 
-- \Register_File|Reg~95_q\ & ( (!\Instruction_Mem|ROM~9_combout\ & ((!\Instruction_Mem|ROM~7_combout\ & ((\Register_File|Reg~31_q\))) # (\Instruction_Mem|ROM~7_combout\ & (\Program_Counter|pout\(1))))) ) ) ) # ( \Register_File|Reg~111_q\ & ( 
-- !\Register_File|Reg~95_q\ & ( (!\Instruction_Mem|ROM~9_combout\ & ((!\Instruction_Mem|ROM~7_combout\ & ((\Register_File|Reg~31_q\))) # (\Instruction_Mem|ROM~7_combout\ & (!\Program_Counter|pout\(1))))) ) ) ) # ( !\Register_File|Reg~111_q\ & ( 
-- !\Register_File|Reg~95_q\ & ( (\Register_File|Reg~31_q\ & (!\Instruction_Mem|ROM~9_combout\ & !\Instruction_Mem|ROM~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100001010000000110000010100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|ALT_INV_pout\(1),
	datab => \Register_File|ALT_INV_Reg~31_q\,
	datac => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datad => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	datae => \Register_File|ALT_INV_Reg~111_q\,
	dataf => \Register_File|ALT_INV_Reg~95_q\,
	combout => \Register_File|Reg~370_combout\);

-- Location: MLABCELL_X72_Y6_N48
\Register_File|Reg~343\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~343_combout\ = ( \Register_File|Reg~48_q\ & ( \Register_File|Reg~32_q\ & ( !\Instruction_Mem|ROM~9_combout\ ) ) ) # ( !\Register_File|Reg~48_q\ & ( \Register_File|Reg~32_q\ & ( (!\Instruction_Mem|ROM~3_combout\ & 
-- !\Instruction_Mem|ROM~9_combout\) ) ) ) # ( \Register_File|Reg~48_q\ & ( !\Register_File|Reg~32_q\ & ( (\Instruction_Mem|ROM~3_combout\ & !\Instruction_Mem|ROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000010100000101000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datac => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datae => \Register_File|ALT_INV_Reg~48_q\,
	dataf => \Register_File|ALT_INV_Reg~32_q\,
	combout => \Register_File|Reg~343_combout\);

-- Location: LABCELL_X73_Y6_N18
\Register_File|Reg~344\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~344_combout\ = ( \Register_File|Reg~96_q\ & ( (!\Instruction_Mem|ROM~9_combout\ & ((!\Instruction_Mem|ROM~3_combout\) # (\Register_File|Reg~112_q\))) ) ) # ( !\Register_File|Reg~96_q\ & ( (!\Instruction_Mem|ROM~9_combout\ & 
-- (\Instruction_Mem|ROM~3_combout\ & \Register_File|Reg~112_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001010001000101010101000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datab => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datad => \Register_File|ALT_INV_Reg~112_q\,
	dataf => \Register_File|ALT_INV_Reg~96_q\,
	combout => \Register_File|Reg~344_combout\);

-- Location: MLABCELL_X72_Y6_N18
\Register_File|Reg~366\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~366_combout\ = ( \Instruction_Mem|ROM~3_combout\ & ( \Register_File|Reg~344_combout\ & ( (!\Instruction_Mem|ROM~9_combout\ & (((\Instruction_Mem|ROM~7_combout\) # (\Register_File|Reg~343_combout\)))) # (\Instruction_Mem|ROM~9_combout\ & 
-- (\Register_File|Reg~208_q\ & ((!\Instruction_Mem|ROM~7_combout\)))) ) ) ) # ( !\Instruction_Mem|ROM~3_combout\ & ( \Register_File|Reg~344_combout\ & ( (!\Instruction_Mem|ROM~9_combout\ & ((\Instruction_Mem|ROM~7_combout\) # 
-- (\Register_File|Reg~343_combout\))) ) ) ) # ( \Instruction_Mem|ROM~3_combout\ & ( !\Register_File|Reg~344_combout\ & ( (!\Instruction_Mem|ROM~7_combout\ & ((!\Instruction_Mem|ROM~9_combout\ & ((\Register_File|Reg~343_combout\))) # 
-- (\Instruction_Mem|ROM~9_combout\ & (\Register_File|Reg~208_q\)))) ) ) ) # ( !\Instruction_Mem|ROM~3_combout\ & ( !\Register_File|Reg~344_combout\ & ( (!\Instruction_Mem|ROM~9_combout\ & (\Register_File|Reg~343_combout\ & !\Instruction_Mem|ROM~7_combout\)) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000110110000000000001010101010100001101110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datab => \Register_File|ALT_INV_Reg~208_q\,
	datac => \Register_File|ALT_INV_Reg~343_combout\,
	datad => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	datae => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	dataf => \Register_File|ALT_INV_Reg~344_combout\,
	combout => \Register_File|Reg~366_combout\);

-- Location: LABCELL_X73_Y6_N48
\Register_File|Reg~362\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~362_combout\ = ( \Register_File|Reg~113_q\ & ( \Instruction_Mem|ROM~7_combout\ & ( ((!\Program_Counter|pout\(1)) # (\Register_File|Reg~97_q\)) # (\Instruction_Mem|ROM~9_combout\) ) ) ) # ( !\Register_File|Reg~113_q\ & ( 
-- \Instruction_Mem|ROM~7_combout\ & ( ((\Program_Counter|pout\(1) & \Register_File|Reg~97_q\)) # (\Instruction_Mem|ROM~9_combout\) ) ) ) # ( \Register_File|Reg~113_q\ & ( !\Instruction_Mem|ROM~7_combout\ & ( (\Register_File|Reg~33_q\) # 
-- (\Instruction_Mem|ROM~9_combout\) ) ) ) # ( !\Register_File|Reg~113_q\ & ( !\Instruction_Mem|ROM~7_combout\ & ( (\Register_File|Reg~33_q\) # (\Instruction_Mem|ROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101010101010111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datab => \Register_File|ALT_INV_Reg~33_q\,
	datac => \Program_Counter|ALT_INV_pout\(1),
	datad => \Register_File|ALT_INV_Reg~97_q\,
	datae => \Register_File|ALT_INV_Reg~113_q\,
	dataf => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	combout => \Register_File|Reg~362_combout\);

-- Location: LABCELL_X71_Y8_N9
\Register_File|Reg~358\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~358_combout\ = ( \Program_Counter|pout\(1) & ( \Register_File|Reg~34_q\ & ( (!\Instruction_Mem|ROM~9_combout\ & ((!\Instruction_Mem|ROM~7_combout\) # (\Register_File|Reg~98_q\))) ) ) ) # ( !\Program_Counter|pout\(1) & ( 
-- \Register_File|Reg~34_q\ & ( (!\Instruction_Mem|ROM~9_combout\ & ((!\Instruction_Mem|ROM~7_combout\) # (\Register_File|Reg~114_q\))) ) ) ) # ( \Program_Counter|pout\(1) & ( !\Register_File|Reg~34_q\ & ( (\Register_File|Reg~98_q\ & 
-- (!\Instruction_Mem|ROM~9_combout\ & \Instruction_Mem|ROM~7_combout\)) ) ) ) # ( !\Program_Counter|pout\(1) & ( !\Register_File|Reg~34_q\ & ( (!\Instruction_Mem|ROM~9_combout\ & (\Register_File|Reg~114_q\ & \Instruction_Mem|ROM~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000100010011001100000011001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~98_q\,
	datab => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datac => \Register_File|ALT_INV_Reg~114_q\,
	datad => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	datae => \Program_Counter|ALT_INV_pout\(1),
	dataf => \Register_File|ALT_INV_Reg~34_q\,
	combout => \Register_File|Reg~358_combout\);

-- Location: FF_X73_Y7_N7
\Register_File|Reg~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Arith_Logi_Unit|Add0~57_sumout\,
	sload => VCC,
	ena => \Register_File|Reg~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_File|Reg~35_q\);

-- Location: LABCELL_X74_Y8_N21
\Register_File|Reg~345\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~345_combout\ = ( !\Instruction_Mem|ROM~9_combout\ & ( (!\Instruction_Mem|ROM~3_combout\ & ((\Register_File|Reg~35_q\))) # (\Instruction_Mem|ROM~3_combout\ & (\Register_File|Reg~51_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~51_q\,
	datac => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datad => \Register_File|ALT_INV_Reg~35_q\,
	dataf => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	combout => \Register_File|Reg~345_combout\);

-- Location: LABCELL_X74_Y8_N51
\Register_File|Reg~346\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~346_combout\ = (!\Instruction_Mem|ROM~9_combout\ & ((!\Instruction_Mem|ROM~3_combout\ & (\Register_File|Reg~99_q\)) # (\Instruction_Mem|ROM~3_combout\ & ((\Register_File|Reg~115_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000001000001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datab => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	datac => \Register_File|ALT_INV_Reg~99_q\,
	datad => \Register_File|ALT_INV_Reg~115_q\,
	combout => \Register_File|Reg~346_combout\);

-- Location: LABCELL_X74_Y7_N24
\Register_File|Reg~354\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~354_combout\ = ( \Instruction_Mem|ROM~3_combout\ & ( \Instruction_Mem|ROM~7_combout\ & ( (!\Instruction_Mem|ROM~9_combout\ & \Register_File|Reg~346_combout\) ) ) ) # ( !\Instruction_Mem|ROM~3_combout\ & ( \Instruction_Mem|ROM~7_combout\ 
-- & ( (!\Instruction_Mem|ROM~9_combout\ & \Register_File|Reg~346_combout\) ) ) ) # ( \Instruction_Mem|ROM~3_combout\ & ( !\Instruction_Mem|ROM~7_combout\ & ( (!\Instruction_Mem|ROM~9_combout\ & (\Register_File|Reg~345_combout\)) # 
-- (\Instruction_Mem|ROM~9_combout\ & ((\Register_File|Reg~211_q\))) ) ) ) # ( !\Instruction_Mem|ROM~3_combout\ & ( !\Instruction_Mem|ROM~7_combout\ & ( (\Register_File|Reg~345_combout\ & !\Instruction_Mem|ROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001110100011100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~345_combout\,
	datab => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datac => \Register_File|ALT_INV_Reg~211_q\,
	datad => \Register_File|ALT_INV_Reg~346_combout\,
	datae => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	dataf => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	combout => \Register_File|Reg~354_combout\);

-- Location: LABCELL_X71_Y8_N12
\Register_File|Reg~350\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register_File|Reg~350_combout\ = ( \Instruction_Mem|ROM~7_combout\ & ( \Register_File|Reg~100_q\ & ( (!\Instruction_Mem|ROM~9_combout\ & ((\Program_Counter|pout\(1)) # (\Register_File|Reg~116_q\))) ) ) ) # ( !\Instruction_Mem|ROM~7_combout\ & ( 
-- \Register_File|Reg~100_q\ & ( (\Register_File|Reg~36_q\ & !\Instruction_Mem|ROM~9_combout\) ) ) ) # ( \Instruction_Mem|ROM~7_combout\ & ( !\Register_File|Reg~100_q\ & ( (\Register_File|Reg~116_q\ & (!\Program_Counter|pout\(1) & 
-- !\Instruction_Mem|ROM~9_combout\)) ) ) ) # ( !\Instruction_Mem|ROM~7_combout\ & ( !\Register_File|Reg~100_q\ & ( (\Register_File|Reg~36_q\ & !\Instruction_Mem|ROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000001100000000000001010101000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register_File|ALT_INV_Reg~36_q\,
	datab => \Register_File|ALT_INV_Reg~116_q\,
	datac => \Program_Counter|ALT_INV_pout\(1),
	datad => \Instruction_Mem|ALT_INV_ROM~9_combout\,
	datae => \Instruction_Mem|ALT_INV_ROM~7_combout\,
	dataf => \Register_File|ALT_INV_Reg~100_q\,
	combout => \Register_File|Reg~350_combout\);

-- Location: LABCELL_X75_Y8_N21
\Branch_AND_Gate|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \Branch_AND_Gate|S~combout\ = ( \Instruction_Mem|ROM~3_combout\ & ( \Arith_Logi_Unit|Equal0~3_combout\ & ( (\Arith_Logi_Unit|Equal0~2_combout\ & (!\Arith_Logi_Unit|Equal0~0_combout\ & \Arith_Logi_Unit|Equal0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Arith_Logi_Unit|ALT_INV_Equal0~2_combout\,
	datab => \Arith_Logi_Unit|ALT_INV_Equal0~0_combout\,
	datac => \Arith_Logi_Unit|ALT_INV_Equal0~1_combout\,
	datae => \Instruction_Mem|ALT_INV_ROM~3_combout\,
	dataf => \Arith_Logi_Unit|ALT_INV_Equal0~3_combout\,
	combout => \Branch_AND_Gate|S~combout\);

-- Location: LABCELL_X75_Y8_N3
\Arith_Logi_Unit|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Arith_Logi_Unit|Equal0~4_combout\ = ( \Arith_Logi_Unit|Equal0~1_combout\ & ( \Arith_Logi_Unit|Equal0~3_combout\ & ( (\Arith_Logi_Unit|Equal0~2_combout\ & !\Arith_Logi_Unit|Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Arith_Logi_Unit|ALT_INV_Equal0~2_combout\,
	datac => \Arith_Logi_Unit|ALT_INV_Equal0~0_combout\,
	datae => \Arith_Logi_Unit|ALT_INV_Equal0~1_combout\,
	dataf => \Arith_Logi_Unit|ALT_INV_Equal0~3_combout\,
	combout => \Arith_Logi_Unit|Equal0~4_combout\);

-- Location: LABCELL_X18_Y72_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


