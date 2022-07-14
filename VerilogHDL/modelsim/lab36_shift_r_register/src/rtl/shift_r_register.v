`timescale 1ns/1ps

module shift_r_register(sr, rst_n, Q);
    input sr, rst_n;
    output [3:0]Q;
    wire d_two, d_three, d_four, Q_bar_one, Q_bar_two, Q_bar_three, Q_bar_four;
    assign d_two = sr&&Q[3];
    assign d_three = sr&&Q[2];
    assign d_four = sr&&Q[1];
    D_ff_reset_one d1(sr, rst_n, 1'b0, Q[3], Q_bar_one);
    D_ff d2(sr, rst_n, d_two, Q[2], Q_bar_two);
    D_ff_reset_one d3(sr, rst_n, d_three, Q[1], Q_bar_three);
    D_ff_reset_one d4(sr, rst_n, d_four, Q[0], Q_bar_four);
endmodule