`include "half_adder.v"
module tb_half_adder;
reg a; 
reg b;
wire sum;
wire cout;
initial
$monitor("A = %b  B = %b  Sum = %b Cout = %b", a,b,sum,cout);
initial
begin
    $dumpfile("tb_half_adder.vcd");
    $dumpvars(0,tb_half_adder);
    a = 1'b0;
    b = 1'b0;
    #10
    a = 1'b0;
    b = 1'b1;
    #10
    a = 1'b1;
    b = 1'b0;
    #10
    a = 1'b1;
    b = 1'b1;
    #10
    $finish;
end
halfadd instl (.a(a), .b(b), .sum(sum), .cout(cout));
endmodule