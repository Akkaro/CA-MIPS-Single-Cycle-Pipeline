LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY test_mips_new IS
	PORT (
		clk : IN std_logic;
		btn : IN std_logic_vector(4 DOWNTO 0);
		sw : IN std_logic_vector(15 DOWNTO 0);
		led : OUT std_logic_vector(15 DOWNTO 0);
		an : OUT std_logic_vector(7 DOWNTO 0);
		cat : OUT std_logic_vector(6 DOWNTO 0)
	);
END ENTITY test_mips_new;

ARCHITECTURE behavioral OF test_mips_new IS

	COMPONENT mpg_5
		PORT (
			clk : IN std_logic;
			btn : IN std_logic_vector(4 downto 0);
			enable : OUT std_logic_vector(4 downto 0)
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
	
	component main_control
     port (
    op_code    : in std_logic_vector(2 downto 0);
    reg_dst    : out std_logic;
    ext_op     : out std_logic;
    alu_src    : out std_logic;
    branch     : out std_logic;
    jump       : out std_logic;
    alu_op     : out std_logic_vector(2 downto 0);
    mem_write  : out std_logic;
    mem_to_reg : out std_logic;
    reg_write  : out std_logic
  );
  end component;
  
  component instructionDecode
  port (
    clk       : in  std_logic;
    instr     : in  std_logic_vector(15 downto 0);
    wd        : in  std_logic_vector(15 downto 0);
    ext_op    : in  std_logic;
    reg_dst   : in  std_logic;
    reg_write : in  std_logic;
    ext_imm   : out std_logic_vector(15 downto 0);
    func      : out std_logic_vector(2  downto 0);
    rd1       : out std_logic_vector(15 downto 0);
    rd2       : out std_logic_vector(15 downto 0);
    sa        : out std_logic
  );
  end component;
	
	component exec_unit
  port (
    ext_imm     : in  std_logic_vector(15 downto 0);
    func        : in  std_logic_vector(2  downto 0);
    rd1         : in  std_logic_vector(15 downto 0);
    rd2         : in  std_logic_vector(15 downto 0);
    pc_plus_one : in  std_logic_vector(15 downto 0);
    sa          : in  std_logic;
    alu_op      : in  std_logic_vector(2  downto 0);
    alu_src     : in  std_logic;
    alu_res     : out std_logic_vector(15 downto 0);
    branch_addr : out std_logic_vector(15 downto 0);
    zero        : out std_logic
  );
  end component;

  component mem_unit
  port (
    clk         : in  std_logic;
    alu_res_in  : in  std_logic_vector(15 downto 0);
    rd2         : in  std_logic_vector(15 downto 0);
    mem_write   : in  std_logic;
    mem_data    : out std_logic_vector(15 downto 0);
    alu_res_out : out std_logic_vector(15 downto 0)
  );
  end component;
	
	signal s_if_in_jump_address : std_logic_vector(15 downto 0) := x"0000";
	
	SIGNAL pc_en : std_logic;
	SIGNAL mpg_out : std_logic;
	SIGNAL pc_plus_one : std_logic_vector (15 downto 0);
	SIGNAL instr : std_logic_vector (15 downto 0);
	
	--mpg
  signal s_mpg          : std_logic_vector(4 downto 0);
	
	-- 7-segment display
  signal s_digits       : std_logic_vector(31 downto 0) := x"0000_0000";
  signal s_digits_upper : std_logic_vector(15 downto 0) := x"0000";
  signal s_digits_lower : std_logic_vector(15 downto 0) := x"0000";
	
	-- Main Control
  signal s_ctrl_reg_dst    : std_logic                    := '0';
  signal s_ctrl_ext_op     : std_logic                    := '0';
  signal s_ctrl_alu_src    : std_logic                    := '0';
  signal s_ctrl_branch     : std_logic                    := '0';
  signal s_ctrl_jump       : std_logic                    := '0';
  signal s_ctrl_alu_op     : std_logic_vector(2 downto 0) := b"000";
  signal s_ctrl_mem_write  : std_logic                    := '0';
  signal s_ctrl_mem_to_reg : std_logic                    := '0';
  signal s_ctrl_reg_write  : std_logic                    := '0';

  -- Instruction Decode
  signal s_id_in_reg_write : std_logic                     := '0';
  signal s_id_in_wd        : std_logic_vector(15 downto 0) := x"0000";
  signal s_id_out_ext_imm  : std_logic_vector(15 downto 0) := x"0000";
  signal s_id_out_func     : std_logic_vector(2  downto 0) := b"000";
  signal s_id_out_rd1      : std_logic_vector(15 downto 0) := x"0000";
  signal s_id_out_rd2      : std_logic_vector(15 downto 0) := x"0000";
  signal s_id_out_sa       : std_logic                     := '0';
  
  -- Execution Unit
  signal s_eu_out_alu_res : std_logic_vector(15 downto 0) := x"0000";
  signal s_eu_out_bta     : std_logic_vector(15 downto 0) := x"0000";
  signal s_eu_out_zero    : std_logic                     := '0';
  
  -- Memory Unit
  signal s_mu_in_mem_write : std_logic                     := '0';
  signal s_mu_out_mem_data : std_logic_vector(15 downto 0) := x"0000";
  signal s_mu_out_alu_res  : std_logic_vector(15 downto 0) := x"0000";

  -- Write Back unit
  signal s_wb_out_wd : std_logic_vector(15 downto 0) := x"0000";
  
  -- Signals for Pipelining----------------------------------
  --IF/ID
  signal pipe_if_id_pc_next : std_logic_vector(15 downto 0);
  signal pipe_if_if_instr : std_logic_vector (15 downto 0);
  
  --ID/EX
  --controls
  signal pipe_id_ex_wb_mem_to_reg : std_logic;
  signal pipe_id_ex_wb_reg_write : std_logic;
  signal pipe_id_ex_mem_wrtie : std_logic;
  signal pipe_id_ex_branch : std_logic;
  signal pipe_id_ex_ex_alu_op : std_logic_vector(2  downto 0);
  signal pipe_id_ex_ex_alu_src : std_logic;
  signal pipe_id_ex_ex_reg_dst : std_logic;
  --other
  signal pipe_id_ex_pc_next : std_logic_vector(15 downto 0);
  signal pipe_id_ex_read_data_1 : std_logic_vector(15 downto 0);
  signal pipe_id_ex_read_data_2 : std_logic_vector(15 downto 0);
  signal pipe_id_ex_extended_imm : std_logic_vector(15 downto 0);
  signal pipe_id_ex_function_code : std_logic_vector(2 downto 0);
  signal pipe_id_ex_target : std_logic_vector(2 downto 0);
  signal pipe_id_ex_dest : std_logic_vector(2 downto 0);
  
  --EX/MEM
  --controls
  signal pipe_ex_mem_mem_to_reg : std_logic;
  signal pipe_ex_mem_reg_write : std_logic;
  signal pipe_ex_mem_mem_wrtie : std_logic;
  signal pipe_ex_mem_branch : std_logic;
  --other
  signal pipe_ex_mem_branch_addr : std_logic_vector(15 downto 0);
  signal pipe_ex_mem_alu_res : std_logic_vector(15 downto 0);
  signal pipe_ex_mem_read_data_2 : std_logic_vector(15 downto 0);
  signal pipe_ex_mem_write_addr : std_logic_vector(15 downto 0);
  
  --MEM/WB
  --controls
  signal pipe_mem_wb_mem_to_reg : std_logic;
  signal pipe_mem_wb_reg_write : std_logic;
  --other
  signal pipe_mem_wb_read_data_memory : std_logic_vector (15 downto 0);
  signal pipe_mem_wb_alu_res: std_logic_vector (15 downto 0);
  signal pipe_mem_wb_write_addr : std_logic_vector(15 downto 0); 
  
  
  

	BEGIN
	mpg : mpg_5
	PORT MAP(
		clk => clk, 
		btn => btn, 
		enable => s_mpg
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
		jump => s_ctrl_jump,
		pcsrc => s_ctrl_branch,
		jump_address => s_if_in_jump_address,
		branch_address => s_eu_out_bta,
		reset => s_mpg(1),
		pc_en => s_mpg(0),

		pc_next => pc_plus_one,
		instruction => instr
	);
	
	main_control_inst : main_control
  port map (
    op_code    => instr(15 downto 13),
    reg_dst    => s_ctrl_reg_dst,
    ext_op     => s_ctrl_ext_op,
    alu_src    => s_ctrl_alu_src,
    branch     => s_ctrl_branch,
    jump       => s_ctrl_jump,
    alu_op     => s_ctrl_alu_op,
    mem_write  => s_ctrl_mem_write,
    mem_to_reg => s_ctrl_mem_to_reg,
    reg_write  => s_ctrl_reg_write
  );
  
   instr_decode_inst : instructionDecode
  port map (
    clk       => clk,
    instr     => instr,
    wd        => s_id_in_wd,
    ext_op    => s_ctrl_ext_op,
    reg_dst   => s_ctrl_reg_dst,
    reg_write => s_id_in_reg_write,
    ext_imm   => s_id_out_ext_imm,
    func      => s_id_out_func,
    rd1       => s_id_out_rd1,
    rd2       => s_id_out_rd2,
    sa        => s_id_out_sa
  );
  
  exec_unit_inst : exec_unit
  port map (
    ext_imm     => s_id_out_ext_imm,
    func        => s_id_out_func,
    rd1         => s_id_out_rd1,
    rd2         => s_id_out_rd2,
    pc_plus_one => pc_plus_one,
    sa          => s_id_out_sa,
    alu_op      => s_ctrl_alu_op,
    alu_src     => s_ctrl_alu_src,
    alu_res     => s_eu_out_alu_res,
    branch_addr => s_eu_out_bta,
    zero        => s_eu_out_zero
  );

  mem_unit_inst : mem_unit
  port map (
    clk         => clk,
    alu_res_in  => s_eu_out_alu_res,
    rd2         => s_id_out_rd2,
    mem_write   => s_mu_in_mem_write,
    mem_data    => s_mu_out_mem_data,
    alu_res_out => s_mu_out_alu_res
  );
  
  
  --IF/ID register
  process(clk)
  begin
  if rising_edge(clk) then
  pipe_if_id_pc_next <= pc_plus_one;
  pipe_if_if_instr <= instr;
  end if;
  end process;
  
  --ID/EX register
  process(clk)
  begin
  if rising_edge(clk) then
  pipe_id_ex_wb_mem_to_reg <= s_ctrl_mem_to_reg;
  pipe_id_ex_wb_reg_write <= s_ctrl_reg_write;
  pipe_id_ex_mem_wrtie <= s_ctrl_mem_write;
  pipe_id_ex_branch <= s_ctrl_branch;
  pipe_id_ex_ex_alu_op <= s_ctrl_alu_op;
  pipe_id_ex_ex_alu_src <= s_ctrl_alu_src;
  pipe_id_ex_ex_reg_dst <= s_ctrl_reg_dst;
  --others
  pipe_id_ex_pc_next <= pipe_if_id_pc_next;
  pipe_id_ex_read_data_1 <= s_id_out_rd1;
  pipe_id_ex_read_data_2 <= s_id_out_rd2;
  pipe_id_ex_extended_imm <= s_id_out_ext_imm;
  pipe_id_ex_function_code <= s_id_out_func;
  pipe_id_ex_target <= pipe_if_if_instr(9 downto 7);
  pipe_id_ex_dest <= pipe_if_if_instr(6 downto 4);
  end if;
  end process;
  
  --EX/MEM register
  process(clk)
  begin
  if rising_edge(clk) then
  pipe_ex_mem_mem_to_reg <= pipe_id_ex_wb_mem_to_reg;
  pipe_ex_mem_reg_write <= pipe_id_ex_wb_reg_write;
  pipe_ex_mem_mem_wrtie <= pipe_id_ex_mem_wrtie;
  pipe_ex_mem_branch <= pipe_id_ex_branch;
  --others
  pipe_ex_mem_branch_addr <= s_eu_out_bta;
  pipe_ex_mem_alu_res <= s_eu_out_alu_res;
  pipe_ex_mem_read_data_2 <= s_id_out_rd2;
  
    if pipe_id_ex_ex_reg_dst = '0' then 
        pipe_ex_mem_write_addr <= pipe_id_ex_target;
    else
        pipe_ex_mem_write_addr <= pipe_id_ex_dest;
    end if;
    
  end if;
  end process;

  --IF/ID register
  process(clk)
  begin
  if rising_edge(clk) then
  pipe_mem_wb_mem_to_reg <= pipe_ex_mem_mem_to_reg;
  pipe_mem_wb_reg_write <= pipe_ex_mem_reg_write;
  --other
  pipe_mem_wb_read_data_memory <= s_mu_out_mem_data;
  pipe_mem_wb_alu_res <= s_mu_out_alu_res;
  pipe_mem_wb_write_addr <= pipe_ex_mem_write_addr;
  end if;
  end process;

s_if_in_jump_address <= x"00" & instr(7 downto 0);

  -- ID related
  s_id_in_reg_write <= s_ctrl_reg_write and s_mpg(0);
  s_id_in_wd        <= s_wb_out_wd;

  -- MU related
  s_mu_in_mem_write <= s_ctrl_mem_write and s_mpg(0);

  -- WB related
  s_wb_out_wd <= s_mu_out_mem_data when s_ctrl_mem_to_reg = '1' else s_mu_out_alu_res;
  
  -- MUX for 7-segment display left side (31 downto 16)
  process (sw(11 downto 9), pc_plus_one, instr, s_id_out_rd1, s_id_out_rd2, s_id_in_wd)
  begin
    case sw(11 downto 9) is
      when "000"  => s_digits_upper <= instr;
      when "001"  => s_digits_upper <= pc_plus_one;
      when "010"  => s_digits_upper <= s_id_out_rd1;
      when "011"  => s_digits_upper <= s_id_out_rd2;
      when "100"  => s_digits_upper <= s_id_in_wd;    
      when others => s_digits_upper <= instr;
    end case;
  end process;

  -- MUX for 7-segment display right side (15 downto 0)
  process (sw(6 downto 4), pc_plus_one, instr, s_id_out_rd1, s_id_out_rd2, s_id_in_wd)
  begin
    case sw(6 downto 4) is
      when "000"  => s_digits_lower <= instr;
      when "001"  => s_digits_lower <= pc_plus_one;
      when "010"  => s_digits_lower <= s_id_out_rd1;
      when "011"  => s_digits_lower <= s_id_out_rd2;
      when "100"  => s_digits_lower <= s_id_in_wd;    
      when others => s_digits_lower <= instr;
    end case;
  end process;

  s_digits <= s_digits_upper & s_digits_lower;

  -- LED with signals from Main Control Unit
  led <= s_ctrl_alu_op     & -- ALU operation        15:13
         b"0000_0"         & -- Unused               12:8
         s_ctrl_reg_dst    & -- Register destination 7
         s_ctrl_ext_op     & -- Extend operation     6
         s_ctrl_alu_src    & -- ALU source           5
         s_ctrl_branch     & -- Branch               4
         s_ctrl_jump       & -- Jump                 3
         s_ctrl_mem_write  & -- Memory write         2
         s_ctrl_mem_to_reg & -- Memory to register   1
         s_ctrl_reg_write;   -- Register write       0

	
END ARCHITECTURE behavioral;