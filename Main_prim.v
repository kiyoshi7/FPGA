// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.3.144
// Netlist written on Sun Mar 10 20:01:02 2019
//
// Verilog Description of module Main
//

module Main (T_test, P_UART_TX);   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/main.vhd(4[8:12])
    output T_test;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/main.vhd(6[3:9])
    output P_UART_TX;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/main.vhd(7[3:12])
    
    wire T_test_c /* synthesis SET_AS_NETWORK=T_test_c, is_clock=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/main.vhd(6[3:9])
    
    wire GND_net, VCC_net, P_UART_TX_c, n776, n777, n761;
    
    VHI i2 (.Z(VCC_net));
    UART CompUART (.T_test_c(T_test_c), .P_UART_TX_c(P_UART_TX_c), .GND_net(GND_net), 
         .n777(n777), .n761(n761), .n776(n776));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/main.vhd(49[12:16])
    LUT4 m0_lut (.Z(n776)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    GSR GSR_INST (.GSR(n761));
    OB P_UART_TX_pad (.I(P_UART_TX_c), .O(P_UART_TX));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/main.vhd(7[3:12])
    OB T_test_pad (.I(T_test_c), .O(T_test));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/main.vhd(6[3:9])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 m1_lut (.Z(n777)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    Clock CompClock (.GND_net(GND_net), .VCC_net(VCC_net), .T_test_c(T_test_c));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/main.vhd(40[13:18])
    
endmodule
//
// Verilog Description of module UART
//

module UART (T_test_c, P_UART_TX_c, GND_net, n777, n761, n776);
    input T_test_c;
    output P_UART_TX_c;
    input GND_net;
    input n777;
    output n761;
    input n776;
    
    wire T_test_c /* synthesis SET_AS_NETWORK=T_test_c, is_clock=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/main.vhd(6[3:9])
    wire w_TX_DONE /* synthesis is_clock=1, SET_AS_NETWORK=\CompUART/w_TX_DONE */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(22[12:21])
    wire [2:0]r_SM_Main;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(34[10:19])
    wire [7:0]r_TX_BYTE;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(20[12:21])
    
    wire T_test_c_enable_10, n775;
    wire [2:0]r_SM_Main_2__N_58;
    
    wire n250;
    
    \UART_TX(87)  CompRS232 (.r_SM_Main({r_SM_Main[2:1], Open_0}), .\r_TX_BYTE[6] (r_TX_BYTE[6]), 
            .T_test_c(T_test_c), .T_test_c_enable_10(T_test_c_enable_10), 
            .\r_TX_BYTE[0] (r_TX_BYTE[0]), .P_UART_TX_c(P_UART_TX_c), .w_TX_DONE(w_TX_DONE), 
            .n775(n775), .\r_SM_Main_2__N_58[0] (r_SM_Main_2__N_58[0]), 
            .GND_net(GND_net), .\r_TX_BYTE[7] (r_TX_BYTE[7]), .\r_TX_BYTE[5] (r_TX_BYTE[5]), 
            .\r_TX_BYTE[3] (r_TX_BYTE[3]), .\r_TX_BYTE[2] (r_TX_BYTE[2]), 
            .\r_TX_BYTE[1] (r_TX_BYTE[1]), .n250(n250));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(56[13:20])
    DataSelect CompDataSelect (.\r_TX_BYTE[7] (r_TX_BYTE[7]), .T_test_c(T_test_c), 
            .\r_TX_BYTE[6] (r_TX_BYTE[6]), .\r_TX_BYTE[0] (r_TX_BYTE[0]), 
            .w_TX_DONE(w_TX_DONE), .n777(n777), .\r_TX_BYTE[5] (r_TX_BYTE[5]), 
            .\r_TX_BYTE[3] (r_TX_BYTE[3]), .\r_TX_BYTE[2] (r_TX_BYTE[2]), 
            .\r_TX_BYTE[1] (r_TX_BYTE[1]), .n761(n761), .n775(n775), .\r_SM_Main[2] (r_SM_Main[2]), 
            .T_test_c_enable_10(T_test_c_enable_10), .\r_SM_Main[1] (r_SM_Main[1]), 
            .\r_SM_Main_2__N_58[0] (r_SM_Main_2__N_58[0]), .n250(n250), 
            .GND_net(GND_net), .n776(n776));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(65[18:28])
    
endmodule
//
// Verilog Description of module \UART_TX(87) 
//

module \UART_TX(87)  (r_SM_Main, \r_TX_BYTE[6] , T_test_c, T_test_c_enable_10, 
            \r_TX_BYTE[0] , P_UART_TX_c, w_TX_DONE, n775, \r_SM_Main_2__N_58[0] , 
            GND_net, \r_TX_BYTE[7] , \r_TX_BYTE[5] , \r_TX_BYTE[3] , 
            \r_TX_BYTE[2] , \r_TX_BYTE[1] , n250);
    output [2:0]r_SM_Main;
    input \r_TX_BYTE[6] ;
    input T_test_c;
    input T_test_c_enable_10;
    input \r_TX_BYTE[0] ;
    output P_UART_TX_c;
    output w_TX_DONE;
    output n775;
    output \r_SM_Main_2__N_58[0] ;
    input GND_net;
    input \r_TX_BYTE[7] ;
    input \r_TX_BYTE[5] ;
    input \r_TX_BYTE[3] ;
    input \r_TX_BYTE[2] ;
    input \r_TX_BYTE[1] ;
    input n250;
    
    wire T_test_c /* synthesis SET_AS_NETWORK=T_test_c, is_clock=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/main.vhd(6[3:9])
    wire w_TX_DONE /* synthesis is_clock=1, SET_AS_NETWORK=\CompUART/w_TX_DONE */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(22[12:21])
    wire [7:0]r_TX_Data_7__N_29;
    wire [2:0]r_SM_Main_c;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(34[10:19])
    wire [2:0]r_SM_Main_2__N_61;
    
    wire o_TX_Done_N_70;
    wire [7:0]r_TX_Data;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(38[10:19])
    
    wire n453, T_test_c_enable_12, T_test_c_enable_4, n658;
    wire [2:0]r_Bit_Index;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(37[10:21])
    wire [2:0]r_Bit_Index_2__N_26;
    
    wire T_test_c_enable_19, o_TX_Serial_N_68, n251, n762, n703, n702, 
        n700, n699, n756, n701, n704, n7, n642;
    wire [6:0]r_Clk_Count;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(36[10:21])
    wire [6:0]n33;
    
    wire n643, n600, n445, n644;
    wire [6:0]n58;
    
    LUT4 i1_2_lut (.A(r_SM_Main[2]), .B(\r_TX_BYTE[6] ), .Z(r_TX_Data_7__N_29[4])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam i1_2_lut.init = 16'h4444;
    LUT4 i451_3_lut_4_lut_4_lut_4_lut (.A(r_SM_Main[1]), .B(r_SM_Main_c[0]), 
         .C(r_SM_Main[2]), .D(r_SM_Main_2__N_61[1]), .Z(o_TX_Done_N_70)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+!(C)))) */ ;
    defparam i451_3_lut_4_lut_4_lut_4_lut.init = 16'h1810;
    FD1P3IX r_TX_Data_i0 (.D(\r_TX_BYTE[0] ), .SP(T_test_c_enable_10), .CD(n453), 
            .CK(T_test_c), .Q(r_TX_Data[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_TX_Data_i0.GSR = "DISABLED";
    LUT4 i22_4_lut_4_lut_4_lut (.A(r_SM_Main[1]), .B(r_SM_Main_c[0]), .C(r_SM_Main_2__N_61[1]), 
         .D(r_SM_Main[2]), .Z(T_test_c_enable_12)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (B (D)+!B !(D))) */ ;
    defparam i22_4_lut_4_lut_4_lut.init = 16'hee31;
    LUT4 i2_3_lut_4_lut_4_lut_4_lut (.A(r_SM_Main[1]), .B(r_SM_Main_c[0]), 
         .C(r_SM_Main[2]), .D(r_SM_Main_2__N_61[1]), .Z(T_test_c_enable_4)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A ((C)+!B)) */ ;
    defparam i2_3_lut_4_lut_4_lut_4_lut.init = 16'hf9f1;
    LUT4 i2_3_lut (.A(r_SM_Main_c[0]), .B(r_SM_Main[2]), .C(r_SM_Main[1]), 
         .Z(n658)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i2_3_lut.init = 16'hdfdf;
    FD1P3AX r_Bit_Index_i0 (.D(r_Bit_Index_2__N_26[0]), .SP(T_test_c_enable_12), 
            .CK(T_test_c), .Q(r_Bit_Index[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_Bit_Index_i0.GSR = "DISABLED";
    FD1P3AX o_TX_Serial_43 (.D(o_TX_Serial_N_68), .SP(T_test_c_enable_19), 
            .CK(T_test_c), .Q(P_UART_TX_c)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam o_TX_Serial_43.GSR = "DISABLED";
    FD1S3IX r_SM_Main_i0 (.D(n251), .CK(T_test_c), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main_c[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_SM_Main_i0.GSR = "DISABLED";
    FD1P3AX r_TX_Done_44 (.D(o_TX_Done_N_70), .SP(T_test_c_enable_4), .CK(T_test_c), 
            .Q(w_TX_DONE)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_TX_Done_44.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_18 (.A(r_SM_Main[1]), .B(r_SM_Main_c[0]), .Z(n775)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_18.init = 16'heeee;
    LUT4 i392_2_lut_2_lut_2_lut_2_lut_3_lut (.A(r_SM_Main[1]), .B(r_SM_Main_c[0]), 
         .C(r_SM_Main[2]), .Z(n453)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i392_2_lut_2_lut_2_lut_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1_4_lut (.A(r_Bit_Index[2]), .B(n762), .C(r_Bit_Index[1]), .D(r_Bit_Index[0]), 
         .Z(r_Bit_Index_2__N_26[2])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam i1_4_lut.init = 16'h4888;
    LUT4 i631_3_lut (.A(r_TX_Data[3]), .B(r_TX_Data[7]), .C(r_Bit_Index[2]), 
         .Z(n703)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i631_3_lut.init = 16'hcaca;
    LUT4 i4_4_lut (.A(r_Bit_Index[2]), .B(r_Bit_Index[1]), .C(r_Bit_Index[0]), 
         .D(r_SM_Main_2__N_61[1]), .Z(\r_SM_Main_2__N_58[0] )) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i630_3_lut (.A(r_TX_Data[2]), .B(r_TX_Data[4]), .C(r_Bit_Index[2]), 
         .Z(n702)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i630_3_lut.init = 16'hcaca;
    LUT4 i628_3_lut (.A(r_TX_Data[4]), .B(r_TX_Data[5]), .C(r_Bit_Index[0]), 
         .Z(n700)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i628_3_lut.init = 16'hcaca;
    LUT4 i627_3_lut (.A(r_TX_Data[0]), .B(r_TX_Data[1]), .C(r_Bit_Index[0]), 
         .Z(n699)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i627_3_lut.init = 16'hcaca;
    FD1P3AX r_TX_Data_i4 (.D(r_TX_Data_7__N_29[4]), .SP(T_test_c_enable_10), 
            .CK(T_test_c), .Q(r_TX_Data[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_TX_Data_i4.GSR = "DISABLED";
    FD1S3IX r_SM_Main_i1 (.D(n756), .CK(T_test_c), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_SM_Main_i1.GSR = "DISABLED";
    L6MUX21 i11 (.D0(n701), .D1(n704), .SD(r_Bit_Index[1]), .Z(n7));
    LUT4 i1_2_lut_rep_15 (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .Z(n762)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam i1_2_lut_rep_15.init = 16'h2222;
    LUT4 i1_2_lut_3_lut (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .C(r_Bit_Index[0]), 
         .Z(r_Bit_Index_2__N_26[0])) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam i1_2_lut_3_lut.init = 16'h0202;
    LUT4 i1_3_lut_4_lut (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .C(r_Bit_Index[0]), 
         .D(r_Bit_Index[1]), .Z(r_Bit_Index_2__N_26[1])) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam i1_3_lut_4_lut.init = 16'h0220;
    PFUMX i629 (.BLUT(n699), .ALUT(n700), .C0(r_Bit_Index[2]), .Z(n701));
    FD1S3IX r_SM_Main_i2 (.D(r_SM_Main_2__N_61[1]), .CK(T_test_c), .CD(n658), 
            .Q(r_SM_Main[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_SM_Main_i2.GSR = "DISABLED";
    CCU2D r_Clk_Count_99_add_4_3 (.A0(r_Clk_Count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_Clk_Count[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n642), .COUT(n643), .S0(n33[1]), .S1(n33[2]));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(107[28:39])
    defparam r_Clk_Count_99_add_4_3.INIT0 = 16'hfaaa;
    defparam r_Clk_Count_99_add_4_3.INIT1 = 16'hfaaa;
    defparam r_Clk_Count_99_add_4_3.INJECT1_0 = "NO";
    defparam r_Clk_Count_99_add_4_3.INJECT1_1 = "NO";
    FD1P3IX r_TX_Data_i7 (.D(\r_TX_BYTE[7] ), .SP(T_test_c_enable_10), .CD(n453), 
            .CK(T_test_c), .Q(r_TX_Data[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_TX_Data_i7.GSR = "DISABLED";
    FD1P3IX r_TX_Data_i5 (.D(\r_TX_BYTE[5] ), .SP(T_test_c_enable_10), .CD(n453), 
            .CK(T_test_c), .Q(r_TX_Data[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_TX_Data_i5.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_1 (.A(r_Clk_Count[6]), .B(r_Clk_Count[4]), .C(r_Clk_Count[5]), 
         .D(n600), .Z(r_SM_Main_2__N_61[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam i1_4_lut_adj_1.init = 16'ha8a0;
    FD1P3IX r_TX_Data_i3 (.D(\r_TX_BYTE[3] ), .SP(T_test_c_enable_10), .CD(n453), 
            .CK(T_test_c), .Q(r_TX_Data[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_TX_Data_i3.GSR = "DISABLED";
    FD1P3IX r_TX_Data_i2 (.D(\r_TX_BYTE[2] ), .SP(T_test_c_enable_10), .CD(n453), 
            .CK(T_test_c), .Q(r_TX_Data[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_TX_Data_i2.GSR = "DISABLED";
    FD1P3IX r_TX_Data_i1 (.D(\r_TX_BYTE[1] ), .SP(T_test_c_enable_10), .CD(n453), 
            .CK(T_test_c), .Q(r_TX_Data[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_TX_Data_i1.GSR = "DISABLED";
    FD1P3AX r_Bit_Index_i2 (.D(r_Bit_Index_2__N_26[2]), .SP(T_test_c_enable_12), 
            .CK(T_test_c), .Q(r_Bit_Index[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_Bit_Index_i2.GSR = "DISABLED";
    FD1P3AX r_Bit_Index_i1 (.D(r_Bit_Index_2__N_26[1]), .SP(T_test_c_enable_12), 
            .CK(T_test_c), .Q(r_Bit_Index[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_Bit_Index_i1.GSR = "DISABLED";
    FD1P3IX r_Clk_Count_99__i1 (.D(n33[1]), .SP(T_test_c_enable_19), .CD(n445), 
            .CK(T_test_c), .Q(r_Clk_Count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(107[28:39])
    defparam r_Clk_Count_99__i1.GSR = "DISABLED";
    LUT4 i535_3_lut (.A(r_Clk_Count[3]), .B(r_Clk_Count[1]), .C(r_Clk_Count[2]), 
         .Z(n600)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i535_3_lut.init = 16'heaea;
    FD1P3IX r_Clk_Count_99__i4 (.D(n33[4]), .SP(T_test_c_enable_19), .CD(n445), 
            .CK(T_test_c), .Q(r_Clk_Count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(107[28:39])
    defparam r_Clk_Count_99__i4.GSR = "DISABLED";
    LUT4 i655_2_lut_3_lut (.A(r_SM_Main[1]), .B(r_SM_Main_c[0]), .C(r_SM_Main[2]), 
         .Z(T_test_c_enable_19)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i655_2_lut_3_lut.init = 16'hefef;
    CCU2D r_Clk_Count_99_add_4_7 (.A0(r_Clk_Count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_Clk_Count[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n644), .S0(n33[5]), .S1(n33[6]));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(107[28:39])
    defparam r_Clk_Count_99_add_4_7.INIT0 = 16'hfaaa;
    defparam r_Clk_Count_99_add_4_7.INIT1 = 16'hfaaa;
    defparam r_Clk_Count_99_add_4_7.INJECT1_0 = "NO";
    defparam r_Clk_Count_99_add_4_7.INJECT1_1 = "NO";
    PFUMX i632 (.BLUT(n702), .ALUT(n703), .C0(r_Bit_Index[0]), .Z(n704));
    LUT4 i14_3_lut_4_lut (.A(r_SM_Main[1]), .B(r_SM_Main_c[0]), .C(r_SM_Main_2__N_61[1]), 
         .D(r_SM_Main[2]), .Z(n445)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(D))) */ ;
    defparam i14_3_lut_4_lut.init = 16'heef1;
    LUT4 r_SM_Main_0__bdd_3_lut (.A(r_SM_Main_c[0]), .B(r_SM_Main[1]), .C(r_SM_Main_2__N_61[1]), 
         .Z(n756)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B))) */ ;
    defparam r_SM_Main_0__bdd_3_lut.init = 16'h6c6c;
    FD1P3IX r_Clk_Count_99__i5 (.D(n33[5]), .SP(T_test_c_enable_19), .CD(n445), 
            .CK(T_test_c), .Q(r_Clk_Count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(107[28:39])
    defparam r_Clk_Count_99__i5.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_2 (.A(r_SM_Main[2]), .B(r_SM_Main_c[0]), .C(n7), 
         .D(r_SM_Main[1]), .Z(o_TX_Serial_N_68)) /* synthesis lut_function=(!(A+!(B (D)+!B (C+!(D))))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam i1_4_lut_adj_2.init = 16'h5411;
    FD1P3IX r_Clk_Count_99__i6 (.D(n33[6]), .SP(T_test_c_enable_19), .CD(n445), 
            .CK(T_test_c), .Q(r_Clk_Count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(107[28:39])
    defparam r_Clk_Count_99__i6.GSR = "DISABLED";
    CCU2D r_Clk_Count_99_add_4_5 (.A0(r_Clk_Count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_Clk_Count[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n643), .COUT(n644), .S0(n33[3]), .S1(n33[4]));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(107[28:39])
    defparam r_Clk_Count_99_add_4_5.INIT0 = 16'hfaaa;
    defparam r_Clk_Count_99_add_4_5.INIT1 = 16'hfaaa;
    defparam r_Clk_Count_99_add_4_5.INJECT1_0 = "NO";
    defparam r_Clk_Count_99_add_4_5.INJECT1_1 = "NO";
    LUT4 i193_3_lut (.A(n250), .B(r_SM_Main_2__N_61[1]), .C(r_SM_Main_c[0]), 
         .Z(n251)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(48[7] 126[16])
    defparam i193_3_lut.init = 16'h3a3a;
    FD1P3IX r_Clk_Count_99__i2 (.D(n33[2]), .SP(T_test_c_enable_19), .CD(n445), 
            .CK(T_test_c), .Q(r_Clk_Count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(107[28:39])
    defparam r_Clk_Count_99__i2.GSR = "DISABLED";
    CCU2D r_Clk_Count_99_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n58[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n642), .S1(n33[0]));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(107[28:39])
    defparam r_Clk_Count_99_add_4_1.INIT0 = 16'hF000;
    defparam r_Clk_Count_99_add_4_1.INIT1 = 16'h0555;
    defparam r_Clk_Count_99_add_4_1.INJECT1_0 = "NO";
    defparam r_Clk_Count_99_add_4_1.INJECT1_1 = "NO";
    FD1P3IX r_Clk_Count_99__i3 (.D(n33[3]), .SP(T_test_c_enable_19), .CD(n445), 
            .CK(T_test_c), .Q(r_Clk_Count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(107[28:39])
    defparam r_Clk_Count_99__i3.GSR = "DISABLED";
    FD1P3IX r_Clk_Count_99__i0 (.D(n33[0]), .SP(T_test_c_enable_19), .CD(n445), 
            .CK(T_test_c), .Q(n58[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(107[28:39])
    defparam r_Clk_Count_99__i0.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module DataSelect
//

module DataSelect (\r_TX_BYTE[7] , T_test_c, \r_TX_BYTE[6] , \r_TX_BYTE[0] , 
            w_TX_DONE, n777, \r_TX_BYTE[5] , \r_TX_BYTE[3] , \r_TX_BYTE[2] , 
            \r_TX_BYTE[1] , n761, n775, \r_SM_Main[2] , T_test_c_enable_10, 
            \r_SM_Main[1] , \r_SM_Main_2__N_58[0] , n250, GND_net, n776);
    output \r_TX_BYTE[7] ;
    input T_test_c;
    output \r_TX_BYTE[6] ;
    output \r_TX_BYTE[0] ;
    input w_TX_DONE;
    input n777;
    output \r_TX_BYTE[5] ;
    output \r_TX_BYTE[3] ;
    output \r_TX_BYTE[2] ;
    output \r_TX_BYTE[1] ;
    output n761;
    input n775;
    input \r_SM_Main[2] ;
    output T_test_c_enable_10;
    input \r_SM_Main[1] ;
    input \r_SM_Main_2__N_58[0] ;
    output n250;
    input GND_net;
    input n776;
    
    wire T_test_c /* synthesis SET_AS_NETWORK=T_test_c, is_clock=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/main.vhd(6[3:9])
    wire w_TX_DONE /* synthesis is_clock=1, SET_AS_NETWORK=\CompUART/w_TX_DONE */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(22[12:21])
    wire s_counter_2__N_84 /* synthesis is_clock=1, SET_AS_NETWORK=\CompUART/CompDataSelect/s_counter_2__N_84 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(19[9:18])
    wire [2:0]s_counter_2__N_81;
    
    wire n595;
    wire [2:0]s_counter;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(19[9:18])
    
    wire n764, o_SendData_N_89, n760, s_counter_2__N_88, n437, n5;
    wire [7:0]o_Data_7__N_73;
    
    wire n438, n433, n434;
    
    FD1S3IX s_data_i7 (.D(n595), .CK(T_test_c), .CD(s_counter_2__N_81[0]), 
            .Q(\r_TX_BYTE[7] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=65, LSE_RLINE=65 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(43[3] 51[10])
    defparam s_data_i7.GSR = "DISABLED";
    FD1S3IX s_data_i6 (.D(n595), .CK(T_test_c), .CD(s_counter[0]), .Q(\r_TX_BYTE[6] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=65, LSE_RLINE=65 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(43[3] 51[10])
    defparam s_data_i6.GSR = "DISABLED";
    FD1S3IX s_data_i1 (.D(s_counter_2__N_81[1]), .CK(T_test_c), .CD(n764), 
            .Q(\r_TX_BYTE[0] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=65, LSE_RLINE=65 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(43[3] 51[10])
    defparam s_data_i1.GSR = "DISABLED";
    LUT4 i1_1_lut (.A(s_counter[0]), .Z(s_counter_2__N_81[0])) /* synthesis lut_function=(!(A)) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i1_1_lut.init = 16'h5555;
    FD1S3DX s_tx_done_35 (.D(n777), .CK(w_TX_DONE), .CD(n760), .Q(o_SendData_N_89)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=65, LSE_RLINE=65 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(27[3] 38[10])
    defparam s_tx_done_35.GSR = "DISABLED";
    FD1S3DX s_counter_i0 (.D(s_counter_2__N_81[0]), .CK(w_TX_DONE), .CD(s_counter_2__N_88), 
            .Q(s_counter[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=21, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=65, LSE_RLINE=65 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(27[3] 38[10])
    defparam s_counter_i0.GSR = "DISABLED";
    FD1S1B s_counter_i2_set (.D(s_counter_2__N_81[2]), .CK(w_TX_DONE), .PD(s_counter_2__N_84), 
           .Q(n437)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=21, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=65, LSE_RLINE=65 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(27[3] 38[10])
    defparam s_counter_i2_set.GSR = "DISABLED";
    FD1S3IX s_data_i5 (.D(n5), .CK(T_test_c), .CD(n764), .Q(\r_TX_BYTE[5] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=65, LSE_RLINE=65 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(43[3] 51[10])
    defparam s_data_i5.GSR = "DISABLED";
    FD1S3AX s_data_i4 (.D(o_Data_7__N_73[3]), .CK(T_test_c), .Q(\r_TX_BYTE[3] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=65, LSE_RLINE=65 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(43[3] 51[10])
    defparam s_data_i4.GSR = "DISABLED";
    FD1S3IX s_data_i3 (.D(s_counter_2__N_81[0]), .CK(T_test_c), .CD(n764), 
            .Q(\r_TX_BYTE[2] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=65, LSE_RLINE=65 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(43[3] 51[10])
    defparam s_data_i3.GSR = "DISABLED";
    FD1S3IX s_data_i2 (.D(s_counter[0]), .CK(T_test_c), .CD(n764), .Q(\r_TX_BYTE[1] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=65, LSE_RLINE=65 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(43[3] 51[10])
    defparam s_data_i2.GSR = "DISABLED";
    LUT4 i87_2_lut (.A(s_counter[0]), .B(s_counter[1]), .Z(s_counter_2__N_81[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i87_2_lut.init = 16'h6666;
    LUT4 i653_3_lut_rep_13 (.A(s_counter[1]), .B(n764), .C(s_counter[0]), 
         .Z(n760)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(31[9:26])
    defparam i653_3_lut_rep_13.init = 16'h0404;
    FD1S3DX s_counter_i1 (.D(s_counter_2__N_81[1]), .CK(w_TX_DONE), .CD(s_counter_2__N_88), 
            .Q(s_counter[1])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=21, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=65, LSE_RLINE=65 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(27[3] 38[10])
    defparam s_counter_i1.GSR = "DISABLED";
    LUT4 i649_2_lut_4_lut (.A(s_counter[1]), .B(n764), .C(s_counter[0]), 
         .D(n761), .Z(s_counter_2__N_84)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(31[9:26])
    defparam i649_2_lut_4_lut.init = 16'h0400;
    LUT4 i5_1_lut (.A(s_counter[1]), .Z(n5)) /* synthesis lut_function=(!(A)) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i5_1_lut.init = 16'h5555;
    LUT4 s_counter_2__N_85_I_0_2_lut_2_lut_4_lut (.A(s_counter[1]), .B(n764), 
         .C(s_counter[0]), .D(n761), .Z(s_counter_2__N_88)) /* synthesis lut_function=(!(A (D)+!A (B (C (D))+!B (D)))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(31[9:26])
    defparam s_counter_2__N_85_I_0_2_lut_2_lut_4_lut.init = 16'h04ff;
    LUT4 i89_1_lut_3_lut (.A(n438), .B(n437), .C(n433), .Z(o_Data_7__N_73[3])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(27[3] 38[10])
    defparam i89_1_lut_3_lut.init = 16'h3535;
    LUT4 i1_4_lut_rep_10_3_lut_4_lut (.A(o_SendData_N_89), .B(n761), .C(n775), 
         .D(\r_SM_Main[2] ), .Z(T_test_c_enable_10)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D))+!B (C (D)+!C !(D)))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(27[3] 38[10])
    defparam i1_4_lut_rep_10_3_lut_4_lut.init = 16'hf00b;
    LUT4 i192_3_lut_4_lut (.A(o_SendData_N_89), .B(n761), .C(\r_SM_Main[1] ), 
         .D(\r_SM_Main_2__N_58[0] ), .Z(n250)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(27[3] 38[10])
    defparam i192_3_lut_4_lut.init = 16'hfb0b;
    LUT4 i660_2_lut_4_lut (.A(n438), .B(n437), .C(n433), .D(s_counter[1]), 
         .Z(n595)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+(D))+!B (D)))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(27[3] 38[10])
    defparam i660_2_lut_4_lut.init = 16'h0035;
    LUT4 i647_2_lut_rep_14 (.A(n434), .B(n433), .Z(n761)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(27[3] 38[10])
    defparam i647_2_lut_rep_14.init = 16'h7777;
    FD1S1A i369 (.D(n777), .CK(s_counter_2__N_84), .Q(n433));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(25[2] 39[14])
    defparam i369.GSR = "ENABLED";
    FD1S1B s_counter_2__N_84_I_0_set (.D(n776), .CK(GND_net), .PD(s_counter_2__N_84), 
           .Q(n434)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=21, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=65, LSE_RLINE=65 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(25[2] 39[14])
    defparam s_counter_2__N_84_I_0_set.GSR = "DISABLED";
    LUT4 i375_3_lut_rep_17 (.A(n438), .B(n437), .C(n433), .Z(n764)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(27[3] 38[10])
    defparam i375_3_lut_rep_17.init = 16'hcaca;
    FD1S1A s_counter_i2_reset (.D(s_counter_2__N_81[2]), .CK(w_TX_DONE), 
           .Q(n438)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=21, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=65, LSE_RLINE=65 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(27[3] 38[10])
    defparam s_counter_i2_reset.GSR = "ENABLED";
    LUT4 i15_3_lut (.A(s_counter[0]), .B(n764), .C(s_counter[1]), .Z(s_counter_2__N_81[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i15_3_lut.init = 16'h6c6c;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module Clock
//

module Clock (GND_net, VCC_net, T_test_c);
    input GND_net;
    input VCC_net;
    output T_test_c;
    
    wire S_InternalClock /* synthesis is_clock=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/clock.vhd(19[9:24])
    wire T_test_c /* synthesis SET_AS_NETWORK=T_test_c, is_clock=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/main.vhd(6[3:9])
    
    OSCH Clock (.STDBY(GND_net), .OSC(S_InternalClock)) /* synthesis NOM_FREQ="133.00", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=18, LSE_LLINE=40, LSE_RLINE=40 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/clock.vhd(48[9:13])
    defparam Clock.NOM_FREQ = "2.08";
    CLKPLL CompPll (.S_InternalClock(S_InternalClock), .VCC_net(VCC_net), 
           .T_test_c(T_test_c), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/clock.vhd(56[11:17])
    
endmodule
//
// Verilog Description of module OSCH
// module not written out since it is a black-box. 
//

//
// Verilog Description of module CLKPLL
//

module CLKPLL (S_InternalClock, VCC_net, T_test_c, GND_net) /* synthesis NGD_DRC_MASK=1 */ ;
    input S_InternalClock;
    input VCC_net;
    output T_test_c;
    input GND_net;
    
    wire S_InternalClock /* synthesis is_clock=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/clock.vhd(19[9:24])
    wire T_test_c /* synthesis SET_AS_NETWORK=T_test_c, is_clock=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/main.vhd(6[3:9])
    
    EHXPLLJ PLLInst_0 (.CLKI(S_InternalClock), .CLKFB(T_test_c), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(VCC_net), .ENCLKOS(VCC_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(T_test_c)) /* synthesis FREQUENCY_PIN_CLKOS="125.326923", FREQUENCY_PIN_CLKOP="10.230769", FREQUENCY_PIN_CLKI="133.000000", ICP_CURRENT="9", LPF_RESISTOR="72", syn_instantiated=1, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=17, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/clock.vhd(56[11:17])
    defparam PLLInst_0.CLKI_DIV = 13;
    defparam PLLInst_0.CLKFB_DIV = 1;
    defparam PLLInst_0.CLKOP_DIV = 49;
    defparam PLLInst_0.CLKOS_DIV = 4;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 48;
    defparam PLLInst_0.CLKOS_CPHASE = 3;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.FRACN_ENABLE = "DISABLED";
    defparam PLLInst_0.FRACN_DIV = 0;
    defparam PLLInst_0.CLKOP_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.PLL_USE_WB = "DISABLED";
    defparam PLLInst_0.PREDIVIDER_MUXA1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXB1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXC1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXD1 = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA2 = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB2 = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC2 = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD2 = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.MRST_ENA = "DISABLED";
    defparam PLLInst_0.DCRST_ENA = "DISABLED";
    defparam PLLInst_0.DDRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
