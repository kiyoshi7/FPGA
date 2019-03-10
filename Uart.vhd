library  ieee;
use  ieee.std_logic_1164.all;

entity UART is
	 port (
	 P_UARTDATA: out std_logic ;
	 UARTREADY: out std_logic;
	 P_CLK: in std_logic;
	 P_Data: in std_logic_vector(15 downto 0);
	 P_Reset: in std_logic;
	 P_STDBY: in std_logic
		   );
end UART;

architecture behav of UART is
	signal S_MainClock : STD_LOGIC :='0';
	signal S_UARTClock : STD_LOGIC :='0';
	signal r_TX_DV     : std_logic                    := '1';
	signal r_TX_DATA   : std_logic_vector(15 downto 0) := X"AB7C";
    signal r_TX_BYTE   : std_logic_vector(7 downto 0);
	signal w_TX_SERIAL : std_logic;
    signal w_TX_DONE   : std_logic;
    signal w_RX_DV     : std_logic;
    signal w_RX_BYTE   : std_logic_vector(7 downto 0);
    signal r_RX_SERIAL : std_logic := '1';
	
    signal s_Done_Sending     : std_logic;
		
	COMPONENT UART_TX
		  generic (
			g_CLKS_PER_BIT : integer := 87     -- Needs to be set correctly
			);
		  port (
			i_Clk       : in  std_logic;
			i_TX_DV     : in  std_logic;
			i_TX_Byte   : in  std_logic_vector(7 downto 0);
			o_TX_Active : out std_logic;
			o_TX_Serial : out std_logic;
			o_TX_Done   : out std_logic
			);
	END COMPONENT;
	
	COMPONENT DataSelect
		PORT (	i_Tx_Done: in std_logic;
				i_clk: in std_logic;
			 	i_Data: in std_logic_vector(15 downto 0);
				i_reset: in std_logic;
			 	o_Data: out std_logic_vector(7 downto 0);
				o_SendData: out std_logic;
				o_Done_Sending: out std_logic
			);
	END COMPONENT;
	
begin
	
	CompRS232: UART_TX
	PORT MAP ( i_Clk => S_UARTClock , 
			  i_tx_dv     => r_TX_DV, -- 1 to send
			  i_tx_byte   => r_TX_Byte,
			  o_tx_active => open,
			  o_tx_serial => w_TX_SERIAL,
			  o_tx_done   => w_TX_DONE
	  );
	  
	CompDataSelect: DataSelect
	PORT MAP(
			i_Tx_Done => w_TX_DONE,
			i_clk => S_UARTClock,
			i_Data => P_Data,
			i_reset => P_Reset,
			o_data => r_TX_Byte, 
			o_SendData => r_TX_DV,
     		o_Done_Sending => s_Done_Sending
	);
	
	--process(P_STDBY)
	--begin
		--if (P_STDBY = '0') then
			--S_UARTClock <= P_CLK;
		--else--(P_STDBY = '1') then
			--S_UARTClock <= '0';
		--end if;
	--end process;
	S_UARTClock <= P_CLK;
	P_UARTDATA <= w_TX_SERIAL;
	UARTREADY <= s_Done_Sending;
	
end behav;