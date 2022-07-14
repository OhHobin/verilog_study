`timescale 1ps/1ps

module testbench();
    reg clk, rst_n;
    wire [2:0]Q;
    binary_down_count bdc(clk, rst_n, Q);
    always #10 clk = ~clk;
    initial begin
        clk = 1'b0; rst_n = 1'b0;
        #12 rst_n = 1'b1;
        #300 $stop;
    end
endmodule
