`timescale 1ns/1ps

module full_adder(a, b, c, carry, out);
    input a, b, c;
    output carry, out;
    wire carry1, carry2;
    wire out2;

    half_adder ha1(a, b, carry1, out2);
    half_adder ha2(out2, c, carry2, out);

    assign carry = carry1||carry2;
endmodule