library  ieee;
use  ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- For Main Clock --
library machXO3l;
use machXO3l.all;
--------------------

entity Clock is
	 port (stdby : in std_logic;
		   osc_int: out std_logic;
		   p_UartClock : out std_logic;
		   P_resetclock : out std_logic 
		   );
end Clock;

architecture Clock_behav of Clock is
	signal S_InternalClock : std_logic;
	signal S_mainClock : std_logic; 
	signal S_UARTClock : std_logic;  
	signal S_PLLEN : std_logic;
	signal CLK_DIV : std_logic_vector (13 downto 0) := (others => '0');
	
	COMPONENT OSCH
	-- synthesis translate_off
		GENERIC (NOM_FREQ: string := "133.00");
	-- synthesis translate_on
		PORT (STDBY : IN std_logic;
			  OSC : OUT std_logic
				);
	END COMPONENT;
	attribute NOM_FREQ : string;
	attribute NOM_FREQ of Clock : label is "133.00";
	
	COMPONENT ClkPll
	-- synthesis translate_on
		PORT (CLKI : IN std_logic;
			  ENCLKOP : IN std_logic;
			  CLKOP : OUT std_logic;
			  ENCLKOS : IN std_logic;
			  CLKOS : OUT std_logic
				);
	END COMPONENT;
	
begin
	
	Clock: OSCH
	-- synthesis translate_off
	GENERIC MAP( NOM_FREQ =>"133.00" )
	-- synthesis translate_on
	PORT MAP (  STDBY => '0',
				OSC => S_InternalClock
	);
	
	CompPll: ClkPll
	Port Map( CLKI => S_InternalClock,
			  ENCLKOP => S_PLLEN,
			  CLKOP => S_UARTClock,
			  CLKOS => S_mainClock,
			  ENCLKOS => '1'
	);
	
	-- clock divider
    process (S_UARTClock)
    begin
        if (rising_edge(S_UARTClock)) then
            CLK_DIV <= CLK_DIV + '1';
        end if;
    end process;
	
	S_PLLEN <= not stdby;
	osc_int <= S_mainClock;
	p_UartClock <= S_UARTClock;
	P_resetclock <= CLK_DIV(13);
end Clock_behav;