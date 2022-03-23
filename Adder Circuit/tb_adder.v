
`include "Adder.v"
module tb_fullder;
reg a;
reg b;
reg cin;
wire sum;
wire cout;
initial
begin
$dumpfile("tb_fullder.vcd");
$dumpvars(0, tb_fullder);
end
initial
begin: apply_stimulus
    reg [3:0] invect;
    for (invect = 0; invect < 8; invect = invect + 1)
        begin
            {a,b,cin}=invect [3:0];
            #10 $display ("ABC = %b, sum = %b, Cout = %b",{a,b,cin},sum,cout);
        end
end

full_adder U1 (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
endmodule