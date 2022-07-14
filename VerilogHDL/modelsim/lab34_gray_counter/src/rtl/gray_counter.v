`timescale 1ns/1ps

module gray_counter(clk, rst_n, Q);
    input clk, rst_n;
    output [2:0]Q;
    wire d_one, d_two, d_three, Q_bar_one, Q_bar_two, Q_bar_three;

    assign d_one = (Q[2]&&Q[0])||(Q[1]&&(~Q[0]));

    D_ff d1(clk, rst_n, d_one, Q[2], Q_bar);

    assign d_two = ((~Q[2])&&Q[0])||(Q[1]&&(~Q[0]));

    D_ff d2(clk, rst_n, d_two, Q[1], Q_bar);

    assign d_three = ((~Q[2])&&(~Q[1]))||(Q[2]&&Q[1]);

    D_ff d3(clk, rst_n, d_three, Q[0], Q_bar);
    
endmodule