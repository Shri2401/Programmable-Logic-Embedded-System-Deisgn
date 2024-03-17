///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: shift_reg32.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::ProASIC3> <Die::A3P060> <Package::100 VQFP>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 
`timescale 1 ns/100 ps

module shift_reg32(RST, EN, D, Q, CLK );
input D; 
input CLK;
input RST;
input EN;
output [31:0] Q;
reg [31:0] Q_int;

always @(posedge CLK or posedge RST)
begin
   if (RST) 
   begin
   Q_int = {32{1'b0}};
   end
   
   else 
   begin
        if (EN)
        begin
		Q_int = Q_int << 1;
		Q_int[0] = D;
        end        
   end
end

assign Q = Q_int;

endmodule
