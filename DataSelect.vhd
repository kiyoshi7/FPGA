library  ieee;
use  ieee.std_logic_1164.all;

use ieee.std_logic_unsigned.all;

entity DataSelect is
	 port (	i_Tx_Done: in std_logic;
			i_clk: in std_logic;
			i_Data: in std_logic_vector(15 downto 0);
			i_reset: in std_logic;
			o_Data: out std_logic_vector(7 downto 0);
			o_SendData: out std_logic;
			o_Done_Sending: out std_logic
		   );
end DataSelect;

architecture behav of DataSelect is
	--The microsoft version of enter or new line is \r\n which is 0x0d 0x0a in hex.
	signal s_counter: std_logic_vector(2 downto 0) := "111";
	signal s_data: std_logic_vector(7 downto 0);
	signal s_tx_done : std_logic := '0';
	signal s_done_sending: std_logic := '1';
	
begin
	Process(i_Tx_Done, i_reset)
	begin
		if((i_reset) = '1') then
			s_counter <= "000";
			s_done_sending <= '0';
			s_Tx_Done <= '1';
		elsif(s_counter = "100") then
			s_counter <= "100";
			s_done_sending <= '1';
			s_tx_done <= '0';
		elsif(rising_edge(i_Tx_Done)) then
			s_counter <= s_counter + '1';
			s_tx_done <= '1'; 
		end if;
	end Process;
	
	Process(i_clk, s_counter, s_data)
	begin
		if(rising_edge(i_clk))then
			case s_counter is 
				when "000" => s_data <= i_Data(7 downto 0);
				when "001" => s_data <= i_Data(15 downto 8);
				when "010" => s_data <= X"0D";
				when "011" => s_data <= X"0A"; 
				when others => 	s_data <=X"00";
			end case;
		end if;
	end Process;
	
	o_Data <= s_data;
	o_SendData <= s_Tx_Done;
	o_Done_Sending <= s_done_sending;

end behav;