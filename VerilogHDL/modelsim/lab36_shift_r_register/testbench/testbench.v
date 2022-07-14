`timescale 1ps/1ps

module testbench();
    reg sr, rst_n;
    wire [3:0]Q;
    always #10 sr = ~sr;
    shift_r_register srreg(sr, rst_n, Q);
    initial begin
        sr = 1'b0; rst_n = 1'b0;
        #7 rst_n = 1'b1;
        #100 $stop;
    end
endmodule
