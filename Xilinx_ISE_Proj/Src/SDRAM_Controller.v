//////////////////////////////////////////////////////////////////////////////////
// vim:set shiftwidth=3 softtabstop=3 expandtab:
// Engineer:      Ivan Perehiniak
//	               iv.perehinik@gmail.com
// Project:       SDRAM_Controller 
// Revision:      1
// Data:          2019.05.01
// Tested with H57V2562GTR-75C
/////////////////////////////////////////////////////////////////////////////////

module SDRAM_Controller
(
input              CLK,          //CLK
output             rd_busy_flag, //controller interface
input              rd_start_trig,//
input       [23:0] RD_ADR,       //
output reg  [15:0] RD_DATA,      //
output             wt_busy_flag, //
input              wt_start_trig,//
input       [23:0] WT_ADR,       //
input       [15:0] WT_DATA,      //
inout       [15:0] SD_P_DATA,    //output to SDRAM pins
output reg  [1:0]  SD_P_BA,      //
output reg  [12:0] SD_P_ADR,     //	
output reg         SD_P_nCAS,    //
output reg         SD_P_nRAS,    //
output reg         SD_P_nWE,     //
output             SD_P_CKE,     //
output      [1:0]  SD_P_DQM,     //
output             SD_P_nCS,     //
output             SD_P_CLK      //
);

//to do: Add parameters with adress(row/column),data length, refresh cycle time...
parameter          CAS_DELAY       = 2,
                   REF_DELAY       = 8,
                   INIT_REF_CYCL   = 8,
                   REF_ALL_CYCL    = 8192;
reg      [23:0]    SD_ADR_TEMP; 	  //23:22-bank, 21:9 - row, 8:0 - column
reg      [15:0]    SD_DATA_TEMP;
reg                init_done       = 1'b0;
wire               init_tim_flag,refresh_tim_flag,delay_tim_flag,repeat_tim_flag;
wire               refresh_tim_reset;
reg                delay_tim_reset,repeat_tim_reset;
reg      [3:0]     delay_tim_period;
wire     [13:0]    repeat_tim_period;
wire               arb_reload;
wire     [2:0]     arb_delay;
wire               bank_en;
reg      [1:0]     rd_wt_operation;
reg      [3:0]     state,next_state;

localparam         IDLE       = 4'd0,  //IDLE

                   PCH_ALL    = 4'd1,  //INIT/REFRESH
                   NOP1       = 4'd2,  //
                   REFRESH    = 4'd3,  //
                   NOP2       = 4'd4,  //
                   SEND_MRS   = 4'd5,  //
                   NOP3       = 4'd6,  //
						
                   ROW_ACT    = 4'd7,  //READ/WRITE
                   RD_WT_NOP  = 4'd8,  //
                   WRITE      = 4'd9,  //
                   READ_START = 4'd10, //
                   READ_NOP   = 4'd11, //
                   READ       = 4'd12; //

always @(posedge CLK) //go to next state
begin
state              <= next_state;
end

always @(posedge CLK) //refresh flip-flops
begin
case (state)
IDLE:begin	
     rd_wt_operation                 <= 2'b0;
     SD_ADR_TEMP                     <= 24'b0; 	
     SD_DATA_TEMP                    <= 16'b0;
     if (wt_start_trig & init_done)
     begin
          if(bank_en)rd_wt_operation <= 2'b01;
          SD_ADR_TEMP                <= WT_ADR;       //copy adres and data to temporary register 
          SD_DATA_TEMP               <= WT_DATA;
     end
     else if (rd_start_trig & init_done)
     begin
          if(bank_en)rd_wt_operation <= 2'b10;
          SD_ADR_TEMP                <= RD_ADR;       //copy adres to temporary register 
     end
end
SEND_MRS: init_done                  <= 1'b1;
READ:     RD_DATA 						 <= SD_P_DATA;    //read data
endcase			
end


always @(*) //set next_state
begin
next_state              = state;      //set default values
delay_tim_period        = CAS_DELAY;  //
delay_tim_reset         = 1'b1;       //
repeat_tim_reset        = 1'b1;       //
case (state)
IDLE:begin	
     if ((init_tim_flag & !init_done) | refresh_tim_flag)
          next_state           = PCH_ALL;
     else if ((wt_start_trig | rd_start_trig) & init_done)
     begin
         if(bank_en)next_state = ROW_ACT;
         else       next_state = IDLE;
     end
end
PCH_ALL:begin
     next_state                = NOP1;
     delay_tim_reset           = 1'b0;        //start delay timer
end
NOP1:begin	
     delay_tim_reset           = 1'b0;
     if (delay_tim_flag)
     begin
         next_state            = REFRESH;
         repeat_tim_reset      = 1'b0;       //start INIT refresh cycle
         delay_tim_reset       = 1'b1;
     end
end
REFRESH:begin	
     next_state                = NOP2;
     delay_tim_period          = REF_DELAY;  //set delay period
     delay_tim_reset           = 1'b0;       //start delay timer
end
NOP2:begin
     delay_tim_period          = REF_DELAY;
     delay_tim_reset           = 1'b0;
     repeat_tim_reset          = 1'b0;
     if (delay_tim_flag & !repeat_tim_flag)
     begin
         next_state            = REFRESH;
         delay_tim_reset       = 1'b1;
     end
     else if (delay_tim_flag & repeat_tim_flag)
     begin
         if(init_done)next_state	= IDLE;
         else         next_state	= SEND_MRS;
		   delay_tim_reset         = 1'b1;
         repeat_tim_reset        = 1'b1;
	  end
end
SEND_MRS:next_state            = NOP3;
NOP3:begin
     delay_tim_reset           = 1'b0;
     if (delay_tim_flag)next_state = IDLE;
end
ROW_ACT:begin
     next_state                = RD_WT_NOP;
     delay_tim_reset           = 1'b0; 	
end
RD_WT_NOP:begin
     delay_tim_reset           = 1'b0;
     if (delay_tim_flag & rd_wt_operation == 2'b01)
     begin
         next_state            = WRITE;
         delay_tim_reset       = 1'b1;
     end
     else if (delay_tim_flag & rd_wt_operation == 2'b10)
     begin
         next_state            = READ_START;
         delay_tim_reset       = 1'b1;
     end
end
WRITE:next_state               = IDLE;
READ_START:begin
     next_state                = READ_NOP;
     delay_tim_reset           = 1'b0; 	
end	
READ_NOP:begin
     delay_tim_reset           = 1'b0;
     if (delay_tim_flag)next_state = READ;
end	
READ:next_state                = IDLE;
default:next_state             = IDLE;
endcase			
end

always @(*)
begin
case (state)
IDLE,NOP1,NOP2,NOP3,RD_WT_NOP,READ_NOP,READ:begin //NOP
   SD_P_nRAS            = 1'b1;
   SD_P_nCAS            = 1'b1;
   SD_P_nWE             = 1'b1;
   SD_P_BA              = 2'b0;
   SD_P_ADR             = 13'b0;
end
PCH_ALL:begin //precharge all banks
   SD_P_nRAS            = 1'b0; 
   SD_P_nCAS            = 1'b1;
   SD_P_nWE             = 1'b0;
   SD_P_BA              = 2'b0;
   SD_P_ADR             = 13'b0010000000000;
end
REFRESH:begin //refresh
   SD_P_nRAS            = 1'b0;
   SD_P_nCAS            = 1'b0;
   SD_P_nWE             = 1'b1;
   SD_P_BA              = 2'b0;
   SD_P_ADR             = 13'b0;
end
SEND_MRS:begin //send MRS
   SD_P_nRAS            = 1'b0; 
   SD_P_nCAS            = 1'b0;
   SD_P_nWE             = 1'b0;
   SD_P_BA              = 2'b0;
   SD_P_ADR             = 13'b0000000110000;
end
ROW_ACT:begin //Activate row
   SD_P_nRAS            = 1'b0; 
   SD_P_nCAS            = 1'b1;
   SD_P_nWE             = 1'b1;
   SD_P_BA              = SD_ADR_TEMP[23:22];
   SD_P_ADR             = SD_ADR_TEMP[21:9];
end
WRITE:begin //WRITE
   SD_P_nRAS            = 1'b1; 
   SD_P_nCAS            = 1'b0;
   SD_P_nWE             = 1'b0;
   SD_P_BA              = SD_ADR_TEMP[23:22];
   SD_P_ADR             = {4'b0010, SD_ADR_TEMP[8:0]};
end
READ_START:begin //READ
   SD_P_nRAS            = 1'b1; 
   SD_P_nCAS            = 1'b0;
   SD_P_nWE             = 1'b1;
   SD_P_BA              = SD_ADR_TEMP[23:22];
   SD_P_ADR             = {4'b0010, SD_ADR_TEMP[8:0]};
end
default:begin //NOP
   SD_P_nRAS            = 1'b1;
   SD_P_nCAS            = 1'b1;
   SD_P_nWE             = 1'b1;
   SD_P_BA              = 2'b0;
   SD_P_ADR             = 13'b0;
end
endcase
end 

CLK_Out_Buf Out1(
.buf_in        (CLK),
.buf_out       (SD_P_CLK)
);

Timer #(16) initTimer(
.CLK           (CLK),
.period        (16'd26667),
.timer_reset   (1'b0),
.count_finish  (init_tim_flag),
.count()
);

Timer #(24) refreshTimer(
.CLK           (CLK),
.period        (24'd8450000),
.timer_reset   (refresh_tim_reset),
.count_finish  (refresh_tim_flag),
.count()
);

Timer #(4) delayTimer(
.CLK           (CLK),
.period        (delay_tim_period),
.timer_reset   (delay_tim_reset),
.count_finish  (delay_tim_flag),
.count()
);

wire delay_out_clk;
BUFG  delay_out_bufg (.I(delay_tim_flag), .O(delay_fin_clk));

Timer #(14) repeatTimer(
.CLK           (delay_fin_clk),
.period        (repeat_tim_period), 
.timer_reset   (repeat_tim_reset),
.count_finish  (repeat_tim_flag),
.count()
);

bankArbiter arbBank( 
.CLK           (CLK),
.reload_en     (arb_reload),
.bank_num      (SD_ADR_TEMP[23:22]),
.bank_delay    ({SD_ADR_TEMP[23:22],arb_delay}),//5:4 - bank, 3:0 - delay
.bank_enable   (bank_en)
);

assign arb_reload          = (state == READ | state == WRITE)  ? 1'b1 :1'b0;
assign arb_delay           = (state == WRITE)                  ? 3'd5 :
                             (state == READ)                   ? 3'd3 : 3'd0;									  
assign refresh_tim_reset   = (state == REFRESH)                ? 1'b1 : 1'b0;
assign repeat_tim_period   = (init_done)                       ? REF_ALL_CYCL : INIT_REF_CYCL; 	//number of refresh cycles

assign wt_busy_flag        = rd_wt_operation[0]; 
assign rd_busy_flag        = rd_wt_operation[1];

assign SD_P_DATA           = (rd_wt_operation != 2'b10)        ? SD_DATA_TEMP : 16'bz;				//3-state buffer
assign SD_P_DQM [1:0]      = (rd_wt_operation != 2'b00)        ? 2'b00 : 2'b11;
assign SD_P_nCS            = 1'b0;
assign SD_P_CKE            = 1'b1;
endmodule


module bankArbiter(
input         CLK,
input         reload_en,
input  [1:0]  bank_num,
input  [4:0]  bank_delay, //4:3 - bank, 2:0 - delay
output        bank_enable
);
reg [2:0] delay [3:0];

always @ (posedge CLK)
begin
	if      (bank_delay[4:3] == 2'd0 & bank_delay[2:0] != 0 & reload_en == 1'b1) delay[0] <= bank_delay[2:0];
	else if (delay[0] != 3'b0)                                                   delay[0] <= delay[0] - 1'b1;
	else                                                                         delay[0] <= 3'b0;
	
	if      (bank_delay[4:3] == 2'd1 & bank_delay[2:0] != 0 & reload_en == 1'b1) delay[1] <= bank_delay[2:0];
	else if (delay[1] != 3'b0)                                                   delay[1] <= delay[1] - 1'b1;
	else                                                                         delay[1] <= 3'b0;
	
	if      (bank_delay[4:3] == 2'd2 & bank_delay[2:0] != 0 & reload_en == 1'b1) delay[2] <= bank_delay[2:0];
	else if (delay[2] != 3'b0)                                                   delay[2] <= delay[2] - 1'b1;
	else                                                                         delay[2] <= 3'b0;
	
	if      (bank_delay[4:3] == 2'd3 & bank_delay[2:0] != 0 & reload_en == 1'b1) delay[3] <= bank_delay[2:0];
	else if (delay[3] != 3'b0)                                                   delay[3] <= delay[3] - 1'b1;
	else                                                                         delay[3] <= 3'b0;
end
assign bank_enable =((bank_num == 2'd0 & delay[0] == 3'b0)|
                     (bank_num == 2'd1 & delay[1] == 3'b0)|
                     (bank_num == 2'd2 & delay[2] == 3'b0)|
                     (bank_num == 2'd3 & delay[3] == 3'b0)) ? 1'b1 : 1'b0;
endmodule

module CLK_Out_Buf
(
input  buf_in,
output buf_out
);
wire clk_out;
ODDR2 #(
   .DDR_ALIGNMENT	("NONE"), 	// Sets output alignment to "NONE", "C0" or "C1" 
   .INIT				(1'b0),    	// Sets initial state of the Q output to 1'b0 or 1'b1
   .SRTYPE			("SYNC") 	// Specifies "SYNC" or "ASYNC" set/reset
) ODDR2_2inst (
   .Q		(clk_out),  			// 1-bit DDR output data SD_CLK
   .C0	(buf_in),   			// 1-bit clock input
   .C1	(~buf_in), 				// 1-bit clock input
   .CE	(1'b1), 					// 1-bit clock enable input
   .D0	(1'b0), 					// 1-bit data input (associated with C0)
   .D1	(1'b1), 					// 1-bit data input (associated with C1)
   .R		(1'b0),   				// 1-bit reset input
   .S		(1'b0)    				// 1-bit set input
   );
OBUF clkout2_buf(.I (clk_out),.O (buf_out));
endmodule
