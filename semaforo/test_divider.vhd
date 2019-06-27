--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:00:57 06/27/2019
-- Design Name:   
-- Module Name:   Y:/xilinx/traffic_lights/semaforo/test_divider.vhd
-- Project Name:  semaforo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: freq_div
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_divider IS
END test_divider;
 
ARCHITECTURE behavior OF test_divider IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT freq_div
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for i_clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
