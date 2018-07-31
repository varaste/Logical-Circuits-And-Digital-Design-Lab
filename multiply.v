`timescale 1ns / 1ps
module mult(a,b,res);
  input [1:0]a;
 input [1:0] b;
  output [3:0] res;
assign res = a*b; 
  
endmodule