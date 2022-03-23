`timescale 1ns/100ps
module xor3_mtm (input a, b, c, output y);
wire a_, b_, c_;
wire im1, im2, im3, im4;
    not #(1:3:5, 2:4:6)
        ( a_, a ),
        ( b_, b ),
        ( c_, c );
    nand #(2:4:6, 3:5:7)
        ( im1, a_, b_, c ),
        ( im2, a_, b, c_ ),
        ( im3, a, b_, c_ ),
        ( im4, a, b, c );
    nand #(2:4:6, 3:5:7) (y, im1, im2, im3, im4);
endmodule