`timescale 1ns/1ps

module johnson_counter(clk, rst_n, Q);
    input clk, rst_n;
    output [3:0]Q;
    wire Q_bar_one, Q_bar_two, Q_bar_three, Q_bar_four;
    D_ff d1(clk, rst_n, Q_bar_four, Q[3], Q_bar_one);
    D_ff d2(clk, rst_n, Q[3], Q[2], Q_bar_two);
    D_ff d3(clk, rst_n, Q[2], Q[1], Q_bar_three);
    D_ff d4(clk, rst_n, Q[1], Q[0], Q_bar_four);
    
endmodule