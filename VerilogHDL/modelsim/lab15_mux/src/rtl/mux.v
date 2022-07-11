`timescale 1ns/1ps

module mux(i0, i1, i2, i3, i4, i5, i6, i7, sel, out);
    input i0, i1, i2, i3, i4, i5, i6, i7;
    input [2:0] sel;
    output out; 

    assign out = (sel == 3'h0)? i0:
                 (sel == 3'h1)? i1:
                 (sel == 3'h2)? i2:
                 (sel == 3'h3)? i3:
                 (sel == 3'h4)? i4:
                 (sel == 3'h5)? i5:
                 (sel == 3'h6)? i6:
                                i7;
endmodule