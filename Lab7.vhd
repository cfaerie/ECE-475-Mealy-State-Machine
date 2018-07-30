----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:23:14 11/15/2016 
-- Design Name: 
-- Module Name:    Lab7 - Behavioral 
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
library UNISIM;
use UNISIM.VComponents.all;

entity Lab7 is
	port(X, CLK: in std_logic; Z: out std_logic_vector(2 downto 0));  --3 bit output
end Lab7;

architecture Behavioral of Lab7 is
	signal State, Nextstate: integer range 0 to 7;
begin
	P1: process(State, X)
		begin
			case State is
				when 0=>
					if X='1' then Z<="001";
					Nextstate<=1;
					else Z<="000";
					Nextstate<=0;
					end if;
				when 1=>
					if X='1' then Z<="010";
					Nextstate<=2;
					else Z<="001";
					Nextstate<=1;
					end if;
				when 2=>
					if X='1' then Z<="011";
					Nextstate<=3;
					else Z<="010";
					Nextstate<=2;
					end if;
				when 3=>
					if X='1' then Z<="100";
					Nextstate<=4;
					else Z<="011";
					Nextstate<=3;
					end if;
				when 4=>
					if X='1' then Z<="101";
					Nextstate<=5;
					else Z<="100";
					Nextstate<=4;
					end if;
				when 5=>
					if X='1' then Z<="110";
					Nextstate<=6;
					else Z<="101";
					Nextstate<=5;
					end if;
				when 6=>
					if X='1' then Z<="111";
					Nextstate<=7;
					else Z<="110";
					Nextstate<=6;
					end if;
				when 7=>
					if X='1' then Z<="000";
					Nextstate<=0;
					else Z<="111";
					Nextstate<=7;
					end if;
				end case;
	end process;
	
	P2:  process(CLK)
		begin
			if (CLK'EVENT and CLK='1') then
				State<=Nextstate;
			end if;
		end process;


end Behavioral;

