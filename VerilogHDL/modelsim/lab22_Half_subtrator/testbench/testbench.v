`timescale 1ps/1ps

module testbench();
    reg a, b;
    wire ballow, out;
    half_subtractor hs(a, b, ballow, out);
    initial begin
        a = 1'b0; b = 1'b0;
        #10 a = 1'b0; b = 1'b1;
        #10 a = 1'b1; b = 1'b0;
        #10 a = 1'b1; b = 1'b1;
        #10 $stop;
    end
endmodule