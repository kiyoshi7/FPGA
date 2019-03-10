library  ieee;
use  ieee.std_logic_1164.all;

entity Main is
	 port (
	 T_test: out std_logic;
	 P_UART_TX: out std_logic
		   );
end Main;

architecture behav of Main is
	signal S_MainClock : STD_LOGIC :='0';
	signal S_UARTClock : STD_LOGIC :='0';
	signal S_TX_DATA   : std_logic_vector(15 downto 0) := X"AB7C";
	signal S_UART_READY: std_logic; 
	signal S_UART_RESET: std_logic :='1';  
	
	COMPONENT Clock
	-- synthesis translate_on
		port (stdby : in std_logic;
		      osc_int: out std_logic;
			  p_UartClock : out std_logic;
			  P_resetclock : out std_logic 
		   );
	END COMPONENT;
	
	COMPONENT UART
		PORT(
				P_UARTDATA: out std_logic ;
				UARTREADY: out std_logic;
				P_CLK: in std_logic; 
				P_Data: in std_logic_vector(15 downto 0);
				P_Reset: in std_logic;
				P_STDBY: in std_logic
			);
	END COMPONENT;
	
begin

	CompClock: Clock
	-- synthesis translate_on
	PORT MAP(  
				STDBY => '0',
				osc_int => S_MainClock, 
				p_UartClock => S_UARTClock,
				P_resetclock => S_UART_RESET
			);
			
	CompUART: UART
	PORT MAP(
				P_UARTDATA => P_UART_TX,
				UARTREADY => S_UART_READY,
				P_CLK => S_UARTClock,
				P_Data => S_TX_DATA,
				P_Reset => S_UART_READY,--S_UART_RESET,
				P_STDBY => '0'	
			);
	T_TEST <= S_UARTClock;	
end behav;