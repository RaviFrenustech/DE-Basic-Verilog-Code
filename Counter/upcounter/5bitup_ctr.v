module ctr (input clk, rst, up_down, output [4:0] count);
reg [4:0] out;
always @ (posedge clk)
begin
    if(rst)
        out = 0;
    else if (!up_down) out = out+1;
    else  out = out - 5'b00001;
end
assign count = out;
endmodule