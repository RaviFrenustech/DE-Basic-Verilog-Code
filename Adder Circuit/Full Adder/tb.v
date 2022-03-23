`include "Full_adder.v"
module tb_fullder;
reg a,b,c;
wire sum;
wire cout;
integer invect;
full_adder U1 (.a(a), .b(b), .c(c), .sum(sum), .cout(cout));
initial
begin: apply_stimulus
    reg [3:0] invect;
    for (invect = 0; invect < 8; invect = invect + 1)
        begin
            {a,b,c}=invect [3:0];
            #10 $display ("{ABC} = %b, sum = %b, Cout = %b",{a,b,c},sum,cout);
        end
end

endmodule