`timescale 1ns/1ps

module three_input_nor_gate(a, b, c, out);
    input a;
    input b;
    input c;
    output out;
    assign out = ~(a||b||c);
endmodule