module testbench;
reg [3:0] a, b;
reg Cin;
wire [3:0] s;
wire Co;
akbar asghar2(a, b, Cin, s, Co);
initial
begin
	a[0] = 1'B0; a[1] = 1'B0; a[2] = 1'B0; a[3] = 1'B0; 
	b[0] = 1'B0; b[1] = 1'B0; b[2] = 1'B0; b[3] = 1'B0; 
	Cin = 1'B0; #100;

	a[0] = 1'B0; a[1] = 1'B0; a[2] = 1'B0; a[3] = 1'B0; 
	b[0] = 1'B0; b[1] = 1'B0; b[2] = 1'B0; b[3] = 1'B0; 
	Cin = 1'B1; #100;

	a[0] = 1'B0; a[1] = 1'B0; a[2] = 1'B1; a[3] = 1'B0; 
	b[0] = 1'B1; b[1] = 1'B1; b[2] = 1'B0; b[3] = 1'B1; 
	Cin = 1'B0; #100;

	a[0] = 1'B1; a[1] = 1'B1; a[2] = 1'B0; a[3] = 1'B0; 
	b[0] = 1'B0; b[1] = 1'B0; b[2] = 1'B0; b[3] = 1'B1; 
	Cin = 1'B1; #100;

	a[0] = 1'B0; a[1] = 1'B0; a[2] = 1'B0; a[3] = 1'B0; 
	b[0] = 1'B0; b[1] = 1'B1; b[2] = 1'B0; b[3] = 1'B0; 
	Cin = 1'B0; #100;

	a[0] = 1'B1; a[1] = 1'B1; a[2] = 1'B1; a[3] = 1'B1; 
	b[0] = 1'B1; b[1] = 1'B1; b[2] = 1'B1; b[3] = 1'B1; 
	Cin = 1'B1; #100;
	
$stop;
end;
endmodule

module adder (A, B, Cin, Sout, Co);
input A, B, Cin;
output Co, Sout;
wire e1, e2, e3, e4;
xor #10 g0(e4, Cin, B);
xor #10 g1(Sout, A, e4, Cin);
and #5 g2(e1, A, Cin);
and #5 g3(e2, A, e4);
and #5 g4(e3, e4, Cin);
or #5 g5(Co, e1, e2, e3);
endmodule 

module akbar (a, b, Cin, s, Co);
input Cin;
input [3:0] a;
input [3:0] b;
output [3:0] s;
output Co;
wire c1, c2, c3;
adder g(a[0], b[0], Cin, s[0], c1);
adder g1(a[1], b[1], c1, s[1], c2);
adder g2(a[2], b[2], c2, s[2], c3);
adder g3(a[3], b[3], c3, s[3], Co);
endmodule
