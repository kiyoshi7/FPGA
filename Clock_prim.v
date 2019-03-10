// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.3.144
// Netlist written on Sat Mar 02 16:49:16 2019
//
// Verilog Description of module Clock
//

module Clock (stdby, osc_int, p_UartClock);   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/clock.vhd(9[8:13])
    input stdby;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/clock.vhd(10[9:14])
    output osc_int;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/clock.vhd(11[6:13])
    output p_UartClock;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/clock.vhd(12[6:17])
    
    wire osc_int_c /* synthesis is_clock=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/clock.vhd(11[6:13])
    wire p_UartClock_c /* synthesis is_clock=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/clock.vhd(12[6:17])
    
    wire stdby_c, GND_net, VCC_net;
    
    OSCH Clock (.STDBY(stdby_c), .OSC(osc_int_c)) /* synthesis NOM_FREQ="133.0", syn_instantiated=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/clock.vhd(41[9:13])
    defparam Clock.NOM_FREQ = "2.08";
    VLO i4 (.Z(GND_net));
    VHI i46 (.Z(VCC_net));
    IB stdby_pad (.I(stdby), .O(stdby_c));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/clock.vhd(10[9:14])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    GSR GSR_INST (.GSR(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    OB p_UartClock_pad (.I(p_UartClock_c), .O(p_UartClock));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/clock.vhd(12[6:17])
    CLKPLL CompPll (.osc_int_c(osc_int_c), .stdby_c(stdby_c), .p_UartClock_c(p_UartClock_c), 
           .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/clock.vhd(49[11:17])
    OB osc_int_pad (.I(osc_int_c), .O(osc_int));   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/clock.vhd(11[6:13])
    
endmodule
//
// Verilog Description of module OSCH
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module CLKPLL
//

module CLKPLL (osc_int_c, stdby_c, p_UartClock_c, GND_net) /* synthesis NGD_DRC_MASK=1 */ ;
    input osc_int_c;
    input stdby_c;
    output p_UartClock_c;
    input GND_net;
    
    wire osc_int_c /* synthesis is_clock=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/clock.vhd(11[6:13])
    wire p_UartClock_c /* synthesis is_clock=1 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/clock.vhd(12[6:17])
    
    EHXPLLJ PLLInst_0 (.CLKI(osc_int_c), .CLKFB(p_UartClock_c), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(stdby_c), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(p_UartClock_c)) /* synthesis FREQUENCY_PIN_CLKOP="10.230769", FREQUENCY_PIN_CLKI="133.000000", ICP_CURRENT="8", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=17, LSE_LLINE=49, LSE_RLINE=49 */ ;   // c:/users/daniel/desktop/projects/fpga/lattice/rs232/clock.vhd(49[11:17])
    defparam PLLInst_0.CLKI_DIV = 13;
    defparam PLLInst_0.CLKFB_DIV = 1;
    defparam PLLInst_0.CLKOP_DIV = 51;
    defparam PLLInst_0.CLKOS_DIV = 1;
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
    defparam PLLInst_0.CLKOP_CPHASE = 50;
    defparam PLLInst_0.CLKOS_CPHASE = 0;
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
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
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
