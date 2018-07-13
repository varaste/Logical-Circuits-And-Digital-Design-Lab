`timescale 1ns / 1ps

module Arith(a,b,cin,s,out);

input [1:0]a;
input[1:0]b;
input cin;
input [1:0]s;
output [3:0] out;
reg [3:0]oreg;
wire [3:0]w1;
wire [3:0]w2;
wire [3:0]w3;
wire [3:0]w4;
fullfull ful(a,b,cin,w3,cin);
Multiply m(a,b,w4);
assign w1[0]=a[0];
assign w1[1]=a[1];
assign w1[2]=1'b0;
assign w1[3]=1'b0;

nand g1(w2[0],a[0],b[0]);
nand g2(w2[1],a[1],b[1]);
assign w2[2]=1'b0;
assign w2[3]=1'b0;




always @s
begin
case(s)
   2'b00:    oreg=w1;
   2'b01:    oreg=w2;	 
   2'b10: 	 oreg=w3;		 
   2'b11: 	 oreg=w4;
	endcase	 
	end
	assign out = oreg;
endmodule
