// include the c and hal files that we need in main()
#include <string.h>
#include "sys/alt_stdio.h"
#include "alt_types.h"
#include "altera_up_avalon_accelerometer_spi.h"

// these includes allow us to perform a quick sanity check that the system was properly assembled in SOPC Builder
#include "system.h"
#include "inc/system_validation.h"

// all helper routine includes are condensed into this one file for neatness
#include "inc/main_includes.h"

#define MAX_COUNT 0xFF  //use a 8-bit maximum count value since we have a 8-bit LED PIO

//initialize accelerometer value variable
alt_up_accelerometer_spi_dev * accelerometer;

//initialize accelerometer
void init_accel() {
    accelerometer = alt_up_accelerometer_spi_open_dev("/dev/accelerometer_spi_0");
    if (accelerometer != NULL) {
        alt_printf("Accelerometer active!\n ");
    }
}

int main(void) {
    alt_u8 binary_count;
    char input;
    int dir;
    alt_u32 xAccel = 0;
    alt_u8 mode = 'b'; // Default mode is binary counter

    alt_printf("\nled_control program starting...\n\n");
    alt_printf("CONGRATULATIONS!  You have successfully compiled a Nios II project!\n");

    alarm_init();


    while (1) {
        alt_printf("\nPress 'a' for accelerometer or 'b' for binary counter\n");
        input = alt_getchar();
        alt_getchar();
        alt_printf("You selected: '%c'\n", input);

        if (input == 'a') {
            mode = 'a'; // Switch to accelerometer mode
            alt_printf("Switched to accelerometer mode\n");
            init_accel();
        } else if (input == 'b') {
            mode = 'b'; // Switch to binary counter mode
            alt_printf("Switched to binary counter mode\n");
        } else {
            alt_printf("INVALID ENTRY\n");
        }

        if (mode == 'a') {
            // Accelerometer mode
            alt_up_accelerometer_spi_read_x_axis(accelerometer, (alt_32*)&xAccel);

            alt_u8 raw_xval = (alt_u8)(xAccel % 255);
            alt_u8 xval = ((7 * raw_xval) / 255);

            alt_u8 Led_Val = 0x00;

            for (alt_u8 i = 0; i <= xval; i++) {
                // Set the (LED) in LED_Vals
            	Led_Val |= (1 << i);
            }

            printf("x = %u\n", xval);

            update_led(Led_Val);
            delay_wait();

        } else if (mode == 'b') {
            // Binary counter mode
        	// declare the local variables need in main()

        	alt_printf("\nled_control program starting...\n\n");
        	alt_printf("\nPress 'u' to count up by one\n");
        	alt_printf("Press 'd' to count down by one\n");
        	alt_printf("Press '3' to count up by threes\n");
        	alt_printf("Press 'q' to count up by fives\n");
        	alt_printf("Press 'w' to count down by tens\n");
        	input = alt_getchar();
        	alt_getchar();
        	alt_printf("You selected: '%c'\n",input);
        	if (input == 'u') {
        	dir = 1;
        	binary_count = 0;
        	alt_printf(" - counting up by 1\n");
        	}
        	else if (input == 'd') {
        	dir = -1;
        	binary_count = MAX_COUNT;
        	alt_printf(" - counting down by 1\n");
        	}
        	else if (input == 'w') {
        	dir = -10;
        	binary_count = MAX_COUNT;
        	alt_printf(" - counting down by 10\n");
        	}
        	else if (input == '3') {
        	dir = 3;
        	binary_count = 0;
        	alt_printf(" - counting up by 3\n");
        	}
        	else if (input == 'q') {
        	dir = 5;
        	binary_count = 0;
        	alt_printf(" - counting up by 5\n");
        	}
        	else {
        	dir = 1;
        	binary_count = MAX_COUNT;
        	alt_printf("INVALID ENTRY");
        	}
        	// initialize the line wrap count variable
        	PRINT_STDIO_WRAP_COUNT = 0;

        	// print the binary count out the STDOUT
        	print_binary_count_stdio(binary_count); // see src/jtag_uart_util.c
        	// update the green led display with the binary count
        	update_led(binary_count); // see src/led_util.c
        	// wait for the delay period
        	delay_wait(); // see src/delay_wait.c
        	// count until we reach all the maximum count
        	while( (binary_count < MAX_COUNT && dir > 0) || (binary_count > 0 && dir < 0) )
        	{
        	if ((dir == -10) && (binary_count) < 0xA)
        	{
        	break;
        	}
        	// increment the binary counter
        	binary_count= binary_count + dir;
        	// print the binary count out the STDOUT
        	print_binary_count_stdio(binary_count); // see src/jtag_uart_util.c
        	// update the green led display with the binary count
        	update_led(binary_count); // see src/led_util.c
        	// wait for the delay period
        	delay_wait(); // see src/delay_wait.c
        	}
        	// announce loop completion on STDOUT and the UART
        	alt_printf("\n\n LED control program completed its loop ...\n\n");
        	// wait for the delay period
        	delay_wait(); // see src/delay_wait.c
        	}
    }

        	// we should never get to this point
        	return(0);
        	}
