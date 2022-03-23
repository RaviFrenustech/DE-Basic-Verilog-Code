module ctr (input clk, rst, output reg [4:0] out);
always @ (posedge clk)
begin
        if( rst == 5'b00000 )
            out <= 5'b00000;
        else if(out == 5'b11111)
            out <= (out - 5'b00001);
        else
            out <= (out + 5'b00001);
end
endmodule