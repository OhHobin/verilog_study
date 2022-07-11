`timescale 1ps/1ps

module three_input_and_gate(a, b, c, out);
    input a;
    input b;
    input c;
    output out;
    assign out = a&&b&&c;
endmodule