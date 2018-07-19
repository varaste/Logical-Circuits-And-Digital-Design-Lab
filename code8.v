`timescale 1ns / 1ps

module code8(a,b,nand_out);
input [1:0]a;
input [1:0] b;
output [1:0] nand_out;
nand g1(nand_out[0],b[0],a[0]);
nand g2(nand_out[1],b[1],a[1]);
endmodule 