module or3 (
    m1, m2, m3, out
);
input m1,m2,m3;
output out;

wire m1, m2, m3;
reg out;

always @ (m1 or m2 or m3) 
begin
    out = m1 | m2 | m3;
end
    
endmodule