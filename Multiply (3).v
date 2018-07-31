`timescale 1ns / 1ps

module Multiply(a,b,f
    );
	 input [1:0]a;
	 input [1:0]b;
	 output [3:0]f;
	 wire w1,w2,w3,w4;
	  and p1(f[0],a[0],b[0]);
	  and g2(w1,a[0],b[1]);
	  and g3(w2,a[1],b[0]);
	  and g4(w4,a[1],b[1]);
	 
	 halfadder m5(f[1],w3,w1,w2),
	 m6(f[2],f[3],w3,w4);
	 
	/* wire e1,e2,e3,e4,h1,h2,d1,d2,d3,d4;
not g1(e1,a[0]);
not g2(e2,a[1]);
not g3(e3,b[0]);
not g4(e4,b[1]);
and g5(f[0],a,b);
and g6(h1,a[0],b[0],e2);
and g7(h2,a[1],b[1],e4);
or g8(f[1],h1,h2);
and g9(d1,a[0],b[1],e2);
and g10(d2,a[0],b[1],e3);
and g11(d3,a[1],b[0],e4);
and g14(d4,a[1],b[0],e1);
or g12(f[2],d1,d2,d3,d4);
and g13(f[3],a[1],b[1]);*/

endmodule
