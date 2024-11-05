-- Nom du fichier : Parity_Output.vhdl
-- Description : Module de sortie de parit� pour afficher le r�sultat sur les LEDs

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Parity_Output is
    Port (
        Global_Parity : in STD_LOGIC;           -- Entr�e de la parit� globale
        Parity_LED_Pair : out STD_LOGIC;        -- LED pour indiquer une parit� paire
        Parity_LED_Odd : out STD_LOGIC          -- LED pour indiquer une parit� impaire
    );
end Parity_Output;

architecture Behavioral of Parity_Output is
begin
    -- Processus pour contr�ler les LEDs en fonction de la parit� globale
    process(Global_Parity)
    begin
        if (Global_Parity = '0') then
            Parity_LED_Pair <= '1';   -- Allume la LED paire si la parit� est paire
            Parity_LED_Odd <= '0';    -- �teint la LED impaire
        else
            Parity_LED_Pair <= '0';   -- �teint la LED paire
            Parity_LED_Odd <= '1';    -- Allume la LED impaire si la parit� est impaire
        end if;
    end process;

end Behavioral;
