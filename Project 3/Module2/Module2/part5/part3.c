/* This files provides address values that exist in the system */

#define BOARD                 "DE1-SoC"

/* Memory */
#define DDR_BASE              0x00000000
#define DDR_END               0x3FFFFFFF
#define A9_ONCHIP_BASE        0xFFFF0000
#define A9_ONCHIP_END         0xFFFFFFFF
#define SDRAM_BASE            0xC0000000
#define SDRAM_END             0xC3FFFFFF
#define FPGA_PIXEL_BUF_BASE   0xC8000000
#define FPGA_PIXEL_BUF_END    0xC803FFFF
#define FPGA_CHAR_BASE        0xC9000000
#define FPGA_CHAR_END         0xC9001FFF

/* Cyclone V FPGA devices */
#define LED_BASE	      0xFF200000
#define LEDR_BASE             0xFF200000
#define HEX3_HEX0_BASE        0xFF200020
#define HEX5_HEX4_BASE        0xFF200030
#define SW_BASE               0xFF200040
#define KEY_BASE              0xFF200050
#define JP1_BASE              0xFF200060
#define JP2_BASE              0xFF200070
#define PS2_BASE              0xFF200100
#define PS2_DUAL_BASE         0xFF200108
#define JTAG_UART_BASE        0xFF201000
#define JTAG_UART_2_BASE      0xFF201008
#define IrDA_BASE             0xFF201020
#define TIMER_BASE            0xFF202000
#define TIMER_2_BASE          0xFF202020
#define AV_CONFIG_BASE        0xFF203000
#define RGB_RESAMPLER_BASE    0xFF203010
#define PIXEL_BUF_CTRL_BASE   0xFF203020
#define CHAR_BUF_CTRL_BASE    0xFF203030
#define AUDIO_BASE            0xFF203040
#define VIDEO_IN_BASE         0xFF203060
#define EDGE_DETECT_CTRL_BASE 0xFF203070
#define ADC_BASE              0xFF204000

/* Cyclone V HPS devices */
#define HPS_GPIO1_BASE        0xFF709000
#define I2C0_BASE             0xFFC04000
#define I2C1_BASE             0xFFC05000
#define I2C2_BASE             0xFFC06000
#define I2C3_BASE             0xFFC07000
#define HPS_TIMER0_BASE       0xFFC08000
#define HPS_TIMER1_BASE       0xFFC09000
#define HPS_TIMER2_BASE       0xFFD00000
#define HPS_TIMER3_BASE       0xFFD01000
#define FPGA_BRIDGE           0xFFD0501C

/* ARM A9 MPCORE devices */
#define   PERIPH_BASE         0xFFFEC000    // base address of peripheral devices
#define   MPCORE_PRIV_TIMER   0xFFFEC600    // PERIPH_BASE + 0x0600

/* Interrupt controller (GIC) CPU interface(s) */
#define MPCORE_GIC_CPUIF      0xFFFEC100    // PERIPH_BASE + 0x100
#define ICCICR                0x00          // offset to CPU interface control reg
#define ICCPMR                0x04          // offset to interrupt priority mask reg
#define ICCIAR                0x0C          // offset to interrupt acknowledge reg
#define ICCEOIR               0x10          // offset to end of interrupt reg
/* Interrupt controller (GIC) distributor interface(s) */
#define MPCORE_GIC_DIST       0xFFFED000    // PERIPH_BASE + 0x1000
#define ICDDCR                0x00          // offset to distributor control reg
#define ICDISER               0x100         // offset to interrupt set-enable regs
#define ICDICER               0x180         // offset to interrupt clear-enable regs
#define ICDIPTR               0x800         // offset to interrupt processor targets regs
#define ICDICFR               0xC00         // offset to interrupt configuration regs


#define MAX_SEG7_HEX_VALUES			7u

const static int SEG7_HEX_VALUES[MAX_SEG7_HEX_VALUES] = {
/*  d     E     1     -     S     O     C    */
	0x5E, 0x79, 0x06, 0x40, 0x6D, 0x5C, 0x39
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
	int load_value = 40000000;   // 2/10th of a second time period


	*MPcore_private_timer_ptr = load_value;
	*(MPcore_private_timer_ptr + 2) = 0b010;
}


int main(void)
{
	int i = 0;
	int h3_h0 = 0;
	int h4_h5 = 0;

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

			if (i < MAX_SEG7_HEX_VALUES)
			{
				if (i > 3 && h4_h5 == 0)
				{
					h4_h5 = (h3_h0 >> 24);
				}

				if (i > 4 && h4_h5 != 0)
				{
					h4_h5 <<= 8;
					h4_h5 |= (h3_h0 >> 24);
				}

				h3_h0 = (h3_h0 << 8) | SEG7_HEX_VALUES[i++];
			}
			else if (i >= MAX_SEG7_HEX_VALUES && i < 13)
			{
				i++;
				h4_h5 = h4_h5 << 8;
				h4_h5 |= (h3_h0 >> 24);
				h3_h0 = h3_h0 << 8;
			}
			else
			{
				i = 0;
				h3_h0 = 0;
				h4_h5 = 0;
			}


			*(Cyclone_V_FPGA_HEX5_HEX4_ptr) = h4_h5;
			*(Cyclone_V_FPGA_HEX3_HEX0_ptr) = h3_h0;


			clear_mpcore_priv_timer_expiry_status();
		}
	}

}
