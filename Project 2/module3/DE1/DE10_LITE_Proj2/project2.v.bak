//module project2 (
//  input wire clk,      // Clock input
//  input wire reset,    // Reset input
//  output wire [15:0] count  // 16-bit counter output
//);
//
//  reg [15:0] counter;  // 16-bit counter register
//
//  always @(posedge clk or posedge reset) begin
//    if (reset) begin
//      counter <= 16'b0;  // Reset the counter to zero
//    end else begin
//      counter <= counter + 1;  // Increment the counter
//    end
//  end
//
//  assign count = counter;  // Connect the counter to the output
//
//endmodule

//module project2 (
//  input wire clk,            // Clock input
//  output wire [15:0] count,  // 16-bit counter output
//  input wire enable,  // Enable input
//  input wire reset    // Reset input
//);
//
//  reg [15:0] counter;  // 16-bit counter register
//
//  always @(posedge clk or posedge reset) begin
//    if (reset) begin
//      counter <= 16'b0;  // Reset the counter to zero
//    end else if (enable) begin
//      counter <= counter + 1;  // Increment the counter when enable is high
//    end
//  end
//
//  assign count = counter;  // Connect the counter to the output
//
//endmodule

//module project2 (
//  input wire clk,                  // Clock input
//  output wire [15:0] count,        // 16-bit counter output
//  output wire tc,                  // Terminal count output
//  input wire enable,        // Enable input
//  input wire reset         // Reset input
//);
//
//  reg [15:0] counter;  // 16-bit counter register
//
//  always @(posedge clk or posedge reset) begin
//    if (reset) begin
//      counter <= 16'b0;  // Reset the counter to zero
//    end else if (enable) begin
//      if (counter == 16'hFFFF) begin
//        counter <= 16'b0;  // Reset to zero at the terminal count
//        tc <= 1'b1;         // Assert TC when terminal count is reached
//      end else begin
//        counter <= counter + 1;  // Increment the counter
//        tc <= 1'b0;              // Deassert TC when not at terminal count
//      end
//    end
//  end
//
//  assign count = counter;  // Connect the counter to the output
//
//endmodule


module project2 (
  input wire clk,                  // Clock input
  output wire [15:0] count,        // 16-bit counter output
  output wire tc,                  // Terminal count output
  input wire enable,               // Enable input
  input wire reset                 // Reset input
);

  reg [15:0] counter;  // 16-bit counter register
  reg tc_internal;   // Internal signal for terminal count

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      counter <= 16'b0;  // Reset the counter to zero
    end else if (enable) begin
      if (counter == 16'hFFFF) begin
        counter <= 16'b0;  // Reset to zero at the terminal count
        tc_internal <= 1'b1; // Assert internal TC when terminal count is reached
      end else begin
        counter <= counter + 1;  // Increment the counter
//        tc_internal <= 1'b0;      // Deassert internal TC when not at terminal count
      end
    end
  end

  assign tc = tc_internal; // Connect the internal TC to the output
  assign count = counter;  // Connect the counter to the output

endmodule