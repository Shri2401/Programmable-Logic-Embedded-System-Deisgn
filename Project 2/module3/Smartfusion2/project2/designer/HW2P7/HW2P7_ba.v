`timescale 1 ns/100 ps
// Version: v12.6 12.900.20.24
// File used only for Simulation


module HW2P7(
       CP,
       SR,
       P,
       PE,
       CEP,
       CET,
       Q,
       TC
    );
input  CP;
input  SR;
input  [3:0] P;
input  PE;
input  CEP;
input  CET;
output [3:0] Q;
output TC;

    wire \P[3] , \P[2] , \P[1] , \P[0] , \Q[3] , \Q[2] , \Q[1] , 
        \Q[0] , CP_net_1, SR_net_1, PE_net_1, CEP_net_1, CET_net_1, 
        TC_net_1, \count_temp_5_Z[3] , \count_temp_5_Z[2] , 
        \count_temp_5_Z[1] , \count_temp_5_Z[0] , GND, 
        TC_temp_0_sqmuxa_Z, VCC, N_12, N_13, N_14, N_15, 
        \un1_count_temp_2_1.CO0_Z , TC_temp_0_sqmuxa_1_0_Z, NN_1, 
        \CP_RNIJ72/U0_YNn_GSouth , AFLSDF_VCC, AFLSDF_GND, 
        AFLSDF_INV_0_net_1;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    CFG3 #( .INIT(8'h78) )  \un1_count_temp_2_1.SUM[2]  (.A(\Q[1] ), 
        .B(\un1_count_temp_2_1.CO0_Z ), .C(\Q[2] ), .Y(N_14));
    CFG1 #( .INIT(2'h2) )  BLOCK_INTERFACE_I_CET (.A(CET), .Y(
        CET_net_1));
    CFG3 #( .INIT(8'h80) )  \un1_count_temp_2_1.CO0  (.A(CEP_net_1), 
        .B(\Q[0] ), .C(CET_net_1), .Y(\un1_count_temp_2_1.CO0_Z ));
    CFG4 #( .INIT(16'h78F0) )  \un1_count_temp_2_1.SUM[3]  (.A(\Q[1] ), 
        .B(\un1_count_temp_2_1.CO0_Z ), .C(\Q[3] ), .D(\Q[2] ), .Y(
        N_15));
    SLE \count_temp[0]  (.D(\count_temp_5_Z[0] ), .CLK(NN_1), .EN(VCC), 
        .ALn(SR_net_1), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        \Q[0] ));
    CFG1 #( .INIT(2'h2) )  \BLOCK_INTERFACE_I_P[0]  (.A(P[0]), .Y(
        \P[0] ));
    CFG4 #( .INIT(16'h7F80) )  \un1_count_temp_2_1.SUM[1]  (.A(
        CEP_net_1), .B(CET_net_1), .C(\Q[0] ), .D(\Q[1] ), .Y(N_13));
    CFG4 #( .INIT(16'h4450) )  \count_temp_5[1]  (.A(TC_net_1), .B(
        N_13), .C(\P[1] ), .D(PE_net_1), .Y(\count_temp_5_Z[1] ));
    SLE \count_temp[1]  (.D(\count_temp_5_Z[1] ), .CLK(NN_1), .EN(VCC), 
        .ALn(SR_net_1), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        \Q[1] ));
    CFG1 #( .INIT(2'h2) )  \BLOCK_INTERFACE_I_P[3]  (.A(P[3]), .Y(
        \P[3] ));
    CFG1 #( .INIT(2'h2) )  BLOCK_INTERFACE_I_CP (.A(CP), .Y(CP_net_1));
    SLE TC_temp (.D(TC_temp_0_sqmuxa_Z), .CLK(NN_1), .EN(VCC), .ALn(
        SR_net_1), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        TC_net_1));
    CFG4 #( .INIT(16'h4450) )  \count_temp_5[0]  (.A(TC_net_1), .B(
        N_12), .C(\P[0] ), .D(PE_net_1), .Y(\count_temp_5_Z[0] ));
    RGB_NG \CP_RNIJ72/U0_RGB1  (.An(\CP_RNIJ72/U0_YNn_GSouth ), .ENn(
        GND), .YL(NN_1), .YR());
    INV_BA AFLSDF_INV_0 (.A(CP_net_1), .Y(AFLSDF_INV_0_net_1));
    CFG1 #( .INIT(2'h2) )  BLOCK_INTERFACE_I_SR (.A(SR), .Y(SR_net_1));
    SLE \count_temp[3]  (.D(\count_temp_5_Z[3] ), .CLK(NN_1), .EN(VCC), 
        .ALn(SR_net_1), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        \Q[3] ));
    CFG1 #( .INIT(2'h2) )  \BLOCK_INTERFACE_I_P[1]  (.A(P[1]), .Y(
        \P[1] ));
    CFG1 #( .INIT(2'h2) )  \BLOCK_INTERFACE_I_Q[2]  (.A(\Q[2] ), .Y(
        Q[2]));
    CFG1 #( .INIT(2'h2) )  BLOCK_INTERFACE_I_PE (.A(PE), .Y(PE_net_1));
    CFG4 #( .INIT(16'h0800) )  TC_temp_0_sqmuxa (.A(\Q[1] ), .B(
        TC_temp_0_sqmuxa_1_0_Z), .C(TC_net_1), .D(\Q[2] ), .Y(
        TC_temp_0_sqmuxa_Z));
    CFG1 #( .INIT(2'h2) )  BLOCK_INTERFACE_I_TC (.A(TC_net_1), .Y(TC));
    CFG4 #( .INIT(16'h4450) )  \count_temp_5[3]  (.A(TC_net_1), .B(
        N_15), .C(\P[3] ), .D(PE_net_1), .Y(\count_temp_5_Z[3] ));
    SLE \count_temp[2]  (.D(\count_temp_5_Z[2] ), .CLK(NN_1), .EN(VCC), 
        .ALn(SR_net_1), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        \Q[2] ));
    CFG1 #( .INIT(2'h2) )  \BLOCK_INTERFACE_I_P[2]  (.A(P[2]), .Y(
        \P[2] ));
    CFG3 #( .INIT(8'h6C) )  \un1_count_temp_2_1.SUM[0]  (.A(CEP_net_1), 
        .B(\Q[0] ), .C(CET_net_1), .Y(N_12));
    CFG4 #( .INIT(16'h00E0) )  TC_temp_0_sqmuxa_1_0 (.A(CET_net_1), .B(
        CEP_net_1), .C(\Q[3] ), .D(\Q[0] ), .Y(TC_temp_0_sqmuxa_1_0_Z));
    GB_NG CP_RNIJ72 (.An(AFLSDF_INV_0_net_1), .ENn(GND), .YNn(), .YSn(
        \CP_RNIJ72/U0_YNn_GSouth ));
    CFG4 #( .INIT(16'h4450) )  \count_temp_5[2]  (.A(TC_net_1), .B(
        N_14), .C(\P[2] ), .D(PE_net_1), .Y(\count_temp_5_Z[2] ));
    CFG1 #( .INIT(2'h2) )  \BLOCK_INTERFACE_I_Q[0]  (.A(\Q[0] ), .Y(
        Q[0]));
    CFG1 #( .INIT(2'h2) )  \BLOCK_INTERFACE_I_Q[1]  (.A(\Q[1] ), .Y(
        Q[1]));
    CFG1 #( .INIT(2'h2) )  BLOCK_INTERFACE_I_CEP (.A(CEP), .Y(
        CEP_net_1));
    CFG1 #( .INIT(2'h2) )  \BLOCK_INTERFACE_I_Q[3]  (.A(\Q[3] ), .Y(
        Q[3]));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
