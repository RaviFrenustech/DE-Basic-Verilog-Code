`include "4bit_Sy_Counter.v"
module tb_ctr_mode_16;

reg clk, rst_n;
wire [5:0] count; 
initial
$monitor ("Count = %4b", count);

//Define reset
initial
begin
    #0 rst_n = 1'b0;
    #5 rst_n = 1'b1;
end
//Define Clock
initial 
begin
    #0 clk = 1'b0;
    forever
        #10 clk = ~clk;
end
initial 
begin
        $dumpfile("tb_ctr_mode_16.vcd");
        $dumpvars(0,tb_ctr_mode_16);
      #320 $finish;      
end
ctr_mod_16 Ctr1(.clk(clk), .rst_n(rst_n), .count(count));
endmodule