module ctr_mod_16 (clk, rst_n, count);

input clk, rst_n;
output [5:0] count;

wire clk, rst_n;
reg [5:0] count;

always @ (posedge clk or negedge rst_n) 
begin
    if (rst_n == 0)
        count <= 4'h0;
    else
        count <= (count + 1) % 16;
    
end
endmodule