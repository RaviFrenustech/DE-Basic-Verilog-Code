module mux_2x1(a,b,s,w);
input a,b,s;
output w;
wire a,b,s;
reg w;
always @*
begin
	case({s})
		1'b0: w=a;
		1'b1: w=b;
		default: w=0;
	endcase
end
endmodule