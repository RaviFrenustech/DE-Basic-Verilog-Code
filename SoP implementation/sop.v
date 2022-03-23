module and2 (i1, i2, o1);

input i1, i2;
output o1;

wire i1, i2;
wire o1;

assign o1 = i1&i2; 
endmodule
module and3 (i1, i2, i3, o1);

input i1, i2, i3;
output o1;

wire i1, i2, i3;
wire o1;

assign o1 = i1&i2&i3; 
endmodule

module and4 (i1, i2, i3, i4, o1);

input i1, i2, i3, i4;
output o1;

wire i1, i2, i3, i4;
wire o1;

assign o1 = i1&i2&i3&i4; 
endmodule

module or3 (i1, i2, i3, o1);

input i1, i2, i3;
output o1;

wire i1, i2, i3;
reg o1;

always @ ( i1 or i2 or i3 ) 
begin
        o1 = i1|i2|i3;    
end
endmodule
module sop(i1, i2, i3, i4, o1);

input i1, i2, i3, i4;
output o1;

wire i1, i2, i3, i4;
wire o1;

wire net1, net2, net3, net4;
assign o1 =net4;

and2 inst1 (.i1(i1), .i2(i2), .o1(net1));
and3 inst2 (.i1(i2), .i2(~i3), .i3(i4), .o1(net2));
and4 inst3 (.i1(~i1), .i2(~i2), .i3(i3), .i4(i4), .o1(net3));
or3 inst4 (.i1(net1), .i2(net2), .i3(net3), .o1(net4));
endmodule