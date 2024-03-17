-- This VHDL entity represents a top-level module for a three-digit 7-segment display
-- counter. The counter counts from 0 to 999, and the 7-segment display digits are
-- updated accordingly.

library ieee;
use ieee.std_logic_1164.all;

entity toplevel is
    port(
        clock_50         : in  std_logic; -- 50 MHz clock input
        reset_n          : in  std_logic; -- Active-low asynchronous reset
        hex0, hex1, hex2 : out std_logic_vector(6 downto 0) := (others => '0') -- 7-segment display outputs for each digit
    );
end toplevel;

architecture rtl of toplevel is
    -- Constants
    constant MOD_VALUE_CLK_DIVIDER   : natural := 50000000; -- Value to generate 1 sec clock from a 50MHz clock
    constant DWIDTH_CLK_DIVIDER      : natural := 32;

    -- Signals for clock dividers and digit counters
    signal ones_clk, tens_clk, hunds_clk          : std_logic                    := '0';
    signal ones_digit, tens_digit, hundreds_digit : std_logic_vector(3 downto 0) := (others => '0');

    -- Function to map 4-bit binary digits to 7-segment display segments
    function seg7_LUT(digit : in std_logic_vector(3 downto 0))
    return std_logic_vector is
        variable seg7 : std_logic_vector(6 downto 0);
    begin
        case digit is
            when "0001" => seg7 := "1111001";
            when "0010" => seg7 := "0100100";
            when "0011" => seg7 := "0110000";
            when "0100" => seg7 := "0011001";
            when "0101" => seg7 := "0010010";
            when "0110" => seg7 := "0000010";
            when "0111" => seg7 := "1111000";
            when "1000" => seg7 := "0000000";
            when "1001" => seg7 := "0011000";
            when others => seg7 := "1000000";
        end case;

        return std_logic_vector(seg7);
    end;

begin

    -- Clock dividers to generate a 1 second clock period from a 25 MHz clock
    -- using modulo counter.
    CLK_DIVIDER : entity work.mod_counter
        generic map(
            DWIDTH   => DWIDTH_CLK_DIVIDER, MOD_VALUE => MOD_VALUE_CLK_DIVIDER
        )
        port map(
            clock    => clock_50,
            reset_n  => reset_n,
            count    => open,       -- not connected
            rollover => ones_clk
        );
    
    -- Ones digit counter (using ones_clk from CLK_DIVIDER counter) 
    ONES : entity work.mod_counter
        generic map(
            DWIDTH   => 4, MOD_VALUE => 10
        )
        port map(
            clock    => ones_clk,
            reset_n  => reset_n,
            count    => ones_digit,
            rollover => tens_clk
        );
    
    -- Tens digit counter (using tens_clk from ONES counter) 
    TENS : entity work.mod_counter
        generic map(
            DWIDTH   => 4, MOD_VALUE => 10
        )
        port map(
            clock    => tens_clk,
            reset_n  => reset_n,
            count    => tens_digit,
            rollover => hunds_clk
        );
    
    -- Hundreds digit counter (using hunds_clk from TENS counter) 
    HUNDRED : entity work.mod_counter
        generic map(
            DWIDTH   => 4, MOD_VALUE => 10
        )
        port map(
            clock    => hunds_clk,
            reset_n  => reset_n,
            count    => hundreds_digit,
            rollover => open
        );

    -- Process to update 7-segment display outputs based on digit counters
    process(ones_clk) is
    begin
        hex0 <= seg7_LUT(ones_digit);
        hex1 <= seg7_LUT(tens_digit);
        hex2 <= seg7_LUT(hundreds_digit);
    end process;

end rtl;
