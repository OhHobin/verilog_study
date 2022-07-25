`timescale 1ns/1ps

module half_subtractor(a, b, bollow, out);
    input a, b;
    output bollow, out;
    assign bollow = ~a&b;
    assign out = a^b;
endmodule