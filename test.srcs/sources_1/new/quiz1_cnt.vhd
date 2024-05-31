library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity quiz1_cnt is
    port (
        clk: in std_logic;
        val : in std_logic_vector(7 downto 0) := x"AB";
        en : in std_logic := '1';
        set : in std_logic;
        res : in std_logic; 
        ce : in std_logic;
        cnt_out : out std_logic_vector(7 downto 0)
);
end quiz1_cnt;

architecture Behavioral of quiz1_cnt is

signal output : std_logic_vector(7 downto 0) := (others => '0');
begin

process(clk)
begin
    if rising_edge(clk) then
        if res = '1' then 
            output <= x"00";
        elsif set = '1' then
            output <= val;
        elsif ce = '1' then
            output <= output + '1';
        end if; 
    end if;
end process;

cnt_out <= output;

end Behavioral;
