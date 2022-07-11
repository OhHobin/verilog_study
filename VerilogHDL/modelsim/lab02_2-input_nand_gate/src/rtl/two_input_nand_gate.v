`timescale 1ns/1ps

module two_input_nand_gate(a, b, out);
    input a;
    input b;
    output out;
    assign out = ~(a&&b);
endmodule