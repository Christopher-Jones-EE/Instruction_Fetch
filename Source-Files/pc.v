`timescale 1ns / 1ps
module pc(
    input clk,
    input rst,
    input wire [31:0] pc_in,
    output reg [31:0] pc_out
    );
    
    always @(posedge clk)
    
        if(rst) pc_out = 32'd00;
        else pc_out <= pc_in;
        
endmodule