`timescale 1ps/1ps

module testbench();
    reg in;
    reg [2:0] sel;
    wire out1, out2, out3, out4, out5, out6, out7, out8;

    demux dm(in, sel, out1, out2, out3, out4, out5, out6, out7, out8);
    initial begin
        in = 1'b0;
       
        sel = 3'h0;
        #10; sel = 3'h1;
        #10; sel = 3'h2;
        #10; sel = 3'h3;
        #10; sel = 3'h4;
        #10; sel = 3'h5;
        #10; sel = 3'h6;
        #10; sel = 3'h7;
        #10; $stop;
    end

endmodule
