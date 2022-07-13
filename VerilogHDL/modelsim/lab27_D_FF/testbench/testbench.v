`timescale 1ps/1ps

module testbench();
    reg clk, rst_n, D;
    wire Q, Q_bar;
    D_ff Dff(clk, rst_n, D, Q, Q_bar);
    always #10 clk = ~clk;
    always #8 D = ~D;
    initial begin
        clk = 1'b0; rst_n = 1'b0; D = 1'b0;
        #7 rst_n = 1'b1;
        #300 $stop;
    end

endmodule
