module testbench;
reg [1:0]a;
reg [1:0]b;
wire [3:0]out;
mult mn(a,b,out);
initial 
  begin
  a=2'b10;b=2'b11;
end 
endmodule
  
