`timescale 1ns/1ps

module SR_latch(S, R, Q, Q_bar);
    input S, R;
    output reg Q, Q_bar;
    always @(posedge S, posedge R)
    begin
        if (S == 1'b0 && R == 1'b1)
        begin
            Q = 1'b0;
            Q_bar = ~Q;
        end
        else if (S == 1'b1 && R == 1'b0)
        begin
            Q = 1'b1;
            Q_bar = ~Q;
        end
        else
        begin
            Q = 1'b0;
            Q_bar = 1'b0;
        end 
    end
    
endmodule