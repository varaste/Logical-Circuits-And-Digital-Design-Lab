module bcd2seven_seg(a,b,cin,SEG_SEL,SEG_DATA,mux_out);
input [1:0]a;
input [1:0]b;
input cin;
input [2:0]mux_out;


output [4:0]SEG_SEL;
output [7:0]SEG_DATA;
reg [7:0]SEG_DATA;
always @(mux_out)
begin
case(mux_out)
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
endmodule
