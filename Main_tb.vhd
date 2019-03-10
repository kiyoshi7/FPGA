LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE behavior OF testbench IS 

	COMPONENT Main
	PORT(
		INTO : IN std_logic;          
		OUTBOUND : OUT std_logic  ;
		S_MainClock: out std_logic
		);
	END COMPONENT;

	SIGNAL INTO :  std_logic;	  	
	SIGNAL OUTBOUND :  std_logic;
	SIGNAL S_MainClock :  std_logic;
	constant P : time := 5 ms;

BEGIN

-- Please check and add your generic clause manually
	uut: Main PORT MAP(
		INTO => INTO,
		OUTBOUND => OUTBOUND,
		S_MainClock => S_MainClock
	);


-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN   
	  INTO <= '1';
      wait for P; -- will wait forever
	  --INTO <= '1';
      --wait for P; -- will wait forever
	  
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
