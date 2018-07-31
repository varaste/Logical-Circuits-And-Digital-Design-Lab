module mux(I0,I1,I2,I3,s2,s1,y);
input[3:0] I0;
input[3:0] I1;
input[3:0] I2;
input[3:0] I3;
input s2,s1; 
output [3:0]y;
assign y =((~s2)&(~s1)&I0)| ((~s2)&(s1)&I1)|(s2&(~s1)&I2)|(s2&s1&I3);
endmodule
