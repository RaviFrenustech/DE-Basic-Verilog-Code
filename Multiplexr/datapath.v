module data_path (
    input clk, clr_P, load_P, load_B, msb_out, lsb_out, sel_sum, load_A, shift_A, 
    inout [7:0] data,
    output AO
);

wire [7:0] sum, shiftadd;
reg [7:0] A, B, P;
wire co;
always @(posedge clk ) if (load_B) B <= data;
always @(posedge clk ) if (load_P) P <= {co&sel_sum, shiftadd[7:1]};
assign {co, sum} = P + B;

always @(posedge clk ) begin
    case({load_A, shift_A})
    2'b01: A <= {shiftadd[0],A[7:1]};
    2'b10: A <= data;
    default : A <= A;
    endcase
end
assign shiftadd = clr_P?8'h0:(~sel_sum?P:sum);

assign data = lsb_out ? A : 8'hzz;
assign data = msb_out ? P : 8'hzz;
endmodule