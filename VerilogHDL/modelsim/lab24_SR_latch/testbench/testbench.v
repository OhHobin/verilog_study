`timescale 1ps/1ps

module testbench();
    reg S, R;
    wire Q, Q_bar;
    SR_latch srl(S, R, Q, Q_bar);
    initial begin
        S = 1'b0; R = 1'b0;
        #10 S = 1'b0; R = 1'b1;
        #10 S = 1'b1; R = 1'b0;
        #10 S = 1'b1; R = 1'b1;
        #10 $stop;
    end
endmodule
