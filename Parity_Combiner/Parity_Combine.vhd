----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.10.2024 21:11:27
-- Design Name: 
-- Module Name: Parity_Combine - Behavioral
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

entity Parity_Combine is
    Port ( Parity_Even_Out : in STD_LOGIC;
           Parity_Odd_Out : in STD_LOGIC;
           Global_Parity : out STD_LOGIC);
end Parity_Combine;

architecture Behavioral of Parity_Combine is

begin
    Global_Parity <= Parity_Even_Out XOR Parity_Odd_Out ;
end Behavioral;
