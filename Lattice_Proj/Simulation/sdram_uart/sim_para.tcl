lappend auto_path "C:/lscc/diamond/3.10_x64/data/script"
package require simulation_generation
set ::bali::simulation::Para(PROJECT) {sdram_uart}
set ::bali::simulation::Para(PROJECTPATH) {C:/lscc/sd_ram_uart/Simulation}
set ::bali::simulation::Para(FILELIST) {"C:/lscc/sd_ram_uart/src/fifo.v" "C:/lscc/sd_ram_uart/src/sdram_to_uart.v" "C:/lscc/sd_ram_uart/src/Timer.v" "C:/lscc/sd_ram_uart/src/SDRAM_Controller.v" "C:/lscc/sd_ram_uart/src/uart_to_sdram.v" "C:/lscc/sd_ram_uart/src/all_modules.v" "C:/lscc/sd_ram_uart/src/all_mod_testbench.v" "C:/lscc/sd_ram_uart/Implementation/Clock_DCMA.v" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none" "none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" "work" "work" "work" "work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {sdram_uart_testbench}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {VERILOG}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {1}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ActiveHDL_Run
