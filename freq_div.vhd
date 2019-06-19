library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


-- If you want to divide by N you should count N/2
-- Do note that this works for even numbers
entity freq_div is
    Generic(MAX_COUNT :INTEGER := 16);
    Port ( i_clk : in  STD_LOGIC;
           o_clk : out  STD_LOGIC;
           i_reset : in  STD_LOGIC);
end freq_div;

architecture Behavioral of freq_div is
signal s_count : INTEGER RANGE 0 to MAX_COUNT - 1 := 0;
signal s_oclk : STD_LOGIC := '0';
begin
p_count: process(i_clk,i_reset)
begin
    if(i_reset = '1') then
        s_count <= 0;
        s_oclk <= '0';  -- Not sure why to 1 though
    elsif RISING_EDGE(i_clk) then
        s_count <= s_count + 1;
        if (s_count = MAX_COUNT - 1) then
            s_count <= 0;
            s_oclk <= NOT s_oclk;
        end if;
    end if;

-- Assing Outputs
o_clk <= s_oclk;
end process;
end Behavioral;

