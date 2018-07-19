module code7(a,b,cin,cout,carry);
input cin;
input [3:0] a;
input [3:0] b;
wire [2:0] car;
//output cout,carry;
output [3:0] cout;
output carry;
//wire w1,w2,w3;
wire [3:0] w1;
wire [3:0] w2;
wire [3:0] w3;
xor #(10) g1(w1[0],a[0],b[0]);
and #(5) g2(w2[0],a[0],b[0]);
and #(5) g3(w3[0],w1[0],cin);
xor #(10) g4(cout[0],w1[0],cin);
or #(5) g5(car[0],w2[0],w3[0]);


xor #(10) g6(w1[1],a[1],b[1]);
and #(5) g7(w2[1],a[1],b[1]);
and #(5) g8(w3[1],w1[1],car[0]);
xor #(10) g9(cout[1],w1[1],car[0]);
or #(5) g10(car[1],w2[1],w3[1]);


xor #(10) g11(w1[2],a[2],b[2]);
and #(5) g12(w2[2],a[2],b[2]);
and #(5) g13(w3[2],w1[2],car[1]);
xor #(10) g14(cout[2],w1[2],car[1]);
or #(5) g15(car[2],w2[2],w3[2]);


xor #(10) g16(w1[3],a[3],b[3]);
and #(5) g26(w2[3],a[3],b[3]);
and #(5) g36(w3[3],w1[3],car[2]);
xor #(10) g46(cout[3],w1[3],car[2]);
or #(5) g55(carry,w2[3],w3[3]);

endmodule
