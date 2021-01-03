`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:05:03 04/30/2008 
// Design Name: 
// Module Name:    uart_rx 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module uart_rx
(
input wire				CLK,
input wire				RST,

input wire				RXD,

output reg			    STBo,
output reg[7:0]	        DATo,
input wire				ACKo
);

parameter	PRESCALER = 1155;

// Stany
localparam	FSM_IDLE		= 0;
localparam	FSM_BIT_START	= 10;
localparam	FSM_BIT_0		= 11;
localparam	FSM_BIT_1		= 12;
localparam	FSM_BIT_2		= 13;
localparam	FSM_BIT_3		= 14;
localparam	FSM_BIT_4		= 15;
localparam	FSM_BIT_5		= 16;
localparam	FSM_BIT_6		= 17;
localparam	FSM_BIT_7		= 18;
localparam	FSM_BIT_STOP	= 19;
localparam	FSM_OUTPUT		= 20;


// Rejestry
reg[10:0]		PS;
reg			SMPL;

reg[7:0]		FSM;
reg[7:0]		DAT;

reg			RXDa;
reg			RXDb;
reg			RXDc;

// Opoznienie RXD
always @(posedge CLK)	RXDa <= RXD;
always @(posedge CLK)	RXDb <= RXDa;
always @(posedge CLK)	RXDc <= RXDb;

// Preskaler
always @(posedge CLK or posedge RST)
	if(RST)	PS <= (PRESCALER-1);
	else begin
		if(PS == 0)	PS <= (PRESCALER-1);
		else if(FSM == FSM_IDLE && !RXDc)		PS <= ((PRESCALER/2)-1);
		else			PS <= PS - 1;
	end

// Impuls probkujacy
always @(posedge CLK or posedge RST)
	if(RST)	SMPL <= 0;
	else		SMPL <= (PS == 0);

// Sterowanie
always @(posedge CLK or posedge RST)
	if(RST)	FSM <= 0;
	else casex(FSM)
	FSM_IDLE:		if(!RXDc)	FSM <= FSM_BIT_START;
	FSM_BIT_START:	if(SMPL)		FSM <= FSM_BIT_0;
	FSM_BIT_0:		if(SMPL)		FSM <= FSM_BIT_1;
	FSM_BIT_1:		if(SMPL)		FSM <= FSM_BIT_2;
	FSM_BIT_2:		if(SMPL)		FSM <= FSM_BIT_3;
	FSM_BIT_3:		if(SMPL)		FSM <= FSM_BIT_4;
	FSM_BIT_4:		if(SMPL)		FSM <= FSM_BIT_5;
	FSM_BIT_5:		if(SMPL)		FSM <= FSM_BIT_6;
	FSM_BIT_6:		if(SMPL)		FSM <= FSM_BIT_7;
	FSM_BIT_7:		if(SMPL)		FSM <= FSM_BIT_STOP;
	FSM_BIT_STOP:	if(SMPL)		FSM <= FSM_OUTPUT;
	FSM_OUTPUT:		if(ACKo)		FSM <= FSM_IDLE;
	default:	FSM <= 0;
	endcase
	
// Odczyt
always @(posedge CLK or posedge RST)
	if(RST)	DAT <= 0;
	else casex(FSM)
	FSM_BIT_0:	DAT[0] <= RXDc;
	FSM_BIT_1:	DAT[1] <= RXDc;
	FSM_BIT_2:	DAT[2] <= RXDc;
	FSM_BIT_3:	DAT[3] <= RXDc;
	FSM_BIT_4:	DAT[4] <= RXDc;
	FSM_BIT_5:	DAT[5] <= RXDc;
	FSM_BIT_6:	DAT[6] <= RXDc;
	FSM_BIT_7:	DAT[7] <= RXDc;
	endcase
	
// Wyjscie
always @(posedge CLK or posedge RST)
	if(RST)	DATo <= 0;
	else casex(FSM)
	FSM_BIT_STOP:	DATo <= DAT;
	endcase

// Potwierdzenie wyjscia
always @(posedge CLK or posedge RST)
	if(RST)	STBo <= 0;
	else casex(FSM)
	FSM_BIT_STOP:	if(SMPL) STBo <= 1;
	FSM_OUTPUT:		STBo <= ~ACKo;
	default:			STBo <= 0;
	endcase

endmodule
