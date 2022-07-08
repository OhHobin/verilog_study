`timescale 1ns/1ps

module testbench();
    reg a;
    reg b;
    wire out;
    
    two_input_nor_gate tnog(a, b, out);
    initial begin
        a = 1'b0; b = 1'b0;
        #10; a = 1'b0; b = 1'b1;
        #10; a = 1'b1; b = 1'b0;
        #10; a = 1'b1; b = 1'b1;
        #10; $stop;
    end
endmodule