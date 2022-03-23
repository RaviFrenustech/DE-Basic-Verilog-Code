primitive udp_xor2 (o1, i1, i2);

input i1, i2;
output o1;

table
    0  0 : 0;
    0  1 : 1;
    1  0 : 1;
    1  1 : 0;
endtable

endprimitive
module  bin_to_grey (b4, b3, b2, b1, b0, g4, g3, g2, g1, g0);

input b4, b3, b2, b1, b0;
output g4, g3, g2, g1, g0;

buf (g4,b4);
udp_xor2 (g3, b4, b3);
udp_xor2 (g2, b3, b2);
udp_xor2 (g1, b2, b1);
udp_xor2 (g0, b1, b0);

endmodule