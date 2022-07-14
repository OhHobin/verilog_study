`timescale 1ns/1ps

module decoder(in, out);
    input [2:0] in;
    output reg [7:0]out;
    always @(in)
    begin
        if (in == 3'h0)
            out = 8'b1000_0000;
        else if (in == 3'h1)
            out = 8'b0100_0000;
        else if (in == 3'h1)
            out = 8'b0010_0000;
        else if (in == 3'h1)
            out = 8'b0001_0000;
        else if (in == 3'h1)
            out = 8'b0000_1000;
        else if (in == 3'h1)
            out = 8'b0000_0100;
        else if (in == 3'h1)
            out = 8'b0000_0010;
        else if (in == 3'h1)
            out = 8'b0000_0001;
        else
            out = 8'b0000_0000;
    end
endmodule