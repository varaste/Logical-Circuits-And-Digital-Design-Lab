`timescale 1ns / 1ps

module fullfull(a,b,c0,s,cin);
input [1:0]a;
input [1:0]b;
input c0,cin;
output [3:0]s;
wire c1;
midfull m1(a[0],b[0],c0,cin,s[0],c1);

midfull m2(a[1],b[1],c0,c1,s[1],s[2]);
assign s[3]=0;
endmodule
