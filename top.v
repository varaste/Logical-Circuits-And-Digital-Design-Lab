`timescale 1ns / 1ps


module top(a,b,ci,s,SEG_SEL,SEG_DATA);

input [1:0]a;
input[1:0]b;
input ci;
input [1:0]s;
wire [3:0] out;
output [4:0]SEG_SEL;
output [7:0]SEG_DATA;
Arith arithh(a,b,ci,s,out);
bcd2seven_seg bcd2seven(a,b,cin,SEG_SEL,SEG_DATA,out);


endmodule
