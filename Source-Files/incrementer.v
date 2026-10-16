`timescale 1ns / 1ps
module incrementer(
    input [31:0] pcin,
    output [31:0] pcout
    );
    wire c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, 
    c17, c18, c19,c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31;
    
    half_adder add0(.x(pcin[0]), .y(1'b1), .c(c0), .s(pcout[0])),
                add1(.x(pcin[1]), .y(c0), .c(c1), .s(pcout[1])),
                add2(.x(pcin[2]), .y(c1), .c(c2), .s(pcout[2])),
                add3(.x(pcin[3]), .y(c2), .c(c3), .s(pcout[3])),
                add4(.x(pcin[4]), .y(c3), .c(c4), .s(pcout[4])),
                add5(.x(pcin[5]), .y(c4), .c(c5), .s(pcout[5])),
                add6(.x(pcin[6]), .y(c5), .c(c6), .s(pcout[6])),
                add7(.x(pcin[7]), .y(c6), .c(c7), .s(pcout[7])),
                add8(.x(pcin[8]), .y(c7), .c(c8), .s(pcout[8])),
                add9(.x(pcin[9]), .y(c8), .c(c9), .s(pcout[9])),
                add10(.x(pcin[10]), .y(c9), .c(c10), .s(pcout[10])),
                add11(.x(pcin[11]), .y(c10), .c(c11), .s(pcout[11])),
                add12(.x(pcin[12]), .y(c11), .c(c12), .s(pcout[12])),
                add13(.x(pcin[13]), .y(c12), .c(c13), .s(pcout[13])),
                add14(.x(pcin[14]), .y(c13), .c(c14), .s(pcout[14])),
                add15(.x(pcin[15]), .y(c14), .c(c15), .s(pcout[15])),
                add16(.x(pcin[16]), .y(c15), .c(c16), .s(pcout[16])),
                add17(.x(pcin[17]), .y(c16), .c(c17), .s(pcout[17])),
                add18(.x(pcin[18]), .y(c17), .c(c18), .s(pcout[18])),
                add19(.x(pcin[19]), .y(c18), .c(c19), .s(pcout[19])),
                add20(.x(pcin[20]), .y(c19), .c(c20), .s(pcout[20])),
                add21(.x(pcin[21]), .y(c20), .c(c21), .s(pcout[21])),
                add22(.x(pcin[22]), .y(c21), .c(c22), .s(pcout[22])),
                add23(.x(pcin[23]), .y(c22), .c(c23), .s(pcout[23])),
                add24(.x(pcin[24]), .y(c23), .c(c24), .s(pcout[24])),
                add25(.x(pcin[25]), .y(c24), .c(c25), .s(pcout[25])),
                add26(.x(pcin[26]), .y(c25), .c(c26), .s(pcout[26])),
                add27(.x(pcin[27]), .y(c26), .c(c27), .s(pcout[27])),
                add28(.x(pcin[28]), .y(c27), .c(c28), .s(pcout[28])),
                add29(.x(pcin[29]), .y(c28), .c(c29), .s(pcout[29])),
                add30(.x(pcin[30]), .y(c29), .c(c30), .s(pcout[30])),
                add31(.x(pcin[31]), .y(c30), .c(c31), .s(pcout[31]));
endmodule