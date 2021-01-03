`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:04:45 04/29/2019
// Design Name:   SDRAM_Controller
// Module Name:   C:/Xilinx/XProject/SDRAM_Test_New_FSM/SDRAM_Test_model.v
// Project Name:  SDRAM_Test_New_FSM
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SDRAM_Controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SDRAM_Test_model;

	// Inputs
	reg CLK;
	reg rd_start_trig;
	reg [23:0] RD_ADR;
	reg wt_start_trig;
	reg [23:0] WT_ADR;
	reg [15:0] WT_DATA;

	// Outputs
	wire rd_busy_flag;
	wire [15:0] RD_DATA;
	wire wt_busy_flag;
	
	wire [1:0] SD_P_BA;
	wire [12:0] SD_P_ADR;
	wire SD_P_nCAS;
	wire SD_P_nRAS;
	wire SD_P_nWE;
	wire SD_P_CKE;
	wire [1:0] SD_P_DQM;
	wire SD_P_nCS;
	wire SD_P_CLK;

	// Bidirs
	wire [15:0] SD_P_DATA;

	// Instantiate the Unit Under Test (UUT)
	SDRAM_Controller uut (
		.CLK				(CLK), 
		.rd_busy_flag	(rd_busy_flag), 
		.rd_start_trig	(rd_start_trig), 
		.RD_ADR			(RD_ADR), 
		.RD_DATA			(RD_DATA), 
		.wt_busy_flag	(wt_busy_flag), 
		.wt_start_trig	(wt_start_trig), 
		.WT_ADR			(WT_ADR), 
		.WT_DATA			(WT_DATA), 
		.SD_P_DATA		(SD_P_DATA), 
		.SD_P_BA			(SD_P_BA), 
		.SD_P_ADR		(SD_P_ADR), 
		.SD_P_nCAS		(SD_P_nCAS), 
		.SD_P_nRAS		(SD_P_nRAS), 
		.SD_P_nWE		(SD_P_nWE), 
		.SD_P_CKE		(SD_P_CKE), 
		.SD_P_DQM		(SD_P_DQM), 
		.SD_P_nCS		(SD_P_nCS), 
		.SD_P_CLK		(SD_P_CLK)
	);

	sdr sdram0 (
		.Dq				(SD_P_DATA), 
		.Addr				(SD_P_ADR),
		.Ba				(SD_P_BA), 
		.Clk				(SD_P_CLK), 
		.Cke				(SD_P_CKE), 
		.Cs_n				(SD_P_nCS), 
		.Ras_n			(SD_P_nRAS), 
		.Cas_n			(SD_P_nCAS), 
		.We_n				(SD_P_nWE), 
		.Dqm				(SD_P_DQM)
	);
	
	always 
	begin
	#1 CLK = !CLK;
	end
	
	initial begin
		// Initialize Inputs
		CLK 				= 0;
		rd_start_trig 	= 0;
		RD_ADR		 	= 0;
		wt_start_trig 	= 0;
		WT_ADR 			= 0;
		WT_DATA 			= 0;

		// Wait 100 ns for global reset to finish
		#100;
      WT_DATA 			= 16'hA444;
		RD_ADR 			= 24'h012111;
		WT_ADR 			= 24'h012111;		
		wt_start_trig 	= 1;
		rd_start_trig 	= 0;
		
		#55000;
		RD_ADR 			= 24'h012111;
		WT_ADR 			= 24'h012111;	
	   wt_start_trig 	= 0;
		rd_start_trig 	= 1;
		
		#30000000;
		// Add stimulus here

	end
      
endmodule

