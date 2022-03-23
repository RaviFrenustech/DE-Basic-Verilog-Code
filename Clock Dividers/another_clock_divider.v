module clock_divider(
    input rst, clk,
    output reg clk_out
);

reg [3:0] Count;
always @(posedge clk, negedge rst) begin
    
    if(!rst) begin
        clk_out <= 1'b0;
        Count <= 0;
    end
    else begin
        if (Count == 8'd249) begin
            clk_out <= ~clk_out;
        end
        Count <= Count + 1;
    end
end

endmodule