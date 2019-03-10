lappend auto_path "C:/lscc/diamond/3.10_x64/data/script"
package require tbtemplate_generation

set ::bali::Para(MODNAME) Main
set ::bali::Para(PACKAGE) {"C:/lscc/diamond/3.10_x64/cae_library/vhdl_packages/vdbs"}
set ::bali::Para(PRIMITIVEFILE) {"C:/lscc/diamond/3.10_x64/cae_library/synthesis/vhdl/machxo3l.vhd"}
set ::bali::Para(TFT) {"C:/lscc/diamond/3.10_x64/data/templates/tstbch_f.tft"}
set ::bali::Para(OUTNAME) UART_tb
set ::bali::Para(EXT) .vhd
set ::bali::Para(FILELIST) {"C:/Users/Daniel/Desktop/Projects/FPGA/Lattice/RS232/Main.vhd=work" "C:/Users/Daniel/Desktop/Projects/FPGA/Lattice/RS232/Uart.vhd=work" "C:/Users/Daniel/Desktop/Projects/FPGA/Lattice/RS232/Clock.vhd=work" "C:/Users/Daniel/Desktop/Projects/FPGA/Lattice/RS232/DataSelect.vhd=work" "C:/Users/Daniel/Desktop/Projects/FPGA/Lattice/RS232/CLKPLL.vhd=work" "C:/Users/Daniel/Desktop/Projects/FPGA/Lattice/RS232/UART_TX.vhd=work" }
set ::bali::Para(INCLUDEPATH) {}
puts "set parameters done"
::bali::GenerateTbTemplate
