`timescale 1ns/1ps

module full_adder(a, b, c, carry, out);
    input a, b, c;
    output reg carry, out;

    always @(a, b, c)
    begin
        out = a^b^c;
        if (a&&b == 1'b1 || b&&c == 1'b1 || a&&c == 1'b1)
            carry = 1'b1;
        else
            carry = 1'b0;
    end
endmodule