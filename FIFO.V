`timescale 1ns / 1ps
module sync_fifo
#(
    parameter DATA_WIDTH = 8,
    parameter DEPTH = 16,
    parameter ADDR_WIDTH = 4
)
(
    input clk,
	   input rst,

    input wr_en,
    input rd_en,

    input [DATA_WIDTH-1:0] data_in,
    output reg [DATA_WIDTH-1:0] data_out,

    output full,
    output empty,
    output reg [ADDR_WIDTH:0] fifo_count
);

reg [DATA_WIDTH-1:0] memory [0:DEPTH-1];
reg [ADDR_WIDTH-1:0] wr_ptr;
reg [ADDR_WIDTH-1:0] rd_ptr;

assign full  = (fifo_count == DEPTH);
assign empty = (fifo_count == 0);

always @(posedge clk)
begin
    if(rst)
    begin
        wr_ptr <= 0;
        rd_ptr <= 0;
        fifo_count <= 0;
        data_out <= 0;
    end
    else
    begin
	 // Write Operation
        if(wr_en && !full)
        begin
            memory[wr_ptr] <= data_in;
            wr_ptr <= wr_ptr + 1;
        end

        // Read Operation
        if(rd_en && !empty)
        begin
            data_out <= memory[rd_ptr];
            rd_ptr <= rd_ptr + 1;
        end
		  // FIFO Counter Logic
        case({wr_en && !full, rd_en && !empty})

            2'b10:
                fifo_count <= fifo_count + 1;

            2'b01:
                fifo_count <= fifo_count - 1;

            default:
                fifo_count <= fifo_count;

        endcase

    end
end
endmodule