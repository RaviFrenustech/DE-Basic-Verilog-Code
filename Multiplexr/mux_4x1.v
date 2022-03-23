module mux_4x1(a,b,c,d,ss0,ss1,m);
input a,b,c,d,ss0,ss1;
output m;
wire 	a,b,c,d,ss0,ss1;
reg m;
always @*
	begin
	 case({ss0,ss1})
		2'b00: m = a;
		2'b01: m = b;
		2'b10: m = c;
		2'b11: m = d;
		default : m = 0;
	endcase
	end
endmodule	
		