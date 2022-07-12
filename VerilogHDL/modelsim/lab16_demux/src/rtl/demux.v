`timescale 1ns/1ps

module demux(in, sel, out1, out2, out3, out4, out5, out6, out7, out8);
    input in;
    input [2:0] sel;
    output reg out1, out2, out3, out4, out5, out6, out7, out8; 

     always @(sel or in)
     begin
        if (sel == 3'h0)
            out1 = in;
        else
            out1 = 1'b0;
        if (sel == 3'h1) 
            out2 = in;
        else
            out2 = 1'b0;
        if (sel == 3'h2)
            out3 = in;
        else
            out3 = 1'b0;
        if (sel == 3'h3)
            out4 = in;
        else
            out4 = 1'b0;
        if (sel == 3'h4)
            out5 = in;
        else
            out5 = 1'b0;
        if (sel == 3'h5)
            out6 = in;
        else
            out6 = 1'b0;
        if (sel == 3'h6)
            out7 = in;
        else
            out7 = 1'b0;
        if (sel == 3'h7)
            out8 = in;
        else
            out8 = 1'b0;
     end
endmodule