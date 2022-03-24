module LFSR (clk,rst,y);
input clk,rst;
output reg [3:0] y;
 
wire feedback;
assign feedback =(y[1]^y[0]);

always @(posedge clk, negedge rst ) 
begin
        if(rst)
            y = 4'b0001;
        else
            y = {feedback,y[3:1]};
    
end

endmodule