module fifo // 	 
#(
parameter length = 16,
parameter width = 8
)
(
	input wire        CLK, // CLK 
	input wire        RST, // Active high reset			
	
	input wire  [width-1:0]  	i_data,
	input wire  		i_stb,
	output wire  	  	i_ack,
	
	output wire  [width-1:0] 	o_data,
	output wire  		o_stb,
	input wire  	  	o_ack	 // 	  	 required!

  ); 	
  
  localparam length_bits = $clog2(length) - 1; 	 
  
  reg [length_bits:0] i_addr=0;
  reg [length_bits:0] o_addr;  
  
  wire [length_bits:0] i_addr_1 = i_addr + 'd1;
  
  wire empty = i_addr == o_addr;
  wire full  = i_addr_1 == o_addr;
  
  
  reg [width-1:0] m_RAM [0:length-1]	  ;
  
  reg [width-1:0] s_RAM; 
  
  always@(posedge CLK or posedge RST)
	  if(RST) i_addr <= 'd0;
	  else if(i_stb & (!full)) i_addr <= i_addr + 'd1; 
	  else i_addr <= i_addr;	   		  
  
  always@(posedge CLK)
	  if(i_stb & (!full)) m_RAM[i_addr] <= i_data; 

		    
  assign i_ack = i_stb & (!full);  
  
  
  // out 
  
  reg s_stb;
  wire s_read = o_stb? o_ack & (!empty): (!empty) ;
  
  always@(posedge CLK or posedge RST)
	  if(RST) o_addr <= 'd0;
	  else if(s_read) o_addr <= o_addr + 'd1;	 
	  else o_addr <= o_addr;
		  
  
  always@(posedge CLK)
	  if(s_read)s_RAM <= m_RAM[o_addr];
	  else s_RAM <= s_RAM;
		  
		  
always@(posedge CLK or posedge RST)
	if(RST) s_stb <= 'd0;
	else if(s_read) s_stb <= 'd1; 
	else if(o_ack) s_stb <= 'd0;
	else s_stb <= s_stb;
		
  
  assign o_data = s_RAM;
  assign o_stb = s_stb; 

  
endmodule

/*
module fifo // 	 
#(
parameter length = 16,
parameter width = 8
)
(
	input wire        CLK, // CLK 
	input wire        RST, // Active high reset			
	
	input wire  [width-1:0]  	i_data,
	input wire  		i_stb,
	output wire  	  	i_ack,
	
	output wire  [width-1:0] 	o_data,
	output wire  		o_stb,
	input wire  	  	o_ack	 // 	  	 required!

  ); 	
  
  localparam length_bits = $clog2(length) - 1; 	 
  
  reg [length_bits:0] i_addr;
  reg [length_bits:0] o_addr;  
  
  wire [length_bits:0] i_addr_1 = i_addr + 'd1;
  
  wire empty = i_addr == o_addr;
  wire full  = i_addr_1 == o_addr;
  
  
  reg [width-1:0] m_RAM [0:length-1]	  ;
  
  reg [width-1:0] s_RAM; 
  
  always@(posedge CLK or posedge RST)
	  if(RST) i_addr <= 'd0;
	  else if(i_stb & (!full)) i_addr <= i_addr + 'd1; 
	  else i_addr <= i_addr;	   		  
  
  always@(posedge CLK)
	  if(i_stb & (!full)) m_RAM[i_addr] <= i_data; 

		    
  assign i_ack = i_stb & (!full);  
  
  
  // out 
  
  reg s_stb;
  wire s_read = o_stb? o_ack & (!empty): (!empty) ;
  
  always@(posedge CLK or posedge RST)
	  if(RST) o_addr <= 'd0;
	  else if(s_read) o_addr <= o_addr + 'd1;	 
	  else o_addr <= o_addr;
		  
  
  always@(posedge CLK)
	  if(s_read)s_RAM <= m_RAM[o_addr];
	  else s_RAM <= s_RAM;
		  
		  
always@(posedge CLK or posedge RST)
	if(RST) s_stb <= 'd0;
	else if(s_read) s_stb <= 'd1; 
	else if(o_ack) s_stb <= 'd0;
	else s_stb <= s_stb;
		
  
  assign o_data = s_RAM;
  assign o_stb = s_stb; 

  
endmodule
*/