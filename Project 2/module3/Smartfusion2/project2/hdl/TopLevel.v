//module TopLevel (
//  input wire clk,               // Clock input
//  input wire reset,             // Reset input
//  output wire [15:0] final_count  // Output from the last counter in the chain
//);
//
//  wire [15:0] tc_signals [0:7];  // Array of terminal count signals for the counters
//
//  // Instantiate and connect a chain of counters using a generate loop
//  genvar i;
//  generate
//    for (i = 0; i < 8; i = i + 1) begin : counter_block
//      project2 counter (
//        .clk(clk),
//        .reset(i == 0 ? reset : tc_signals[i - 1]),
//        .count(),
//        .tc(tc_signals[i]),
//        .enable(1'b1),
//        .reset(1'b0)
//      );
//    end
//  endgenerate
//
//  assign final_count = tc_signals[7];  // Connect the final count to the output
//
//endmodule

//module TopLevel (
//  input wire clk,               // Clock input
//  input wire reset,             // Reset input
//  output wire [15:0] final_count  // Output from the last counter in the chain
//);
//
//  wire [15:0] tc_signals [0:7];  // Array of terminal count signals for the counters
//
//  // Instantiate and connect a chain of counters using a generate loop
//  genvar i;
//  generate
//    for (i = 0; i < 3; i = i + 1) begin : counter_block
//      project2 counter (
//        .clk(clk),
//        .reset(i == 0 ? reset : tc_signals[i - 1]),
//        .count(),
//        .tc(tc_signals[i]),
//        .enable(1'b1),
//        .reset(1'b0)
//      );
//    end
//  endgenerate
//
//  assign final_count = tc_signals[7];  // Connect the final count to the output
//
//endmodule

//module TopLevel (
//  input wire clk,               // Clock input
//  input wire reset,             // Reset input
//  output wire [15:0] final_count  // Output from the last counter in the chain
//);
//
//  wire [15:0] tc_signals [0:7];  // Array of terminal count signals for the counters
//
//  // Instantiate and connect a chain of counters using a generate loop
//  genvar i;
//  generate
//    for (i = 0; i < 8; i = i + 1) begin : counter_block
//      wire reset_counter;
//      project2 counter (
//        .clk(clk),
//        .reset(i == 0 ? reset : reset_counter),
//        .count(),
//        .tc(tc_signals[i]),
//        .enable(1'b1),
//        .reset(1'b0)
//      );
//      assign reset_counter = tc_signals[i - 1];
//    end
//  endgenerate
//
//  assign final_count = tc_signals[7];  // Connect the final count to the output
//
//endmodule


//module TopLevel (
//  input wire clk,               // Clock input
//  input wire reset,             // Reset input
//  output wire [15:0] final_count  // Output from the last counter in the chain
//);
//
//  wire [15:0] tc_signals [0:7];  // Array of terminal count signals for the counters
//
//  // Instantiate and connect a chain of counters using a generate loop
//  genvar i;
//  generate
//    for (i = 0; i < 8; i = i + 1) begin : counter_block
//      project2 counter (
//        .clk(clk),
//        .reset(i == 0 ? reset : tc_signals[i - 1]),
//        .count(),
//        .tc(tc_signals[i]),
//        .enable(1'b1),
//        .reset(1'b0)
//      );
//    end
//  endgenerate
//
//  assign final_count = tc_signals[7];  // Connect the final count to the output
//
//endmodule




//module TopLevel (
//  input wire clk,               // Clock input
//  input wire reset,             // Reset input
//  output wire [15:0] final_count  // Output from the last counter in the chain
//);
//
//  wire [15:0] tc_signals [0:7];  // Array of terminal count signals for the counters
//
//  // Instantiate and connect a chain of counters using a generate loop
//  genvar i;
//  generate
//    for (i = 0; i < 8; i = i + 1) begin : counter_block
//      wire reset_counter;
//      wire enable_counter;
//
//      project2 counter (
//        .clk(clk),
//        .reset(i == 0 ? reset : reset_counter),
//        .count(),
//        .tc(tc_signals[i]),
//        .enable(enable_counter), // Connect the enable signal
//        .reset(1'b0)
//      );
//
//      // Connect the reset signals and enable signals
//      assign reset_counter = tc_signals[i - 1];
//      assign enable_counter = tc_signals[i - 1];
//    end
//  endgenerate
//
//  assign final_count = tc_signals[7];  // Connect the final count to the output
//
//endmodule

//
//module TopLevel (
//  input wire clk,               // Clock input
//  input wire reset,             // Reset input
//  output wire [15:0] final_count  // Output from the last counter in the chain
//);
//
//  wire [15:0] tc_signals [0:7];  // Array of terminal count signals for the counters
//  wire [7:0] enable_signals [0:7]; // Array of count enable signals for the counters
//
//  // Instantiate and connect a chain of counters using a generate loop
//  genvar i;
//  generate
//    for (i = 0; i < 8; i = i + 1) begin : counter_block
//      wire reset_counter;
//      wire enable_counter;
//
//      project2 counter (
//        .clk(clk),
//        .reset(reset), // Connect all resets to the same signal
//        .count(),
//        .tc(tc_signals[i]),
//        .enable(enable_counter), // Connect the enable signal
//        .reset(reset_counter) // Connect the reset signal
//      );
//
//      // Connect the reset signals and enable signals
//      assign reset_counter = reset;
//      assign enable_counter = tc_signals[i == 0 ? 7 : i - 1]; // Connect to previous TC signal
//    end
//  endgenerate
//
//  assign final_count = tc_signals[7];  // Connect the final count to the output
//
//endmodule

//module TopLevel (
//  input wire clk,               // Clock input
//  input wire reset,             // Reset input
//  output wire [15:0] final_count  // Output from the last counter in the chain
//);
//
//  wire [15:0] tc_signals [0:7];  // Array of terminal count signals for the counters
//
//  reg enable_signals [0:7];     // Array of count enable signals for the counters
//
//  reg [15:0] counter_reg;        // 16-bit counter register for each counter
//  wire [15:0] next_enable_signals [0:7]; // Array of next counter enable signals
//
//  // Instantiate and connect a chain of counters using a for loop
//  genvar i;
//  generate
//    for (i = 0; i < 8; i = i + 1) begin : counter_block
//      project2 counter (
//        .clk(clk),
//        .reset(i == 0 ? reset : 1'b0), // Connect reset only for the first counter
//        .count(counter_reg),
//        .tc(tc_signals[i]),
//        .enable(enable_signals[i]),
//        .reset(1'b0) // Reset signal for individual counters
//      );
//
//      // Connect the enable signals and set next enable signal
//      if (i == 7) begin
//        enable_signals[i] = 1'b0;
//        next_enable_signals[i] = 1'b0;
//      end else begin
//        enable_signals[i] = tc_signals[i + 1];
//        next_enable_signals[i] = enable_signals[i + 1];
//      end
//    end
//  endgenerate
//
//  // Final count is from the last counter in the chain
//  assign final_count = counter_reg;
//
//endmodule

//module TopLevel (
//  input wire clk,               // Clock input
//  input wire reset,             // Reset input
//  output wire [15:0] final_count  // Output from the last counter in the chain
//);
//
//  wire [15:0] tc_signals [0:7];  // Array of terminal count signals for the counters
//
//  wire enable_signals [0:7];     // Array of count enable signals for the counters
//
//  reg [15:0] counter_reg;        // 16-bit counter register for each counter
//  wire [15:0] next_enable_signals [0:7]; // Array of next counter enable signals
//
//  // Instantiate and connect a chain of counters using a for loop
//  genvar i;
//  generate
//    for (i = 0; i < 8; i = i + 1) begin : counter_block
//      project2 counter (
//        .clk(clk),
//        .reset(i == 0 ? reset : 1'b0), // Connect reset only for the first counter
//        .count(counter_reg),
//        .tc(tc_signals[i]),
//        .enable(enable_signals[i]),
//        .reset(1'b0) // Reset signal for individual counters
//      );
//
//      // Connect the enable signals and set next enable signal
//      if (i == 7) begin
//        assign enable_signals[i] = 1'b0;
//        assign next_enable_signals[i] = 1'b0;
//      end else begin
//        assign enable_signals[i] = tc_signals[i + 1];
//        assign next_enable_signals[i] = enable_signals[i + 1];
//      end
//    end
//  endgenerate
//
//  // Final count is from the last counter in the chain
//  assign final_count = counter_reg;
//
//endmodule





//module TopLevel (
//  input wire clk,               // Clock input
//  input wire reset,             // Reset input
//  output wire [15:0] final_count  // Output from the last counter in the chain
//);
//
//  wire [15:0] tc_signals [0:7];  // Array of terminal count signals for the counters
//  wire [7:0] enable_signals [0:7]; // Array of count enable signals for the counters
//
//  // Instantiate the first counter outside the for-generate loop
//  project2 counter0 (
//    .clk(clk),
//    .reset(reset), // Connect reset only for the first counter
//    .count(),
//    .tc(tc_signals[0]),
//    .enable(enable_signals[0])
//  );
//
//  // Instantiate and connect the rest of the counters using a for loop
//  genvar i;
//  generate
//    for (i = 1; i < 3; i = i + 1) begin : counter_block
//      project2 counter (
//        .clk(clk),
//        .reset(tc_signals[i - 1]), // Connect reset using terminal count
//        .count(),
//        .tc(tc_signals[i]),
//        .enable(enable_signals[i])
//      );
//      assign enable_signals[i] = tc_signals[i == 7 ? 0 : i + 1];
//    end
//  endgenerate
//
//  assign final_count = tc_signals[7];  // Connect the final count to the output
//
//endmodule



module TopLevel (
  input wire clk,               // Clock input
  input wire reset,             // Reset input
  output wire [15:0] final_count  // Output from the last counter in the chain
);


  wire tc_signals [0:1990];  // Array of terminal count signals for the counters
  wire enable_signals [0:1990]; // Array of count enable signals for the counters
  
  // Instantiate and connect a chain of counters using a generate loop
  genvar i;
  generate
//	 assign enable_signals[0] = 8b'1;	
    for (i = 0; i < 1990; i = i + 1) begin : counter_block
      project2 counter (
        .clk(clk),
        .count(),
        .tc(tc_signals[i]),
        .enable(i == 0 ? 1 : enable_signals[i]),
        .reset(reset)
      );
		
      assign enable_signals[i == 1990 ? 0 : i + 1] = tc_signals[i];// == 7 ? 0 : i + 1];
    end
  endgenerate

  assign final_count = tc_signals[1990];  // Connect the final count to the output

endmodule

//module TopLevel (
//  input wire clk,               // Clock input
//  input wire reset,             // Reset input
//  output wire [15:0] final_count  // Output from the last counter in the chain
//);
//
//  wire [15:0] tc_signals [0:7];  // Array of terminal count signals for the counters
//  wire [7:0] enable_signals [0:7]; // Array of count enable signals for the counters
////  wire [15:0] counterr = 16'h0000;  // Initialize counterr
//
//  // Instantiate and connect a chain of counters using a generate loop
//  genvar i;
//  generate
//    for (i = 0; i < 8; i = i + 1) begin : counter_block
//      project2 counter (
//        .clk(clk),
//        .count(counterr),  // Connect counterr to the counters
//        .tc(tc_signals[i]),
//        .enable(enable_signals[i]),
//        .reset(reset)
//      );
//
//      assign enable_signals[i] = tc_signals[i == 7 ? 0 : i + 1];
//    end
//  endgenerate
//
//  assign final_count = counterr;  // Connect counterr to final_count
//
//endmodule

