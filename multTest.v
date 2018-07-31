`timescale 1ns / 1ps

module uut;

	reg [1:0]a;
	reg [1:0]b;
	reg [1:0]s;
	reg ci;
	wire [3:0]res;
Arith m(a,b,ci,s,res);
	initial
	begin
	 a = 2'b01;
		b = 2'b11;
	   ci = 1'b0;
	   s = 2'b11;
	
		#100
	
	  s = 2'b10;
		#100
	
	s = 2'b01;
	 
	 #100
	s = 2'b00;
	
	end
      
endmodule

