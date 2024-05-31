library IEEE;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity seven_segment is
  port (
    clk : in  std_logic;
    digits : in  std_logic_vector(31 downto 0);
    an : out std_logic_vector(7 downto 0);
    cat: out std_logic_vector(6 downto 0)
  );
end seven_segment;

architecture Behavioral of seven_segment is

signal s_counter : std_logic_vector(15  downto 0) := x"0000";
signal digit_selected : std_logic_vector(3  downto 0) := "0000";
signal mux_selection : std_logic_vector(2 downto 0) := "000";
begin


  process(clk) 
  begin
    if rising_edge(clk) then
        s_counter <= s_counter + 1;
    end if;
  end process;
  
  mux_selection <= s_counter(15 downto 13);
  
    process(mux_selection, digits)
    begin
        case mux_selection is
            when "000" => digit_selected <= digits(3 downto 0);
            when "001" => digit_selected <= digits(7 downto 4);
            when "010" => digit_selected <= digits(11 downto 8);
            when "011" => digit_selected <= digits(15 downto 12);
            when "100" => digit_selected <= digits(19 downto 16);
            when "101" => digit_selected <= digits(23 downto 20);
            when "110" => digit_selected <= digits(27 downto 24);
            when "111" => digit_selected <= digits(31 downto 28);
            when others => digit_selected <= x"0";
        end case;
    end process;
    
    process(mux_selection)
    begin
        case mux_selection is
            when "000" => an <= "11111110";
            when "001" => an <= "11111101";
            when "010" => an <= "11111011";
            when "011" => an <= "11110111";
            when "100" => an <= "11101111";
            when "101" => an <= "11011111";
            when "110" => an <= "10111111";
            when "111" => an <= "01111111";
            when others => an <= x"00";
        end case;
    end process;


    process(digit_selected)
    begin
        case digit_selected is   
            when "0001" => cat <= "1111001";
            when "0010" => cat <= "0100100";
            when "0011" => cat <= "0110000";
            when "0100" => cat <= "0011001";
            when "0101" => cat <= "0010010";
            when "0110" => cat <= "0000010";
            when "0111" => cat <= "1111000";
            when "1000" => cat <= "0000000";
            when "1001" => cat <= "0010000";
            when "1010" => cat <= "0001000";
            when "1011" => cat <= "0000011";
            when "1100" => cat <= "1000110";
            when "1101" => cat <= "0100001";
            when "1110" => cat <= "0000110";
            when "1111" => cat <= "0001110";
            when others => cat <= "1000000";




        end case;
    end process;  
end Behavioral;
