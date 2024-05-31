LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY instructionFetch IS
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
END instructionFetch;
ARCHITECTURE Behavioral OF instructionFetch IS
 
    TYPE reg_array IS ARRAY (0 TO 255) OF std_logic_vector(15 DOWNTO 0);
	SIGNAL instruction_memory : reg_array := (
	 -- R Type
  --  opc rs  rt  rd sa func
    b"000_001_010_011_0_000", -- #x0 x"0530" add  $3 <= $1 + $2 x0b02 + x0c03 = x1705
    b"000_110_100_010_0_001", -- #x1 x"1a21" sub  $2 <= $6 - $4 x123f - x0e05 = x043a
    b"000_000_000_111_1_010", -- #x2 x"007a" sll  $7 <= $0 << 1 x0a01 <<   1  = x1402
    b"000_000_000_111_1_011", -- #x3 x"007b" srl  $7 <= $0 >> 1 x0a01 >>   1  = x0500
    b"000_101_010_110_0_100", -- #x4 x"1564" and  $6 <= $5 & $2 x0f06 & x043a = x0402
    b"000_101_010_110_0_101", -- #x5 x"1565" or   $6 <= $5 | $2 x0f06 | x043a = x0f3e
    b"000_101_010_110_0_110", -- #x6 x"1565" xor   $6 <= $5 ^ $2 x0f06 ^ x043a = x0f3e 
  -- I Type  
  --  opc rs  rt  imm
    b"001_111_001_0000101",   -- #x8 x"3c85" addi $1 <= $7 + 5  x0500 + x0005 = x0505
    b"001_111_000_1000001",   -- #x9 x"3c41" addi $4 <= $7 - 63 x0500 - x003f = x04c1
  -- R Type
  --  opc rs  rt  rd sa func
    b"000_001_111_000_0_001", -- #xa x"0781" sub  $0 <= $1 - $7 x0505 - x0500 = x0005
  -- I Type  
  --  opc rs  rt  imm
    b"011_000_101_0000000",   -- #xb x"6280" sw   MEM[$0 + 0] <= $5 x0005 + 0 = x0005
    b"010_000_100_0000000",   -- #xc x"4200" lw   $4 <= MEM[$0 + 0] x0005 + 0 = x0005
    b"001_100_000_0000000",   -- #xd x"3000" addi $0 <= $4 + 0 x0005 + 0 = x0005
    b"100_000_100_0000010",   -- #xe x"8202" beq  $4 == $0 x0005 == x0005 PC + 2
    b"100_000_100_0000010",   -- #xf skip
    b"100_000_100_0000010",   -- #xg skip
  -- J Type
  --  opc addr
    b"111_0000000000011",     -- #xf x"e003" j    0003
    others => (others => '1')
	);

	SIGNAL pc_out : std_logic_vector(15 DOWNTO 0);
	SIGNAL pc_input : std_logic_vector(15 DOWNTO 0);
	SIGNAL pc_incremented : std_logic_vector(15 DOWNTO 0);
	SIGNAL mux_branch : std_logic_vector(15 DOWNTO 0);
BEGIN
	PROCESS (clk, pc_en)
	BEGIN
		IF rising_edge(clk) THEN
			IF reset = '1' THEN
				pc_out <= x"0000";
			ELSIF pc_en = '1' THEN
				pc_out <= pc_input;
			END IF;
		END IF;
	END PROCESS;
	
	pc_incremented <= pc_out + 1;
	
	pc_next <= pc_incremented;
	
	instruction <= instruction_memory(conv_integer(pc_out(7 downto 0)));
	
	process(branch_address, pc_incremented, pcsrc)
	begin
	   if(pcsrc='0')then
	       mux_branch <= pc_incremented;
	   else
	       mux_branch <= branch_address;
	   end if;
	end process;
	
	process(mux_branch, jump_address, jump)
	begin
	   if(jump='0')then
	       pc_input <= mux_branch;
	   else
	       pc_input <= jump_address;
	   end if;
	end process;
	
 
END Behavioral;