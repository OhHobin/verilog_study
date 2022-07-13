`timescale 1ns/1ps

module D_latch(D, Q, Q_bar);
    input D;
    output Q, Q_bar;
    assign Q = D;
    assign Q_bar = ~D;
endmodule