LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY freq_div_testbench IS
END freq_div_testbench;
 
ARCHITECTURE behavior OF freq_div_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT freq_div
    GENERIC (MAX_COUNT : INTEGER := 4);
    PORT(
         i_clk : IN  std_logic;
         o_clk : OUT  std_logic;
         i_reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i_clk : std_logic := '0';
   signal i_reset : std_logic := '0';

 	--Outputs
   signal o_clk : std_logic;

   -- Clock period definitions
   constant i_clk_period : time := 10 ns;
   constant o_clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: freq_div PORT MAP (
          i_clk => i_clk,
          o_clk => o_clk,
          i_reset => i_reset
        );

   -- Clock process definitions
   i_clk_process :process
   begin
		i_clk <= '0';
		wait for i_clk_period/2;
		i_clk <= '1';
		wait for i_clk_period/2;
   end process;

   -- Stimulus process
   stim_proc: process
   begin		
      i_reset <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;
      i_reset <= '0';
      wait for i_clk_period*1000;

      -- insert stimulus here 

      wait;
   end process;

END;
