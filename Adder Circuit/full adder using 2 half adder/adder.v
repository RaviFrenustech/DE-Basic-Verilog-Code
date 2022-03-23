module half_adder(a, b, sum, cout);
input a, b;
output sum, cout;
wire a, b, sum, cout;
assign sum = a ^ b;
assign cout = a &b ;
endmodule 
