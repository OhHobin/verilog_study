`timescale 1ns/1ps

module three_bit_parity(*);
    input a;
    input b;
    input c;
    output out_odd;
    output out_even;
    assign d = (~a&b)|(a&(~b));
    assign out_odd = ~((~d&c)|(d&~c));
    assign out_even = (~d&c)|(d&~c);
endmodule