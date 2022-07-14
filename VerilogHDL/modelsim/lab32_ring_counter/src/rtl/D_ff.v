`timescale 1ns/1ps

module D_ff(clk, rst_n, D, Q, Q_bar);
    input clk, rst_n, D;
    output reg Q, Q_bar;
    
    always @(posedge clk or negedge rst_n)
        if (!rst_n)
            begin 
                Q <= 1'b0;
                Q_bar <= 1'b1;
            end
        else 
            begin
                Q <= D;
                Q_bar <= ~D;
            end

endmodule