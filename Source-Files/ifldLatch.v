`timescale 1ns / 1ps
module ifIdLatch(
    input clk,
    input rst,
    input wire [31:0] pc_latch_in,
    input wire [31:0]instr_in,
    output reg [31:0] pc_latch_out,
    output reg [31:0] instr_out
    );
    
    always @(posedge clk)
        if (rst) begin
        pc_latch_out <= 32'd0;
        instr_out <= 32'd0;
        end else begin
        pc_latch_out <= pc_latch_in;
        instr_out <= instr_in;
    end

endmodule