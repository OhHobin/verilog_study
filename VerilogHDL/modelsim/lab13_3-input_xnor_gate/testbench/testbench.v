`timescale 1ps/1ps

module testbench();
    reg a;
    reg b;
    reg c;
    wire out;
    three_input_xnor_gate txng(a, b, c, out);
    initial begin
        a = 1'b0; b = 1'b0; c = 1'b0;
        #10; a = 1'b0; b = 1'b0; c = 1'b1;
        #10; a = 1'b0; b = 1'b1; c = 1'b0;
        #10; a = 1'b0; b = 1'b1; c = 1'b1;
        #10; a = 1'b1; b = 1'b0; c = 1'b0;
        #10; a = 1'b1; b = 1'b0; c = 1'b1;
        #10; a = 1'b1; b = 1'b1; c = 1'b0;
        #10; a = 1'b1; b = 1'b1; c = 1'b1;
        #10; $stop;
    end
endmodule