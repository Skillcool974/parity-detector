----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.10.2024 11:37:06
-- Design Name: 
-- Module Name: Parity_odd - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Parity_odd is
    Port (
     B1 : in STD_LOGIC;
     B3 : in STD_LOGIC;
     Parity_Odd_Out : out STD_LOGIC
            );
            
end Parity_odd;

architecture Behavioral of Parity_odd is

begin

Parity_Odd_Out <= (B1 xor B3);





end Behavioral;
