module lookahead_sub(a, b, result);
    input [3:0] a;
    input [3:0] b;
    output [3:0] result;
    wire [3:0]bb;
    assign bb = (~b) + 1'b1; 
    carry_lookahead_add cla(
        .sum(result),
        .a(a),
        .b(bb)
    );
endmodule 