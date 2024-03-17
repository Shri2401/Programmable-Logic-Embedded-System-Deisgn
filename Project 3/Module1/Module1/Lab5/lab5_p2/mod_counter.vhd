-- This VHDL entity implements an n-bit modulo counter. The counter 
-- counts from 0 to n-1. When the counter reaches the value n-1, 
-- the rollover output is set to '1'.

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mod_counter is
    generic(
        DWIDTH    : natural := 8;       -- Data width of the counter
        MOD_VALUE : natural := 20       -- Modulo value for the counter
    );
    port(
        clock    : in  std_logic;
        reset_n  : in  std_logic;       -- Active-low asynchronous reset
        count    : out std_logic_vector(DWIDTH - 1 downto 0);
        rollover : out std_logic
    );
end mod_counter;

architecture behavioral of mod_counter is
    -- Internal signal for the counter value
    signal count_signal : std_logic_vector(DWIDTH - 1 downto 0) := (others => '0');

    -- Internal signal for rollover detection
    signal rollover_signal : std_logic := '0';
    
begin

    process(clock, reset_n) is
    begin
        if (reset_n = '0') then
            -- Reset condition: Set counter and rollover to initial values
            count_signal    <= (others => '0');
            rollover_signal <= '0';
        elsif (rising_edge(clock)) then
            -- Clock rising edge: Increment counter and set rollover if necessary
            if (count_signal = (MOD_VALUE - 1)) then
                count_signal    <= (others => '0');
                rollover_signal <= '1';
            else
                count_signal    <= count_signal + 1;
                rollover_signal <= '0';
            end if;
        end if;
    end process;
    
    count    <= count_signal;
    rollover <= rollover_signal;
    
end behavioral;
