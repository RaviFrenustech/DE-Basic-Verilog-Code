`include "adder.v"
module full_adder (a, b, cin, sum, cout);
input  a, b, cin;
output sum, cout;

wire [1:0] ha_sum;
wire [1:0] hf_cy;

half_adder u1 (.a(a), .b(b), .sum(ha_sum[1]),  .cout(ha_cf[0]));
half_adder u2 (.a(ha_sum[1]), .b(cin), .sum(ha_sum[0]), cout(ha_cf[0]));

assign sum = ha_sum[0];
assign cout = ha_cf[0] | ha_cf[1];
endmodule