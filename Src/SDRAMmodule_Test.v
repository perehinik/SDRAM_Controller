`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:44:12 04/28/2019
// Design Name:   SDRAM_Controller
// Module Name:   C:/Xilinx/XProject/SDRAM_Test_New_FSM/SDRAMmodule_Test.v
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

module SDRAMmodule_Test;

	// Inputs
	reg global_CLK;
	reg rd_startTrig;
	reg [23:0] RD_ADR;
	reg wt_startTrig;
	reg [23:0] WT_ADR;
	reg [15:0] WT_DATA;

	// Outputs
	wire rd_busyFlag;
	wire [15:0] RD_DATA;
	wire wt_busyFlag;
	wire [1:0] SD_P_BA;
	wire [12:0] SD_P_ADR;
	wire SD_P_nCAS;
	wire SD_P_nRAS;
	wire SD_P_nWE;
	wire SD_P_CKE;
	wire [1:0] SD_P_DQM;
	wire SD_P_nCS;
	wire SD_P_CLK;
	wire [3:0] Status;
	wire [7:0] Status2;

	// Bidirs
	wire [15:0] SD_P_DATA;

	// Instantiate the Unit Under Test (UUT)
	SDRAM_Controller uut (
		.global_CLK(global_CLK), 
		.rd_busyFlag(rd_busyFlag), 
		.rd_startTrig(rd_startTrig), 
		.RD_ADR(RD_ADR), 
		.RD_DATA(RD_DATA), 
		.wt_busyFlag(wt_busyFlag), 
		.wt_startTrig(wt_startTrig), 
		.WT_ADR(WT_ADR), 
		.WT_DATA(WT_DATA), 
		.SD_P_DATA(SD_P_DATA), 
		.SD_P_BA(SD_P_BA), 
		.SD_P_ADR(SD_P_ADR), 
		.SD_P_nCAS(SD_P_nCAS), 
		.SD_P_nRAS(SD_P_nRAS), 
		.SD_P_nWE(SD_P_nWE), 
		.SD_P_CKE(SD_P_CKE), 
		.SD_P_DQM(SD_P_DQM), 
		.SD_P_nCS(SD_P_nCS), 
		.SD_P_CLK(SD_P_CLK), 
		.Status(Status), 
		.Status2(Status2)
	);

	always begin
	#1 global_CLK = !global_CLK;
	end
	
	initial begin
		// Initialize Inputs
		global_CLK = 0;
		rd_startTrig = 0;
		RD_ADR = 0;
		wt_startTrig = 0;
		WT_ADR = 0;
		WT_DATA = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

