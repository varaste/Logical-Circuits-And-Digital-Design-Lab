`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:08:14 11/20/2017 
// Design Name: 
// Module Name:    add_sub 
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
module add_sub1(a, b,cin,s,cout);
input a , b , cin;
output s , cout ;
wire xorab , andab , andxorcab ;
xor g1(xorab , a , b);
xor g2(s, xorab , cin);
and g3(andab , a , b);
and g4(andxorcab , cin , xorab);
or g5(cout , andxorcab , andab);
endmodule

module add_sub(a , b , cin, sum, cout);
input [3:0] a;
input [3:0] b;
input cin;
output[1:0] sum;
output cout;
wire carry;
add_sub1 g5(a[0],b[0], cin , sum[0],carry);
add_sub1 g6(a[1],b[1], carry , sum[1],cout);
endmodule


