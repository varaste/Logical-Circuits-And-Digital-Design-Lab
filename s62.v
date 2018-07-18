`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:07:18 11/14/2017 
// Design Name: 
// Module Name:    s62 
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
module s62(a,b,c,f
    );
input a,b,c;
output f;
wire e1,e2,e3,e4;
and #10 g1(e1,a,b);
not #10 g2(e2,b);
and #10 g3(e3,a,c,e2);
and #10 g4(e4,a,c);
or #10 g5(f,e1,e3,e4);


endmodule
