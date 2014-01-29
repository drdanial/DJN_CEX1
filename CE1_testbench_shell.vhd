--------------------------------------------------------------------------------
-- Company: USAFA 
-- Engineer:  Danial Neebel
--
-- Create Date:   17:19:52 07/05/2012
-- Design Name:   Computer Exercise 1 testbench
-- Module Name:   C:/My_Designs/Xilinx_14/CE1_Silva/CE1_testbench.vhd
-- Project Name:  CE1_Silva
-- Target Device:  simulation
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CE1_vhdl
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY CE1_testbench IS
END CE1_testbench;
 
ARCHITECTURE behavior OF CE1_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CE1_shell
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         F : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';

 	--Outputs
   signal F : std_logic;
	signal count : std_logic_vector(2 downto 0) := "000";

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CE1_shell PORT MAP (
          A => count(2),
          B => count(1),
          C => count(0),
          F => F
        );



   -- Stimulus process
   stim_proc: process
   begin		
      -- First line of truth table
--		A <= '0';
--		B <= '0';
--		C <= '0';
--		ASSERT F = '0' REPORT "Wrong value" SEVERITY ERROR;
--		
--		wait for 100 ns;	
--		
		
		-- Complete_ the rest of the truth table below:

		for I in 0 to 7 loop
			wait for 100 ns;
			REPORT "For A = "  
						& std_logic'image(count(2))
						& " B = "
						& std_logic'image(count(1))
						& " C = "
						& std_logic'image(count(0))
						& " F = "
						& std_logic'image(F)
				SEVERITY NOTE;
				count <= count + 1;
		end loop;
		
		wait;
				
--		A <= '0';
--		B <= '1';
--		C <= '0';
--		wait for 100 ns;	
--		A <= '0';
--		B <= '1';
--		C <= '1';
--		wait for 100 ns;	
--		A <= '1';
--		B <= '0';
--		C <= '0';
--		wait for 100 ns;	
--		A <= '1';
--		B <= '0';
--		C <= '1';
--		wait for 100 ns;	
--		A <= '1';
--		B <= '1';
--		C <= '0';
--		wait for 100 ns;	
--		A <= '1';
--		B <= '1';
--		C <= '1';
--		wait for 100 ns;	

				
   end process;

END;
