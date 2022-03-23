`include "SquareWave.v"
module tb_sqwave;
input clk_out;
output  reg clk, rst;
output reg [3:0] rise, fall;
sqwaveGen U1 (.clk(clk), .rst(rst), .rise(rise), .fall(fall), .clk_out(clk_out));
initial 
begin
clk=1'b0;
repeat (10000) clk = ~clk;
begin
        $monitor($time,"clk = %b, reset = %b, Clk_out = %b", clk,rst,clk_out);
        rst=0;
        #50 rst=1;
        rise = 4'b0011;
        fall = 4'b0100;
        #2000 rise = 4'b0101;
        #10000 $finish;
end
begin
    $dumpfile("sqwave.vcd");
    $dumpvars(0, sqwave);
end
end
endmodule