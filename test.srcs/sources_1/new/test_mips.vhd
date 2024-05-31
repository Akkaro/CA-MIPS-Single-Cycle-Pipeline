LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY test_mips IS
	PORT (
		clk : IN std_logic;
		btn : IN std_logic_vector(4 DOWNTO 0);
		sw : IN std_logic_vector(15 DOWNTO 0);
		led : OUT std_logic_vector(15 DOWNTO 0);
		an : OUT std_logic_vector(7 DOWNTO 0);
		cat : OUT std_logic_vector(6 DOWNTO 0)
	);
END ENTITY test_mips;

ARCHITECTURE behavioral OF test_mips IS

	COMPONENT mpg
		PORT (
			clk : IN std_logic;
			btn : IN std_logic;
			enable : OUT std_logic
		);
	END COMPONENT;
 
	COMPONENT seven_segment
		PORT (
			clk : IN std_logic;
			digits : IN std_logic_vector(31 DOWNTO 0);
			an : OUT std_logic_vector(7 DOWNTO 0);
			cat : OUT std_logic_vector(6 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT instructionFetch
		PORT (
		clk : IN std_logic;
		jump : IN std_logic;
		pcsrc : IN std_logic;
		jump_address : IN std_logic_vector(15 DOWNTO 0);
		branch_address : IN std_logic_vector(15 DOWNTO 0);
		reset : IN std_logic;
		pc_en : IN std_logic;
 
		pc_next : OUT std_logic_vector(15 DOWNTO 0);
		instruction : OUT std_logic_vector(15 DOWNTO 0)
	);
	END COMPONENT;
	
	
	SIGNAL pc_en : std_logic;
	SIGNAL mpg_out : std_logic;
--	SIGNAL counter_ce : std_logic;
--	SIGNAL counter_en : std_logic;
--	SIGNAL counter_val :  std_logic_vector (7 downto 0);
--	SIGNAL counter_set : std_logic;
--	SIGNAL s_cnt_out : std_logic_vector (7 downto 0);
	SIGNAL s_digits : std_logic_vector (31 downto 0);
	SIGNAL pc_plus_one : std_logic_vector (15 downto 0);
	SIGNAL instr : std_logic_vector (15 downto 0);

	BEGIN
	mpg_new : mpg
	PORT MAP(
		clk => clk, 
		btn => btn(0), 
		enable => pc_en
	);
	mpg_new_2 : mpg
	PORT MAP(
		clk => clk, 
		btn => btn(1), 
		enable => mpg_out
	);
 
	seven_segment_new : seven_segment
	PORT MAP(
		clk => clk, 
		digits => s_digits, 
		an => an, 
		cat => cat 
	);
	
	
	instructionFetchNew : instructionFetch
	PORT MAP(
		clk =>clk,
		jump => sw(0),
		pcsrc => sw(1),
		jump_address => x"0000",
		branch_address => x"0002",
		reset => mpg_out,
		pc_en => pc_en,

		pc_next => pc_plus_one,
		instruction => instr
	);

    s_digits <= pc_plus_one & instr;

	
END ARCHITECTURE behavioral;