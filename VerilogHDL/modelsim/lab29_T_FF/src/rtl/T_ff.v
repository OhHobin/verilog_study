`timescale 1ns/1ps

module T_ff(clk, rst_n, t, q, q_bar);
    input clk, rst_n, t;
    output reg q, q_bar;
    always @(posedge clk, negedge rst_n)
        if (!rst_n) begin
            q <= 1'b0;
            q_bar <= 1'b1;
        end
        else
        begin
            if (t == 1'b1) begin
                q <= q_bar;
                q_bar <= q;
            end
        end       

endmodule