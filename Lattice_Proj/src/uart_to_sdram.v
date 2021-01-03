module uart_to_sdram // 	 
#(
parameter width = 8
)
(
	input  wire        CLK, // CLK 
	input  wire        RST, // Active high reset			
	
	input  wire  [width-1:0]  	i_data,
	input  wire  				i_stb,
	output wire  	  			i_ack,

	output reg 	 [23:0]			sd_adr,
	output reg	 [15:0]			sd_data,
	
	output wire                 o_stb_rd,
	output wire                 o_stb_wt,
	input  wire                 o_ack
);
					      
reg [2:0] state,next_state;
reg [1:0] rd_wt_operation;

localparam [2:0]IDLE      = 3'd0,
                READ_ADR1 = 3'd1,
				READ_ADR2 = 3'd2,
				READ_ADR3 = 3'd3,
				NOP       = 3'd4,
				READ_DATA1= 3'd5,   
				READ_DATA2= 3'd6,
                NOP2      = 3'd7;
				
assign i_ack = (RST)                                          ? 1'b0 :
	           (state != NOP & state != NOP2 & i_stb)         ? 1'b1 :
			   (state == NOP && i_stb && rd_wt_operation[0])  ? 1'b1 : 1'b0;

assign o_stb_rd = (RST)                                       ? 1'b0 :
                  (state == NOP & rd_wt_operation[1])         ? 1'b1 : 1'b0;

assign o_stb_wt = (RST)                                       ? 1'b0 :
                  (state == NOP2 & rd_wt_operation[0])        ? 1'b1 : 1'b0;

always @(posedge CLK or posedge RST)
	if (RST)  state <= IDLE;
	else state <= next_state;

always @(posedge CLK)
case (state)
IDLE:       if     (i_data == 8'h52) rd_wt_operation <= 2'b10;     //read code  -ASCII "R"
	        else if(i_data == 8'h57) rd_wt_operation <= 2'b01;     //write code -ASCII "W"
			else                     rd_wt_operation <= 2'b00;
READ_ADR1:  sd_adr [23:16]  <=  i_data;
READ_ADR2:  sd_adr [15:8]   <=  i_data;
READ_ADR3:  sd_adr [7:0]    <=  i_data;
READ_DATA1: sd_data[15:8]   <=  i_data;
READ_DATA2: sd_data[7:0]    <=  i_data;
endcase

always @(*)	
begin
next_state = state;
case (state)
IDLE:       if(i_stb & (i_data == 8'h52 | i_data == 8'h57))next_state = READ_ADR1;	 
READ_ADR1:  if(i_stb)next_state = READ_ADR2;
READ_ADR2:  if(i_stb)next_state = READ_ADR3;
READ_ADR3:  if(i_stb)next_state = NOP;
NOP:		if     (o_ack && rd_wt_operation[1])next_state = IDLE;
	        else if(i_stb && rd_wt_operation[0])next_state = READ_DATA1;
READ_DATA1: if(i_stb)next_state = READ_DATA2;
READ_DATA2: if(i_stb)next_state = NOP2;
NOP2:       if(o_ack)next_state= IDLE;	
endcase
end
endmodule