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
					      
reg [3:0] state,next_state;
reg [1:0] rd_wt_operation;

localparam [3:0]IDLE        = 4'd0,
                READ_ADR1   = 4'd1,
				READ_ADR2   = 4'd2,
				READ_ADR3   = 4'd3,
				NOP         = 4'd4,
				READ_COUNT1 = 4'd5,
				READ_COUNT2	= 4'd6,
				NOP2        = 4'd7,
				READ_DATA1  = 4'd8,   
				READ_DATA2  = 4'd9,
                NOP3        = 4'd10;
				
assign i_ack = (RST)                                             ? 1'b0 :
	           (state != NOP2 & state != NOP3 & i_stb)           ? 1'b1 : 1'b0;

assign o_stb_rd = (RST)                                          ? 1'b0 :
                  (state == NOP3 & rd_wt_operation[1])           ? 1'b1 : 1'b0;

assign o_stb_wt = (RST)                                          ? 1'b0 :
                  (state == NOP3 & rd_wt_operation[0])           ? 1'b1 : 1'b0;

always @(posedge CLK or posedge RST)
	if (RST)  state <= IDLE;
	else state <= next_state;

reg [15:0] data_array_len;

always @(posedge CLK)
case (state)
IDLE:        if     (i_data == 8'h52) rd_wt_operation <= 2'b10;     //read code  -ASCII "R"
	         else if(i_data == 8'h57) rd_wt_operation <= 2'b01;     //write code -ASCII "W"
			 else                     rd_wt_operation <= 2'b00;
READ_ADR1:   sd_adr [23:16]         <=  i_data;
READ_ADR2:   sd_adr [15:8]          <=  i_data;
READ_ADR3:   sd_adr [7:0]           <=  i_data;
READ_COUNT1: data_array_len[15:8]   <=  i_data;
READ_COUNT2: data_array_len[7:0]    <=  i_data;
READ_DATA1:  sd_data[15:8]          <=  i_data;
READ_DATA2:  sd_data[7:0]           <=  i_data;
NOP3:        if(o_ack)sd_adr <= sd_adr + 1;
endcase

wire data_tim_reset = (state == IDLE) ? 1'b1 : 1'b0; // reset data counter in IDLE state
wire data_tim_flag,timout_tim_flag;
wire data_count_clk = (state == NOP2) ? 1'b1 : 1'b0; 
wire timout_tim_reset = (state != NOP2 & state != READ_DATA1 & state != READ_DATA2) ? 1'b1 : 1'b0;

Timer1 #(16) data_counter(
.CLK           (data_count_clk),
.RST           (RST | data_tim_reset),
.period        (data_array_len),
.count_finish  (data_tim_flag),
.count()
);

Timer1 #(16) timout_counter(
.CLK           (CLK),
.RST           (RST | timout_tim_reset),
.period        (16'hEEEE),
.count_finish  (timout_tim_flag),
.count()
);

always @(*)	
begin
next_state     = state;
case (state)
IDLE:        if(i_stb & (i_data == 8'h52 | i_data == 8'h57))next_state = READ_ADR1;	 
READ_ADR1:   if(i_stb)next_state = READ_ADR2;
READ_ADR2:   if(i_stb)next_state = READ_ADR3;
READ_ADR3:   if(i_stb)next_state = NOP;
NOP:		 if(i_stb)next_state = READ_COUNT1;
READ_COUNT1: if(i_stb)next_state = READ_COUNT2;
READ_COUNT2: if(i_stb)next_state = NOP2;
NOP2:        if     (rd_wt_operation[1])next_state = NOP3;
	         else if(i_stb && rd_wt_operation[0])next_state = READ_DATA1;
             else if(timout_tim_flag)            next_state = IDLE;					 
READ_DATA1:  if(i_stb)next_state = READ_DATA2;
	         else if(timout_tim_flag)            next_state = IDLE;	
READ_DATA2:  if(i_stb)next_state = NOP3;
	         else if(timout_tim_flag)            next_state = IDLE;	
NOP3:        if      (o_ack &  data_tim_flag) next_state = IDLE;
             else if (o_ack & !data_tim_flag) next_state = NOP2;	
endcase
end
endmodule