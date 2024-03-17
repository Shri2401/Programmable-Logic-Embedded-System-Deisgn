#include "address_map_arm.h"

#define MAX_SEG7_HEX_VALUES			16u

const static int SEG7_HEX_VALUES[MAX_SEG7_HEX_VALUES] = {
/*  0     1     2     3     4     5     6     7     8     9     */
	0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F,
/*  d     E     S     O     C     -                             */
	0x5E, 0x79, 0x6D, 0x5C, 0x4E, 0x40
};

volatile int *MPcore_private_timer_ptr = (int *)MPCORE_PRIV_TIMER;
volatile int *KEY_ptr = (int *)KEY_BASE;
volatile int *Cyclone_V_FPGA_HEX3_HEX0_ptr = (int *)HEX3_HEX0_BASE;
volatile int *Cyclone_V_FPGA_HEX5_HEX4_ptr = (int *)HEX5_HEX4_BASE;

// Returns Key[3-0] status (0 - not pressed, 1 - pressed)
static int check_key(void)
{
	int key_press_status = 0;

	if (*(KEY_ptr) != 0)
		key_press_status = 1;

	return key_press_status;
}

static void clear_mpcore_priv_timer_expiry_status(void)
{
	*(MPcore_private_timer_ptr + 3) = 1;
}

static void is_mpcore_priv_timer_elapsed(void)
{
	while (*(MPcore_private_timer_ptr + 3) == 0)
		;
}

static int is_mpcore_priv_timer_started(void)
{
	return (*(MPcore_private_timer_ptr + 2) & (1 << 0)) ? 1 : 0;
}

// Stop MPCORE Private Timer
static void stop_mpcore_priv_timer(void)
{
	*(MPcore_private_timer_ptr + 2) &= ~(1 << 0);
}

// Start MPCORE Private Timer
static void start_mpcore_priv_timer(void)
{
	*(MPcore_private_timer_ptr + 2) |= (1 << 0);
}

// Configure MPCore Private Timer
// Load value = Desired Time Period / 5ns (200 MHz)
static void config_mpcore_priv_timer(void)
{
	int load_value = 2000000;	// 1/100th of a second time period


	*MPcore_private_timer_ptr = load_value;
	*(MPcore_private_timer_ptr + 2) = 0b010;
}

int main(void)
{
	int mm = 0;
	int ss = 0;
	int dd = 0;

	config_mpcore_priv_timer();
	start_mpcore_priv_timer();

	while (1)
	{
		if (check_key())
		{
			stop_mpcore_priv_timer();
		}
		else if (!is_mpcore_priv_timer_started())
		{
			start_mpcore_priv_timer();
		}
		else
		{

			is_mpcore_priv_timer_elapsed();

			if (dd < 99)
			{
				dd++;
			}
			else
			{
				dd = 0;
				if (ss < 59)
				{
					ss++;
				}
				else
				{
					ss = 0;
					if (mm < 59)
					{
						mm++;
					}
					else
					{
						mm = 0;
					}
				}
			}

			*(Cyclone_V_FPGA_HEX3_HEX0_ptr) = ((SEG7_HEX_VALUES[ss / 10] << 24) | (SEG7_HEX_VALUES[ss % 10] << 16));
			*(Cyclone_V_FPGA_HEX3_HEX0_ptr) |= ((SEG7_HEX_VALUES[dd / 10] << 8) | SEG7_HEX_VALUES[dd % 10]);
			*(Cyclone_V_FPGA_HEX5_HEX4_ptr) = ((SEG7_HEX_VALUES[mm / 10] << 8) | SEG7_HEX_VALUES[mm % 10]);

			clear_mpcore_priv_timer_expiry_status();
		}
	}


	return 0;
}
