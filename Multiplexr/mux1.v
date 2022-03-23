module mux_4x1 (w,s,f);
input [0:3] w;
input [1:0] s;
output reg f;
always @(w,s) 
    begin
        case(s)
        0: f = w[0];
        1: f = w[1];
        2: f = w[2];
        3: f = w[3];
        endcase
    end
endmodule