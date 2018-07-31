`timescale 1ns / 1ps

module midfull(a,b,c0,ci,s,co
    );
input a,b,c0,ci;
output s,co;
wire x;
xor g(x,c0,b);
fuAdder y(a,x,ci,s,co);

endmodule
