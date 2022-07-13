`timescale 1ns/1ps

module SR_ff(clk, rst_n, S, R, Q, Q_bar);
    input clk, S, R, rst_n;
    output reg Q, Q_bar;
    always @(posedge clk or negedge rst_n)
    begin
        if (!rst_n)
        begin
            Q <= 1'b0;
            Q_bar <= 1'b0;
        end
        else
        begin 
            if (S == 1'b1)
            begin
                Q <= 1'b1;
                Q_bar <= 1'b0;
            end
            else if (R == 1'b1)
            begin
                Q <= 1'b0;
                Q_bar <= 1'b1;
            end
        end
    end
    
endmodule