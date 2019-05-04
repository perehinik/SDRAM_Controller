//////////////////////////////////////////////////////////////////////////////////
// vim:set shiftwidth=3 softtabstop=3 expandtab:
// Engineer:      Ivan Perehiniak
//	               iv.perehinik@gmail.com
// Project:       SDRAM_Controller 
// Revision:      1
// Data:          2019.05.01
// 
// TOP MODULE - Syntesize
// All links in "pins.ucf" file
/////////////////////////////////////////////////////////////////////////////////

module SDRAM_Test
(
input    CLK,
output   LED1,   //READ indicator
output   LED2,   //WRITE indicator
input    But1,   //READ
input    But2,   //WRITE
input    But3,   //Adress decrease
input    But4,   //Adress increase

inout    [15:0]   DB,		//SDRAM
output   [12:0]   ADR,
output   [1:0]    BA,
output   [1:0]    DQM,
output            nCAS,
output            CKE,
output            nRAS,
output            nWE,
output            nCS,
output            SD_CLK,

output   [7:0]    LED_S, 	//LED indicator, 7-segment and dot
output   [5:0]    LED_sel	//LED indicator, common cathodes
);

reg      [1:0]    bank_num;
wire     [15:0]   data_to_write;

wire     [15:0]   data_temp1;
wire              SD_BUSY_WT;
wire              SD_BUSY_RD;
wire              wt_startTrig;
wire              rd_startTrig;
reg      [31:0]   test_adress = 32'b0;

Clock_DCM multiplier1
(
.CLK_IN1    (CLK), 
.CLK_OUT1   (CLK_133MHZ)
); 

LED_Driver led_driver1
(
.CLK        (CLK_133MHZ),
.dot_index  (4'd2),
.data_in    ({data_temp1,test_adress[31:24]}),
.LED_code   (LED_S[7:0]),//0-F 
.LED_index  (LED_sel[5:0])
);

always @(posedge CLK_133MHZ)
begin
if (test_adress > 32'h00000000 & But3) test_adress = test_adress - 1; 
if (test_adress < 32'hFF111111 & But4) test_adress = test_adress + 1; 
end

assign rd_start_trig = ~But1;  
assign wt_start_trig = ~But2;

SDRAM_Controller sdramController1
(
.CLK           (CLK_133MHZ),

.rd_start_trig	(rd_start_trig), 
.rd_busy_flag  (LED1),
.RD_ADR        ({test_adress[31:24],test_adress[31:24],test_adress[31:24]}),  
.RD_DATA       (data_temp1[15:0]),

.wt_start_trig	(wt_start_trig),
.wt_busy_flag  (LED2), 
.WT_ADR        ({test_adress[31:24],test_adress[31:24],test_adress[31:24]}), 
.WT_DATA       ({test_adress[31:24],test_adress[31:24]}),

.SD_P_DATA     (DB[15:0]),
.SD_P_BA       (BA[1:0]),
.SD_P_ADR      (ADR[12:0]),
.SD_P_nCAS     (nCAS),
.SD_P_nRAS     (nRAS),
.SD_P_nWE      (nWE),
.SD_P_CKE      (CKE),
.SD_P_DQM      (DQM[1:0]),
.SD_P_nCS      (nCS),
.SD_P_CLK      (SD_CLK)
);
endmodule
