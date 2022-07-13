`timescale 1ps/1ps

module testbench();
    reg clk, rst_n, S, R;
    wire Q, Q_bar;
    SR_ff srff(clk, rst_n, S, R, Q, Q_bar);
    initial begin
        clk = 1'b0;
        forever begin
            #10 clk = ~clk;
        end
    end
    initial begin
        rst_n = 1'b0; S = 1'b0; R = 1'b0;
        #7  rst_n = 1'b1; S = 1'b1; R = 1'b0;
        #10 S = 1'b1; R = 1'b0;
        #10 S = 1'b0; R = 1'b0;
        #10 S = 1'b0; R = 1'b1;
        #10 S = 1'b0; R = 1'b1;
        #10 S = 1'b0; R = 1'b0;
        #10 $stop;
    end
endmodule
