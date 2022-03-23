module repeat_exm;
integer count;
initial begin
    $dumpfile("repeat_exm");
    $dumpvars(0,repeat_exm);
    count = 0;
    while(count<=16)
    begin
        $display("Count = %d",count);
        count=count+1;
    end
end

    
endmodule