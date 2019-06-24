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
           o_main_light : out  STD_LOGIC_VECTOR (1 downto 0); --semaforo calle principal
           o_side_light : out  STD_LOGIC_VECTOR (1 downto 0); --semaforo calle secundaria
           o_ped_light : out  STD_LOGIC_VECTOR (1 downto 0)); --semaforo peatones
end FSM;

architecture Behavioral of FSM is
	-- Staten Definitions
	type state_type is (SRESET,MG,MY,ME,SG,SY,PG);
	signal s_current : state_type := s0;
	signal s_next : state_type := s0;
		
	-- Internal signals
	
	signal s_main_light : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal s_side_light : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal s_ped_light : STD_LOGIC_VECTOR (1 downto 0) := "00";
	signal s_count : integer := 0;-- contador del tiempo 
	signal s_button_register: STD_LOGIC := '0';--button register
	signal s_clk1hz : STD_LOGIC := '0'; -- clock de 1hz

	-- 00 red
	-- 01 yellow
	-- 10 green

	
	-- Frequency Divider
	
	component freq_div
		Generic( MAX_COUNT : INTEGER := 25000000);
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
	
p_fsm_state_change: process(s_clk1hz,i_reset)
begin
	if (i_reset = '1') then
		current_state <= SRESET;
		elsif (RISING_EDGE(s_clk1hz)) then
			current_state <= next_state;
	end if;
end process;

p_counter: process(s_clk1hz,s_count)
begin
	if	(RISING_EDGE(s_clk1hz)) then
			s_count <= s_count + 1;
	end if;
end process;


p_button: process(i_button)
	begin
		if (i_button = '1') then
			s_button_register <= '1';
		else
			s_button_register <= s_button_register;
		end if;
	end process;

	
p_fsm_comb : process(current_state,s_count,s_button_register,i_sensor)
	begin
		case current_state is
			when SRESET =>
				if (s_count = time_reset) then 
					next_state <= MG;
					s_count <= 0;
				else
					next_state <= SRESET;
				end if;
			
			when MG =>
				if (s_count = time_green and i_sensor = '0') then
					next_state <= MY;
					s_count <= 0;
				elsif (s_count = time_green and i_sensor = '1') then
					next_state <= ME;
					s_count <= 0;
				else
					next_state <= MG;
				end if;
				
			when ME =>
				if (s_count = time_ext) then
					next_state <= MY;
					s_count <= 0;
				else 
					next_state <= ME;
				end if;
				
			when MY =>
				if (s_count = time_yellow and s_button_register = '0') then
					next_state <= SG;
					s_count <= 0;
				elsif (s_count = time_yellow and s_button_register = '1') then
					next_state <= PG;
					s_count <= 0;
				else
					next_state <= MY;				
			end if;
			
			when SG =>
				if (s_count = time_green) then
					next_state <= SY;
					s_count <= 0;
				else 
					next_state <= SG;
				end if;
				
			when SY =>
				if(s_count = time_yellow) then
					next_state <= MG;
					s_count <= 0;
				else
					next_state <= SY;
				end if;
				
			when PG => 
				if (s_count = time_walk) then
					next_state <= SG;
					s_count <= 0;
				else 
					next_state <= PG;
				end if;
					
		end case;

end process;	
p_fsm_outputs: process(s_clk1hz,i_reset)
begin
	case current_state is
		
		when SRESET =>
			s_main_light<= "00";
			s_side_light <= "00";
			s_ped_light <= "00";
		
		when MG =>
			s_main_light<= "10";
			s_side_light <= "00";
			s_ped_light <= "00";
		
		when MY =>
			s_main_light<= "01";
			s_side_light <= "00";
			s_ped_light <= "00";
		
		when SG =>
			s_main_light<= "00";
			s_side_light <= "10";
			s_ped_light <= "00";
		
		when SY =>
			s_main_light<= "00";
			s_side_light <= "01";
			s_ped_light <= "00";
		
		when ME =>
			s_main_light<= "10";
			s_side_light <= "00";
			s_ped_light <= "00";
			
		when PG => 
			s_main_light<= "00";
			s_side_light <= "00";
			s_ped_light <= "10";
			s_button_register <= '0';
		
		end case;
		 
end process;		

end Behavioral;

