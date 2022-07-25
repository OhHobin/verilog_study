`timescale 1ps/1ps

module testbench();
    reg clk, rst_n, tr;
    reg [3:0]D;
    wire [3:0]Q;
    always #10 clk = ~clk;
    register rreg(clk, rst_n, D, tr, Q);
    initial begin
        clk = 1'b0; rst_n = 1'b0; tr = 1'b0; D = 4'b0000;
        #7 rst_n = 1'b1;
        #10 D = 4'b1101;
        #10 tr = 1'b1;
        #30 $stop;




    end
    
endmodule
