///////////////////////////////////////////////////////////////////////////////////////////////////
//
//
// File: Shifter.v
// File history:
//      1.0: 2021/02/27: Dual clock edge design
//
// Description: 
//
// Project 2 Module 1 Part 2
//
// Targeted device: <Family::SmartFusion2> <Die::M2S010> <Package::144 TQ>
// Author: Tim Scherr
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale 1 ns / 1 ps

module Shifter( clk, reset, enable, Din, Qout );
  input clk, reset, enable, Din;
  output reg [15:0] Qout;
  reg [3:0] count;  
  reg ld_reg;
  reg [15:0] Q;    

//Control
  always @(posedge clk)

  begin
    if (reset)  // synchronous reset
      count <= 0;
    else if (enable == 1'b1)
      count <= count + 1;    // count will rollover
    if (count == 15)
      ld_reg <= 1;
    else
      ld_reg <= 0;  
  end    

// Shift_reg - serial to parallel converter
  always @(posedge clk)   // 

  begin
    if (reset)
      Q <= 16'b0000000000000000;
    else if (enable == 1'b1) 
    begin       
      Q <= Q << 1;  // no shift out
      Q[0] <= Din;
    end  
    else ;   
  end

// Register output
  always @(negedge clk) 
  begin
    if (reset)
      Qout <= 16'b0000000000000000;
    else if (ld_reg == 1'b1) 
      Qout <= Q ;  // register on falling edge
    else ;   
  end 

endmodule

