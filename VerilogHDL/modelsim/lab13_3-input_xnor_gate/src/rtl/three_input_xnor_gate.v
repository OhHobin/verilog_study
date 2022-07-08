`timescale 1ns/1ps

module three_input_xnor_gate(a, b, c, out);
    input a;
    input b;
    input c;
    output out;
    assign ab = (~a&&b)||(a&&~b);
    assign out = ~((~ab&&c)||(ab&&~c));
endmodule