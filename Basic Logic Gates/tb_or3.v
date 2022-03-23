`include "3input_or_gate.v"
module tb_or3;

reg m1, m2, m3;
wire out;


initial
begin: apply_stimulus
    reg [3:0] v;
    for(v = 0; v < 8; v = v + 1)
        begin
            {m1, m2, m3} = v [3:0];
            #10 $display("ABC = %b, Out =%b",{m1,m2,m3},out);
        end
    
end
or3 U1 (.m1(m1), .m2(m2), .m3(m3), .out(out));
endmodule