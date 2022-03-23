module decoder 
(
    output reg [0:7] D,
    input [1:0] A,B,C,enable
    
);
always @*
begin
    D[0] <= !( (!A) && (!B) && (!C) && (!enable) );
    D[1] <= !( (!A) && (!B) && C && (!enable) );
    D[2] <= !( (!A) && B && (!C) && (!enable) );
    D[3] <= !( (!A) && B && C && (!enable) );
    D[4] <= !( A && (!B) && (!C) && (!enable) );
    D[5] <= !( A && (!B) && C && (!enable) );
    D[6] <= !( A && B && (!C) && (!enable) );
    D[7] <= !( A && B && C && (!enable) );
end
endmodule
   
   