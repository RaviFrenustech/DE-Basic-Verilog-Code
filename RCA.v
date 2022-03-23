`include "Full_adder.v"
module RCA (p,q,cin,r);
input [3:0] p,q;
input cin;
output [4:0] r;
wire [2:0] carry;
full_adder ff1(p[0],q[0],cin,r[0],carry[0]);
full_adder ff2(p[1],q[1],carry[0],r[1],carry[1]);
full_adder ff3(p[2],q[2],carry[1],r[2],carry[2]);
full_adder ff4(p[3],q[3],carry[2],r[3],r[4]);
endmodule