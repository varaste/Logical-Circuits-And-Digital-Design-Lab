`timescale 1ns / 1ps

module halfadder(s,c,x,y);
input x,y;
output s,c;
xor x1(s,x,y);
and x2(c,x,y);

endmodule
