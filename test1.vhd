--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:26:09 11/15/2016
-- Design Name:   
-- Module Name:   C:/Temp/ECE475Lab7/test1.vhd
-- Project Name:  ECE475Lab7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Lab7
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test1 IS
END test1;
 
ARCHITECTURE behavior OF test1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Lab7
    PORT(
         X : IN  std_logic;
         CLK : IN  std_logic;
         Z : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal Z : std_logic_vector(2 downto 0);

   -- Clock period definitions
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Lab7 PORT MAP (
          X => X,
          CLK => CLK,
          Z => Z
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		X<='1';
		CLK<='0';
		wait for 50 ns;
		CLK<='1';
		wait for 50 ns;
		CLK<='0';
		wait for 50 ns;
		CLK<='1';
		wait for 50 ns;
		CLK<='0';
		wait for 50 ns;
		CLK<='1';
		wait for 50 ns;
		CLK<='0';
		wait for 50 ns;
		CLK<='1';
		wait for 50 ns;
		CLK<='0';
		wait for 50 ns;
		CLK<='1';
		wait for 50 ns;
		CLK<='0';
		wait for 50 ns;
		CLK<='1';
		wait for 50 ns;



      -- insert stimulus here 

      wait;
   end process;

END;
