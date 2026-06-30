
`timescale 1ns/1ps

module sync_fifo_tb;

parameter DATA_WIDTH = 8;
parameter DEPTH = 16;
parameter ADDR_WIDTH = 4;

reg clk,rst,wr_en,rd_en;

reg [DATA_WIDTH-1:0] data_in;

wire [DATA_WIDTH-1:0] data_out;
wire full;
wire empty;
wire [ADDR_WIDTH:0] fifo_count;

sync_fifo DUT(
    .clk(clk),
    .rst(rst),
    .wr_en(wr_en),
    .rd_en(rd_en),
    .data_in(data_in),
    .data_out(data_out),
    .full(full),
    .empty(empty),
    .fifo_count(fifo_count)
);
always #5 clk = ~clk;

initial
begin

    clk = 0;
    rst = 1;
    wr_en = 0;
    rd_en = 0;
    data_in = 0;

    #20 rst = 0;

    // Write Data
    repeat(8)
    begin
        @(posedge clk);
        wr_en = 1;
        data_in = data_in + 8'h11;
    end

    @(posedge clk);
    wr_en = 0;

    // Read Data
    repeat(8)
    begin
        @(posedge clk);
        rd_en = 1;
    end
	 @(posedge clk);
    rd_en = 0;

    #20;

    $finish;

end

initial
begin
    $monitor("Time=%0t WR=%b RD=%b DIN=%h DOUT=%h COUNT=%d FULL=%b EMPTY=%b",
              $time, wr_en, rd_en, data_in,
              data_out, fifo_count, full, empty);
end

endmodule
