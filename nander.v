`timescale 1ns / 1ps
module nander(a,b,w);

input [1:0]a;
input [1:0]b;
input [1:0]w;

nand (a,b,w);

endmodule
