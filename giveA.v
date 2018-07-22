module giveA(a,b,giveA_out);
input [1:0]a;
input [1:0] b;
output [1:0] giveA_out;
assign giveA_out[0] = a[0];
assign giveA_out[1] = a[1];
endmodule

