-- Nom du fichier : Parity_Output.vhdl
-- Description : Module de sortie de parité pour afficher le résultat sur les LEDs

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Parity_Output is
    Port (
        Global_Parity : in STD_LOGIC;           -- Entrée de la parité globale
        Parity_LED_Pair : out STD_LOGIC;        -- LED pour indiquer une parité paire
        Parity_LED_Odd : out STD_LOGIC          -- LED pour indiquer une parité impaire
    );
end Parity_Output;

architecture Behavioral of Parity_Output is
begin
    -- Processus pour contrôler les LEDs en fonction de la parité globale
    process(Global_Parity)
    begin
        if (Global_Parity = '0') then
            Parity_LED_Pair <= '1';   -- Allume la LED paire si la parité est paire
            Parity_LED_Odd <= '0';    -- Éteint la LED impaire
        else
            Parity_LED_Pair <= '0';   -- Éteint la LED paire
            Parity_LED_Odd <= '1';    -- Allume la LED impaire si la parité est impaire
        end if;
    end process;

end Behavioral;
