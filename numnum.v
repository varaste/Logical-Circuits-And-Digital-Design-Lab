module FullAdder (sout, c0, a, b, cin);
	input a, b, cin;
	output sout, c0;
	wire w1, w2, w3;
	
	and g3(w2, b, a),
		g4(w3, w1, cin);
	or  g5(c0, w2, w3);
	xor g1(w1, a, b),
		g2(sout, w1, cin);
endmodule

module Buffer (cout, a);
	input [1:0] a;
	output [1:0] cout;
	
	buf (cout[0], a[0]),
		(cout[1], a[1]);
endmodule

module NAND (cout, a, b);
	input [1:0] a, b;
	output [1:0] cout;
	
	nand g1(cout[0], a[0], b[0]),
		 g2(cout[1], a[1], b[1]);
endmodule

module Multiplier (cout, a, b);
	input [1:0] a, b;
	output [3:0] cout;
	wire[3:0] w;

	and g1(cout[0], a[0], b[0]),
		g2(w[0], a[1], b[0]),
		g4(w[1], a[0], b[1]),
		g5(w[2], w[0], w[1]),
		g7(w[3], a[1], b[1]),
		g8(cout[3], w[2], w[3]);
	xor g3(cout[1], w[0], w[1]),
		g6(cout[2], w[2], w[3]);
endmodule	

module Main (cin, a, b, s, SEG_SEL,SEG_DATA);
	input [1:0] a, b, s;
	input cin;
	wire [3:0] cout;
	wire [3:0] multiplied;
	wire [2: 0] added;
	wire [1: 0] nanded, buffered;
	wire BCin, C1, C2, C3;
	output [4:0]SEG_SEL;
	output [7:0]SEG_DATA;
	reg [7:0]SEG_DATA;

	always @(cout)
	begin
		case(cout)
		0:SEG_DATA = 8'b00111111;	
		1:SEG_DATA = 8'b00000110;
		2:SEG_DATA = 8'b01011011;
		3:SEG_DATA = 8'b01001111;
		4:SEG_DATA = 8'b01100110;
		5:SEG_DATA = 8'b01101101;
		6:SEG_DATA = 8'b01111101;
		7:SEG_DATA = 8'b00000111;
	endcase
	end
	assign SEG_SEL=5'b00001;
	
	xor (BCin, cin, b);
	
	Multiplier  MP(multiplied, a, b);
	FullAdder   FA0(added[0], C1, a[0], b[0], Cin), 
				FA1(added[1], added[2], a[1], b[1], C1);
			
		
	NAND N(nanded, a, b);
	Buffer B(buffered, a);
	 
	assign cout = s[1] ? (s[0] ? multiplied : added) : (s[0] ? nanded : buffered);
	
endmodule