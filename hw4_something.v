module FullAdder (sout, c0, a, b, cin);
	input a, b, cin;
	output sout, c0;
	wire w1, w2, w3;
	
	and #5  g3(w2, b, a), g4(w3, w1, cin);
	or  #5  g5(c0, w2, w3);
	xor #10 g1(w1, a, b), g2(sout, w1, cin);
endmodule

module Main (S, C4, a, b, C0);
	input [3:0] a, b;
	input C0;
	output C4;
	output [3:0]S;
	wire [3:0] w;
	wire C1, C2, C3;
	
	xor #10 g1(w[0], C0, b[0]),
			g2(w[1], C0, b[1]),
			g3(w[2], C0, b[2]),
			g4(w[3], C0, b[3]);
	
	FullAdder FA0(S[0], C1, a[0], b[0], C0), 
			  FA1(S[1], C2, a[1], b[1], C1),
			  FA2(S[2], C3, a[2], b[2], C2), 
			  FA3(S[3], C4, a[3], b[3], C3);
	
endmodule