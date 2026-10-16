`timescale 1ns / 1ps
module mux2to1(
    input sel,
    input [31:0] b_false,
    input [31:0] a_true,
    output reg [31:0] y
    );
    
    always@(*) begin
    case(sel)
        1'd1 : y = a_true;
        1'd0 : y = b_false;
    endcase
    end
    
endmodule