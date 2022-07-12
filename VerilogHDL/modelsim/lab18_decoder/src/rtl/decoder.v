`timescale 1ns/1ps

module decoder(in, out);
    input [2:0] in;
    output reg [7:0]out;
    always @(in)
    begin
        if (in == 3'h0)
            out = 8'b10000000;
        else if (in == 3'h1)
            out = 8'b01000000;
        else if (in == 3'h1)
            out = 8'b00100000;
        else if (in == 3'h1)
            out = 8'b00010000;
        else if (in == 3'h1)
            out = 8'b00001000;
        else if (in == 3'h1)
            out = 8'b00000100;
        else if (in == 3'h1)
            out = 8'b00000010;
        else if (in == 3'h1)
            out = 8'b00000001;
        else
            out = 8'b00000000;
    end
endmodule