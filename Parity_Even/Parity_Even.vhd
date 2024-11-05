----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.10.2024 11:22:32
-- Design Name: 
-- Module Name: Parity_Even - Behavioral
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

entity Parity_Even is
    Port ( B0 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           Parity_Even_Out : out STD_LOGIC);
end Parity_Even;

architecture Behavioral of Parity_Even is

begin

Parity_Even_Out <= B0 xor B2;

end Behavioral;
