`timescale 1ns/1ps

module shift_l_register(sl, rst_n, Q);
    input rst_n, sl;
    output [3:0] Q;
    wire d_one, d_two, d_three, Q_bar_one, Q_bar_two, Q_bar_three, Q_bar_four;

    assign d_one = Q[2] && sl;
    assign d_two = Q[1] && sl;
    assign d_three = Q[0] && sl;

    D_ff_reset_one d1(sl, rst_n, d_one, Q[3], Q_bar_one);
    D_ff d2(sl, rst_n, d_two, Q[2], Q_bar_two);
    D_ff_reset_one d3(sl, rst_n, d_three, Q[1], Q_bar_three);
    D_ff_reset_one d4(sl, rst_n, 1'b0, Q[0], Q_bar_four);
endmodule