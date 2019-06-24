----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:07:09 06/10/2019 
-- Design Name: 
-- Module Name:    main - Behavioral 
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

entity shiftregleds is
    Port ( clk    : in  STD_LOGIC;
           reset  : in  STD_LOGIC;
           enable : in  STD_LOGIC;
			  din    : in  STD_LOGIC;
			  dir    : in  STD_LOGIC;
           data   : out STD_LOGIC_VECTOR (3 downto 0));
	 
	 -- Pins assingment
	 ATTRIBUTE LOC: STRING;
	 ATTRIBUTE LOC OF clk    : SIGNAL IS "B8";	-- system clock 50 MHz (Nexys2)
	 ATTRIBUTE LOC OF reset  : SIGNAL IS "H13";  -- BTN3
	 ATTRIBUTE LOC OF enable : SIGNAL IS "G18";  -- SW0
	 ATTRIBUTE LOC OF din    : SIGNAL IS "H18";  -- SW1
	 ATTRIBUTE LOC OF dir    : SIGNAL IS "K18";  -- SW2
	 ATTRIBUTE LOC OF data   : SIGNAL IS "K14,K15,J15,J14";  -- LD3,LD2,LD1,LD0
end shiftregleds;

architecture Behavioral of shiftregleds is
	-- signals for the architecture
	signal divclk : STD_LOGIC := '0';
	signal reg : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
	-- Frequency divider component
	component clock_div
		 Generic (MAXCOUNT : INTEGER := 25000000);	-- clock output 1Hz, why 25M?
		 Port ( clk    : in  STD_LOGIC;
				  reset  : in  STD_LOGIC;
				  divclk : out STD_LOGIC);
	end component;
begin
	-- Port mapping for frequency division component
	cdiv : clock_div PORT MAP(
		clk => clk,
		reset => reset,
		divclk => divclk);

	mainp : process (divclk, reset) is
	begin
		if reset = '1' then
			reg <= (others => '0');
		elsif RISING_EDGE(divclk) then
			if enable = '1' then
				if dir = '1' then
					reg <= din & reg(3 downto 1);
				else	
					reg <= reg(2 downto 0) & din;
				end if;	
			else
				reg <= reg;
			end if;
		end if;
	end process;

	data <= reg;
end Behavioral;

