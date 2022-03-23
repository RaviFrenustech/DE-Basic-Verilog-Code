module repeat_exm;
integer count;
initial begin
    count = 0;
    while(count<=16)
    begin
        $display("Count = %d",count);
        count=count+1;
    end
end  
endmodule