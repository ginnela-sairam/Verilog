module full_adder(x,y,a,b,c);

input a,b,c;
output x,y;
assign x = a ^ b ^ c;
assign y = (a&b) | (b&c) | (c&a);


endmodule