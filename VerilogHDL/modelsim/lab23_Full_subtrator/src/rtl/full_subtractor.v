`timescale 1ns/1ps

module full_subtractor(a, b, c, ballow, out);
    input a, b, c;
    output ballow, out;
    assign out = a^b^c;
    assign ballow = (~a&b)|((~(a^b))&c);
    
endmodule