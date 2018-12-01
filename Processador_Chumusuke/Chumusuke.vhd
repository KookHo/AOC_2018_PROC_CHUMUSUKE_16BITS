LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Mais duas trilhas da ULA, HIGH e LOW, que serão ligadas apenas para multiplicações
-- 


ENTITY Chumusuke IS
	PORT
	(			
		Clock: in  std_logic;
		---- Trilhas do PC -------------------------------
		--out_PC_OUT: out std_logic_vector(15 downto 0);
		out_PC_IN : out std_logic_vector(15 downto 0);
		--out_PCAdder_OUT: out std_logic_vector(15 downto 0);
		--out_PCAdder_IN : out std_logic_vector(15 downto 0);
		
		---- Trilhas da ROM ------------------------------
		out_ROM_OUTPUT: out std_logic_vector(15 downto 0);
		out_ROM_INPUT : out std_logic_vector(15 downto 0);
		
		---- Trilhas do Banco de Registradores -----------
		  out_reg_a_data: out std_logic_vector(15 downto 0);
		  out_reg_b_data: out std_logic_vector(15 downto 0);
		  out_write_data: out std_logic_vector(15 downto 0);
		  out_reg_a_addr: out std_logic_vector(3 downto 0);
		  out_reg_b_addr: out std_logic_vector(3 downto 0);
		out_reg_dst_addr: out std_logic_vector(3 downto 0);
		     out_op_code: out std_logic_vector(3 downto 0);
			  
		---- Flags da unidade de controle ----------------
		  out_flag_Esc_Mem: out std_logic;
		  out_flag_Reg_Dst: out std_logic;
		   out_flag_Le_Mem: out std_logic;
		  out_flag_Esc_Reg: out std_logic;
		out_flag_Mem_2_Reg: out std_logic;
		   out_flag_branch: out std_logic;
			out_flag_ULAFonte: out std_logic;
			out_flag_Jump: out std_logic;
			 out_OP_ULA: out std_logic_vector(2 downto 0);
				  
		---- Valores do multiplexador do reg dest --------
		out_muxRD_out : out std_logic_vector(3 downto 0);
		---- Valor do multiplexador da ULA ---------------
		out_signal_ula_in : out std_logic_vector(15 downto 0);
		---- Valor do seletor branch ---------------------
		out_branch_sel : out std_logic;
		out_mux_branch : out std_logic_vector(15 downto 0);
		
		---- Valores extensor de sinal -------------------
		out_signal_extender: out std_logic_vector(15 downto 0);
		
		
		---- Saida do JShift -----------------------------
		out_jump_address: out std_logic_vector(11 downto 0);
		  out_jump_shift: out std_logic_vector(15 downto 0);
				 
		---- Saídas da ULA -------------------------------
		     out_ula_zero: out std_logic;
		out_ula_resultado: out std_logic_vector(15 downto 0);
			  out_ula_high: out std_logic_vector(15 downto 0)
		
		
	);
END Chumusuke;


ARCHITECTURE behavior OF Chumusuke IS

	COMPONENT PC IS
		PORT
		(
			--ativo : IN STD_LOGIC;
			clk :  IN  STD_LOGIC;
			pin :  IN  STD_LOGIC_VECTOR (15 DOWNTO 0);
			pout : OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
			
		);
	END COMPONENT;

	COMPONENT SomadorPC IS
		PORT
		(
				--clk : in std_logic;
			 AddIn : in STD_LOGIC_VECTOR(15 DOWNTO 0);
			AddOut : out STD_LOGIC_VECTOR(15 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT ROMMem is PORT
		(  --clock: in std_logic;
	      PC_In: in std_logic_vector(15 downto 0);
	    ROM_Out: out std_logic_vector(15 downto 0)
	   );
	END COMPONENT;
	
	component BancoRegistradores is port
	(
		  Clock : in std_logic;
		 EscReg : in std_logic; -- Sinal da unidade de controle
			RegA : out std_logic_vector (15 downto 0);
			RegB : out std_logic_vector (15 downto 0); 
			Data : in std_logic_vector (15 downto 0); -- Dado a ser escrito
		 RegDst : in std_logic_vector (3 downto 0);  -- Registrador de destino
		 LeReg1 : in std_logic_vector (3 downto 0);  -- Endereço do resgistrador 1
		 LeReg2 : in std_logic_vector (3 downto 0)   -- Endereço do resgistrador 2
	);
	end component;
	
	component DataSplit is port
		(	    --clock : in std_logic;
	    DataSplit_In: in std_logic_vector(15 downto 0);
	         OP_Code: out std_logic_vector(3 downto 0);
				     rs: out std_logic_vector(3 downto 0);
				     rt: out std_logic_vector(3 downto 0);
				     rd: out std_logic_vector(3 downto 0);
					Jump: out std_logic_vector(11 downto 0)
		);
	end component;
	
	
	component ControlUnit is port
		  (
			OPCode: in std_logic_vector (3 downto 0);
			 OPULA: out std_logic_vector (2 downto 0);
			RegDestino, Jump, Branch, LeMem, EscMem, MemParaReg, EscReg: out std_logic;
			ULAFonte : out std_logic
		  );
	end component;


	component ULA is port
		  (
			       A: in std_logic_vector (15 downto 0);
		          B: in std_logic_vector (15 downto 0);
        Prod_HIGH: out std_logic_vector (15 downto 0);
			   OPULA: in std_logic_vector (2 downto 0);
			 ULAZero: out std_logic;
			  ULAOut: out std_logic_vector (15 downto 0)
		  );
	end component;
	
	component MemoriaRAM is port
			(
				Endereco: in std_logic_vector (15 downto 0);
				EscData: in std_logic_vector (15 downto 0);	 
				SaiData: out std_logic_vector (15 downto 0);
				Clock, EscMem: in std_logic
			);
	end component;
	
	component  Multiplexador2x1 IS PORT
		   ( 
			    A,B: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		         S: IN STD_LOGIC;
			  SAIDA: OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	
		   ) ;
	END component;
	
	component  Multiplexador2x1_16bits IS PORT
			( 
			   A,B: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			 	  S: IN STD_LOGIC;
			 SAIDA: OUT  STD_LOGIC_VECTOR(15 DOWNTO 0)
			);
	END component;
	
	component ExtensordeSinal4To16bits IS PORT
			(
			  ENTRADA : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
			  SAIDA   : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
			);
	
	END component;
	
	component ANDGate is PORT
		(
		  A, B : IN STD_LOGIC;
		     S : OUT STD_LOGIC
		);
	END component;
	
	component LeftShift IS PORT
	(
		Entrada: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 Saida: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
	END component;
	
	component JumpShift IS PORT
		(
					 PC : in std_logic_vector (15 downto 0);
		 JumpAddress : in std_logic_vector(11 downto 0);
			    Saida : out std_logic_vector(15 downto 0)
		);
	END component;
	
	component BAdder is port
		(
				  A: in std_logic_vector (15 downto 0);
				  B: in std_logic_vector (15 downto 0);
			Result: out std_logic_vector (15 downto 0)
		);
	end component;

-------------------- SINAIS ------------------------------------------------

	--------------- Program Counter -----------------------------------------
	signal Pc_Next_Address : std_logic_vector(15 downto 0);
	SIGNAL 	 PC_Adder_Out : std_logic_vector(15 downto 0);
	SIGNAL 			 PC_Out : std_logic_vector(15 downto 0);

	
	--------------- Read Only Memory ----------------------------------------
	SIGNAL 	   ROM_OUT : std_logic_vector(15 downto 0);

	
	------------- Banco de Registrador --------------------------------------
	SIGNAL   Reg_A_Data : std_logic_vector(15 downto 0);
	SIGNAL   Reg_B_Data : std_logic_vector(15 downto 0);
	SIGNAL   Write_Data : std_logic_vector(15 downto 0);

	
	---------- Nodo que divide a instrução ----------------------------------
	SIGNAL      op_code : std_logic_vector(3 downto 0);
	SIGNAL   rs_address : std_logic_vector(3 downto 0);
	SIGNAL   rt_address : std_logic_vector(3 downto 0); -- entra no multiplexador Mux_Reg_Dst
	SIGNAL   rd_address : std_logic_vector(3 downto 0); -- entra no multiplexador Mux_Reg_Dst

	
	-------------- Unidade de Controle --------------------------------------
	signal   uc_flag_Esc_mem : std_logic;
	signal    uc_flag_Le_mem : std_logic;
	signal   uc_flag_Esc_reg : std_logic;
	signal   uc_flag_Reg_dst : std_logic;
	signal uc_flag_Mem_2_reg : std_logic;
	signal 	 uc_flag_Branch : std_logic;
	signal 		uc_flag_Jump : std_logic;
	signal      uc_ula_fonte : std_logic;
	signal 			uc_OP_ULA : std_logic_vector(2 downto 0);

	
	------------- Multiplexadores -------------------------------------------
	------------- Para decidir o registrador de destino ---------------------
	signal mux_reg_dst_out : std_logic_vector(3 downto 0);
	------------- Para decidir a segunda entrada da ULA ---------------------
	signal mux_ula_in_out : std_logic_vector(15 downto 0);
	------------- Para decidir se dá pulo (branch) --------------------------
	signal mux_branch_selector : std_logic;
	signal 	   mux_branch_out : std_logic_vector(15 downto 0);
	
	
	------------- Extensor de Sinal -----------------------------------------
	signal extensor_signal_out : std_logic_vector(15 downto 0);
	
	
	------------- Arithmetic-Logic Unit -------------------------------------
	signal    alu_out : std_logic_vector(15 downto 0);
	signal   alu_zero : std_logic;
	signal  prod_high : std_logic_vector(15 downto 0);

	
	------------- Jump Shifter ----------------------------------------------
	signal jump_address : std_logic_vector(11 downto 0);
	signal jump_shift_out : std_logic_vector(15 downto 0);
	
	
	------------- Branch Somador --------------------------------------------
	signal branch_adder_out : std_logic_vector(15 downto 0);
	
	-----------------Random Acess Memory-------------------------------------
	signal    RaM_OUT : std_logic_vector(15 downto 0);
	
	
Begin

-- PC -----------------------
Program_Counter: PC port map(
				   clk => Clock,
				   pin => Pc_Next_Address,
				  pout => PC_Out
			);
			
-- Somador PC ----------------------
Prog_Coun_Adder: SomadorPC port map(
				     --clk => Clock,
				   AddIn => PC_Out,
				  AddOut => PC_Adder_Out
			);

-- ROM --------------------------
Instruction_Mem: ROMMem port map(
				  --clock => Clock,
				  PC_In => PC_Out,
				ROM_Out => ROM_OUT
			);

-- Nodo que divide a os bits da instrução
Divider: DataSplit port map(
						 --clock => Clock,
				DataSplit_In => ROM_OUT,
				     OP_Code => op_code,
				          rs => rs_address,
							 rt => rt_address,
							 rd => rd_address,
						  Jump => jump_address
			);
			
-- Multiplexador do Registrador destino
Mux_Reg_Dst: Multiplexador2x1 port map(
				A => rt_address,  -- destino de instrução tipo I
				B => rd_address,  -- destino de instrução tipo R
				S => uc_flag_Reg_dst,
				SAIDA => mux_reg_dst_out
			);

-- Extensor de sinal-----------------------
Ext_Sinal : ExtensordeSinal4To16bits port map(
				ENTRADA => rd_address,
				SAIDA => extensor_signal_out
			);
			
-- Muxtiplexador da entrada da ULA
Mux_ULA_In : Multiplexador2x1_16bits port map(
				A => Reg_B_Data,
				B => extensor_signal_out,
				S => uc_ula_fonte,
				SAIDA => mux_ula_in_out
			);

-- BANCO DE REGISTRADORES -----------------
Register_File: BancoRegistradores port map(
				Clock => Clock,
				escReg => '1',
				RegA => Reg_A_Data,
				RegB => Reg_B_Data,
				Data => Write_Data,
				RegDst => mux_reg_dst_out,
				LeReg1 => rs_address,
				LeReg2 => rt_address
			);
			
-- Unidade de Controle ---------------------
Control_Unit: ControlUnit port map(
				OPCode => op_code,
				OPULA => uc_OP_ULA,
				RegDestino => uc_flag_Reg_dst,
				Branch => uc_flag_Branch,
				Jump => uc_flag_Jump,
				LeMem => uc_flag_Le_mem,
				EscMem => uc_flag_Esc_mem,
				MemParaReg => uc_flag_Mem_2_reg,
			   ULAFonte => uc_ula_fonte,
				EscReg => uc_flag_Esc_reg
			);
					

-- Unidade Lógica Aritmética ---------------
Arith_Logi_Unit: ULA port map(
				A => Reg_A_Data,
				B => mux_ula_in_out,
				Prod_High => prod_high,
				OPULA => uc_OP_ULA,
				ULAZero => alu_zero,
				ULAOut => alu_out
			);
			
-- Random Acess Memory-----------------------
Rand_Acess_Mem: MemoriaRAM port map(
				Endereco => alu_out,
				EscData => Reg_B_Data,
				SaiData => RaM_OUT,
				Clock	=> Clock,
				EscMem => uc_flag_Esc_mem
			);
			
--- Multiplexador do Write Back -------------		
Write_Back_Mux: Multiplexador2x1_16bits port map(
				A => alu_out,
				B => RaM_OUT,
				S => uc_flag_Mem_2_Reg,
				SAIDA => Write_Data
			);
			
-- Porta AND do Branch ----------------------
Branch_AND_Gate: ANDGate port map(
				A => uc_flag_branch,
				B => alu_zero,
				S => mux_branch_selector
			);

			
-- Shift do Jump ----------------------------
Jump_Shifter: JumpShift port map(
				PC => PC_Out,
				JumpAddress => jump_address,
				Saida => jump_shift_out
			);
	
-- Somador do Branch ------------------------
Branch_Adder: BAdder port map(
				A => PC_Adder_Out,
				B => extensor_signal_out,
				Result => branch_adder_out
			);
	
-- Multiplexador do Branch ------------------
Branch_Mux: Multiplexador2x1_16bits port map(
				A => PC_Adder_Out,
				B => branch_adder_out,
				S => mux_branch_selector,
				SAIDA => mux_branch_out
			);
			
-- Multiplexador do Proximo PC --------------
PC_Address_Mux: Multiplexador2x1_16bits port map(
				A => mux_branch_out,
				B => jump_shift_out,
				S => uc_flag_Jump,
				SAIDA => pc_next_address
			);
			

			
	
			
			
-- Trilhas do PC ----------
--out_PC_OUT <= PC_Out;
out_PC_IN  <= Pc_Next_Address;

-- Trilhas da ROM	---------
out_ROM_OUTPUT <= ROM_OUT;
out_ROM_INPUT  <= PC_Out;

-- Trilhas do Banco de Registradores
out_reg_a_data <= Reg_A_Data;
out_reg_b_data <= Reg_B_Data;
out_write_data <= Write_Data;
out_reg_a_addr <= rs_address;
out_reg_b_addr <= rt_address;
out_reg_dst_addr <= rd_address;
out_op_code    <= op_code;

-- Entrada da ULA
out_signal_ula_in <= mux_ula_in_out;

-- Trilha mux reg destino
out_muxRD_out <= mux_reg_dst_out;
-- Trilha mux branch
out_branch_sel <= mux_branch_selector;
out_mux_branch <= mux_branch_out;

-- Trilha Extensor de sinal
out_signal_extender <= extensor_signal_out;

-- Trilhas da Unidade de Controle
out_flag_Esc_Mem <= uc_flag_Esc_mem;
out_flag_Reg_Dst <= uc_flag_Reg_dst;
out_flag_Le_Mem <= uc_flag_Le_mem;
out_flag_Esc_Reg <= uc_flag_Esc_reg;
out_flag_Mem_2_Reg <= uc_flag_Mem_2_reg;
out_flag_branch <= uc_flag_Branch;
out_flag_ULAFonte <= uc_ula_fonte;
out_flag_Jump <= uc_flag_Jump;
out_OP_ULA <= uc_OP_ULA;

-- Trilhas da Unidade Lógica-Aritmética
out_ula_zero <= alu_zero;
out_ula_resultado <= alu_out;
out_ula_high <= prod_high;

-- Trilha relativa ao Jump -
out_jump_address <= jump_address;
out_jump_shift <= jump_shift_out;


end behavior;