`include "xor_gate.v"
module tb_xor2;

reg m1, m2;
wire o1;

initial 
begin: apply_stimulus
    reg [2:0] invect;
    for (invect = 0; invect < 4; invect = invect + 1)
        begin
            {m1, m2} = invect [2:0];
            #10 $display ("(m1m2} = %b, o1 = %b", {m1, m2}, o1);
        end
end
xor2 instl (.m1(m1), .m2(m2), .o1(o1));
endmodule