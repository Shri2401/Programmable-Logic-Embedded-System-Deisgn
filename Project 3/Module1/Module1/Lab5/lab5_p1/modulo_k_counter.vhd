-- This VHDL entity implements an 8-bit modulo-k counter. The counter 
-- counts from 0 to k-1. When the counter reaches the value k-1, 
-- the rollover output is set to '1'.

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity modulo_k_counter is
	generic (
    DWIDTH    : natural := 8;
    MOD_VALUE : natural := 20
	);
	port (
    clock     : in  std_logic;
    reset_n   : in  std_logic;
    Q         : out std_logic_vector(DWIDTH-1 downto 0);
    rollover  : out std_logic
	);
end modulo_k_counter;

architecture behavioral of modulo_k_counter is
  signal value : std_logic_vector(DWIDTH-1 downto 0);
begin
  process (clock, reset_n) is
  begin
    if (reset_n = '0') then
      value <= (others => '0');
    elsif (rising_edge(clock)) then
      if (value < (MOD_VALUE - 1)) then
        value <= value + 1;
      else
        value <= (others => '0');
      end if;
    end if;
  end process;
  Q         <=	value;
  rollover  <= '1' when (value = (MOD_VALUE - 1)) else '0';
end behavioral;
