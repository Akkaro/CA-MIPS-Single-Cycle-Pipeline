--LIBRARY ieee;
--USE ieee.std_logic_1164.ALL;
--USE ieee.std_logic_arith.ALL;
--USE ieee.std_logic_unsigned.ALL;

--ENTITY test_env IS
--	PORT (
--		clk : IN std_logic;
--		btn : IN std_logic_vector(4 DOWNTO 0);
--		sw : IN std_logic_vector(15 DOWNTO 0);
--		led : OUT std_logic_vector(15 DOWNTO 0);
--		an : OUT std_logic_vector(7 DOWNTO 0);
--		cat : OUT std_logic_vector(6 DOWNTO 0)
--	);
--END ENTITY test_env;

--ARCHITECTURE behavioral OF test_env IS

--	SIGNAL s_counter : std_logic_vector(15 DOWNTO 0) := x"0000";
--	SIGNAL s_counter_big : std_logic_vector(31 DOWNTO 0) := x"00000000";
--	SIGNAL s_counter_4_bit : std_logic_vector(3 downto 0) := x"0";

--	SIGNAL s_mpg_out : std_logic := '0';
--	SIGNAL s_mpg_out_2 : std_logic := '0';
--	SIGNAL s_mpg_out_3 : std_logic := '0';

--	SIGNAL s_counter_reset : std_logic := '0';
--	SIGNAL address : std_logic_vector(31 DOWNTO 0) := x"00000000";
	
--	SIGNAL s_rd1 : std_logic_vector(31 DOWNTO 0) := x"00000000";
--	SIGNAL s_rd2 : std_logic_vector(31 DOWNTO 0) := x"00000000";
	
--	SIGNAL s_to_digs : std_logic_vector(31 DOWNTO 0) := x"00000000";
	
--	constant ZERO : std_logic_vector(15 downto 0) := (others => '0');
	


--	TYPE MEM IS ARRAY (0 TO 15) OF std_logic_vector(31 DOWNTO 0);
--	SIGNAL Rom : MEM := (
--		x"00000000", 
--		x"00000001", 
--		x"00000010", 
--		x"00000011", 
--		OTHERS => x"00000000"
--	);

--	COMPONENT mpg
--		PORT (
--			clk : IN std_logic;
--			btn : IN std_logic;
--			enable : OUT std_logic
--		);
--	END COMPONENT;
 
--	COMPONENT seven_segment
--		PORT (
--			clk : IN std_logic;
--			digits : IN std_logic_vector(31 DOWNTO 0);
--			an : OUT std_logic_vector(7 DOWNTO 0);
--			cat : OUT std_logic_vector(6 DOWNTO 0)
--		);
--	END COMPONENT;
 
--	COMPONENT reg_file
--		PORT (
--			clk : IN std_logic;
--			ra1 : IN std_logic_vector (3 DOWNTO 0);
--			ra2 : IN std_logic_vector (3 DOWNTO 0);
--			wa : IN std_logic_vector (3 DOWNTO 0);
--			wd : IN std_logic_vector (31 DOWNTO 0);
--			wen : IN std_logic;
--			rd1 : OUT std_logic_vector (31 DOWNTO 0);
--			rd2 : OUT std_logic_vector (31 DOWNTO 0)
--		);
--	END COMPONENT;

--BEGIN
--	mpg_new : mpg
--	PORT MAP(
--		clk => clk, 
--		btn => btn(0), 
--		enable => s_mpg_out
--	);
 
--	mpg_new_2 : mpg
--	PORT MAP(
--		clk => clk, 
--		btn => btn(2), 
--		enable => s_mpg_out_2
--	);
	
--    mpg_new_3 : mpg
--	PORT MAP(
--		clk => clk, 
--		btn => btn(3), 
--		enable => s_mpg_out_3
--	);
 
--	seven_segment_new : seven_segment
--	PORT MAP(
--		clk => clk, 
--		digits => s_to_digs, 
--		--digits => x"abcd1234",
--		an => an, 
--		cat => cat 
--	);
	
--	test_reg_file : reg_file
--	PORT MAP(
--	   clk => clk,
--	   ra1 => s_counter_4_bit,
--	   ra2 => s_counter_4_bit,
--	   wa => s_counter_4_bit,
--	   wd => s_to_digs,
--	   wen => s_mpg_out_3,
--	   rd1 => s_rd1,
--	   rd2 => s_rd2
--	);
 
 
--    s_to_digs <= s_rd1 + s_rd2;
    
--	PROCESS (clk)
--	BEGIN
--		IF rising_edge(clk) THEN
--			-- if s_mpg_out > 0 then -- any of the buttons is pressed
--			IF s_mpg_out = '1' THEN -- top button is pressed
--				s_counter <= s_counter + 1;
--			END IF;
--		END IF;
--	END PROCESS;
 
--	PROCESS (clk)
--		BEGIN
--			IF rising_edge(clk) THEN
--				IF s_mpg_out_2 = '1' THEN
--					s_counter_big <= x"00000000";
--				ELSE
--					IF s_mpg_out = '1' THEN -- top button is pressed
--						s_counter_big <= s_counter_big + 1;
--					END IF;
--				END IF;
--			END IF;
--		END PROCESS;
		
--	PROCESS (clk)
--		BEGIN
--			IF rising_edge(clk) THEN
--				IF s_mpg_out_2 = '1' THEN
--					s_counter_4_bit <= x"0";
--				ELSE
--					IF s_mpg_out = '1' THEN -- top button is pressed
--						s_counter_4_bit <= s_counter_4_bit + 1;
--					END IF;
--				END IF;
--			END IF;
--		END PROCESS;
 
--		--led <= s_counter_big(15 DOWNTO 0);
--		led <= ZERO(31 downto s_counter_4_bit'length) & s_counter_4_bit;
--		address <= Rom(conv_integer(s_counter_big));

--END ARCHITECTURE behavioral;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY test_env IS
	PORT (
		clk : IN std_logic;
		btn : IN std_logic_vector(4 DOWNTO 0);
		sw : IN std_logic_vector(15 DOWNTO 0);
		led : OUT std_logic_vector(15 DOWNTO 0);
		an : OUT std_logic_vector(7 DOWNTO 0);
		cat : OUT std_logic_vector(6 DOWNTO 0)
	);
END ENTITY test_env;

ARCHITECTURE behavioral OF test_env IS

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
	
	COMPONENT quiz1_rom
	port (
        addr : in std_logic_vector(7 downto 0);
        data : out std_logic_vector(15 downto 0)
);
	END COMPONENT;
	
	COMPONENT quiz1_cnt

        port (
        clk: in std_logic;
        val : in std_logic_vector(7 downto 0) := x"AB";
        en : in std_logic := '1';
        set : in std_logic;
        res : in std_logic; 
        ce : in std_logic;
        cnt_out : out std_logic_vector(7 downto 0)
);
	END COMPONENT;
	
	SIGNAL counter_res : std_logic;
	SIGNAL counter_ce : std_logic;
	SIGNAL counter_en : std_logic;
	SIGNAL counter_val :  std_logic_vector (7 downto 0);
	SIGNAL counter_set : std_logic;
	SIGNAL s_cnt_out : std_logic_vector (7 downto 0);
	SIGNAL s_digits : std_logic_vector (31 downto 0);
	SIGNAL s_rom_data : std_logic_vector (15 downto 0);
	SIGNAL s_sub_res : std_logic_vector (15 downto 0);
--	SIGNAL s_counter_big : std_logic_vector(31 DOWNTO 0) := x"00000000";
--	SIGNAL s_counter_4_bit : std_logic_vector(3 downto 0) := x"0";

--	SIGNAL s_mpg_out : std_logic := '0';
--	SIGNAL s_mpg_out_2 : std_logic := '0';
--	SIGNAL s_mpg_out_3 : std_logic := '0';

--	SIGNAL s_counter_reset : std_logic := '0';
--	SIGNAL address : std_logic_vector(31 DOWNTO 0) := x"00000000";
	
--	SIGNAL s_rd1 : std_logic_vector(31 DOWNTO 0) := x"00000000";
--	SIGNAL s_rd2 : std_logic_vector(31 DOWNTO 0) := x"00000000";
	
--	SIGNAL s_to_digs : std_logic_vector(31 DOWNTO 0) := x"00000000";
	
--	constant ZERO : std_logic_vector(15 downto 0) := (others => '0');

	BEGIN
	mpg_new : mpg
	PORT MAP(
		clk => clk, 
		btn => btn(0), 
		enable => counter_ce
	);
 
	mpg_new_2 : mpg
	PORT MAP(
		clk => clk, 
		btn => btn(1), 
		enable => counter_res
	);
	
--    mpg_new_3 : mpg
--	PORT MAP(
--		clk => clk, 
--		btn => btn(3), 
--		enable => s_mpg_out_3
--	);
 
	seven_segment_new : seven_segment
	PORT MAP(
		clk => clk, 
		digits => s_digits, 
		an => an, 
		cat => cat 
	);
	
	cnt_new : quiz1_cnt
	PORT MAP(
		ce => counter_ce,
		en => '1',
		res => counter_res,
		val => x"AB",
		set => counter_set,
		cnt_out => s_cnt_out,
		clk => clk
	);
	
	rom_new : quiz1_rom
	port map (
	addr => s_cnt_out,
	data => s_rom_data
	);
	
	s_sub_res <= s_rom_data - x"1000";
	
--	process(sw(0), s_rom_data)
--	begin
--	if sw(0) = '1'
	
END ARCHITECTURE behavioral;