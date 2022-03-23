`include "another_clock_divider.v"
`timescale 1ns/1ps
module Clock_divider_tb;
reg rst,clk;
wire clk_out;
parameter Period = 20;
clock_divider C1 (.clk(clk), .rst(rst), .clk_out(clk_out));
initial 
begin
    $dumpfile("Clock_divider_tb.vcd");
    $dumpvars(1,Clock_divider_tb);
    clk = 1'b0;
    rst = 1'b0;
    #Period
    rst = 1'b1;
    forever #(Period/2) clk = ~ clk;
    
end 

endmodule