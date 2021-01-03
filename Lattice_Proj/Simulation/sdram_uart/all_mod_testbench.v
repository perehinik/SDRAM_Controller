`timescale 1 ns / 1 ps

module sdram_uart_testbench; 

reg               tb_clk; // CLK 	
reg               tb_rst;

reg    [7:0]      tb_rx_dat;//8b
reg               tb_rx_stb;
wire              tb_rx_ack;

wire   [7:0]      tb_tx_dat;//8b
wire              tb_tx_stb;
wire              tb_tx_ack;	 // 	  	 required!

wire   [15:0]     tb_DB;		//SDRAM
wire   [12:0]     tb_ADR;
wire   [1:0]      tb_BA;
wire   [1:0]      tb_DQM;
wire              tb_nCAS;
wire              tb_CKE;
wire              tb_nRAS;
wire              tb_nWE;
wire              tb_nCS;
wire              tb_SD_CLK;
 
 
all_modules test_all
(
.CLK_133MHZ (tb_clk), 	
.rst        (tb_rst),
.rx_dat     (tb_rx_dat),
.rx_stb     (tb_rx_stb),
.rx_ack     (tb_rx_ack),

.tx_dat     (tb_tx_dat),
.tx_stb     (tb_tx_stb),
.tx_ack     (tb_tx_ack),
   
.DB         (tb_DB),		//SDRAM
.ADR        (tb_ADR),
.BA         (tb_BA),
.DQM        (tb_DQM),
.nCAS       (tb_nCAS),
.CKE        (tb_CKE),
.nRAS       (tb_nRAS),
.nWE        (tb_nWE),
.nCS        (tb_nCS),
.SD_CLK     (tb_SD_CLK)	
);				   

always begin
	#2 tb_clk = !tb_clk;
end

reg state;

localparam NEW_DATA = 1'b0,
           WAIT_ACK = 1'b1;

assign tb_tx_ack = tb_tx_stb; 

reg [4:0] data_to_send;

always @(posedge tb_clk or posedge tb_rst)
if (tb_rst) begin
	tb_rx_stb        <= 0;
    tb_rx_dat        <= 0;
	data_to_send     <= 5'h45;
	state            <= NEW_DATA;
	end
else begin
case (state)
NEW_DATA: begin
		tb_rx_dat    <= {3'b010,data_to_send};
		tb_rx_stb    <= 1'b1;
		state        <= WAIT_ACK; 
	end
WAIT_ACK: 
	if (tb_rx_ack) begin
		state        <= NEW_DATA;
		tb_rx_stb    <= 1'b0;
		data_to_send <= data_to_send + 1;
		end
	else begin
		state        <= WAIT_ACK;
		tb_rx_stb    <= 1'b1;
		end	
endcase
end

initial begin
tb_clk    = 0;
tb_rst    = 1;

#10
tb_rst    = 0;
end
endmodule