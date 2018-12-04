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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/04/2018 18:44:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Chumusuke
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Chumusuke_vhd_vec_tst IS
END Chumusuke_vhd_vec_tst;
ARCHITECTURE Chumusuke_arch OF Chumusuke_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clock : STD_LOGIC;
SIGNAL out_branch_sel : STD_LOGIC;
SIGNAL out_flag_branch : STD_LOGIC;
SIGNAL out_flag_Esc_Mem : STD_LOGIC;
SIGNAL out_flag_Esc_Reg : STD_LOGIC;
SIGNAL out_flag_Jump : STD_LOGIC;
SIGNAL out_flag_Le_Mem : STD_LOGIC;
SIGNAL out_flag_Mem_2_Reg : STD_LOGIC;
SIGNAL out_flag_Reg_Dst : STD_LOGIC;
SIGNAL out_flag_ULAFonte : STD_LOGIC;
SIGNAL out_jump_address : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL out_jump_shift : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL out_mux_branch : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL out_muxRD_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL out_op_code : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL out_OP_ULA : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL out_overflow : STD_LOGIC;
SIGNAL out_PC_IN : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL out_reg_a_addr : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL out_reg_a_data : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL out_reg_b_addr : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL out_reg_b_data : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL out_reg_dst_addr : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL out_ROM_INPUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL out_ROM_OUTPUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL out_signal_extender : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL out_signal_ula_in : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL out_ula_flag : STD_LOGIC;
SIGNAL out_ula_high : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL out_ula_resultado : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL out_ula_zero : STD_LOGIC;
SIGNAL out_write_data : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT Chumusuke
	PORT (
	Clock : IN STD_LOGIC;
	out_branch_sel : OUT STD_LOGIC;
	out_flag_branch : OUT STD_LOGIC;
	out_flag_Esc_Mem : OUT STD_LOGIC;
	out_flag_Esc_Reg : OUT STD_LOGIC;
	out_flag_Jump : OUT STD_LOGIC;
	out_flag_Le_Mem : OUT STD_LOGIC;
	out_flag_Mem_2_Reg : OUT STD_LOGIC;
	out_flag_Reg_Dst : OUT STD_LOGIC;
	out_flag_ULAFonte : OUT STD_LOGIC;
	out_jump_address : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	out_jump_shift : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	out_mux_branch : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	out_muxRD_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	out_op_code : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	out_OP_ULA : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	out_overflow : OUT STD_LOGIC;
	out_PC_IN : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	out_reg_a_addr : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	out_reg_a_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	out_reg_b_addr : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	out_reg_b_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	out_reg_dst_addr : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	out_ROM_INPUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	out_ROM_OUTPUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	out_signal_extender : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	out_signal_ula_in : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	out_ula_flag : OUT STD_LOGIC;
	out_ula_high : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	out_ula_resultado : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	out_ula_zero : OUT STD_LOGIC;
	out_write_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Chumusuke
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	out_branch_sel => out_branch_sel,
	out_flag_branch => out_flag_branch,
	out_flag_Esc_Mem => out_flag_Esc_Mem,
	out_flag_Esc_Reg => out_flag_Esc_Reg,
	out_flag_Jump => out_flag_Jump,
	out_flag_Le_Mem => out_flag_Le_Mem,
	out_flag_Mem_2_Reg => out_flag_Mem_2_Reg,
	out_flag_Reg_Dst => out_flag_Reg_Dst,
	out_flag_ULAFonte => out_flag_ULAFonte,
	out_jump_address => out_jump_address,
	out_jump_shift => out_jump_shift,
	out_mux_branch => out_mux_branch,
	out_muxRD_out => out_muxRD_out,
	out_op_code => out_op_code,
	out_OP_ULA => out_OP_ULA,
	out_overflow => out_overflow,
	out_PC_IN => out_PC_IN,
	out_reg_a_addr => out_reg_a_addr,
	out_reg_a_data => out_reg_a_data,
	out_reg_b_addr => out_reg_b_addr,
	out_reg_b_data => out_reg_b_data,
	out_reg_dst_addr => out_reg_dst_addr,
	out_ROM_INPUT => out_ROM_INPUT,
	out_ROM_OUTPUT => out_ROM_OUTPUT,
	out_signal_extender => out_signal_extender,
	out_signal_ula_in => out_signal_ula_in,
	out_ula_flag => out_ula_flag,
	out_ula_high => out_ula_high,
	out_ula_resultado => out_ula_resultado,
	out_ula_zero => out_ula_zero,
	out_write_data => out_write_data
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
	Clock <= '1';
	WAIT FOR 5000 ps;
	Clock <= '0';
	WAIT FOR 5000 ps;
	FOR i IN 1 TO 98
	LOOP
		Clock <= '1';
		WAIT FOR 5000 ps;
		Clock <= '0';
		WAIT FOR 5000 ps;
	END LOOP;
	Clock <= '1';
	WAIT FOR 5000 ps;
	Clock <= '0';
WAIT;
END PROCESS t_prcs_Clock;
END Chumusuke_arch;
