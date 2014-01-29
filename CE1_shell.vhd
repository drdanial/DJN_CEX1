----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Danial Neebel
-- 
-- Create Date:    12:18:08 07/05/2012 
-- Design Name: Computer Exercise 1
-- Module Name:    CE1_vhdl - Behavioral 
-- Project Name: CEX1
-- Target Devices: Spartan 3E
-- Tool versions: ISE 14.6
-- Description: Matching requirements of CE1. 
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

entity CE1_shell is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           F : out  STD_LOGIC);
end CE1_shell;

architecture Behavioral of CE1_shell is

component MyAND2 
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           F : out  STD_LOGIC);
end component;

component MyOR2
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           F : out  STD_LOGIC);
end component;

component INVERTER
    Port ( A : in  STD_LOGIC;
           F : out  STD_LOGIC);
end component;

signal B_NOT, D, E : STD_LOGIC;

begin

--B_NOT <= not B;
--D <= A and B_NOT;
--E <= B and C;
--F <= D or E;

B_NOTgate:  INVERTER
	PORT MAP (A => B,
				 F => B_NOT);
				 
Q1: MyAND2
	PORT MAP (A => A,
				 B => B_NOT,
				 F => D);
				 
Q2: MyAND2
	PORT MAP (A => B,
				 B => C,
				 F => E);
Q3: MyOR2
	PORT MAP (A => D,
				 B => E,
				 F => F);
				 


end Behavioral;

