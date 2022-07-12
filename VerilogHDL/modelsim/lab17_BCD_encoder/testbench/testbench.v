`timescale 1ps/1ps

module testbench();
    reg I0, I1, I2, I3, I4, I5, I6, I7, I8, I9;
    wire [3:0] out;
    encoder Bec (I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, out);
    initial begin
        I0 = 1'b1; I1 = 1'b0; I2 = 1'b0; I3 = 1'b0; I4 = 1'b0; I5 = 1'b0; I6 = 1'b0; I7 = 1'b0; I8 = 1'b0; I9 = 1'b0;
        #10 I0 = 1'b0; I1 = 1'b1; I2 = 1'b0; I3 = 1'b0; I4 = 1'b0; I5 = 1'b0; I6 = 1'b0; I7 = 1'b0; I8 = 1'b0; I9 = 1'b0;
        #10 I0 = 1'b0; I1 = 1'b0; I2 = 1'b1; I3 = 1'b0; I4 = 1'b0; I5 = 1'b0; I6 = 1'b0; I7 = 1'b0; I8 = 1'b0; I9 = 1'b0;
        #10 I0 = 1'b0; I1 = 1'b0; I2 = 1'b0; I3 = 1'b1; I4 = 1'b0; I5 = 1'b0; I6 = 1'b0; I7 = 1'b0; I8 = 1'b0; I9 = 1'b0;
        #10 I0 = 1'b0; I1 = 1'b0; I2 = 1'b0; I3 = 1'b0; I4 = 1'b1; I5 = 1'b0; I6 = 1'b0; I7 = 1'b0; I8 = 1'b0; I9 = 1'b0;
        #10 I0 = 1'b0; I1 = 1'b0; I2 = 1'b0; I3 = 1'b0; I4 = 1'b0; I5 = 1'b1; I6 = 1'b0; I7 = 1'b0; I8 = 1'b0; I9 = 1'b0;
        #10 I0 = 1'b0; I1 = 1'b0; I2 = 1'b0; I3 = 1'b0; I4 = 1'b0; I5 = 1'b0; I6 = 1'b1; I7 = 1'b0; I8 = 1'b0; I9 = 1'b0;
        #10 I0 = 1'b0; I1 = 1'b0; I2 = 1'b0; I3 = 1'b0; I4 = 1'b0; I5 = 1'b0; I6 = 1'b0; I7 = 1'b1; I8 = 1'b0; I9 = 1'b0;
        #10 I0 = 1'b0; I1 = 1'b0; I2 = 1'b0; I3 = 1'b0; I4 = 1'b0; I5 = 1'b0; I6 = 1'b0; I7 = 1'b0; I8 = 1'b1; I9 = 1'b0;
        #10 I0 = 1'b0; I1 = 1'b0; I2 = 1'b0; I3 = 1'b0; I4 = 1'b0; I5 = 1'b0; I6 = 1'b0; I7 = 1'b0; I8 = 1'b0; I9 = 1'b1;
        #10 $stop;
    end

endmodule