`timescale 1ps/1ps

module testbench();
    reg clk, rst_n, j, k;
    wire q, q_bar;
    JK_ff JKff(clk, rst_n, j, k, q, q_bar);
    always #10 clk = ~clk;
    initial begin
        clk = 1'b0; rst_n = 1'b0; j = 1'b0; k = 1'b0;
        #7 rst_n = 1'b1;
        #10 j = 1'b0; k = 1'b1;
        #10 j = 1'b1; k = 1'b0;
        #10 j = 1'b1; k = 1'b1;
        #10 j = 1'b0; k = 1'b1;
        #10 j = 1'b1; k = 1'b0;
        #10 j = 1'b1; k = 1'b1;
        #10 j = 1'b0; k = 1'b1;
        #10 j = 1'b1; k = 1'b0;
        #10 j = 1'b1; k = 1'b1;
        #10 j = 1'b0; k = 1'b1;
        #10 j = 1'b1; k = 1'b0;
        #10 j = 1'b1; k = 1'b1;
        #10 j = 1'b0; k = 1'b1;
        #10 j = 1'b1; k = 1'b0;
        #10 j = 1'b1; k = 1'b1;
        #10 j = 1'b0; k = 1'b1;
        #10 j = 1'b1; k = 1'b0;
        #10 j = 1'b1; k = 1'b1;
        #10 j = 1'b0; k = 1'b1;
        #10 j = 1'b1; k = 1'b0;
        #10 j = 1'b1; k = 1'b1;
        #10 j = 1'b0; k = 1'b1;
        #10 j = 1'b1; k = 1'b0;
        #10 j = 1'b1; k = 1'b1;
        #300 $stop;
    end
    
endmodule
