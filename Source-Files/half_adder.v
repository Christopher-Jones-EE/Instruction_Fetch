`timescale 1ns / 1ps
module half_adder(
    input x,
    input y,
    output c,
    output s
    );
    assign c = x & y;
    assign s = x ^ y;
endmodule