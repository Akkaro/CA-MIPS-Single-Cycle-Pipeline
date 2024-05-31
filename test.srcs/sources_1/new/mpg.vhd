library IEEE;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity mpg is

  port (
    btn : in  std_logic;
    clk  : in  std_logic;
    enable : out std_logic
  );
  
end mpg;

architecture Behavioral of mpg is

signal en : std_logic :='0';
signal q : std_logic :='0';
signal d : std_logic :='0';
signal cnt : std_logic_vector(15 downto 0):=(others => '0');

signal d1 : std_logic :='0';
signal d2: std_logic :='0';
signal q1 : std_logic :='0';
signal q2 : std_logic :='0';


begin

en <= '1' when cnt = x"000F" else '0';

process(clk) 
    begin
        if rising_edge(clk) then
            if en = '1' then 
                Q <= D;
            end if;
        end if;
    end process;
    
process(clk) 
    begin
        if rising_edge(clk) then
            cnt <= cnt + '1';
        end if;
end process;

d <= btn;
D1<=Q;

process(clk) 
    begin
        if rising_edge(clk) then
            Q1 <= D1;
        end if;
end process;

D2<=Q1;

process(clk) 
    begin
        if rising_edge(clk) then
            Q2 <= D2;
        end if;
end process;

enable<=q1 and (not q2);

end Behavioral;
