module fuAdder(a,b,ci,s,co);

input a,b,ci;
output s,co;
wire e1,e2,e3;
xor g1(e1,a,b);
xor g2(s,ci,e1);
and g3(e2,a,b);
and g4(e3,ci,e1);
or g5(co,e2,e3);

endmodule
