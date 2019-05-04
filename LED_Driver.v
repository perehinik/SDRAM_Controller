//////////////////////////////////////////////////////////////////////////////////
// vim:set shiftwidth=3 softtabstop=3 expandtab:
// Engineer:      Ivan Perehiniak
//	               iv.perehinik@gmail.com
// Project:       SDRAM_Controller 
// Revision:      1
// Data:          2019.05.01
/////////////////////////////////////////////////////////////////////////////////

module LED_Driver(
input                CLK,
input       [3:0]    dot_index,
input       [23:0]   data_in,
output reg  [7:0]    LED_code,//A-H
output reg  [5:0]    LED_index
);
wire        [3:0]    LED_num; //timer output
reg         [3:0]    data;
wire        [19:0]   refresh_counter;
wire                 LED_timer_reset;
wire                 LED_finish;

Timer #(20) LED8Timer
(
.CLK           (CLK),
.period        (20'h5FFFA),
.timer_reset   (LED_timer_reset),
.count_finish  (LED_finish),
.count         (refresh_counter)
);

always @(*)
begin
case (LED_num)
3'd0:begin
         data       <= data_in [3:0];
         LED_index  <= 6'b111110;
     end
3'd1:begin
         data       <= data_in [7:4];
         LED_index  <= 6'b111101;
     end
3'd2:begin
         data       <= data_in [11:8];
         LED_index  <= 6'b111011;
     end
3'd3:begin
         data       <= data_in [15:12];
         LED_index  <= 6'b110111;
     end
3'd4:begin
         data       <= data_in [19:16];
         LED_index  <= 6'b101111;
     end
3'd5:begin
         data       <= data_in [23:20];
         LED_index  <= 6'b011111;
     end
default:begin
         data       <= 4'b0;
         LED_index  <= 6'b111111;
     end
endcase

case (data)
   4'h0:	LED_code[7:1]  <= 7'b0000001; //0
   4'h1:	LED_code[7:1]  <= 8'b1001111; //1
   4'h2:	LED_code[7:1]  <= 8'b0010010; //2
   4'h3:	LED_code[7:1]  <= 8'b0000110; //3
   4'h4:	LED_code[7:1]  <= 8'b1001100; //4
   4'h5:	LED_code[7:1]  <= 8'b0100100; //5
   4'h6:	LED_code[7:1]  <= 8'b0100000; //6
   4'h7:	LED_code[7:1]  <= 8'b0001111; //7
   4'h8:	LED_code[7:1]  <= 8'b0000000; //8
   4'h9:	LED_code[7:1]  <= 8'b0000100; //9
   4'hA:	LED_code[7:1]  <= 8'b0001000; //A
   4'hB:	LED_code[7:1]  <= 8'b1100000; //b
   4'hC:	LED_code[7:1]  <= 8'b0110001; //C
   4'hD:	LED_code[7:1]  <= 8'b1000010; //d
   4'hE:	LED_code[7:1]  <= 8'b0110000; //E
   4'hF: LED_code[7:1]  <= 8'b1111111; //all oFF;
endcase
LED_code[0] <= (dot_index == LED_num)? 1'b0:1'b1;
end
assign LED_timer_reset = LED_finish;
assign LED_num         = refresh_counter [18:16];
endmodule

