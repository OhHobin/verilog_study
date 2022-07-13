`timescale 1ps/1ps

module testbench();
    reg D;
    wire Q, Q_bar;
    D_latch dl(D, Q, Q_bar);
    initial begin
        D = 1'b0;
        #10 D = 1'b1;
        #10 $stop;
    end
endmodule
