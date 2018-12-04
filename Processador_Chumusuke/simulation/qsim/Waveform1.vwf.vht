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
-- Generated on "11/27/2018 12:57:43"
                                                             
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
SIGNAL out_PC_IN : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL out_PC_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL out_ROM_INPUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL out_ROM_OUTPUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT Chumusuke
	PORT (
	Clock : IN STD_LOGIC;
	out_PC_IN : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	out_PC_OUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	out_ROM_INPUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	out_ROM_OUTPUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Chumusuke
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	out_PC_IN => out_PC_IN,
	out_PC_OUT => out_PC_OUT,
	out_ROM_INPUT => out_ROM_INPUT,
	out_ROM_OUTPUT => out_ROM_OUTPUT
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 50000 ps;
	Clock <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;
END Chumusuke_arch;
