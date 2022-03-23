module def_param1;
parameter x_1 = 5 ;
initial
$display("Value of X1 = %d", x_1);
endmodule
module top_level;
defparam value1.x_1 = 4;
defparam value2.x_1 = 8;

def_param1 value1 ( );
def_param1 value2 ( );
endmodule