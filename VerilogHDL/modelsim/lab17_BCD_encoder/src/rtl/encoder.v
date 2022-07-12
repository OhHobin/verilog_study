`timescale 1ns/1ps

module encoder(I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, out);
    input I0, I1, I2, I3, I4, I5, I6, I7, I8, I9;
    output reg [3:0] out;
    always @(I0, I1, I2, I3, I4, I5, I6, I7, I8, I9)
    begin
        if (I0 == 1'b1)
            out = 4'h0;
        else if (I1 == 1'b1)
            out = 4'h1;
        else if (I2 == 1'b1)
            out = 4'h2;
        else if (I3 == 1'b1)
            out = 4'h3;
        else if (I4 == 1'b1)
            out = 4'h4;
        else if (I5 == 1'b1)
            out = 4'h5;
        else if (I6 == 1'b1)
            out = 4'h6;
        else if (I7 == 1'b1)
            out = 4'h7;
        else if (I8 == 1'b1)
            out = 4'h8;
        else if (I9 == 1'b1)
            out = 4'h9;
        else
            out = 4'h0;
    end
endmodule