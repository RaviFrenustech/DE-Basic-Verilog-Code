`include "mux1.v"
module mux_16x1 (w,s,f);
input [0:15] w;
input [3:0] s;
output f;
wire [0:3] M;
mux_4x1 mux1(w[0:3],s[1:0],M[0]);
mux_4x1 mux2(w[4:7],s[1:0],M[1]);
mux_4x1 mux3(w[8:11],s[1:0],M[2]);
mux_4x1 mux4(w[12:15],s[1:0],M[3]);
mux_4x1 mux5(M[0:3],s[3:2],f);
endmodule
