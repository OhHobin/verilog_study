`timescale 1ps/1ps

module testbench();
    reg clk, rst_n;
    wire [2:0]Q;

    always #10 clk = ~clk;
    ring_counter rc(clk, rst_n, Q);
    initial begin
        clk = 1'b0; rst_n = 1'b0;
        #7 rst_n = 1'b1;
        #300 $stop;
    end
    
endmodule
