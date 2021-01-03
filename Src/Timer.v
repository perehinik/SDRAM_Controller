//////////////////////////////////////////////////////////////////////////////////
// vim:set shiftwidth=3 softtabstop=3 expandtab:
// Engineer:      Ivan Perehiniak
//	               iv.perehinik@gmail.com
// Project:       SDRAM_Controller 
// Revision:      1
// Data:          2019.05.01
/////////////////////////////////////////////////////////////////////////////////

module Timer
(
input                   CLK,
input       [SIZE-1:0]  period,
input                   timer_reset,
output                  count_finish,
output reg  [SIZE-1:0]  count = 0
);
parameter   SIZE = 16;
assign count_finish = (count >= period) ? 1'b1:1'b0;

always @ (posedge CLK)
begin
   if (timer_reset == 1'b1)   count <= 1'b0;
   else if(count <  period)   count <= count + 1'b1;
end
endmodule
