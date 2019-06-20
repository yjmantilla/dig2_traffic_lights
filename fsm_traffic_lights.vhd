library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- Notation : Main and Side Roads

entity fsm_traffic_lights is
    Port(
        i_clk : in STD_LOGIC;
        i_reset : in STD_LOGIC;
        -- Behaviour Modifiers
        i_vehicle_on_main : in STD_LOGIC; -- Main Road Vehicle Sensor
        i_ped_buttons : in STD_LOGIC; -- Pedestrian Buttons OR-WIRED
        
        -- Timers
        i_timer_green: in STD_LOGIC;
        i_timer_yellow: in STD_LOGIC;
        i_timer_red: in STD_LOGIC;
        i_timer_reset: in STD_LOGIC;
        i_timer_ped_buttons: in STD_LOGIC;
        i_timer_extend_green: in STD_LOGIC;
        
        -- Lights
        o_main_red: out STD_LOGIC;
        o_main_yellow: out STD_LOGIC;
        o_main_green: out STD_LOGIC;
        o_side_green: out STD_LOGIC;
        o_side_yellow: out STD_LOGIC;
        o_side_red: out STD_LOGIC;
        o_ped_green: out STD_LOGIC;
        o_ped_red: out STD_LOGIC;

        -- Light Triggers
        o_trigger_red: out STD_LOGIC;
        o_trigger_yellow: out STD_LOGIC;
        o_trigger_green: out STD_LOGIC;
        o_trigger_reset: out STD_LOGIC;
        o_trigger_ped: out STD_LOGIC;
        o_trigger_ext_green: out STD_LOGIC;
    );

    -- Pin Assignment
end fsm_traffic_lights;

architecture Behavioral of fsm_traffic_lights is

    -- States Definition
    type state_type is (s0,s1,s2,s3,s4,s5,s6);
    signal s_current : state_type := s0;
    signal s_next : state_type := s0;

-- Internal Signals

        -- Lights
        s_main_red: out STD_LOGIC;
        s_main_yellow: out STD_LOGIC;
        s_main_green: out STD_LOGIC;
        s_side_green: out STD_LOGIC;
        s_side_yellow: out STD_LOGIC;
        s_side_red: out STD_LOGIC;
        s_ped_green: out STD_LOGIC;
        s_ped_red: out STD_LOGIC;

        -- Light Triggers
        s_trigger_red: out STD_LOGIC;
        s_trigger_yellow: out STD_LOGIC;
        s_trigger_green: out STD_LOGIC;
        s_trigger_reset: out STD_LOGIC;
        s_trigger_ped: out STD_LOGIC;
        s_trigger_ext_green: out STD_LOGIC;
begin

p_fsm: process(i_clk,i_reset)
begin
    if (i_reset = '1') then
        s_current <= s0;
    elsif (RISING_EDGE(i_clk)) then
        s_current <= s_next;
    end if;
end process;

-- Logic for decoding next state from inputs and current state

p_fsm_comb: process(s_current) -- all inputs
begin
end process;
end Behavioral;

