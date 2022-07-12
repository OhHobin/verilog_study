`timescale 1ns/1ps

module half_subtractor(a, b, barrow, out);
    input a, b;
    output barrow, out;
    assign barrow = ~a&&b;
    assign out = a^b;
endmodule