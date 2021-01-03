setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/lscc/sd_ram_uart/Simulation/sdram_uart/sdram_uart.adf"]} { 
	design create sdram_uart "C:/lscc/sd_ram_uart/Simulation"
  set newDesign 1
}
design open "C:/lscc/sd_ram_uart/Simulation/sdram_uart"
cd "C:/lscc/sd_ram_uart/Simulation"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/lscc/sd_ram_uart/src/fifo.v"
addfile "C:/lscc/sd_ram_uart/src/sdram_to_uart.v"
addfile "C:/lscc/sd_ram_uart/src/Timer.v"
addfile "C:/lscc/sd_ram_uart/src/SDRAM_Controller.v"
addfile "C:/lscc/sd_ram_uart/src/uart_to_sdram.v"
addfile "C:/lscc/sd_ram_uart/src/all_modules.v"
addfile "C:/lscc/sd_ram_uart/src/all_mod_testbench.v"
vlib "C:/lscc/sd_ram_uart/Simulation/sdram_uart/work"
set worklib work
adel -all
vlog -dbg -work work "C:/lscc/sd_ram_uart/src/fifo.v"
vlog -dbg -work work "C:/lscc/sd_ram_uart/src/sdram_to_uart.v"
vlog -dbg -work work "C:/lscc/sd_ram_uart/src/Timer.v"
vlog -dbg -work work "C:/lscc/sd_ram_uart/src/SDRAM_Controller.v"
vlog -dbg -work work "C:/lscc/sd_ram_uart/src/uart_to_sdram.v"
vlog -dbg -work work "C:/lscc/sd_ram_uart/src/all_modules.v"
vlog -dbg -work work "C:/lscc/sd_ram_uart/src/all_mod_testbench.v"
module sdram_uart_testbench
vsim  +access +r sdram_uart_testbench   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
