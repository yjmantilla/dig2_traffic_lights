library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FSM is
    
    Generic(time_green : integer := 10;
	 time_yellow : integer := 2;
	 time_walk : integer := 4;
	 time_ext : integer := 5;
	 time_reset : integer := 3);
	 
	 Port ( i_clk : in  STD_LOGIC; --relog de 1hz
            i_reset : in  STD_LOGIC;
            i_sensor : in  STD_LOGIC;
            i_button : in  STD_LOGIC;
            o_main_light : out  STD_LOGIC_VECTOR (2 downto 0); --semaforo calle principal
            o_side_light : out  STD_LOGIC_VECTOR (2 downto 0); --semaforo calle secundaria
			o_ped_light : out  STD_LOGIC_VECTOR (2 downto 0); --semaforo peatones
			o_led_clk : out STD_LOGIC
			); 

	-- Pins assingment
	ATTRIBUTE LOC: STRING;
	ATTRIBUTE LOC OF i_clk    : SIGNAL IS "B8";				-- system clock 50 MHz (Nexys2)
	ATTRIBUTE LOC OF i_reset  : SIGNAL IS "H13";				-- BTN3
	ATTRIBUTE LOC OF i_sensor : SIGNAL IS "G18";				-- SW0
	ATTRIBUTE LOC OF i_button    : SIGNAL IS "E18";			-- SW1
	ATTRIBUTE LOC OF o_main_light    : SIGNAL IS "J14,J15,K15";-- LED 0,1,2 : G,Y,R
	ATTRIBUTE LOC OF o_side_light   : SIGNAL IS "K14,E17,P15"; -- LED 3,4,5: G,Y;R
	ATTRIBUTE LOC OF o_ped_light  : SIGNAL IS "F4,F17,H17";  	-- LED 6,X,X --how to assign this to dont care?
	ATTRIBUTE LOC OF o_led_clk : SIGNAL IS "R4"; -- LED 7
end FSM;

architecture Behavioral of FSM is
	-- Staten Definitions
	-- MG Main Green
	-- MY Main Yellow
	-- ME Main Extent
	-- SG Side Green
	-- SY Side Yellow
	-- PG Pedestrian Green
	-- RS Reset State
	type state_type is (RS,MG,MY,ME,SG,SY,PG);
	signal current_state : state_type := RS;
	signal next_state : state_type := RS;
		
	-- Internal signals
	-- Use one-hot notation for lights: GYR
	-- 001 RED
	-- 010 YELLOW
	-- 100 GREEN

	signal s_main_light : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal s_side_light : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal s_ped_light : STD_LOGIC_VECTOR (2 downto 0) := "001";
	signal s_count : integer := 0;-- contador del tiempo 
	signal s_button_register: STD_LOGIC := '0';--button register
	signal s_clk1hz : STD_LOGIC := '0'; -- clock de 1hz
	signal s_reset_count : STD_LOGIC := '0'; -- signal to reset counter
	
	-- Frequency Divider
	
	component freq_div
		Generic( MAX_COUNT : INTEGER := 1);--25000000);
		Port
		(
			i_clk : in STD_LOGIC;
			i_reset: in STD_LOGIC;
			o_clk : out STD_LOGIC
			
		);
	end component;
	
begin
	port_map : freq_div PORT MAP
	(
		i_clk => i_clk,
		i_reset => i_reset,
		o_clk => s_clk1hz
	);
	
p_fsm_state_change: process(i_clk,i_reset,current_state,next_state)
begin

	if (i_reset = '1') then
		current_state <= RS;
		elsif(RISING_EDGE(i_clk)) then
			current_state <= next_state;
	end if;
	
	if(current_state = next_state) then
		s_reset_count <= '0';		
	else 
		s_reset_count <= '1';
	end if;
end process;

p_counter: process(s_clk1hz,s_count,s_reset_count)
begin
	if (RISING_EDGE(s_clk1hz)) then
			s_count <= s_count + 1;
	end if;	
	if (s_reset_count = '1') then
		s_count <= 0;
	end if;
end process;


p_button: process(i_button,current_state)
	begin
		if (current_state = PG) then
			s_button_register <= '0';
		elsif (i_button = '1') then
			s_button_register <= '1';
		else
			s_button_register <= s_button_register;
		end if;
	end process;

	
p_fsm_states : process(current_state,s_count,s_button_register,i_sensor,s_clk1hz)
	begin
	if(RISING_EDGE(s_clk1hz)) then
		case current_state is
			when RS =>
				if (s_count = time_reset ) then 
					next_state <= MG;
				else
					next_state <= RS;
				end if;
			
			when MG =>
				if (s_count = time_green and i_sensor = '0') then
					next_state <= MY;
				elsif (s_count = time_green and i_sensor = '1') then
					next_state <= ME;
				else
					next_state <= MG;
				end if;
				
			when ME =>
				if (s_count = time_ext) then
					next_state <= MY;
				else 
					next_state <= ME;
				end if;
				
			when MY =>
				if (s_count = time_yellow and s_button_register = '0') then
					next_state <= SG;
				elsif (s_count = time_yellow and s_button_register = '1') then
					next_state <= PG;
				else
					next_state <= MY;
			end if;
			
			when SG =>
				if (s_count = time_green) then
					next_state <= SY;
				else 
					next_state <= SG;
				end if;
				
			when SY =>
				if(s_count = time_yellow) then
					next_state <= MG;
				else
					next_state <= SY;
				end if;
				
			when PG => 
				if (s_count = time_walk) then
					next_state <= SG;
				else 
					next_state <= PG;
				end if;
					
		end case;
		end if;
end process;	
p_fsm_outputs: process(i_reset,current_state)
begin
	case current_state is
		
		when RS =>
			s_main_light<= "001";
			s_side_light <= "001";
			s_ped_light <= "001";
		
		when MG =>
			s_main_light<= "100";
			s_side_light <= "001";
			s_ped_light <= "001";
		
		when MY =>
			s_main_light<= "010";
			s_side_light <= "001";
			s_ped_light <= "001";
		
		when SG =>
			s_main_light<= "001";
			s_side_light <= "100";
			s_ped_light <= "001";
		
		when SY =>
			s_main_light<= "001";
			s_side_light <= "010";
			s_ped_light <= "001";
		
		when ME =>
			s_main_light<= "100";
			s_side_light <= "001";
			s_ped_light <= "001";
			
		when PG => 
			s_main_light<= "001";
			s_side_light <= "001";
			s_ped_light <= "100";
		
		end case;
		 
end process;		

o_main_light <= s_main_light;
o_side_light <= s_side_light;
o_ped_light <= s_ped_light;
o_led_clk <= s_clk1hz;
end Behavioral;

