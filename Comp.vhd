----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:02:25 10/08/2020 
-- Design Name: 
-- Module Name:    Comp - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Comp is
    Port (A0 : in  STD_LOGIC;
          A1 : in  STD_LOGIC;
          B1 : in  STD_LOGIC;
          B0 : in  STD_LOGIC;
          Mayor : out  STD_LOGIC;
          Menor : out  STD_LOGIC;
          Igual : out  STD_LOGIC);
end Comp;

architecture Behavioral of Comp is

--Part 1
--Gate AND3B2 
signal auxiliary1 : STD_LOGIC;
--Gate AND3B1
signal auxiliary2 : STD_LOGIC;
--Gate AND2B1
signal auxiliary3 : STD_LOGIC;
--Gate XNOR2
signal auxiliary4 : STD_LOGIC;
--Gate XNOR2
signal auxiliary5 : STD_LOGIC;

--Part 2
--Gate OR3
signal auxiliary6 : STD_LOGIC;
--Gate AND2
signal auxiliary7 : STD_LOGIC;

--Part 3
--Gate AND2B2
signal auxiliary8 : STD_LOGIC;

begin 

--Firts part of the expression
auxiliary1 <= A0 and (not B1) and (not B0);
auxiliary2 <= A1 and A0 and (not B0);
auxiliary3 <= A1 and (not B1);
auxiliary4 <= A0 xnor B0;
auxiliary5 <= A1 xnor B1;
--Second part of the expression 
auxiliary6 <= auxiliary1 or auxiliary2 or auxiliary3;
auxiliary7 <= auxiliary4 and auxiliary5;
--Second part of the expression 
auxiliary8 <= not auxiliary6 and not auxiliary7;

--outputs
Mayor <= auxiliary6;
Menor <= auxiliary8;
Igual <= auxiliary7;

end Behavioral;

