----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.11.2024 08:49:11
-- Design Name: 
-- Module Name: Parity_Top - Behavioral
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

entity Parity_Top is
    Port ( B0 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           B3 : in STD_LOGIC;
           Parity_LED_Pair : out STD_LOGIC;
           Parity_LED_Odd : out STD_LOGIC);
end Parity_Top;

architecture Behavioral of Parity_Top is
    signal Parity_Even_Out : STD_LOGIC;
    signal Parity_Odd_Out : STD_LOGIC;
    signal Global_Parity : STD_LOGIC;

begin
    Parity_Even_Instance : entity work.Parity_Even
        port map (
            B0 => B0,
            B2 => B2,
            Parity_Even_Out => Parity_Even_Out
        );
        
    Parity_Odd_Instance : entity work.Parity_Odd
            port map (
                B1 => B1,
                B3 => B3,
                Parity_Odd_Out => Parity_Odd_Out
            );
            
     Parity_Combine : entity work.Parity_Combine
        port map (
            Parity_Even_Out => Parity_Even_Out,
            Parity_Odd_Out => Parity_Odd_Out,
            Global_Parity => Global_Parity
        );
       
     Parity_Output_Instance : entity work.Parity_Output
        port map (
            Global_Parity => Global_Parity,
            Parity_LED_Pair => Parity_LED_Pair,
            Parity_LED_Odd => Parity_LED_Odd
        );
end Behavioral;
