`timescale 1ns/1ps

module binary_down_count(clk, rst_n, Q);
    input clk, rst_n;
    output [2:0]Q;
    wire t1_out_bar, t2_out_bar, Q_three;
    T_ff t1(clk, rst_n, 1'b1, Q[0], t1_out_bar);    
    T_ff t2(Q[0], rst_n, 1'b1, Q[1], t2_out_bar);
    T_ff t3(Q[1], rst_n, 1'b1, Q[2], t3_out_bar);

endmodule