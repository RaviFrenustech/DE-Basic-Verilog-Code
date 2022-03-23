`include "bit_to_grey.v"
module tb_bin_to_grey;
reg b4, b3, b2, b1, b0;
wire g4, g3, g2, g1, g0;


initial 
begin: apply_stimulus
    reg [5:0] invect;
    for (invect = 0; invect < 32; invect = invect + 1)
        begin
                {b4, b3, b2, b1, b0} = invect [5:0]; 
        #10   $display("ABCD = %b, Grey code = %b", {b4, b3, b2, b1, b0}, {g4, g3, g2, g1, g0});
        end
end
initial
    begin
        $dumpfile("tb_bin_to_grey.vcd");
        $dumpvars(0, tb_bin_to_grey);
    end
bin_to_grey U1 (.b4(b4), .b3(b3), .b2(b2), .b1(b1), .b0(b0), .g4(g4), .g3(g3), .g2(g2), .g1(g1), .g0(g0));

endmodule