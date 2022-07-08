`timescale 1ns/1ps

module two_input_xor_gate(a, b, out);
    input a;
    input b;
    output out;
    assign out = (a&&~b)||(~a&&b)||(b&&~c)||(~b&&c);
endmodule