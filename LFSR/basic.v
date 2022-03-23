`timescale 1ns/100ps
module led_hello_world (input clk, set, rst, d, output reg q);
 
always @ (posedge clk or posedge rst or posedge set) 
    if(set)
        q <= 1'b1;
    else if (rst)
        q <= 1'b0;
    else
        q <= d; 
endmodule

module struct_lfsr #(parameter [3:0] seed = 4'b0) (input clk, init, sin, output sout);

    wire im1, im2, im3, im4, im5;
    led_hello_world ff[3:0] (clk, {4{init}}&seed, {4{init}}&~seed, {im1, im2, im4, im5}, {im2, im3, im5, sout});
    xor (im1, sin, sout);
    xor (im4, im3, sout);
endmodule