//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Fri Oct 20 19:21:38 2023
// Version: v12.6 12.900.20.24
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// MakerDemo
module MakerDemo(
    // Inputs
    DEVRST_N,
    GPIO_8_F2M,
    // Outputs
    GPIO_0_M2F,
    GPIO_1_M2F,
    GPIO_2_M2F,
    GPIO_3_M2F,
    GPIO_4_M2F,
    GPIO_5_M2F,
    GPIO_6_M2F,
    GPIO_7_M2F
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  DEVRST_N;
input  GPIO_8_F2M;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output GPIO_0_M2F;
output GPIO_1_M2F;
output GPIO_2_M2F;
output GPIO_3_M2F;
output GPIO_4_M2F;
output GPIO_5_M2F;
output GPIO_6_M2F;
output GPIO_7_M2F;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   DEVRST_N;
wire   GPIO_0_M2F_net_0;
wire   GPIO_1_M2F_net_0;
wire   GPIO_2_M2F_net_0;
wire   GPIO_3_M2F_net_0;
wire   GPIO_4_M2F_net_0;
wire   GPIO_5_M2F_net_0;
wire   GPIO_6_M2F_net_0;
wire   GPIO_7_M2F_net_0;
wire   GPIO_8_F2M;
wire   MakerDemo_sb_0_POWER_ON_RESET_N;
wire   GPIO_0_M2F_net_1;
wire   GPIO_1_M2F_net_1;
wire   GPIO_2_M2F_net_1;
wire   GPIO_3_M2F_net_1;
wire   GPIO_4_M2F_net_1;
wire   GPIO_5_M2F_net_1;
wire   GPIO_6_M2F_net_1;
wire   GPIO_7_M2F_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign GPIO_0_M2F_net_1 = GPIO_0_M2F_net_0;
assign GPIO_0_M2F       = GPIO_0_M2F_net_1;
assign GPIO_1_M2F_net_1 = GPIO_1_M2F_net_0;
assign GPIO_1_M2F       = GPIO_1_M2F_net_1;
assign GPIO_2_M2F_net_1 = GPIO_2_M2F_net_0;
assign GPIO_2_M2F       = GPIO_2_M2F_net_1;
assign GPIO_3_M2F_net_1 = GPIO_3_M2F_net_0;
assign GPIO_3_M2F       = GPIO_3_M2F_net_1;
assign GPIO_4_M2F_net_1 = GPIO_4_M2F_net_0;
assign GPIO_4_M2F       = GPIO_4_M2F_net_1;
assign GPIO_5_M2F_net_1 = GPIO_5_M2F_net_0;
assign GPIO_5_M2F       = GPIO_5_M2F_net_1;
assign GPIO_6_M2F_net_1 = GPIO_6_M2F_net_0;
assign GPIO_6_M2F       = GPIO_6_M2F_net_1;
assign GPIO_7_M2F_net_1 = GPIO_7_M2F_net_0;
assign GPIO_7_M2F       = GPIO_7_M2F_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------MakerDemo_sb
MakerDemo_sb MakerDemo_sb_0(
        // Inputs
        .FAB_RESET_N      ( MakerDemo_sb_0_POWER_ON_RESET_N ),
        .DEVRST_N         ( DEVRST_N ),
        .GPIO_8_F2M       ( GPIO_8_F2M ),
        // Outputs
        .POWER_ON_RESET_N ( MakerDemo_sb_0_POWER_ON_RESET_N ),
        .INIT_DONE        (  ),
        .FAB_CCC_GL0      (  ),
        .FAB_CCC_LOCK     (  ),
        .MSS_READY        (  ),
        .GPIO_0_M2F       ( GPIO_0_M2F_net_0 ),
        .GPIO_1_M2F       ( GPIO_1_M2F_net_0 ),
        .GPIO_2_M2F       ( GPIO_2_M2F_net_0 ),
        .GPIO_3_M2F       ( GPIO_3_M2F_net_0 ),
        .GPIO_4_M2F       ( GPIO_4_M2F_net_0 ),
        .GPIO_5_M2F       ( GPIO_5_M2F_net_0 ),
        .GPIO_6_M2F       ( GPIO_6_M2F_net_0 ),
        .GPIO_7_M2F       ( GPIO_7_M2F_net_0 ) 
        );


endmodule
