`include "5bitup_ctr.v"
module tb_ctr;

reg clk, rst;
wire [4:0] out; 
initial
$monitor ("Count = %b", out);

//Define reset
initial
begin
    #0 rst = 1'b0;
    #5 rst = 1'b1;
end
//Define Clock
initial 
begin
    #0 clk = 1'b1;
    forever
        #5 clk = ~clk;
end
initial 
begin
        $dumpfile("tb_ctr.vcd");
        $dumpvars(0,tb_ctr);
        #320$finish;      
end
ctr Ctr1 (.clk(clk), .rst(rst), .out(out));
endmodule