module sdram_to_uart #(
parameter width = 8
)
(
	input  wire        CLK, // CLK 
	input  wire        RST, // Active high reset			
	
	output reg  [width-1:0]  	o_data,
	output wire  				o_stb,
	input  wire  	  			o_ack,

	input  wire	 [15:0]			sd_data,
	input  wire                 i_stb_rd,
	input  wire                 i_stb_wt,
	output wire                 i_ack
);

reg [1:0]   state,
            next_state;
reg [15:0]  sd_data_temp;
reg [1:0]   rd_wt_operation;

localparam [2:0]IDLE       = 2'd0,
				WRITE_DATA1= 2'd1,   
				WRITE_DATA2= 2'd2;

assign i_ack = (RST)                                          ? 1'b0 :
	           (state == IDLE & (i_stb_rd | i_stb_wt))        ? 1'b1 : 1'b0;

assign o_stb = (RST)                                          ? 1'b0 :
               (state == WRITE_DATA1 | state == WRITE_DATA2 ) ? 1'b1 : 1'b0;

always @(posedge CLK or posedge RST)
	if(RST)     state <= IDLE;
	else 		state <= next_state;

always @(posedge CLK)
case (state)
IDLE:if(i_stb_rd)
      begin
      	 sd_data_temp <= sd_data;
         rd_wt_operation <= 2'b10;		 
      end
      else if(i_stb_wt)
	  begin
	     sd_data_temp <= sd_data;
         rd_wt_operation <= 2'b01;
      end
      else 	rd_wt_operation <= 2'b0;
endcase

always @(*)
begin	
o_data = 8'h33;
case (state) 
WRITE_DATA1:if(rd_wt_operation[1])o_data = sd_data_temp[15:8];
	        else o_data = 8'hAA;
WRITE_DATA2:if(rd_wt_operation[1])o_data = sd_data_temp[7:0];
	        else o_data = 8'hAB;
endcase
end

always @(*)
begin
next_state = state;
case (state)
IDLE:        if(i_stb_wt | i_stb_rd)next_state = WRITE_DATA1;
WRITE_DATA1: if(o_ack)next_state = WRITE_DATA2;
WRITE_DATA2: if(o_ack)next_state = IDLE;
endcase	
end

endmodule