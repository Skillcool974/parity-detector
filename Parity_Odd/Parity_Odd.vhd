----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.11.2024 11:17:52
-- Design Name: 
-- Module Name: Parity_Odd - Behavioral
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

entity Parity_Odd is
    Port ( B1 : in STD_LOGIC;
           B3 : in STD_LOGIC;
           Parity_Odd_Out : out STD_LOGIC);
end Parity_Odd;

architecture Behavioral of Parity_Odd is

begin

Parity_Odd_Out <= B1 XOR B3;


end Behavioral;
