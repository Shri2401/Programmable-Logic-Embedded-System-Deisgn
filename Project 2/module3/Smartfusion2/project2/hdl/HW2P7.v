///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: HW2P7.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::SmartFusion2> <Die::M2S010> <Package::484 FBGA>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module HW2P7 (
  input CP,       // Clock input
  input SR,       // Active low, synchronous reset
  input [3:0] P,  // Parallel input
  input PE,       // Parallel Enable (Load)
  input CEP,      // Count enable parallel input
  input CET,      // Count enable trickle input
  output [3:0] Q, // Parallel output
  output TC       // Terminal Count
);

  reg [3:0] count_temp;
  reg TC_temp;

  always @(posedge CP or negedge SR) begin
    if (!SR) begin
      count_temp <= 4'b0000; // Reset when SR is active low
      TC_temp <= 1'b0;
	 end else if (TC_temp) begin
      count_temp <= 4'b0000; // Reset when SR is active low or TC is high
      TC_temp <= 1'b0;
    end else begin
      if (!PE) begin
        count_temp <= P; // Load parallel input when PE is low
      end else if (CEP && CET) begin
        count_temp <= count_temp + 1; // Increment the count when CEP and CET are high
      end
      
      if (count_temp == 4'b1110 && CET) begin
        TC_temp <= 1'b1; // Set TC when count reaches "1111" for binary counters
      end else if (count_temp == 4'b1110 && CEP) begin
        TC_temp <= 1'b1;
      end
    end
  end

  assign Q = count_temp;
  assign TC = TC_temp;

endmodule


