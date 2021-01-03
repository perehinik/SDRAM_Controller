`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// vim:set shiftwidth=3 softtabstop=3 expandtab:
// Engineer:      Ivan Perehiniak
//	               iv.perehinik@gmail.com
// Project:       SDRAM_Controller 
// Revision:      1
// Data:          2019.05.01
/////////////////////////////////////////////////////////////////////////////////

module SDRAM_Testbench;

   reg            CLK;     // Inputs
   reg            But1;    //
   reg            But2;    //
   reg            But3;    //
   reg            But4;    //

   wire           LED1;    // Outputs
   wire           LED2;    //
   wire [12:0]    ADR;     //
   wire [1:0]     BA;      //
   wire [1:0]     DQM;     //
   wire           nCAS;    //
   wire           CKE;     //
   wire           nRAS;    //
   wire           nWE;     //
   wire           nCS;     //
   wire           SD_CLK;  //
   wire [7:0]     LED_S;   //
   wire [5:0]     LED_sel; //

   wire [15:0]    DB;      // Bidirs
	
// Instantiate the Unit Under Test (UUT)
SDRAM_Test uut(
   .CLK      (CLK), 
   .LED1     (LED1), 
   .LED2     (LED2), 
   .But1     (But1), 
   .But2     (But2), 
	.But3     (But3), 
   .But4     (But4), 
   .DB       (DB), 
   .ADR      (ADR), 
   .BA       (BA), 
   .DQM      (DQM), 
   .nCAS     (nCAS), 
   .CKE      (CKE), 
   .nRAS     (nRAS), 
   .nWE      (nWE), 
   .nCS      (nCS), 
   .SD_CLK   (SD_CLK), 
   .LED_S    (LED_S), 
   .LED_sel  (LED_sel)
);
	
always begin
   #10 CLK = !CLK;
end
	
initial begin
// Initialize Inputs
   CLK      = 0;
   But1     = 0;
   But2     = 0;
#100 // Wait 100 ns for global reset to finish
				
   But1     = 0; 
   But2     = 1;   //Start write
#300000
				
   But1     = 1;   //Start read
   But2     = 0;	
#3000000;
end   
endmodule 