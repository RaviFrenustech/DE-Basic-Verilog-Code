module led_hello_world (input clk, set, rst, d, output reg q);
 
always @ (posedge clk or posedge rst or posedge set) 
    if(set)
        q <= 1'b1;
    else if (rst)
        q <= 1'b0;
    else
        q <= d; 
endmodule