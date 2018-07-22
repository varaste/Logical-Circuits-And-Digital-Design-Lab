module full_adder(s , a , b , cin , cout , sout);
	input s , a , b , cin;
	output cout , sout;
	wire x , y , z , w;
	xor g1(x , b , s);
	and g2(y , x , a);
	xor g3(z , x , a);
	and g4(w , z , cin);
	xor g5(sout , z , cin);
	or g6(cout , w , y);
endmodule 