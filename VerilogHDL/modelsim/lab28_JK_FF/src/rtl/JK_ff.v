`timescale 1ns/1ps

module JK_ff(clk, rst_n, j, k, q, q_bar);
    input clk, rst_n, j, k;
    output reg q, q_bar;
    
    always @(posedge clk or negedge rst_n)
    begin
        if (!rst_n) 
        begin
            q <= 1'b0; 
            q_bar <= 1'b1; 
        end
        else 
        begin
            if (j == 1'b1 && k == 1'b0)
            begin
                q <= 1'b1;
                q_bar <= 1'b0; 
            end
            else if (j == 1'b0 && k == 1'b1)
            begin
                q <= 1'b0;
                q_bar <= 1'b1; 
            end
            else if (j == 1'b1 && k == 1'b1) 
            begin
                q <= q_bar;
                q_bar <= q;
            end
        end
    end
endmodule