`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:09:01 11/20/2017 
// Design Name: 
// Module Name:    getA 
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
module giveA(a,b,giveA_out);
input [1:0]a;
input [1:0] b;
output [1:0] giveA_out;
assign giveA_out[0] = a[0];
assign giveA_out[1] = a[1];
endmodule

