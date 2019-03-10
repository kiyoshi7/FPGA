// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.3.144
// Netlist written on Fri Mar 01 19:46:44 2019
//
// Verilog Description of module UART_TX
//

module UART_TX (i_Clk, i_TX_DV, i_TX_Byte, o_TX_Active, o_TX_Serial, 
            o_TX_Done);   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(15[8:15])
    input i_Clk;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(20[5:10])
    input i_TX_DV;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(21[5:12])
    input [7:0]i_TX_Byte;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(22[5:14])
    output o_TX_Active;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(23[5:16])
    output o_TX_Serial;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(24[5:16])
    output o_TX_Done;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(25[5:14])
    
    wire i_Clk_c /* synthesis SET_AS_NETWORK=i_Clk_c, is_clock=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(20[5:10])
    
    wire GND_net, VCC_net, i_TX_Byte_c_7, i_TX_Byte_c_6, i_TX_Byte_c_5, 
        i_TX_Byte_c_4, i_TX_Byte_c_3, i_TX_Byte_c_2, i_TX_Byte_c_1, 
        i_TX_Byte_c_0, o_TX_Active_c, o_TX_Serial_c, o_TX_Done_c;
    wire [2:0]r_SM_Main;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(34[10:19])
    wire [6:0]r_Clk_Count;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(36[10:21])
    wire [2:0]r_Bit_Index;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(37[10:21])
    wire [7:0]r_TX_Data;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(38[10:19])
    
    wire r_SM_Main_2__N_49_c_0;
    wire [2:0]r_SM_Main_2__N_46;
    
    wire o_TX_Serial_N_54, n7, n531, n622, n617, i_Clk_c_enable_3, 
        n700, o_TX_Serial_N_53, o_TX_Done_N_55, i_Clk_c_enable_19, n3;
    wire [2:0]r_Bit_Index_2__N_11;
    
    wire i_Clk_c_enable_7, n40, n39, n38, n37, n36, n35, n34, 
        n616, i_Clk_c_enable_21, i_Clk_c_enable_8, n670, n615, n674, 
        n673, n624, n538, n672, n671, n368, n369, n669, n702;
    
    VHI i2 (.Z(VCC_net));
    FD1P3IX r_TX_Data_i2 (.D(i_TX_Byte_c_2), .SP(i_Clk_c_enable_21), .CD(n531), 
            .CK(i_Clk_c), .Q(r_TX_Data[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(46[5] 127[12])
    defparam r_TX_Data_i2.GSR = "ENABLED";
    OB o_TX_Serial_pad (.I(o_TX_Serial_c), .O(o_TX_Serial));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(24[5:16])
    LUT4 i532_2_lut_3_lut_3_lut (.A(r_SM_Main[1]), .B(r_Bit_Index[0]), .C(r_SM_Main[2]), 
         .Z(r_Bit_Index_2__N_11[0])) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i532_2_lut_3_lut_3_lut.init = 16'h0202;
    FD1P3AX o_TX_Serial_43 (.D(o_TX_Serial_N_53), .SP(i_Clk_c_enable_19), 
            .CK(i_Clk_c), .Q(o_TX_Serial_c));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(46[5] 127[12])
    defparam o_TX_Serial_43.GSR = "ENABLED";
    OB o_TX_Active_pad (.I(o_TX_Active_c), .O(o_TX_Active));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(23[5:16])
    FD1S3IX r_SM_Main_i0 (.D(n369), .CK(i_Clk_c), .CD(r_SM_Main[2]), .Q(r_SM_Main[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(46[5] 127[12])
    defparam r_SM_Main_i0.GSR = "ENABLED";
    FD1P3AX o_TX_Active_42 (.D(r_SM_Main[0]), .SP(i_Clk_c_enable_3), .CK(i_Clk_c), 
            .Q(o_TX_Active_c));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(46[5] 127[12])
    defparam o_TX_Active_42.GSR = "ENABLED";
    LUT4 i2_4_lut_3_lut_4_lut_4_lut (.A(r_SM_Main[1]), .B(r_Bit_Index[2]), 
         .C(n702), .D(r_SM_Main[2]), .Z(r_Bit_Index_2__N_11[2])) /* synthesis lut_function=(!((B (C+(D))+!B ((D)+!C))+!A)) */ ;
    defparam i2_4_lut_3_lut_4_lut_4_lut.init = 16'h0028;
    CCU2D r_Clk_Count_122_add_4_7 (.A0(r_Clk_Count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_Clk_Count[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n617), .S0(n35), .S1(n34));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(107[28:39])
    defparam r_Clk_Count_122_add_4_7.INIT0 = 16'hfaaa;
    defparam r_Clk_Count_122_add_4_7.INIT1 = 16'hfaaa;
    defparam r_Clk_Count_122_add_4_7.INJECT1_0 = "NO";
    defparam r_Clk_Count_122_add_4_7.INJECT1_1 = "NO";
    CCU2D r_Clk_Count_122_add_4_5 (.A0(r_Clk_Count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_Clk_Count[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n616), .COUT(n617), .S0(n37), .S1(n36));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(107[28:39])
    defparam r_Clk_Count_122_add_4_5.INIT0 = 16'hfaaa;
    defparam r_Clk_Count_122_add_4_5.INIT1 = 16'hfaaa;
    defparam r_Clk_Count_122_add_4_5.INJECT1_0 = "NO";
    defparam r_Clk_Count_122_add_4_5.INJECT1_1 = "NO";
    CCU2D r_Clk_Count_122_add_4_3 (.A0(r_Clk_Count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_Clk_Count[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n615), .COUT(n616), .S0(n39), .S1(n38));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(107[28:39])
    defparam r_Clk_Count_122_add_4_3.INIT0 = 16'hfaaa;
    defparam r_Clk_Count_122_add_4_3.INIT1 = 16'hfaaa;
    defparam r_Clk_Count_122_add_4_3.INJECT1_0 = "NO";
    defparam r_Clk_Count_122_add_4_3.INJECT1_1 = "NO";
    OB o_TX_Done_pad (.I(o_TX_Done_c), .O(o_TX_Done));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(25[5:14])
    IB i_Clk_pad (.I(i_Clk), .O(i_Clk_c));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(20[5:10])
    IB r_SM_Main_2__N_49_pad_0 (.I(i_TX_DV), .O(r_SM_Main_2__N_49_c_0));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(21[5:12])
    IB i_TX_Byte_pad_7 (.I(i_TX_Byte[7]), .O(i_TX_Byte_c_7));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(22[5:14])
    IB i_TX_Byte_pad_6 (.I(i_TX_Byte[6]), .O(i_TX_Byte_c_6));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(22[5:14])
    IB i_TX_Byte_pad_5 (.I(i_TX_Byte[5]), .O(i_TX_Byte_c_5));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(22[5:14])
    IB i_TX_Byte_pad_4 (.I(i_TX_Byte[4]), .O(i_TX_Byte_c_4));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(22[5:14])
    IB i_TX_Byte_pad_3 (.I(i_TX_Byte[3]), .O(i_TX_Byte_c_3));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(22[5:14])
    IB i_TX_Byte_pad_2 (.I(i_TX_Byte[2]), .O(i_TX_Byte_c_2));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(22[5:14])
    IB i_TX_Byte_pad_1 (.I(i_TX_Byte[1]), .O(i_TX_Byte_c_1));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(22[5:14])
    IB i_TX_Byte_pad_0 (.I(i_TX_Byte[0]), .O(i_TX_Byte_c_0));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(22[5:14])
    FD1P3IX r_TX_Data_i1 (.D(i_TX_Byte_c_1), .SP(i_Clk_c_enable_21), .CD(n531), 
            .CK(i_Clk_c), .Q(r_TX_Data[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(46[5] 127[12])
    defparam r_TX_Data_i1.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i2 (.D(r_Bit_Index_2__N_11[2]), .SP(i_Clk_c_enable_8), 
            .CK(i_Clk_c), .Q(r_Bit_Index[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(46[5] 127[12])
    defparam r_Bit_Index_i2.GSR = "ENABLED";
    LUT4 i1_1_lut_rep_8 (.A(r_SM_Main[1]), .Z(i_Clk_c_enable_3)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut_rep_8.init = 16'h5555;
    LUT4 i137_2_lut_rep_9 (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), .Z(n702)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(92[30:41])
    defparam i137_2_lut_rep_9.init = 16'h8888;
    LUT4 i511_2_lut_3_lut (.A(r_SM_Main[0]), .B(r_SM_Main[1]), .C(r_SM_Main[2]), 
         .Z(n531)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(48[7] 126[16])
    defparam i511_2_lut_3_lut.init = 16'he0e0;
    LUT4 i2_2_lut_rep_7_3_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), .C(r_Bit_Index[2]), 
         .Z(n700)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(92[30:41])
    defparam i2_2_lut_rep_7_3_lut.init = 16'h8080;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1P3AX r_Bit_Index_i1 (.D(r_Bit_Index_2__N_11[1]), .SP(i_Clk_c_enable_8), 
            .CK(i_Clk_c), .Q(r_Bit_Index[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(46[5] 127[12])
    defparam r_Bit_Index_i1.GSR = "ENABLED";
    LUT4 i514_3_lut (.A(r_TX_Data[4]), .B(r_TX_Data[5]), .C(r_Bit_Index[0]), 
         .Z(n671)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i514_3_lut.init = 16'hcaca;
    LUT4 i513_3_lut (.A(r_TX_Data[2]), .B(r_TX_Data[3]), .C(r_Bit_Index[0]), 
         .Z(n670)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i513_3_lut.init = 16'hcaca;
    LUT4 i512_3_lut (.A(r_TX_Data[0]), .B(r_TX_Data[1]), .C(r_Bit_Index[0]), 
         .Z(n669)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i512_3_lut.init = 16'hcaca;
    FD1P3AX r_TX_Done_44 (.D(o_TX_Done_N_55), .SP(i_Clk_c_enable_7), .CK(i_Clk_c), 
            .Q(o_TX_Done_c)) /* synthesis lse_init_val=0 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(46[5] 127[12])
    defparam r_TX_Done_44.GSR = "ENABLED";
    LUT4 i409_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .C(o_TX_Serial_N_54), 
         .D(r_SM_Main[1]), .Z(o_TX_Serial_N_53)) /* synthesis lut_function=(!(A (B+!(D))+!A (B+!(C+!(D))))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(48[7] 126[16])
    defparam i409_4_lut.init = 16'h3211;
    L6MUX21 i518 (.D0(n673), .D1(n674), .SD(r_Bit_Index[2]), .Z(o_TX_Serial_N_54));
    LUT4 i244_2_lut_3_lut (.A(r_SM_Main_2__N_46[1]), .B(r_SM_Main[0]), .C(r_SM_Main[1]), 
         .Z(n3)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i244_2_lut_3_lut.init = 16'h7878;
    FD1S3IX r_SM_Main_i1 (.D(n3), .CK(i_Clk_c), .CD(r_SM_Main[2]), .Q(r_SM_Main[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(46[5] 127[12])
    defparam r_SM_Main_i1.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(r_SM_Main[2]), .B(r_SM_Main[1]), .C(r_Bit_Index[0]), 
         .D(r_Bit_Index[1]), .Z(r_Bit_Index_2__N_11[1])) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;
    defparam i1_4_lut.init = 16'h0440;
    LUT4 i523_4_lut (.A(r_SM_Main[2]), .B(r_SM_Main[1]), .C(r_SM_Main_2__N_46[1]), 
         .D(r_SM_Main[0]), .Z(i_Clk_c_enable_7)) /* synthesis lut_function=(A+(B (C (D))+!B !(D))) */ ;
    defparam i523_4_lut.init = 16'heabb;
    FD1P3AX r_Bit_Index_i0 (.D(r_Bit_Index_2__N_11[0]), .SP(i_Clk_c_enable_8), 
            .CK(i_Clk_c), .Q(r_Bit_Index[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(46[5] 127[12])
    defparam r_Bit_Index_i0.GSR = "ENABLED";
    FD1P3IX r_Clk_Count_122__i6 (.D(n34), .SP(i_Clk_c_enable_19), .CD(n538), 
            .CK(i_Clk_c), .Q(r_Clk_Count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(107[28:39])
    defparam r_Clk_Count_122__i6.GSR = "ENABLED";
    FD1P3IX r_Clk_Count_122__i5 (.D(n35), .SP(i_Clk_c_enable_19), .CD(n538), 
            .CK(i_Clk_c), .Q(r_Clk_Count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(107[28:39])
    defparam r_Clk_Count_122__i5.GSR = "ENABLED";
    FD1P3IX r_Clk_Count_122__i4 (.D(n36), .SP(i_Clk_c_enable_19), .CD(n538), 
            .CK(i_Clk_c), .Q(r_Clk_Count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(107[28:39])
    defparam r_Clk_Count_122__i4.GSR = "ENABLED";
    FD1P3IX r_Clk_Count_122__i3 (.D(n37), .SP(i_Clk_c_enable_19), .CD(n538), 
            .CK(i_Clk_c), .Q(r_Clk_Count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(107[28:39])
    defparam r_Clk_Count_122__i3.GSR = "ENABLED";
    FD1P3IX r_Clk_Count_122__i2 (.D(n38), .SP(i_Clk_c_enable_19), .CD(n538), 
            .CK(i_Clk_c), .Q(r_Clk_Count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(107[28:39])
    defparam r_Clk_Count_122__i2.GSR = "ENABLED";
    FD1P3IX r_Clk_Count_122__i1 (.D(n39), .SP(i_Clk_c_enable_19), .CD(n538), 
            .CK(i_Clk_c), .Q(r_Clk_Count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(107[28:39])
    defparam r_Clk_Count_122__i1.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i2 (.D(r_SM_Main_2__N_46[1]), .CK(i_Clk_c), .CD(n622), 
            .Q(r_SM_Main[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(46[5] 127[12])
    defparam r_SM_Main_i2.GSR = "ENABLED";
    LUT4 i215_3_lut (.A(n368), .B(r_SM_Main_2__N_46[1]), .C(r_SM_Main[0]), 
         .Z(n369)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(48[7] 126[16])
    defparam i215_3_lut.init = 16'h3a3a;
    FD1P3IX r_TX_Data_i7 (.D(i_TX_Byte_c_7), .SP(i_Clk_c_enable_21), .CD(n531), 
            .CK(i_Clk_c), .Q(r_TX_Data[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(46[5] 127[12])
    defparam r_TX_Data_i7.GSR = "ENABLED";
    PFUMX i516 (.BLUT(n669), .ALUT(n670), .C0(r_Bit_Index[1]), .Z(n673));
    FD1P3IX r_TX_Data_i6 (.D(i_TX_Byte_c_6), .SP(i_Clk_c_enable_21), .CD(n531), 
            .CK(i_Clk_c), .Q(r_TX_Data[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(46[5] 127[12])
    defparam r_TX_Data_i6.GSR = "ENABLED";
    FD1P3IX r_TX_Data_i5 (.D(i_TX_Byte_c_5), .SP(i_Clk_c_enable_21), .CD(n531), 
            .CK(i_Clk_c), .Q(r_TX_Data[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(46[5] 127[12])
    defparam r_TX_Data_i5.GSR = "ENABLED";
    FD1P3IX r_TX_Data_i4 (.D(i_TX_Byte_c_4), .SP(i_Clk_c_enable_21), .CD(n531), 
            .CK(i_Clk_c), .Q(r_TX_Data[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(46[5] 127[12])
    defparam r_TX_Data_i4.GSR = "ENABLED";
    LUT4 i529_3_lut (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .C(r_SM_Main[0]), 
         .Z(n622)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(48[7] 126[16])
    defparam i529_3_lut.init = 16'hdfdf;
    LUT4 i12_3_lut_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main[1]), .C(r_SM_Main[2]), 
         .D(r_SM_Main_2__N_46[1]), .Z(n538)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(48[7] 126[16])
    defparam i12_3_lut_4_lut.init = 16'hefe1;
    LUT4 i515_3_lut (.A(r_TX_Data[6]), .B(r_TX_Data[7]), .C(r_Bit_Index[0]), 
         .Z(n672)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i515_3_lut.init = 16'hcaca;
    LUT4 i12_3_lut_4_lut_adj_1 (.A(r_SM_Main[0]), .B(r_SM_Main[1]), .C(r_SM_Main[2]), 
         .D(r_SM_Main_2__N_49_c_0), .Z(i_Clk_c_enable_21)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C+!(D)))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(48[7] 126[16])
    defparam i12_3_lut_4_lut_adj_1.init = 16'he1e0;
    PFUMX i517 (.BLUT(n671), .ALUT(n672), .C0(r_Bit_Index[1]), .Z(n674));
    FD1P3IX r_Clk_Count_122__i0 (.D(n40), .SP(i_Clk_c_enable_19), .CD(n538), 
            .CK(i_Clk_c), .Q(n7)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(107[28:39])
    defparam r_Clk_Count_122__i0.GSR = "ENABLED";
    LUT4 i526_2_lut_3_lut (.A(r_SM_Main[0]), .B(r_SM_Main[1]), .C(r_SM_Main[2]), 
         .Z(i_Clk_c_enable_19)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(48[7] 126[16])
    defparam i526_2_lut_3_lut.init = 16'hefef;
    LUT4 i214_4_lut (.A(r_SM_Main_2__N_49_c_0), .B(n700), .C(r_SM_Main[1]), 
         .D(r_SM_Main_2__N_46[1]), .Z(n368)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(48[7] 126[16])
    defparam i214_4_lut.init = 16'hca0a;
    LUT4 r_SM_Main_2__I_0_i7_4_lut_4_lut_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main[1]), 
         .C(r_SM_Main[2]), .D(r_SM_Main_2__N_46[1]), .Z(o_TX_Done_N_55)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+!(C)))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(48[7] 126[16])
    defparam r_SM_Main_2__I_0_i7_4_lut_4_lut_4_lut.init = 16'h1810;
    LUT4 i22_4_lut_4_lut_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main[1]), .C(r_SM_Main_2__N_46[1]), 
         .D(r_SM_Main[2]), .Z(i_Clk_c_enable_8)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B !(D))) */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(48[7] 126[16])
    defparam i22_4_lut_4_lut_4_lut.init = 16'hee51;
    TSALL TSALL_INST (.TSALL(GND_net));
    FD1P3IX r_TX_Data_i3 (.D(i_TX_Byte_c_3), .SP(i_Clk_c_enable_21), .CD(n531), 
            .CK(i_Clk_c), .Q(r_TX_Data[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(46[5] 127[12])
    defparam r_TX_Data_i3.GSR = "ENABLED";
    VLO i1 (.Z(GND_net));
    LUT4 i3_4_lut (.A(n624), .B(r_Clk_Count[4]), .C(r_Clk_Count[6]), .D(r_Clk_Count[5]), 
         .Z(r_SM_Main_2__N_46[1])) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i2_3_lut (.A(r_Clk_Count[3]), .B(r_Clk_Count[1]), .C(r_Clk_Count[2]), 
         .Z(n624)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    FD1P3IX r_TX_Data_i0 (.D(i_TX_Byte_c_0), .SP(i_Clk_c_enable_21), .CD(n531), 
            .CK(i_Clk_c), .Q(r_TX_Data[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(46[5] 127[12])
    defparam r_TX_Data_i0.GSR = "ENABLED";
    CCU2D r_Clk_Count_122_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n7), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n615), .S1(n40));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/uart.vhd(107[28:39])
    defparam r_Clk_Count_122_add_4_1.INIT0 = 16'hF000;
    defparam r_Clk_Count_122_add_4_1.INIT1 = 16'h0555;
    defparam r_Clk_Count_122_add_4_1.INJECT1_0 = "NO";
    defparam r_Clk_Count_122_add_4_1.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

