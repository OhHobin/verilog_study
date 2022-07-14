`timescale 1ns/1ps

module half_adder(a, b, carry, out);
    input a;
    input b;
    output reg carry;
    output reg out;

    always @(*)
    begin
        out = a^b;
        if (a == 1'b1 && b == 1'b1)
            carry = 1'b1;
        else 
            carry = 1'b0;
    end
endmodule