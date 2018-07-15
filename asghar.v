`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:13:09 11/26/2017 
// Design Name: 
// Module Name:    asghar 
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
module asghar(
    input s,
    input cin,
    input a1,
    input a2,
    input a3,
    input a4,
    input b1,
    input b2,
    input b3,
    input b4,
    output cout4,
    output sout1,
    output sout2,
    output sout3,
    output sout4
    );
	wire x1,x2,x3,x4,y1,y2,y3,y4,z1,z2,z3,z4,w1,w2,w3,w4;
	xor g1(x1 , b4 , s);
	and g2(y1 , x1 , a4);
	xor g3(z1 , x1 , a4);
	and g4(w1 , z1 , cin);
	xor g5(sout4 , z1 , cin);
	or g6(cout1 , w1 , y1);
	xor h1(x2 , b3 , s);
	and h2(y2 , x2 , a3);
	xor h3(z2 , x2 , a3);
	and h4(w2 , z2 , cout1);
	xor h5(sout3 , z2 , cout1);
	or h6(cout2 , w2 , y2);
	xor q1(x3 , b2 , s);
	and q2(y3 , x3 , a2);
	xor q3(z3 , x3 , a2);
	and q4(w3 , z3 , cout2);
	xor q5(sout2 , z3 , cout2);
	or q6(cout3 , w3 , y3);
	xor t1(x4 , b1 , s);
	and t2(y4 , x4 , a1);
	xor t3(z4 , x4 , a1);
	and t4(w4 , z4 , cout3);
	xor t5(sout1 , z4 , cout3);
	or t6(cout4 , w4 , y4);
endmodule
