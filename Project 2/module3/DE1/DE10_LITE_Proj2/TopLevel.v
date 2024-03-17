
//2100
//391
module TopLevel 
#(parameter num = 2673 )
(
  input [1:0] SW,
  input MAX10_CLK1_50,               // Clock input
  output [1:1] LEDR,
  output final_count  // Output from the last counter in the chain
);


  wire reset;               // Reset input
  wire [num-1:0] tc_signals;  // Array of terminal count signals for the counters
//  wire enablee;
  wire [15:0] counter_arr [0:num-1];
  reg endtc;
  // Instantiate and connect a chain of counters using a generate loop
  genvar i;
  generate
    for (i = 0; i < num; i = i + 1) begin : counter_block
      project2 counter (
        .clk(MAX10_CLK1_50),
        .count(counter_arr[i]),
        .tc(tc_signals[i]),
        .enable(i == 0 ? SW[0] : tc_signals[i-1]),//enable_signals[i]),
        .reset(reset)
      );
		
    end
  endgenerate
  
  always @(posedge tc_signals[1] or posedge reset) begin
	if ( reset == 1 )
		endtc <= 0;
	else
	   endtc <= 1;
  end
  
//  assign enablee = SW[0];
  assign reset = SW[1];
  assign final_count = tc_signals[num-1];//endtc;//  // Connect the final count to the output
  assign LEDR[1] = endtc;//tc_signals[1];//tc_signals[8];
//  assign LEDR[9:2] = counter_arr[num-1];//5'b11111;
//  assign LEDR[4:2] = 4'b0000;
endmodule

