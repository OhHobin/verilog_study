`timescale 1ps/1ps

module testbench();
    reg clk, rst_n, t;
    wire q, q_bar;
    T_ff Tff(clk, rst_n, t, q, q_bar);
    always #10 clk = ~clk;
    always #17 t = ~t;
    initial begin
        clk = 1'b0; rst_n = 1'b0; t = 1'b0;
        #12 rst_n = 1'b1;
        #300 $stop;
    end
endmodule
