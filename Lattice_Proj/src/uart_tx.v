module uart_tx
(
input wire		CLK,
input wire		RST,

output reg		TXD,

input wire				STBi,
input wire[7:0]		DATi,
output reg		ACKi
);

// 115200
// 50M  - 434
// 100M - 868
// 24M  - 208

parameter PRESCALER = 1155;

localparam	FSM_IDLE			= 0;
localparam	FSM_READ			= 10;
localparam	FSM_SYNC			= 30;
localparam	FSM_BIT_START	= 40;
localparam	FSM_BIT_0		= 41;
localparam	FSM_BIT_1		= 42;
localparam	FSM_BIT_2		= 43;
localparam	FSM_BIT_3		= 44;
localparam	FSM_BIT_4		= 45;
localparam	FSM_BIT_5		= 46;
localparam	FSM_BIT_6		= 47;
localparam	FSM_BIT_7		= 48;
localparam	FSM_BIT_STOP	= 49;

// Preskaler
reg[10:0]		PS;
reg			SMPL;

reg[7:0]		FSM;
reg[7:0]		DAT;

// Preskaler
always @(posedge CLK or posedge RST)
	if(RST)			PS <= (PRESCALER-1);
	else 				PS <= (PS==0) ? (PRESCALER-1) : (PS-1);

// Impuls probkujacy
always @(posedge CLK or posedge RST)
	if(RST)	SMPL <= 0;
	else		SMPL <= (PS == 0);

// Sterowanie
always @(posedge CLK or posedge RST)
	if(RST)	FSM <= 0;
	else casex(FSM)
		
	FSM_IDLE:	if(STBi)		FSM <= FSM_READ;	
	FSM_READ:					FSM <= FSM_SYNC;
	FSM_SYNC:		if(SMPL)	FSM <= FSM_BIT_START;	
	FSM_BIT_START:	if(SMPL)	FSM <= FSM_BIT_0;	
	FSM_BIT_0:		if(SMPL)	FSM <= FSM_BIT_1;	
	FSM_BIT_1:		if(SMPL)	FSM <= FSM_BIT_2;	
	FSM_BIT_2:		if(SMPL)	FSM <= FSM_BIT_3;	
	FSM_BIT_3:		if(SMPL)	FSM <= FSM_BIT_4;	
	FSM_BIT_4:		if(SMPL)	FSM <= FSM_BIT_5;	
	FSM_BIT_5:		if(SMPL)	FSM <= FSM_BIT_6;	
	FSM_BIT_6:		if(SMPL)	FSM <= FSM_BIT_7;	
	FSM_BIT_7:		if(SMPL)	FSM <= FSM_BIT_STOP;	
	FSM_BIT_STOP:	if(SMPL)	FSM <= FSM_IDLE;	
	
	endcase

// Odczyt danych wejsciowych
always @(posedge CLK or posedge RST)
	if(RST)	DAT <= 0;
	else if(FSM == FSM_IDLE && STBi)	DAT <= DATi;	

// Potwierdzenie odczytu		
always @(posedge CLK or posedge RST)
	if(RST)	ACKi <= 0;
	else if(FSM == FSM_IDLE && STBi)	ACKi <= 1;
	//else if((FSM == FSM_BIT_STOP) & SMPL)	ACKi <= 1;
	else	ACKi <= 0;
		
// Transmisja
always @(posedge CLK or posedge RST)
	if(RST)	TXD <= 1;
	else casex(FSM)
	FSM_BIT_START:	TXD <= 0;
	FSM_BIT_0:		TXD <= DAT[0];
	FSM_BIT_1:		TXD <= DAT[1];
	FSM_BIT_2:		TXD <= DAT[2];
	FSM_BIT_3:		TXD <= DAT[3];
	FSM_BIT_4:		TXD <= DAT[4];
	FSM_BIT_5:		TXD <= DAT[5];
	FSM_BIT_6:		TXD <= DAT[6];
	FSM_BIT_7:		TXD <= DAT[7];
	FSM_BIT_STOP:	TXD <= 1;
	default:			TXD <= 1;
	endcase


endmodule