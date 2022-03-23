`include "datapath.v"
`include "Controller.v"
module Multiplier ( 
    input clk, start,
    inout [7:0] databus,
    output lsb_out, msb_out, done );
wire clr_P, load_P, load_B, msb_out, lsb_out, sel_sum, load_A, Shift_A;
data_path dpu ( clk, clr_P, load_P, load_B,msb_out, lsb_out, sel_sum, load_A, Shift_A, databus,AO );
controller cu ( clk, start, AO, clr_P, load_P, load_B,msb_out, lsb_out, sel_sum, load_A, Shift_A, done );
endmodule