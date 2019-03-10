
-- VHDL Test Bench Created from source file Main.vhd -- Tue Mar 05 16:37:42 2019

--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Lattice recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "source->import"
-- menu in the ispLEVER Project Navigator to import the testbench.
-- Then edit the user defined section below, adding code to generate the 
-- stimulus for your design.
-- 3) VHDL simulations will produce errors if there are Lattice FPGA library 
-- elements in your design that require the instantiation of GSR, PUR, and
-- TSALL and they are not present in the testbench. For more information see
-- the How To section of online help.  
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE behavior OF testbench IS 

	COMPONENT Main
	PORT(          
		P_UART_TX : OUT std_logic
		);
	END COMPONENT;

	SIGNAL P_UART_TX :  std_logic;
	
	constant p :time := 0.10 ms;

BEGIN

-- Please check and add your generic clause manually
	uut: Main PORT MAP(
		P_UART_TX => P_UART_TX
	);


-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      wait for p; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
