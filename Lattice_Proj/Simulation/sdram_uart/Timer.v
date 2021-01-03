//////////////////////////////////////////////////////////////////////////////////
// vim:set shiftwidth=3 softtabstop=3 expandtab:
// Engineer:      Ivan Perehiniak
//	               iv.perehinik@gmail.com
// Project:       SDRAM_Controller 
// Revision:      1
// Data:          2019.05.01
/////////////////////////////////////////////////////////////////////////////////

module Timer
#(
parameter   SIZE = 16
)	
(
input  wire                 CLK,
input  wire     [SIZE-1:0]  period,
input  wire                 timer_reset,
output wire                 count_finish,
output reg  [SIZE-1:0]  count = 0
);
assign count_finish = (count >= period) ? 1'b1:1'b0;

always @ (posedge CLK)
begin
   if (timer_reset == 1'b1)   count <= 1'b0;
   else if(count <  period)   count <= count + 1'b1;
end
endmodule
