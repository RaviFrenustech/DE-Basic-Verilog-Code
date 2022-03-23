`include "uart_rec.v"
`include "uart_tx.v"
module uart 
#(
    parameter DBIT = 8,
    SB_TICK = 16,
    DVSR = 163,
    DVSR_BIT = 8,
    FIFO_W = 2
)
(
    input wire clk, reset,
    input wire rd_uart, wr_uart, rx,
    input wire [7:0] w_data,
    output wire tx_full, rx_empty, tx,
    output wire [7:0] r_data

);

wire   tick, rx_done_tick ,  tx_done_tick; 
wire   tx_empty, tx_fifo_not_empty; 
wire   [7: 0]  tx_fifo_out , rx_data_out;

uart_rx #(.DBIT(DBIT), .SB_TICK(SB_TICK)) uart_rx_unit (.clk(clk), .reset(reset), .rx(rx), .s_tick(s_tick), .rx_done_tick(rx_done_tick), .dout(rx_data_out));
uart_tx #(.DBIT(DBIT), .SB_TICK(SB_TICK)) uart_tx_unit (.clk(clk), .reset(reset), .tx_start(tx_fifo_not_empty), .s_tick(s_tick), .din(tx_fifo_out), .tx_done_tick(tx_done_tick), .tx(tx));




endmodule