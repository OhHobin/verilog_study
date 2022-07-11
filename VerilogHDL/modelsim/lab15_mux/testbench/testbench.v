`timescale 1ps/1ps

module testbench();
    reg i0, i1, i2, i3, i4, i5, i6, i7;
    reg [2:0] sel;
    wire out;

    mux m(i0, i1, i2, i3, i4, i5, i6, i7, sel, out);
    initial begin
        i0 = 1'b0;
        i1 = 1'b1;
        i2 = 1'b0;
        i3 = 1'b1;
        i4 = 1'b0;
        i5 = 1'b1;
        i6 = 1'b0;
        i7 = 1'b1;
       
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
