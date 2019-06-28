--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:29:59 06/27/2019
-- Design Name:   
-- Module Name:   Y:/xilinx/traffic_lights/semaforo/test_fsm.vhd
-- Project Name:  semaforo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FSM
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
 
ENTITY test_fsm IS
END test_fsm;
 
ARCHITECTURE behavior OF test_fsm IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FSM
    PORT(
         i_clk : IN  std_logic;
         i_reset : IN  std_logic;
         i_sensor : IN  std_logic;
         i_button : IN  std_logic;
         o_main_light : OUT  std_logic_vector(2 downto 0);
         o_side_light : OUT  std_logic_vector(2 downto 0);
         o_ped_light : OUT  std_logic_vector(2 downto 0);
         o_led_clk : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i_clk : std_logic := '0';
   signal i_reset : std_logic := '0';
   signal i_sensor : std_logic := '0';
   signal i_button : std_logic := '0';

 	--Outputs
   signal o_main_light : std_logic_vector(2 downto 0);
   signal o_side_light : std_logic_vector(2 downto 0);
   signal o_ped_light : std_logic_vector(2 downto 0);
   signal o_led_clk : std_logic;

   -- Clock period definitions
   constant i_clk_period : time := 10 ns;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FSM PORT MAP (
          i_clk => i_clk,
          i_reset => i_reset,
          i_sensor => i_sensor,
          i_button => i_button,
          o_main_light => o_main_light,
          o_side_light => o_side_light,
          o_ped_light => o_ped_light,
          o_led_clk => o_led_clk
        );

   -- Clock process definitions
   i_clk_process :process
   begin
		i_clk <= '0';
		wait for i_clk_period/2;
		i_clk <= '1';
		wait for i_clk_period/2;
   end process;
  
	extent_process: process
	begin
		i_sensor <= '0';
		wait for i_clk_period*12; -- 12 = timer_green + timer_yellow to introduce a phase
		i_sensor <= '1';
		wait for i_clk_period*12;
	end process;
	
	ped_process: process
	begin
		i_button <= '0';
		wait for i_clk_period*54; -- 2*DIV*(timer_green + timer_yellow ) + time_reset*DIV = 2 cycle of main-side roads
		i_button <= '1';
		wait for i_clk_period;
		
	end process;
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		i_reset <= '1';
		wait for 100 ns;
		i_reset <= '0';
      -- insert stimulus here 
		
		

      wait;
   end process;

END;
