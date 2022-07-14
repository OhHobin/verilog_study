`timescale 1ns/1ps

module half_subtractor(a, b, ballow, out);
    input a, b;
    output ballow, out;
    assign ballow = ~a&b;
    assign out = a^b;
endmodule