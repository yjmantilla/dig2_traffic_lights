----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:10:31 06/11/2019 
-- Design Name: 
-- Module Name:    fsm - Behavioral 
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
--library UNISIM;
--use UNISIM.VComponents.all;

entity fsm_clks is
    Port ( clk    : in  STD_LOGIC;
           reset  : in  STD_LOGIC;
           a      : in  STD_LOGIC;
           b      : in  STD_LOGIC;
           clk1hz : out STD_LOGIC;
           clk2hz : out STD_LOGIC;
           clk4hz : out STD_LOGIC);
	 
	 -- Pin assignment
	 ATTRIBUTE LOC: string;
	 ATTRIBUTE LOC OF clk    : SIGNAL IS "B8"; 	-- system clock 50 MHz (Nexys2)
	 ATTRIBUTE LOC OF reset  : SIGNAL IS "H13";  -- BTN3
	 ATTRIBUTE LOC OF a      : SIGNAL IS "G18";  -- SW0
	 ATTRIBUTE LOC OF b      : SIGNAL IS "H18";  -- SW1
	 ATTRIBUTE LOC OF clk4hz : SIGNAL IS "J14";  -- LD0
	 ATTRIBUTE LOC OF clk2hz : SIGNAL IS "J15";  -- LD1
	 ATTRIBUTE LOC OF clk1hz : SIGNAL IS "K15";  -- LD2
end fsm_clks;

architecture Behavioral of fsm_clks is

	-- States definition
	type fsm_states is (state1, state2, state3, state4);
	signal current_state : fsm_states := state1;
	signal next_state    : fsm_states := state1;
	-- Signals for outputs from frequency divider
	signal sclk4hz : std_logic := '1';
	signal sclk2hz : std_logic := '1';
	signal sclk1hz : std_logic := '1';
	-- Component for frequency divider
	component clock_div 
		 Generic (MAXCOUNT4HZ : INTEGER := 6250000); -- Why 62.5M for 4Hz?
		 Port ( clk    : in  STD_LOGIC;
				  reset  : in  STD_LOGIC;
				  clk4hz : out STD_LOGIC;
				  clk2hz : out STD_LOGIC;
				  clk1hz : out STD_LOGIC);
	end component;

begin
	-- Port mapping for clock_div
	clkdivs : clock_div PORT MAP(
		clk    => clk,
		reset  => reset,
		clk4hz => sclk4hz,
		clk2hz => sclk2hz,
		clk1hz => sclk1hz);

	-- Process to move the next state
	p_fsm_state: process(clk,reset)
	begin
		if (reset = '1') then
			current_state <= state1;
		elsif (RISING_EDGE(clk)) then
			current_state <= next_state;
		end if;
	end process;
	
	-- Logic for decoding next state from inputs and current state
	p_fsm_comb: process(current_state, a, b)
	begin
		case current_state is
			when state1 =>
				if (A = '1') then
					next_state <= state2;
				else
					next_state <= state1;
				end if;	
			when state2 =>
				if (A = '0') and (B = '1') then
					next_state <= state3;
				else
					next_state <= state2;
				end if;	
			when state3 =>
				if (A = '1') and (B = '1') then
					next_state <= state4;
				else
					next_state <= state3;
				end if;	
			when state4 =>
				if (A = '0') then
					next_state <= state1;
				else
					next_state <= state4;
				end if;	
		end case;
	end process;

	-- Logic for decoding the outputs from current state (Moore)
	p_fsm_outputs: process(clk,reset)
	begin
		if (reset = '1') then
			clk1hz <= '0';
			clk2hz <= '0';
			clk4hz <= '0';
		elsif RISING_EDGE(clk) then
			case current_state is
				when state1 =>
					clk4hz <= '0';
					clk2hz <= '0';
					clk1hz <= '0';
				when state2 =>
					clk4hz <= sclk4hz;
					clk2hz <= '0';
					clk1hz <= '0';
				when state3 =>
					clk4hz <= sclk4hz;
					clk2hz <= sclk2hz;
					clk1hz <= '0';
				when state4 =>
					clk4hz <= sclk4hz;
					clk2hz <= sclk2hz;
					clk1hz <= sclk1hz;
			end case;		
		end if;
	end process;
end Behavioral;

