`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:34:27 11/26/2017 
// Design Name: 
// Module Name:    mammad 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mammad;
	input s,a1,a2,a3,a4,b1,b2,b3,b4,cin;
	output cout1,cout2,cout3,cout4,sout1,sout2,sout3,sout4;
	full_adder mgh1(s , a1 , b1 , cin , cout1 , sout1);
	full_adder mgh2(s , a2 , b2 , cout1 , cout2 , sout2);
	full_adder mgh3(s , a3 , b3 , cout2 , cout3 , sout3);
	full_adder mgh4(s , a4 , b4 , cout3 , cout4 , sout4);
endmodule

module full_adder(
    input s,
    input a,
    input b,
    input cin,
    output cout,
    output sout
    );	
	 wire x , y , z , w;
  	 xor g1(x , b , s);
	 and g2(y , x , a);
	 xor g3(z , x , a);
	 and g4(w , z , cin);
	 xor g5(sout , z , cin);
	 or g6(cout , w , y);


endmodule
