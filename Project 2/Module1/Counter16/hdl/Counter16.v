///////////////////////////////////////////////////////////////////////////////////////////////////
// File: Counter16.v
// File history:
//      1.0: 2021/02/27: 16 biyt Binary Counter
//
// Description: 
//
// Project 2 Module 1 Part 3
//
// Targeted device: <Family::SmartFusion2> <Die::M2S010> <Package::144 TQ>
// Author: Tim Scherr
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale 1 ns / 1 ps
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module Counter16( clk, en, rst, Q );
input clk, en, rst;
output reg [15:0]Q;


  always @(posedge clk)
  begin
    if (rst)  // synchronous reset
      Q <= 0;
    else if (en == 1'b1)
      Q <= Q + 1;    // count will rollover
   end    

endmodule

