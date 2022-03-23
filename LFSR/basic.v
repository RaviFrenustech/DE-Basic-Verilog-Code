`timescale 1ns/100ps
`include "led_hello_world.v"

module struct_lfsr #(parameter [3:0] seed = 4'b0) (input clk, init, sin, output sout);

    wire im1, im2, im3, im4, im5;
    led_hello_world ff[3:0] (clk, {4{init}}&seed, {4{init}}&~seed, {im1, im2, im4, im5}, {im2, im3, im5, sout});
    xor (im1, sin, sout);
    xor (im4, im3, sout);
endmodule