`include "5bitup_ctr.v"
module tb_ctr;

reg clk, rst, up_down;
wire [4:0] count; 
ctr Ctr1 (.clk(clk), .rst(rst),.up_down(up_down), .count(count));
initial 
       
       begin
           clk = 0;
           forever #5 clk=~clk;
        //    #400 finish;
       end
initial begin
        rst=1'b1;
        up_down = 1'b0;
        #10
        rst=1'b0;
        #165
        up_down = 1'b1;
        // #400 $finish;
end
    initial     
    begin
            $display("Count = %h", count);
            $dumpfile("tb_ctr.vcd");
            $dumpvars(0,tb_ctr);
            #340$finish;      
    end

endmodule