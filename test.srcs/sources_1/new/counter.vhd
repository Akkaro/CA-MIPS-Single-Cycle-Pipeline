library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity counter is 
    port (
        clk: in std_logic;
        btn : in std_logic_vector(4 downto 0);
        sw : in std_logic_vector(15 downto 0);
        led : out std_logic_vector(15 downto 0); 
        an : out std_logic_vector(7 downto 0);
        cat : out std_logic_vector(6 downto 0)
);
end entity counter;

architecture behavioral of counter is

signal sig_name: std_logic_vector(15 downto 0):= (others => '0');

component mpg 

port (
clk: in std_logic; 
btn : in std_logic; 
enable: out std_logic

);

end component;

begin

--led <= smA
--an <= rooo" a btn(4, dointo 0) :
--cat <= (others =› '00)he btn (0).1
process(clk)
begin 
    if rising_edge (clk) then
    if btn(0) = '1' then
        sig_name <= sig_name + 1;
    end if;
    end if;
end process;
led <= sig_name;
end architecture behavioral;