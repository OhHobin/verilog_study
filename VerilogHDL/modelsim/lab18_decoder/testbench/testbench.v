`timescale 1ps/1ps

module testbench();
    reg [2:0] in;
    wire [7:0] out;
    
    decoder dec(in, out);
    initial begin
        in = 3'h0;
        #10 in = 3'h1;
        #10 in = 3'h2;
        #10 in = 3'h3;
        #10 in = 3'h4;
        #10 in = 3'h5;
        #10 in = 3'h6;
        #10 in = 3'h7;
        #10 $stop;
    end
endmodule