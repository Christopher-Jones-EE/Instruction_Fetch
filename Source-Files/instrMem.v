`timescale 1ns / 1ps

module instrMem(
    input wire clk, rst, 
    input wire [31:0] addr,
    output wire [31:0] data
);

    reg [31:0] mem [0:255];
    
    initial begin
    
        mem[0] = 32'HA00000AA;
        mem[1] = 32'H10000011;
        mem[2] = 32'H20000022;
        mem[3] = 32'H30000033;
        mem[4] = 32'H40000044;
        mem[5] = 32'H50000055;
        mem[6] = 32'H60000066;
        mem[7] = 32'H70000077;
        mem[8] = 32'H80000088;
        mem[9] = 32'H90000099;
     
        end 
           
        assign data = mem[addr[7:0]];
        
endmodule
