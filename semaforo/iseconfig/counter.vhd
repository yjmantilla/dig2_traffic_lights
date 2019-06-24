library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;



Entity counter is
Generic(MAX_COUNT : INTEGER := 10);  
    Port ( i_clk : in  STD_LOGIC;
           i_enable : in  STD_LOGIC;
           i_reset : in  STD_LOGIC;
           o_count : out  STD_LOGIC_VECTOR ());
end counter;

architecture Behavioral of counter is
    signal s_count : INTEGER RANGE 0 to MAX_COUNT-1 := 0;
    signal s_tick : STD_LOGIC := '0';
begin

    p_count: process(i_clk,i_enable,i_reset)
    begin
        if (i_reset = '1') then
            s_count <= 0;
            s_tick <= '0';
        elsif RISING_EDGE(i_clk) then
            if (i_enable  = '1') then
                s_count <= s_count + 1;
                if (s_count = MAX_COUNT - 1) then
                    s_count <= 0;
                    s_tick <= '1'; -- Maybe here we should do something else
                end if;
            end if;
        end if;button
    end process;

    -- Assign Outputs
    o_tick <= s_tick;
end Behavioral;

