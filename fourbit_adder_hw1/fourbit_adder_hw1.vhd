library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Entity declaration for the four-bit adder
entity fourbit_adder_hw1 is
    Port (
        A : in STD_LOGIC_VECTOR(3 downto 0); -- 4-bit input A
        B : in STD_LOGIC_VECTOR(3 downto 0); -- 4-bit input B
        Cin : in STD_LOGIC;                  -- Carry input
        Z : out STD_LOGIC_VECTOR(3 downto 0); -- 4-bit sum output
        Cout : out STD_LOGIC                 -- Carry output
    );
end fourbit_adder_hw1;

-- Architecture declaration using functional/behavioral description
architecture Behavioral of fourbit_adder_hw1 is
begin
    -- Process block for the addition operation
    process(A, B, Cin)
        variable sum : STD_LOGIC_VECTOR(4 downto 0); -- Temporary 5-bit sum
    begin
        sum := ("0" & A) + ("0" & B) + Cin; -- Add A, B, and Cin with carry
        Z <= sum(3 downto 0);               -- Assign lower 4 bits to Z
        Cout <= sum(4);                     -- Assign the carry-out bit
    end process;

end Behavioral;
