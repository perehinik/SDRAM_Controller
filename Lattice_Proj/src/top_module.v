`default_nettype none

module sdram_uart_top 
(
input wire            clk,
input wire            nreset,
input wire            uart_rx,
output wire           uart_tx,

inout  wire  [15:0]   DB,		//SDRAM
output wire  [12:0]   ADR,
output wire  [1:0]    BA,
output wire  [1:0]    DQM,
output wire           nCAS,
output wire           CKE,
output wire           nRAS,
output wire           nWE,
output wire           nCS,
output wire           SD_CLK,

output wire  [3:0]    LED
);
wire rst = !nreset;

wire         rx_stb,
             tx_stb,
			 rx_ack, 
             tx_ack;wire [7:0]   rx_dat,
             tx_dat;

wire CLK_133MHZ;

Clock_DCMA clk_multiply(
.CLKI(clk),
.CLKOP(CLK_133MHZ)
);

uart_rx uart1
(
.CLK         (CLK_133MHZ),
.RST         (rst),

.RXD         (uart_rx),

.STBo        (rx_stb),
.DATo        (rx_dat),
.ACKo        (rx_ack)
);

all_modules all_modules1
(
.CLK_133MHZ        (CLK_133MHZ), // CLK 	
.rst        (rst),

.rx_dat     (rx_dat),//8b
.rx_stb     (rx_stb),
.rx_ack     (rx_ack),

.tx_dat     (tx_dat),//8b
.tx_stb     (tx_stb),
.tx_ack     (tx_ack),	 // 	  	 required!

.DB         (DB),		//SDRAM
.ADR        (ADR),
.BA         (BA),
.DQM        (DQM),
.nCAS       (nCAS),
.CKE        (CKE),
.nRAS       (nRAS),
.nWE        (nWE),
.nCS        (nCS),
.SD_CLK     (SD_CLK),

.status     (LED)
);
 
uart_tx uart_tx1
(
.CLK        (CLK_133MHZ),
.RST        (rst),

.TXD        (uart_tx),

.STBi       (tx_stb),
.DATi       (tx_dat),
.ACKi       (tx_ack)
);
endmodule

