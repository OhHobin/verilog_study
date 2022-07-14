`timescale 1ns/1ps

module ring_counter(clk, rst_n, Q);
    input clk, rst_n;
    output [2:0] Q;
    wire Q_bar_one, Q_bar_two, Q_bar_three;

    D_ff d1(clk, rst_n, Q_bar_two, Q[2], Q_bar_one);
    D_ff d2(clk, rst_n, Q[2], Q[1], Q_bar_two);
    D_ff_reset_one d3(clk, rst_n, Q[1], Q[0], Q_bar_three);
    
endmodule