///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: Counter16.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::SmartFusion2> <Die::M2S010> <Package::144 TQ>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>
//module my_toplevel #(parameter MAX_COUNTERS = 2073) (
//    input wire clk, rst, en,
//    output wire tc
//);
//    wire tc_inst[MAX_COUNTERS-1:0];
//    wire en_inst[MAX_COUNTERS-1:0];
//
//    genvar i;
//
//    generate
//        for (i = 0; i < MAX_COUNTERS; i = i + 1) begin : counter_block
//            Counter16 counter_inst(
//                .clk(clk),
//                .rst(rst),
//                .en(i == 0 ? en : en_inst[i - 1]),
//                .tc(tc_inst[i])
//            );
//            assign en_inst[i] = tc_inst[i];
//        end
//    endgenerate
//
//    assign tc = tc_inst[MAX_COUNTERS-1];
//endmodule

//module Counter16 #(parameter COUNTER_WIDTH = 16) (
//    input wire clk, rst, en,
//    output reg tc
//); 
//    reg [COUNTER_WIDTH-1:0] counter;
//    
//    initial
//    begin
//        counter = 0;
//        tc = 0;
//    end
//    
//    always @(posedge clk) begin
//        if (rst) 
//        begin
//            counter <= 0;
//            tc <= 0;
//        end 
//        else if (en && counter != ((1 << COUNTER_WIDTH) - 1))
//        begin
//            if (counter == ((1 << COUNTER_WIDTH) - 2))
//                tc <= 1;
//            counter <= counter + 1;
//        end
//    end
//endmodule



