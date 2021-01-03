module all_modules
(
input  wire          CLK_133MHZ,	
input  wire          rst,
input  wire  [7:0]   rx_dat,
input  wire          rx_stb,
output wire          rx_ack,

output wire  [7:0]   tx_dat,
output wire          tx_stb,
input  wire          tx_ack,	

inout  wire  [15:0]   DB,		//SDRAM PINS
output wire  [12:0]   ADR,
output wire  [1:0]    BA,
output wire  [1:0]    DQM,
output wire           nCAS,
output wire           CKE,
output wire           nRAS,
output wire           nWE,
output wire           nCS,
output wire           SD_CLK,   

output wire  [3:0]    status
);


wire [7:0] rx_dat1;
wire       rx_stb1,
           rx_ack1;

fifo #(
.length    (16),
.width     (8) 
)
fifo1// 	 
(
.CLK       (CLK_133MHZ),
.RST       (rst), 		
	
.i_data    (rx_dat),
.i_stb     (rx_stb),
.i_ack     (rx_ack),
	
.o_data    (rx_dat1),
.o_stb     (rx_stb1),
.o_ack     (rx_ack1)
 ); 

wire   [23:0]   rx_sd_adr;
wire   [15:0]   rx_sd_data,tx_sd_data;
wire            rd_i_ack,
                wt_i_ack,
                stu_ack,
                o_stb_rd,
                o_stb_wt;

wire  uts_ack1 = rd_i_ack | wt_i_ack;



uart_to_sdram #(
.width(8)
) 
uart_to_sdram1
(
.CLK        (CLK_133MHZ),
.RST        (rst),			
	
.i_data     (rx_dat1),
.i_stb      (rx_stb1),
.i_ack      (rx_ack1),

.sd_adr     (rx_sd_adr),
.sd_data    (rx_sd_data),
	
.o_stb_rd   (o_stb_rd),
.o_stb_wt   (o_stb_wt),
.o_ack      (uts_ack1)
);

wire rd_o_stb1,wt_o_stb1;

SDRAM_Controller sdram_controller1
(
.CLK            (CLK_133MHZ), 
.RST            (rst),
//read interface
.rd_busy_flag   (),  
.rd_i_stb       (o_stb_rd),
.rd_i_ack       (rd_i_ack), 
.rd_o_stb       (rd_o_stb1),
.rd_o_ack       (stu_ack),
.RD_ADR         (rx_sd_adr),       
.RD_DATA        (tx_sd_data),  
//write interface
.wt_busy_flag   (), 
.wt_i_stb       (o_stb_wt),
.wt_i_ack       (wt_i_ack),
.wt_o_stb       (wt_o_stb1),
.wt_o_ack       (stu_ack),
.WT_ADR         (rx_sd_adr),       
.WT_DATA        (rx_sd_data),
//sdram pins
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

wire [7:0] tx_dat1;
wire       tx_stb1,
           tx_ack1;
		   
sdram_to_uart #(
.width     (8)
)
sdram_to_uart1
(
.CLK       (CLK_133MHZ),
.RST       (rst),		
.sd_data   (tx_sd_data),
.i_stb_rd  (rd_o_stb1),
.i_stb_wt  (wt_o_stb1),
.i_ack     (stu_ack),

.o_data    (tx_dat1),
.o_stb     (tx_stb1),
.o_ack     (tx_ack1)
);


fifo #(
.length    (16),
.width     (8) 
)
fifo2// 	 
(
.CLK       (CLK_133MHZ), 
.RST       (rst), 	
	
.i_data    (tx_dat1),
.i_stb     (tx_stb1),
.i_ack     (tx_ack1),
	
.o_data    (tx_dat),
.o_stb     (tx_stb),
.o_ack     (tx_ack)	 
 ); 
 
 
reg [3:0] status_temp; 
always @(posedge CLK_133MHZ or posedge rst)
	if (rst) status_temp <= 4'd0;
	else if (tx_stb1) status_temp <= tx_dat1[3:0];
assign status = status_temp;
 
 endmodule