library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity Declaration
entity decoder_1to2 is
    Port (
        input : in STD_LOGIC;
        output0 : out STD_LOGIC;
        output1 : out STD_LOGIC
    );
end decoder_1to2;

-- Architecture
architecture Behavioral of decoder_1to2 is
begin
    process(input)
    begin
        if input = '0' then
            output0 <= '1';
            output1 <= '0';
        else
            output0 <= '0';
            output1 <= '1';
        end if;
    end process;
end Behavioral;
