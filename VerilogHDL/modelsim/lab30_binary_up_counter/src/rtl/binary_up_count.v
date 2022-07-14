`timescale 1ns/1ps

module binary_up_count(clk, rst_n, Q);
    input clk, rst_n;
    output [2:0]Q;
    wire t1_out_bar, t2_out_bar, Q_three;
    T_ff t1(clk, rst_n, 1'b1, Q[0], t1_out_bar);    
    T_ff t2(clk, rst_n, Q[0], Q[1], t2_out_bar);
    assign Q_three = Q[0] && Q[1];
    T_ff t3(clk, rst_n, Q_three, Q[2], t3_out_bar);

       
endmodule