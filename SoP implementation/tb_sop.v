`include "sop.v"
module tb_sop;
reg i1, i2, i3, i4;
wire o1;

initial

begin: apply_stimulus
    reg [4:0] v;
    for( v = 0; v < 16; v = v + 1)
        begin
            {i1,i2,i3,i4} = v [4:0];
            #10 $display("ABCD = %b, Out(Z) = %b ",{i1, i2, i3, i4},o1);
        end
$dumpfile ("tb_sop.v");
$dumpfile(0, tb_sop);
end
sop int1 (.i1(i1), .i2(i2), .i3(i3), .i4(i4), .o1(o1));
endmodule