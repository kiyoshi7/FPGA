// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.3.144
// Netlist written on Sat Mar 02 13:58:01 2019
//
// Verilog Description of module DataSelect
//

module DataSelect (i_Tx_Done, o_test);   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(4[8:18])
    input i_Tx_Done;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(5[10:19])
    output o_test;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(9[4:10])
    
    
    wire o_test_c_c, GND_net, VCC_net;
    
    VLO i23 (.Z(GND_net));
    OB o_test_pad (.I(o_test_c_c), .O(o_test));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(9[4:10])
    IB o_test_c_pad (.I(i_Tx_Done), .O(o_test_c_c));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/dataselect.vhd(5[10:19])
    GSR GSR_INST (.GSR(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VHI i24 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

