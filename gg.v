`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:47:28 11/18/2017 
// Design Name: 
// Module Name:    gg 
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
module adder (A, B, Cin, Sout, Co);
input A, B, Cin;
output Co, Sout;
wire e1, e2, e3, e4;
xor g0(e4, Cin, B);
xor g1(Sout, A, e4, Cin);
and g2(e1, A, Cin);
and g3(e2, A, e4);
and g4(e3, e4, Cin);
or g5(Co, e1, e2, e3);
endmodule 

module gg(
     a,
	  b,
     Cin,
     s,
     Co
    );
	 
input Cin;
input [3:0] a;
input [3:0] b;
output [3:0] s;
output Co;

adder g(a[0], b[0], Cin, s[0], c1);
adder g1(a[1], b[1], c1, s[1], c2);
adder g2(a[2], b[2], c2, s[2], c3);
adder g3(a[3], b[3], c3, s[3], Co);

endmodule
