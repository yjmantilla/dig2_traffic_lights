----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:03:03 06/10/2019 
-- Design Name: 
-- Module Name:    clock_div - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all; -- to use BUFG

entity clock_div is
	 Generic (MAXCOUNT4HZ : INTEGER := 16);
    Port ( clk    : in  STD_LOGIC;
           reset  : in  STD_LOGIC;
           clk4hz : out STD_LOGIC;
           clk2hz : out STD_LOGIC;
           clk1hz : out STD_LOGIC);
end clock_div;

architecture Behavioral of clock_div is
signal divcounter4hz : INTEGER RANGE 0 to MAXCOUNT4HZ-1 := 0;
signal s_clk4hz  : STD_LOGIC := '0';
signal sb_clk4hz : STD_LOGIC := '0';
signal s_clk2hz  : STD_LOGIC := '0';
signal sb_clk2hz : STD_LOGIC := '0';
signal s_clk1hz  : STD_LOGIC := '0';
begin
	-- Port mapping clk using bufg - to avoid clock skew
	clkbuf4hz : bufg PORT MAP(
		I => s_clk4hz,
		O => sb_clk4hz);
	clkbuf2hz : bufg PORT MAP(
		I => s_clk2hz,
		O => sb_clk2hz);

	-- Process to generate clk4hz signal from clk
	p_clk4hz: process(clk, reset)
	begin
		if (reset = '1') then
			divcounter4hz <= 0;
			s_clk4hz <= '1';
		elsif RISING_EDGE(clk) then	
			divcounter4hz <= divcounter4hz + 1;
			if divcounter4hz = MAXCOUNT4HZ-1 then
				divcounter4hz <= 0;
				s_clk4hz <= NOT s_clk4hz;
			end if;
		end if;
	end process;

	-- Process to generate clk2hz signal from clk4hz
	p_clk2hz: process(sb_clk4hz, reset)
	begin
		if (reset = '1') then
			s_clk2hz <= '1';
		elsif RISING_EDGE(sb_clk4hz) then	
			s_clk2hz <= not s_clk2hz;
		end if;
	end process;

	-- Process to generate clk1hz signal from clk2hz
	p_clk1hz: process(sb_clk2hz, reset)
	begin
		if (reset = '1') then
			s_clk1hz <= '1';
		elsif RISING_EDGE(sb_clk2hz) then	
			s_clk1hz <= not s_clk1hz;
		end if;
	end process;
	
	-- Assign clocks
	clk4hz <= s_clk4hz;
	clk2hz <= s_clk2hz;
	clk1hz <= s_clk1hz;
end Behavioral;

