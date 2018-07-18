`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:10:04 11/20/2017 
// Design Name: 
// Module Name:    main 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module main(a,b,s,y);
input [1:0]a;
input [1:0]s;
input [1:0]b;
output [3:0]y;
wire [4:0]mult_out;
wire [3:0]add_out;
wire [1:0]nand_out;
wire [1:0]outA;
mult g1(a,b,mult_out);
add_sub g2(a,b,0,add_out,add_out[3]);
code8 g3(a,b,nand_out);
giveA g4(a,b,outA);
mux g5(mult_out,add_out,nand_out,outA,s[1],s[0],y);
endmodule