module mux_8x1 (i0, i1, i2, i3, i4, i5, i6, i7, s0, s1, s2, y);
input i0, i1, i2, i3, i4, i5, i6, i7, s0, s1, s2;
output y;

wire i0, i1, i2, i3, i4, i5, i6, i7, s0, s1, s2;
reg y;

wire y1, y2, y3;

mux_4x1 uu1(i0, i1, i2, i3, s0, s1,y1);
mux_4x1 uu2(i4, i5, i6, i7, s0, s1,y2);
mux_2x1 uu3(y1,y2,s2,y3);

endmodule