module full_adder (a, b, c, sum, cout);

input a, b, c;
output  sum; 
output  cout;

assign sum = a^b^c;
assign cout = a&b | b&cin | a&cin;

endmodule