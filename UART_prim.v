// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.3.144
// Netlist written on Tue Mar 05 12:46:56 2019
//
// Verilog Description of module UART
//

module UART (P_UARTDATA, UARTREADY, P_CLK, P_Data, P_Reset, P_STDBY);   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(4[8:12])
    output P_UARTDATA;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(6[3:13])
    output UARTREADY;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(7[3:12])
    input P_CLK;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(8[3:8])
    input [15:0]P_Data;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(9[3:9])
    input P_Reset;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(10[3:10])
    input P_STDBY;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(11[3:10])
    
    wire S_UARTClock2 /* synthesis SET_AS_NETWORK=S_UARTClock2, is_clock=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(18[9:21])
    wire w_TX_DONE /* synthesis is_clock=1, SET_AS_NETWORK=w_TX_DONE */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(23[12:21])
    
    wire GND_net, P_UARTDATA_c, UARTREADY_c, P_CLK_c, P_Data_c_15, 
        P_Data_c_14, P_Data_c_13, P_Data_c_12, P_Data_c_11, P_Data_c_10, 
        P_Data_c_9, P_Data_c_8, P_Data_c_7, P_Data_c_6, P_Data_c_5, 
        P_Data_c_4, P_Data_c_3, P_Data_c_2, P_Data_c_1, P_Data_c_0, 
        P_Reset_c, P_STDBY_c;
    wire [7:0]r_TX_BYTE;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(21[12:21])
    
    wire VCC_net;
    wire [2:0]r_SM_Main_2__N_49;
    
    wire i_reset_N_72, n636, n635;
    
    VHI i562 (.Z(VCC_net));
    OB UARTREADY_pad (.I(UARTREADY_c), .O(UARTREADY));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(7[3:12])
    OB P_UARTDATA_pad (.I(P_UARTDATA_c), .O(P_UARTDATA));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(6[3:13])
    IB P_CLK_pad (.I(P_CLK), .O(P_CLK_c));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(8[3:8])
    IB P_Data_pad_15 (.I(P_Data[15]), .O(P_Data_c_15));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(9[3:9])
    IB P_Data_pad_14 (.I(P_Data[14]), .O(P_Data_c_14));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(9[3:9])
    IB P_Data_pad_13 (.I(P_Data[13]), .O(P_Data_c_13));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(9[3:9])
    IB P_Data_pad_12 (.I(P_Data[12]), .O(P_Data_c_12));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(9[3:9])
    IB P_Data_pad_11 (.I(P_Data[11]), .O(P_Data_c_11));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(9[3:9])
    IB P_Data_pad_10 (.I(P_Data[10]), .O(P_Data_c_10));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(9[3:9])
    IB P_Data_pad_9 (.I(P_Data[9]), .O(P_Data_c_9));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(9[3:9])
    IB P_Data_pad_8 (.I(P_Data[8]), .O(P_Data_c_8));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(9[3:9])
    IB P_Data_pad_7 (.I(P_Data[7]), .O(P_Data_c_7));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(9[3:9])
    IB P_Data_pad_6 (.I(P_Data[6]), .O(P_Data_c_6));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(9[3:9])
    IB P_Data_pad_5 (.I(P_Data[5]), .O(P_Data_c_5));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(9[3:9])
    IB P_Data_pad_4 (.I(P_Data[4]), .O(P_Data_c_4));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(9[3:9])
    IB P_Data_pad_3 (.I(P_Data[3]), .O(P_Data_c_3));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(9[3:9])
    IB P_Data_pad_2 (.I(P_Data[2]), .O(P_Data_c_2));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(9[3:9])
    IB P_Data_pad_1 (.I(P_Data[1]), .O(P_Data_c_1));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(9[3:9])
    IB P_Data_pad_0 (.I(P_Data[0]), .O(P_Data_c_0));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(9[3:9])
    IB P_Reset_pad (.I(P_Reset), .O(P_Reset_c));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(10[3:10])
    IB P_STDBY_pad (.I(P_STDBY), .O(P_STDBY_c));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(11[3:10])
    LUT4 i384_2_lut (.A(P_CLK_c), .B(P_STDBY_c), .Z(S_UARTClock2)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(79[3] 83[10])
    defparam i384_2_lut.init = 16'h2222;
    \UART_TX(87)  CompRS232 (.w_TX_DONE(w_TX_DONE), .S_UARTClock2(S_UARTClock2), 
            .P_UARTDATA_c(P_UARTDATA_c), .r_TX_BYTE({r_TX_BYTE}), .\r_SM_Main_2__N_49[0] (r_SM_Main_2__N_49[0]), 
            .GND_net(GND_net));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(57[13:20])
    GSR GSR_INST (.GSR(i_reset_N_72));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    LUT4 m1_lut (.Z(n636)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 m0_lut (.Z(n635)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    DataSelect CompDataSelect (.r_TX_BYTE({r_TX_BYTE}), .S_UARTClock2(S_UARTClock2), 
            .P_Data_c_3(P_Data_c_3), .P_Data_c_11(P_Data_c_11), .w_TX_DONE(w_TX_DONE), 
            .n636(n636), .P_Data_c_0(P_Data_c_0), .P_Data_c_8(P_Data_c_8), 
            .UARTREADY_c(UARTREADY_c), .P_Data_c_4(P_Data_c_4), .P_Data_c_12(P_Data_c_12), 
            .P_Data_c_5(P_Data_c_5), .P_Data_c_13(P_Data_c_13), .P_Reset_c(P_Reset_c), 
            .P_Data_c_2(P_Data_c_2), .P_Data_c_10(P_Data_c_10), .P_Data_c_6(P_Data_c_6), 
            .P_Data_c_14(P_Data_c_14), .P_Data_c_7(P_Data_c_7), .P_Data_c_15(P_Data_c_15), 
            .\r_SM_Main_2__N_49[0] (r_SM_Main_2__N_49[0]), .i_reset_N_72(i_reset_N_72), 
            .P_Data_c_1(P_Data_c_1), .P_Data_c_9(P_Data_c_9), .GND_net(GND_net), 
            .n635(n635));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(66[18:28])
    
endmodule
//
// Verilog Description of module \UART_TX(87) 
//

module \UART_TX(87)  (w_TX_DONE, S_UARTClock2, P_UARTDATA_c, r_TX_BYTE, 
            \r_SM_Main_2__N_49[0] , GND_net);
    output w_TX_DONE;
    input S_UARTClock2;
    output P_UARTDATA_c;
    input [7:0]r_TX_BYTE;
    input \r_SM_Main_2__N_49[0] ;
    input GND_net;
    
    wire w_TX_DONE /* synthesis is_clock=1, SET_AS_NETWORK=w_TX_DONE */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(23[12:21])
    wire S_UARTClock2 /* synthesis SET_AS_NETWORK=S_UARTClock2, is_clock=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(18[9:21])
    wire [2:0]r_SM_Main;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(34[10:19])
    
    wire n582, S_UARTClock2_enable_1, o_TX_Done_N_55;
    wire [2:0]r_Bit_Index;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(37[10:21])
    
    wire S_UARTClock2_enable_13;
    wire [2:0]r_Bit_Index_2__N_11;
    wire [7:0]r_TX_Data;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(38[10:19])
    
    wire n587, S_UARTClock2_enable_20, o_TX_Serial_N_53, n238, n586;
    wire [2:0]r_SM_Main_2__N_46;
    
    wire n411, n628, n626, S_UARTClock2_enable_17, n404, n589, n3, 
        o_TX_Serial_N_54, n590, n591, n588, n237;
    wire [6:0]r_Clk_Count;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(36[10:21])
    wire [6:0]n33;
    
    wire n479;
    wire [6:0]n58;
    
    wire n524, n523, n522;
    
    LUT4 i547_2_lut_3_lut (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .C(r_SM_Main[0]), 
         .Z(n582)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(48[7] 126[16])
    defparam i547_2_lut_3_lut.init = 16'hdfdf;
    FD1P3AX r_TX_Done_44 (.D(o_TX_Done_N_55), .SP(S_UARTClock2_enable_1), 
            .CK(S_UARTClock2), .Q(w_TX_DONE)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=57, LSE_RLINE=57 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_TX_Done_44.GSR = "DISABLED";
    FD1P3AX r_Bit_Index_i0 (.D(r_Bit_Index_2__N_11[0]), .SP(S_UARTClock2_enable_13), 
            .CK(S_UARTClock2), .Q(r_Bit_Index[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=57, LSE_RLINE=57 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_Bit_Index_i0.GSR = "DISABLED";
    LUT4 i525_3_lut (.A(r_TX_Data[2]), .B(r_TX_Data[3]), .C(r_Bit_Index[0]), 
         .Z(n587)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i525_3_lut.init = 16'hcaca;
    FD1P3AX o_TX_Serial_43 (.D(o_TX_Serial_N_53), .SP(S_UARTClock2_enable_20), 
            .CK(S_UARTClock2), .Q(P_UARTDATA_c)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=57, LSE_RLINE=57 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam o_TX_Serial_43.GSR = "DISABLED";
    FD1S3IX r_SM_Main_i0 (.D(n238), .CK(S_UARTClock2), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=57, LSE_RLINE=57 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_SM_Main_i0.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .C(r_Bit_Index[1]), 
         .D(r_Bit_Index[0]), .Z(r_Bit_Index_2__N_11[1])) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(48[7] 126[16])
    defparam i1_3_lut_4_lut.init = 16'h0220;
    LUT4 i524_3_lut (.A(r_TX_Data[0]), .B(r_TX_Data[1]), .C(r_Bit_Index[0]), 
         .Z(n586)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i524_3_lut.init = 16'hcaca;
    LUT4 i12_3_lut_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main[1]), .C(r_SM_Main[2]), 
         .D(r_SM_Main_2__N_46[1]), .Z(n411)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(48[7] 126[16])
    defparam i12_3_lut_4_lut.init = 16'hefe1;
    LUT4 i109_2_lut_rep_12 (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), .Z(n628)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(92[30:41])
    defparam i109_2_lut_rep_12.init = 16'h8888;
    FD1S3IX r_SM_Main_i2 (.D(r_SM_Main_2__N_46[1]), .CK(S_UARTClock2), .CD(n582), 
            .Q(r_SM_Main[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=57, LSE_RLINE=57 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_SM_Main_i2.GSR = "DISABLED";
    LUT4 i2_2_lut_rep_10_3_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), 
         .C(r_Bit_Index[2]), .Z(n626)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(92[30:41])
    defparam i2_2_lut_rep_10_3_lut.init = 16'h8080;
    FD1P3IX r_TX_Data_i7 (.D(r_TX_BYTE[7]), .SP(S_UARTClock2_enable_17), 
            .CD(n404), .CK(S_UARTClock2), .Q(r_TX_Data[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=57, LSE_RLINE=57 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_TX_Data_i7.GSR = "DISABLED";
    LUT4 i350_2_lut_2_lut_3_lut (.A(r_SM_Main[0]), .B(r_SM_Main[1]), .C(r_SM_Main[2]), 
         .Z(n404)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(48[7] 126[16])
    defparam i350_2_lut_2_lut_3_lut.init = 16'he0e0;
    FD1P3IX r_TX_Data_i6 (.D(r_TX_BYTE[6]), .SP(S_UARTClock2_enable_17), 
            .CD(n404), .CK(S_UARTClock2), .Q(r_TX_Data[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=57, LSE_RLINE=57 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_TX_Data_i6.GSR = "DISABLED";
    FD1P3IX r_TX_Data_i5 (.D(r_TX_BYTE[5]), .SP(S_UARTClock2_enable_17), 
            .CD(n404), .CK(S_UARTClock2), .Q(r_TX_Data[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=57, LSE_RLINE=57 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_TX_Data_i5.GSR = "DISABLED";
    FD1P3IX r_TX_Data_i4 (.D(r_TX_BYTE[4]), .SP(S_UARTClock2_enable_17), 
            .CD(n404), .CK(S_UARTClock2), .Q(r_TX_Data[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=57, LSE_RLINE=57 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_TX_Data_i4.GSR = "DISABLED";
    LUT4 i22_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main[1]), .C(r_SM_Main[2]), 
         .D(r_SM_Main_2__N_46[1]), .Z(S_UARTClock2_enable_13)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B !(C))) */ ;
    defparam i22_4_lut.init = 16'he5e1;
    LUT4 i527_3_lut (.A(r_TX_Data[6]), .B(r_TX_Data[7]), .C(r_Bit_Index[0]), 
         .Z(n589)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i527_3_lut.init = 16'hcaca;
    LUT4 i12_3_lut_rep_8_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main[1]), .C(\r_SM_Main_2__N_49[0] ), 
         .D(r_SM_Main[2]), .Z(S_UARTClock2_enable_17)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !((D)+!C))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(48[7] 126[16])
    defparam i12_3_lut_rep_8_4_lut.init = 16'hee10;
    LUT4 i1_2_lut_3_lut (.A(r_SM_Main[0]), .B(r_SM_Main[1]), .C(r_SM_Main[2]), 
         .Z(S_UARTClock2_enable_20)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(48[7] 126[16])
    defparam i1_2_lut_3_lut.init = 16'hefef;
    FD1S3IX r_SM_Main_i1 (.D(n3), .CK(S_UARTClock2), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=57, LSE_RLINE=57 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_SM_Main_i1.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_1 (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .C(r_Bit_Index[0]), 
         .Z(r_Bit_Index_2__N_11[0])) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(48[7] 126[16])
    defparam i1_2_lut_3_lut_adj_1.init = 16'h0202;
    FD1P3IX r_TX_Data_i3 (.D(r_TX_BYTE[3]), .SP(S_UARTClock2_enable_17), 
            .CD(n404), .CK(S_UARTClock2), .Q(r_TX_Data[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=57, LSE_RLINE=57 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_TX_Data_i3.GSR = "DISABLED";
    LUT4 i406_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .C(o_TX_Serial_N_54), 
         .D(r_SM_Main[1]), .Z(o_TX_Serial_N_53)) /* synthesis lut_function=(!(A (B+!(D))+!A (B+!(C+!(D))))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(48[7] 126[16])
    defparam i406_4_lut.init = 16'h3211;
    LUT4 r_SM_Main_2__N_46_1__bdd_4_lut (.A(r_SM_Main_2__N_46[1]), .B(r_SM_Main[2]), 
         .C(r_SM_Main[1]), .D(r_SM_Main[0]), .Z(o_TX_Done_N_55)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A ((C+(D))+!B))) */ ;
    defparam r_SM_Main_2__N_46_1__bdd_4_lut.init = 16'h200c;
    L6MUX21 i530 (.D0(n590), .D1(n591), .SD(r_Bit_Index[2]), .Z(o_TX_Serial_N_54));
    PFUMX i528 (.BLUT(n586), .ALUT(n587), .C0(r_Bit_Index[1]), .Z(n590));
    LUT4 i535_4_lut (.A(r_SM_Main[2]), .B(r_SM_Main[1]), .C(r_SM_Main_2__N_46[1]), 
         .D(r_SM_Main[0]), .Z(S_UARTClock2_enable_1)) /* synthesis lut_function=(A+(B (C (D))+!B !(D))) */ ;
    defparam i535_4_lut.init = 16'heabb;
    PFUMX i529 (.BLUT(n588), .ALUT(n589), .C0(r_Bit_Index[1]), .Z(n591));
    FD1P3IX r_TX_Data_i2 (.D(r_TX_BYTE[2]), .SP(S_UARTClock2_enable_17), 
            .CD(n404), .CK(S_UARTClock2), .Q(r_TX_Data[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=57, LSE_RLINE=57 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_TX_Data_i2.GSR = "DISABLED";
    LUT4 i1_4_lut_3_lut_4_lut (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .C(n628), 
         .D(r_Bit_Index[2]), .Z(r_Bit_Index_2__N_11[2])) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(48[7] 126[16])
    defparam i1_4_lut_3_lut_4_lut.init = 16'h0220;
    FD1P3IX r_TX_Data_i1 (.D(r_TX_BYTE[1]), .SP(S_UARTClock2_enable_17), 
            .CD(n404), .CK(S_UARTClock2), .Q(r_TX_Data[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=57, LSE_RLINE=57 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_TX_Data_i1.GSR = "DISABLED";
    LUT4 i178_4_lut (.A(\r_SM_Main_2__N_49[0] ), .B(n626), .C(r_SM_Main[1]), 
         .D(r_SM_Main_2__N_46[1]), .Z(n237)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(48[7] 126[16])
    defparam i178_4_lut.init = 16'hca0a;
    LUT4 i523_2_lut_3_lut (.A(r_SM_Main_2__N_46[1]), .B(r_SM_Main[0]), .C(r_SM_Main[1]), 
         .Z(n3)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i523_2_lut_3_lut.init = 16'h7878;
    FD1P3IX r_Clk_Count_94__i3 (.D(n33[3]), .SP(S_UARTClock2_enable_20), 
            .CD(n411), .CK(S_UARTClock2), .Q(r_Clk_Count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(107[28:39])
    defparam r_Clk_Count_94__i3.GSR = "DISABLED";
    FD1P3AX r_Bit_Index_i2 (.D(r_Bit_Index_2__N_11[2]), .SP(S_UARTClock2_enable_13), 
            .CK(S_UARTClock2), .Q(r_Bit_Index[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=57, LSE_RLINE=57 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_Bit_Index_i2.GSR = "DISABLED";
    FD1P3AX r_Bit_Index_i1 (.D(r_Bit_Index_2__N_11[1]), .SP(S_UARTClock2_enable_13), 
            .CK(S_UARTClock2), .Q(r_Bit_Index[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=57, LSE_RLINE=57 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_Bit_Index_i1.GSR = "DISABLED";
    LUT4 i526_3_lut (.A(r_TX_Data[4]), .B(r_TX_Data[5]), .C(r_Bit_Index[0]), 
         .Z(n588)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i526_3_lut.init = 16'hcaca;
    FD1P3IX r_Clk_Count_94__i2 (.D(n33[2]), .SP(S_UARTClock2_enable_20), 
            .CD(n411), .CK(S_UARTClock2), .Q(r_Clk_Count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(107[28:39])
    defparam r_Clk_Count_94__i2.GSR = "DISABLED";
    LUT4 i443_4_lut (.A(n479), .B(r_Clk_Count[6]), .C(r_Clk_Count[5]), 
         .D(r_Clk_Count[4]), .Z(r_SM_Main_2__N_46[1])) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i443_4_lut.init = 16'hc8c0;
    FD1P3IX r_Clk_Count_94__i0 (.D(n33[0]), .SP(S_UARTClock2_enable_20), 
            .CD(n411), .CK(S_UARTClock2), .Q(n58[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(107[28:39])
    defparam r_Clk_Count_94__i0.GSR = "DISABLED";
    LUT4 i420_3_lut (.A(r_Clk_Count[1]), .B(r_Clk_Count[3]), .C(r_Clk_Count[2]), 
         .Z(n479)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i420_3_lut.init = 16'hecec;
    CCU2D r_Clk_Count_94_add_4_7 (.A0(r_Clk_Count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_Clk_Count[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n524), .S0(n33[5]), .S1(n33[6]));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(107[28:39])
    defparam r_Clk_Count_94_add_4_7.INIT0 = 16'hfaaa;
    defparam r_Clk_Count_94_add_4_7.INIT1 = 16'hfaaa;
    defparam r_Clk_Count_94_add_4_7.INJECT1_0 = "NO";
    defparam r_Clk_Count_94_add_4_7.INJECT1_1 = "NO";
    CCU2D r_Clk_Count_94_add_4_5 (.A0(r_Clk_Count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_Clk_Count[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n523), .COUT(n524), .S0(n33[3]), .S1(n33[4]));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(107[28:39])
    defparam r_Clk_Count_94_add_4_5.INIT0 = 16'hfaaa;
    defparam r_Clk_Count_94_add_4_5.INIT1 = 16'hfaaa;
    defparam r_Clk_Count_94_add_4_5.INJECT1_0 = "NO";
    defparam r_Clk_Count_94_add_4_5.INJECT1_1 = "NO";
    CCU2D r_Clk_Count_94_add_4_3 (.A0(r_Clk_Count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_Clk_Count[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n522), .COUT(n523), .S0(n33[1]), .S1(n33[2]));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(107[28:39])
    defparam r_Clk_Count_94_add_4_3.INIT0 = 16'hfaaa;
    defparam r_Clk_Count_94_add_4_3.INIT1 = 16'hfaaa;
    defparam r_Clk_Count_94_add_4_3.INJECT1_0 = "NO";
    defparam r_Clk_Count_94_add_4_3.INJECT1_1 = "NO";
    FD1P3IX r_Clk_Count_94__i1 (.D(n33[1]), .SP(S_UARTClock2_enable_20), 
            .CD(n411), .CK(S_UARTClock2), .Q(r_Clk_Count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(107[28:39])
    defparam r_Clk_Count_94__i1.GSR = "DISABLED";
    FD1P3IX r_TX_Data_i0 (.D(r_TX_BYTE[0]), .SP(S_UARTClock2_enable_17), 
            .CD(n404), .CK(S_UARTClock2), .Q(r_TX_Data[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=57, LSE_RLINE=57 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(46[5] 127[12])
    defparam r_TX_Data_i0.GSR = "DISABLED";
    CCU2D r_Clk_Count_94_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n58[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n522), .S1(n33[0]));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(107[28:39])
    defparam r_Clk_Count_94_add_4_1.INIT0 = 16'hF000;
    defparam r_Clk_Count_94_add_4_1.INIT1 = 16'h0555;
    defparam r_Clk_Count_94_add_4_1.INJECT1_0 = "NO";
    defparam r_Clk_Count_94_add_4_1.INJECT1_1 = "NO";
    FD1P3IX r_Clk_Count_94__i6 (.D(n33[6]), .SP(S_UARTClock2_enable_20), 
            .CD(n411), .CK(S_UARTClock2), .Q(r_Clk_Count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(107[28:39])
    defparam r_Clk_Count_94__i6.GSR = "DISABLED";
    LUT4 i179_3_lut (.A(n237), .B(r_SM_Main_2__N_46[1]), .C(r_SM_Main[0]), 
         .Z(n238)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(48[7] 126[16])
    defparam i179_3_lut.init = 16'h3a3a;
    FD1P3IX r_Clk_Count_94__i5 (.D(n33[5]), .SP(S_UARTClock2_enable_20), 
            .CD(n411), .CK(S_UARTClock2), .Q(r_Clk_Count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(107[28:39])
    defparam r_Clk_Count_94__i5.GSR = "DISABLED";
    FD1P3IX r_Clk_Count_94__i4 (.D(n33[4]), .SP(S_UARTClock2_enable_20), 
            .CD(n411), .CK(S_UARTClock2), .Q(r_Clk_Count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart_tx.vhd(107[28:39])
    defparam r_Clk_Count_94__i4.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module DataSelect
//

module DataSelect (r_TX_BYTE, S_UARTClock2, P_Data_c_3, P_Data_c_11, 
            w_TX_DONE, n636, P_Data_c_0, P_Data_c_8, UARTREADY_c, 
            P_Data_c_4, P_Data_c_12, P_Data_c_5, P_Data_c_13, P_Reset_c, 
            P_Data_c_2, P_Data_c_10, P_Data_c_6, P_Data_c_14, P_Data_c_7, 
            P_Data_c_15, \r_SM_Main_2__N_49[0] , i_reset_N_72, P_Data_c_1, 
            P_Data_c_9, GND_net, n635);
    output [7:0]r_TX_BYTE;
    input S_UARTClock2;
    input P_Data_c_3;
    input P_Data_c_11;
    input w_TX_DONE;
    input n636;
    input P_Data_c_0;
    input P_Data_c_8;
    output UARTREADY_c;
    input P_Data_c_4;
    input P_Data_c_12;
    input P_Data_c_5;
    input P_Data_c_13;
    input P_Reset_c;
    input P_Data_c_2;
    input P_Data_c_10;
    input P_Data_c_6;
    input P_Data_c_14;
    input P_Data_c_7;
    input P_Data_c_15;
    output \r_SM_Main_2__N_49[0] ;
    output i_reset_N_72;
    input P_Data_c_1;
    input P_Data_c_9;
    input GND_net;
    input n635;
    
    wire S_UARTClock2 /* synthesis SET_AS_NETWORK=S_UARTClock2, is_clock=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(18[9:21])
    wire w_TX_DONE /* synthesis is_clock=1, SET_AS_NETWORK=w_TX_DONE */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(23[12:21])
    wire s_counter_2__N_69 /* synthesis is_clock=1, SET_AS_NETWORK=\CompDataSelect/s_counter_2__N_69 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(19[9:18])
    
    wire n627, n3;
    wire [2:0]s_counter;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(19[9:18])
    
    wire n3_adj_75, o_SendData_N_74, n625, s_counter_2__N_73;
    wire [2:0]s_counter_2__N_66;
    
    wire n394, n395, n390, n255, n391, n1, n1_adj_76, n617, 
        n1_adj_77, n3_adj_78, n1_adj_79;
    
    FD1S3IX s_data_i0 (.D(n3), .CK(S_UARTClock2), .CD(n627), .Q(r_TX_BYTE[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=66, LSE_RLINE=66 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(43[3] 51[10])
    defparam s_data_i0.GSR = "DISABLED";
    LUT4 i408_4_lut (.A(P_Data_c_3), .B(s_counter[1]), .C(P_Data_c_11), 
         .D(s_counter[0]), .Z(n3_adj_75)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(44[4] 50[13])
    defparam i408_4_lut.init = 16'hfcee;
    FD1S3DX s_tx_done_35 (.D(n636), .CK(w_TX_DONE), .CD(n625), .Q(o_SendData_N_74)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=66, LSE_RLINE=66 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(27[3] 38[10])
    defparam s_tx_done_35.GSR = "DISABLED";
    FD1S3DX s_counter_i0 (.D(s_counter_2__N_66[0]), .CK(w_TX_DONE), .CD(s_counter_2__N_73), 
            .Q(s_counter[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=66, LSE_RLINE=66 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(27[3] 38[10])
    defparam s_counter_i0.GSR = "DISABLED";
    FD1S1B s_counter_i2_set (.D(s_counter_2__N_66[2]), .CK(w_TX_DONE), .PD(s_counter_2__N_69), 
           .Q(n394)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=66, LSE_RLINE=66 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(27[3] 38[10])
    defparam s_counter_i2_set.GSR = "DISABLED";
    FD1S1A s_counter_i2_reset (.D(s_counter_2__N_66[2]), .CK(w_TX_DONE), 
           .Q(n395)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=66, LSE_RLINE=66 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(27[3] 38[10])
    defparam s_counter_i2_reset.GSR = "ENABLED";
    LUT4 i337_3_lut_rep_11 (.A(n395), .B(n394), .C(n390), .Z(n627)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(27[3] 38[10])
    defparam i337_3_lut_rep_11.init = 16'hcaca;
    LUT4 i198_2_lut_4_lut (.A(n395), .B(n394), .C(n390), .D(s_counter[1]), 
         .Z(n255)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(27[3] 38[10])
    defparam i198_2_lut_4_lut.init = 16'hffca;
    LUT4 s_counter_2__I_0_Mux_0_i3_4_lut (.A(P_Data_c_0), .B(s_counter[1]), 
         .C(P_Data_c_8), .D(s_counter[0]), .Z(n3)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B (D)+!B !(C (D))))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(44[4] 50[13])
    defparam s_counter_2__I_0_Mux_0_i3_4_lut.init = 16'h30ee;
    LUT4 i438_2_lut (.A(n391), .B(n390), .Z(UARTREADY_c)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(25[2] 39[14])
    defparam i438_2_lut.init = 16'h8888;
    LUT4 s_counter_2__I_0_Mux_4_i1_3_lut (.A(P_Data_c_4), .B(P_Data_c_12), 
         .C(s_counter[0]), .Z(n1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(44[4] 50[13])
    defparam s_counter_2__I_0_Mux_4_i1_3_lut.init = 16'hcaca;
    LUT4 i131_1_lut (.A(s_counter[0]), .Z(s_counter_2__N_66[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(44[4] 50[13])
    defparam i131_1_lut.init = 16'h5555;
    LUT4 i15_3_lut (.A(s_counter[0]), .B(n627), .C(s_counter[1]), .Z(s_counter_2__N_66[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i15_3_lut.init = 16'h6c6c;
    LUT4 s_counter_2__I_0_Mux_5_i1_3_lut (.A(P_Data_c_5), .B(P_Data_c_13), 
         .C(s_counter[0]), .Z(n1_adj_76)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(44[4] 50[13])
    defparam s_counter_2__I_0_Mux_5_i1_3_lut.init = 16'hcaca;
    LUT4 s_counter_2__N_70_I_0_2_lut_4_lut (.A(s_counter[1]), .B(n627), 
         .C(s_counter[0]), .D(P_Reset_c), .Z(s_counter_2__N_73)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(31[9:26])
    defparam s_counter_2__N_70_I_0_2_lut_4_lut.init = 16'hff04;
    LUT4 s_counter_0__bdd_4_lut (.A(s_counter[0]), .B(P_Data_c_2), .C(s_counter[1]), 
         .D(P_Data_c_10), .Z(n617)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B+(C)))) */ ;
    defparam s_counter_0__bdd_4_lut.init = 16'h5e54;
    LUT4 s_counter_2__I_0_Mux_6_i1_3_lut (.A(P_Data_c_6), .B(P_Data_c_14), 
         .C(s_counter[0]), .Z(n1_adj_77)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(44[4] 50[13])
    defparam s_counter_2__I_0_Mux_6_i1_3_lut.init = 16'hcaca;
    LUT4 i542_3_lut_rep_9 (.A(s_counter[1]), .B(n627), .C(s_counter[0]), 
         .Z(n625)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(31[9:26])
    defparam i542_3_lut_rep_9.init = 16'h0404;
    FD1S3IX s_data_i1 (.D(n3_adj_78), .CK(S_UARTClock2), .CD(n627), .Q(r_TX_BYTE[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=66, LSE_RLINE=66 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(43[3] 51[10])
    defparam s_data_i1.GSR = "DISABLED";
    LUT4 s_counter_2__I_0_Mux_7_i1_3_lut (.A(P_Data_c_7), .B(P_Data_c_15), 
         .C(s_counter[0]), .Z(n1_adj_79)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(44[4] 50[13])
    defparam s_counter_2__I_0_Mux_7_i1_3_lut.init = 16'hcaca;
    FD1S3IX s_data_i2 (.D(n617), .CK(S_UARTClock2), .CD(n627), .Q(r_TX_BYTE[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=66, LSE_RLINE=66 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(43[3] 51[10])
    defparam s_data_i2.GSR = "DISABLED";
    FD1S3IX s_data_i3 (.D(n3_adj_75), .CK(S_UARTClock2), .CD(n627), .Q(r_TX_BYTE[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=66, LSE_RLINE=66 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(43[3] 51[10])
    defparam s_data_i3.GSR = "DISABLED";
    FD1S3IX s_data_i4 (.D(n1), .CK(S_UARTClock2), .CD(n255), .Q(r_TX_BYTE[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=66, LSE_RLINE=66 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(43[3] 51[10])
    defparam s_data_i4.GSR = "DISABLED";
    FD1S3IX s_data_i5 (.D(n1_adj_76), .CK(S_UARTClock2), .CD(n255), .Q(r_TX_BYTE[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=66, LSE_RLINE=66 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(43[3] 51[10])
    defparam s_data_i5.GSR = "DISABLED";
    FD1S3IX s_data_i6 (.D(n1_adj_77), .CK(S_UARTClock2), .CD(n255), .Q(r_TX_BYTE[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=66, LSE_RLINE=66 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(43[3] 51[10])
    defparam s_data_i6.GSR = "DISABLED";
    FD1S3IX s_data_i7 (.D(n1_adj_79), .CK(S_UARTClock2), .CD(n255), .Q(r_TX_BYTE[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=66, LSE_RLINE=66 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(43[3] 51[10])
    defparam s_data_i7.GSR = "DISABLED";
    FD1S3DX s_counter_i1 (.D(s_counter_2__N_66[1]), .CK(w_TX_DONE), .CD(s_counter_2__N_73), 
            .Q(s_counter[1])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=66, LSE_RLINE=66 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(27[3] 38[10])
    defparam s_counter_i1.GSR = "DISABLED";
    LUT4 i80_2_lut (.A(s_counter[0]), .B(s_counter[1]), .Z(s_counter_2__N_66[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i80_2_lut.init = 16'h6666;
    LUT4 i393_2_lut (.A(o_SendData_N_74), .B(P_Reset_c), .Z(\r_SM_Main_2__N_49[0] )) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(27[3] 38[10])
    defparam i393_2_lut.init = 16'heeee;
    LUT4 i_reset_I_0_1_lut (.A(P_Reset_c), .Z(i_reset_N_72)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(27[3] 38[10])
    defparam i_reset_I_0_1_lut.init = 16'h5555;
    LUT4 i538_2_lut_4_lut (.A(s_counter[1]), .B(n627), .C(s_counter[0]), 
         .D(P_Reset_c), .Z(s_counter_2__N_69)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(31[9:26])
    defparam i538_2_lut_4_lut.init = 16'h0004;
    LUT4 s_counter_2__I_0_Mux_1_i3_4_lut (.A(P_Data_c_1), .B(s_counter[0]), 
         .C(s_counter[1]), .D(P_Data_c_9), .Z(n3_adj_78)) /* synthesis lut_function=(A (B (C+(D))+!B !(C))+!A (B (C+(D)))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(44[4] 50[13])
    defparam s_counter_2__I_0_Mux_1_i3_4_lut.init = 16'hcec2;
    FD1S1B s_counter_2__N_69_I_0_set (.D(n635), .CK(GND_net), .PD(s_counter_2__N_69), 
           .Q(n391)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=66, LSE_RLINE=66 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(25[2] 39[14])
    defparam s_counter_2__N_69_I_0_set.GSR = "DISABLED";
    FD1S1A i331 (.D(n636), .CK(s_counter_2__N_69), .Q(n390));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(25[2] 39[14])
    defparam i331.GSR = "ENABLED";
    
endmodule
