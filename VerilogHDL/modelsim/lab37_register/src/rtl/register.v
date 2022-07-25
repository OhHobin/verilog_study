`timescale 1ns/1ps

module register(clk, rst_n, D, tr, Q);
    input clk, rst_n, tr;
    input [3:0]D;
    output reg [3:0]Q;
    reg [3:0]qr;

    always @(posedge clk or negedge rst_n)
        if (!rst_n)
            begin 
                qr <= 4'b0000;
            end
        else
            begin
                qr <= D;
            end

    always @(posedge clk or negedge rst_n)
        if (!rst_n)
            begin 
                Q <= 4'b0000;
            end
        else if (tr)
            begin
                Q <= qr;
            end
        else
            Q <= Q;


endmodule