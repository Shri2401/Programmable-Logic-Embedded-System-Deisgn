library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity toplevel is
    port(
        CLOCK_50 : in  std_logic;       -- 50 MHz Clock
        KEY0     : in  std_logic;       -- Stop the clock whenever KEY0 is being pressed and continue the clock when KEY0 is released
        KEY1     : in  std_logic;       -- Preset the minute part of the time displayed by the clock
        SW       : in  std_logic_vector(7 downto 0)  := (others => '0'); -- Slide switch to preset minutes
        SEG7_CS  : out std_logic_vector(13 downto 0) := (others => '0'); -- 7-segment output for centiseconds
        SEG7_SEC : out std_logic_vector(13 downto 0) := (others => '0'); -- 7-segment output for seconds
        SEG7_MIN : out std_logic_vector(13 downto 0) := (others => '0')  -- 7-segment output for minutes
    );
end toplevel;

architecture behavioral of toplevel is
    --CONSTANTS
    constant CLK_100HZ_DWIDTH    : natural := 24;
    constant CLK_100HZ_MOD_VALUE : natural := 500000;
    constant CENTISECONDS_MAX_VAL: integer := 99;
    constant SECONDS_MIN_MAX_VAL : integer := 59;
    
    --SIGNALS
    signal clk_100hz_rollover : std_logic := '0';

    signal cs     : std_logic_vector(7 downto 0) := (others => '0');
    signal second : std_logic_vector(7 downto 0) := (others => '0');
    signal minute : std_logic_vector(7 downto 0) := (others => '0');

    -- FUNCTIONS
    
    -- Convert integer to 7-segment output vector
    function seg7_LUT(digit : in integer)
    return std_logic_vector is 
        variable seg7 : std_logic_vector(6 downto 0);
        
    begin
        case digit is
            when 0      => seg7 := "1000000";
            when 1      => seg7 := "1111001";
            when 2      => seg7 := "0100100";
            when 3      => seg7 := "0110000";
            when 4      => seg7 := "0011001";
            when 5      => seg7 := "0010010";
            when 6      => seg7 := "0000010";
            when 7      => seg7 := "1111000";
            when 8      => seg7 := "0000000";
            when 9      => seg7 := "0011000";
            when others => seg7 := "1000000";
        end case;
        
        return seg7;
    end;

begin
    
    -- CLK divider counter to generate 100 HZ clock period
    CLK_100HZ : entity work.mod_counter
        generic map(
            DWIDTH    => CLK_100HZ_DWIDTH,
            MOD_VALUE => CLK_100HZ_MOD_VALUE
        )
        port map(
            CLOCK    => CLOCK_50,
            RESET    => '0',
            COUNT    => open,   -- not connected
            ROLLOVER => clk_100hz_rollover
        );

    process(clk_100hz_rollover) is
    begin
        if (rising_edge(clk_100hz_rollover)) then

            if (KEY1 = '0') then
                if (SW <= SECONDS_MIN_MAX_VAL) then
                    minute <= SW;
                end if;
            end if;

            if (KEY0 = '1') then
                if (cs < CENTISECONDS_MAX_VAL) then
                    cs <= cs + 1;
                else
                    cs <= (others => '0');
                    if (second < SECONDS_MIN_MAX_VAL) then
                        second <= second + 1;
                    else
                        second <= (others => '0');
                        if (minute < SECONDS_MIN_MAX_VAL) then
                            minute <= minute + 1;
                        else
                            minute <= (others => '0');
                        end if;
                    end if;
                end if;
            end if;

        end if;
    end process;
    
    -- Continous assignment for 7-segment display 
    SEG7_CS  <= seg7_LUT(to_integer(unsigned(cs)) / 10) & seg7_LUT(to_integer(unsigned(cs)) mod 10);
    SEG7_SEC <= seg7_LUT(to_integer(unsigned(second)) / 10) & seg7_LUT(to_integer(unsigned(second)) mod 10);
    SEG7_MIN <= seg7_LUT(to_integer(unsigned(minute)) / 10) & seg7_LUT(to_integer(unsigned(minute)) mod 10);

end behavioral;
