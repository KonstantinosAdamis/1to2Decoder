library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity Declaration for Testbench
entity tb_decoder_1to2 is
end tb_decoder_1to2;

-- Architecture
architecture Behavioral of tb_decoder_1to2 is
    -- Component Declaration for decoder_1to2
    component decoder_1to2
        Port (
            input : in STD_LOGIC;
            output0 : out STD_LOGIC;
            output1 : out STD_LOGIC
        );
    end component;

    -- Testbench Signals
    signal input : STD_LOGIC;
    signal output0 : STD_LOGIC;
    signal output1 : STD_LOGIC;

    -- Helper function to convert STD_LOGIC to string
    function std_logic_to_string(s: STD_LOGIC) return string is
    begin
        if s = '0' then
            return "0";
        else
            return "1";
		end if;
    end function;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: decoder_1to2 Port Map (
        input => input,
        output0 => output0,
        output1 => output1
    );

    -- Test Process
    stim_proc: process
    begin
        -- Test Case 1: Input = '0'
        input <= '0';
        wait for 10 ns;
        report "Input = " & std_logic_to_string(input) &
               ", Output0 = " & std_logic_to_string(output0) &
               ", Output1 = " & std_logic_to_string(output1);

        -- Test Case 2: Input = '1'
        input <= '1';
        wait for 10 ns;
        report "Input = " & std_logic_to_string(input) &
               ", Output0 = " & std_logic_to_string(output0) &
               ", Output1 = " & std_logic_to_string(output1);

        -- End simulation
        wait;
    end process;
end Behavioral;



