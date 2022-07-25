module ripple_carry_add(x, y, cr, sum);
    input [3:0]x;
    input [3:0]y;
    output cr;
    output [3:0]sum;
    wire [3:0]carr;

    full_adder fa1(x[0], y[0], 1'b0, carr[0],sum[0]);
    full_adder fa2(x[1], y[1], carr[0], carr[1],sum[1]);
    full_adder fa3(x[2], y[2], carr[1], carr[2],sum[2]);
    full_adder fa4(x[3], y[3], carr[2], cr, sum[3]);

endmodule