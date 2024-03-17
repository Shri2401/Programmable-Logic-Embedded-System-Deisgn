`timescale 1 ps/1 ps
module hello_world (

	//clock
	input  MAX10_CLK1_50,
	
	// SWITCHES AND LED
	
	input [1:0] SW,
	output [1:0] LEDR,
	input [1:0] KEY
	);
	
	assign LEDR[0] = ~SW[0];
	
	    nios_setup_v2 u0 (
        .clk_clk                           (MAX10_CLK1_50),                           //                        clk.clk
        .led_external_connection_export    (LEDR[1]),    //    led_external_connection.export
        .reset_reset_n                     (1'b1),                     //                      reset.reset_n
        .switch_external_connection_export (SW[1]),  // switch_external_connection.export
		  .key_0_external_connection_export  (KEY[0]),  //  key_0_external_connection.export
        .key_1_external_connection_export  (KEY[1])   //  key_1_external_connection.export
    );
endmodule

  