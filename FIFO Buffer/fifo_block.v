module fifo1 (input [7:0] data_in, input clk, rst, rd, wr, output empty, full, output reg [7:0] data_out, output reg [3:0] fifo_cnt);
    reg [7:0] fifo_ram[0:7];
    reg [2:0] read_ptr, wr_ptr;

    assign empty = (fifo_cnt==0);
    assign full = (fifo_cnt==8);

    always @( posedge clk) 
    begin: write
        if(wr && !full)
            fifo_ram[wr_ptr] <= data_in;
        else if (wr && full)
            fifo_ram[wr_ptr] <= data_in;    
    end
    always @ (posedge clk)
    begin: read
        if(rd && !empty)
            data_out <= fifo_ram[read_ptr];
        else if (rd && wr && empty)
            data_out <= fifo_ram[read_ptr];
    end
    always @ (posedge clk)
    begin: pointer
    if (rst) begin
        wr_ptr <= 0;
        read_ptr <= 0;
    end
    else begin
            wr_ptr <= ((wr && !full)||(wr && rd)) ? wr_ptr + 1 : wr_ptr;
            read_ptr <= ((rd && !empty)||(wr && rd)) ? read_ptr + 1 : read_ptr;
        end
     end
    always @ (posedge clk)
    begin:Count
    if(rst) fifo_cnt <=0;
    else begin
            case ({wr,rd})
               2'b00 : fifo_cnt <= fifo_cnt;
               2'b01 : fifo_cnt <= (fifo_cnt==0) ? 0 : fifo_cnt-1;
               2'b10 : fifo_cnt <= (fifo_cnt==8) ? 0 : fifo_cnt+1;
               2'b11 : fifo_cnt <= fifo_cnt;
               default: fifo_cnt <= fifo_cnt; 
            endcase
        end
    end
endmodule