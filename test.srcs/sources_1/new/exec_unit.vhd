LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY exec_unit IS
	PORT (
		-- inputs
		ext_imm : IN std_logic_vector(15 DOWNTO 0);
		func : IN std_logic_vector(2 DOWNTO 0);
		rd1 : IN std_logic_vector(15 DOWNTO 0);
		rd2 : IN std_logic_vector(15 DOWNTO 0); 
		pc_plus_one : IN std_logic_vector(15 DOWNTO 0);
		sa : IN std_logic;
		-- control signals
		alu_op : IN std_logic_vector(2 DOWNTO 0);
		alu_src : IN std_logic;
		-- outputs
		alu_res : OUT std_logic_vector(15 DOWNTO 0);
		branch_addr : OUT std_logic_vector(15 DOWNTO 0);
		zero : OUT std_logic
	);
END ENTITY;
ARCHITECTURE Behavioral OF exec_unit IS

	SIGNAL s_alu_control : std_logic_vector(2 DOWNTO 0);
	SIGNAL s_alu_res : std_logic_vector(15 DOWNTO 0);
	SIGNAL s_second_operand : std_logic_vector(15 DOWNTO 0);
	SIGNAL s_slt_res : std_logic_vector(15 DOWNTO 0);
BEGIN
	-- ALU Control
	PROCESS (alu_op, func)
	BEGIN
		CASE alu_op IS
			WHEN "000" => 
				CASE func IS
					WHEN "000" => s_alu_control <= "000"; -- ADD
					WHEN "001" => s_alu_control <= "001"; -- SUB
					WHEN "010" => s_alu_control <= "010"; -- SLL
					WHEN "011" => s_alu_control <= "011"; -- SRL
					WHEN "100" => s_alu_control <= "100"; -- AND
					WHEN "101" => s_alu_control <= "101"; -- OR
					WHEN "110" => s_alu_control <= "110"; -- XOR
					WHEN "111" => s_alu_control <= "111"; -- SLT
			END CASE; 
			WHEN "001" => s_alu_control <= "000"; -- ADDI
			WHEN "010" => s_alu_control <= "000"; -- LW
			WHEN "011" => s_alu_control <= "000"; -- SW
			WHEN "100" => s_alu_control <= "001"; -- BEQ
			WHEN "101" => s_alu_control <= "110"; -- XORI
			WHEN "110" => s_alu_control <= "100"; -- ANDI
			WHEN OTHERS => s_alu_control <= "111";
		END CASE;
	END PROCESS;
 
	-- MUX for Second Operand
	s_second_operand <= rd2 WHEN alu_src = '0' ELSE
	                    ext_imm;
 
	-- ALU
	PROCESS (s_alu_control, sa, rd1, s_second_operand)
		BEGIN
			CASE s_alu_control IS
				WHEN "000" => s_alu_res <= rd1 + s_second_operand;
				WHEN "001" => s_alu_res <= rd1 - s_second_operand;
				WHEN "010" => s_alu_res <= rd1(14 DOWNTO 0) & '0';
				WHEN "011" => s_alu_res <= '0' & rd1(15 DOWNTO 1);
				WHEN "100" => s_alu_res <= rd1 AND s_second_operand;
				WHEN "101" => s_alu_res <= rd1 OR s_second_operand;
				WHEN "110" => s_alu_res <= rd1 XOR s_second_operand;
				WHEN "111" => s_alu_res <= s_slt_res;
				WHEN others => s_alu_res <= (others => '0');
			END CASE; 
		END PROCESS;
 
		PROCESS (rd1, s_second_operand)
			BEGIN
				IF (s_alu_control = "111") THEN
					s_slt_res <= (OTHERS => '0');
					IF (rd1 < s_second_operand) THEN
						s_slt_res(0) <= '1';
					ELSE
						s_slt_res(0) <= '0';
					END IF;
				END IF;
		END PROCESS;
		alu_res <= s_alu_res;

		-- Branch Target Address
		branch_addr <= pc_plus_one + ext_imm;

		-- Zero Flag
		zero <= '1' when s_alu_res = x"0000" else '0';

END Behavioral;