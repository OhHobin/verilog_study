module carry_lookahead_add(a, b, sum);
    input [3:0] a;
    input [3:0] b;
    output [3:0] sum;
    wire [3:0]p;
    wire [3:0]g;
    wire [3:0]cr;
    
    assign p[0] = a[0]^b[0];
    assign p[1] = a[1]^b[1];
    assign p[2] = a[2]^b[2];
    assign p[3] = a[3]^b[3];

    assign g[0] = a[0]&b[0];
    assign g[1] = a[1]&b[1];
    assign g[2] = a[2]&b[2];
    assign g[3] = a[3]&b[3];

    assign cr[1] = g[0];
    assign cr[2] = g[1]|(g[0]&p[1]);
    assign cr[3] = g[2]|(g[1]&p[2])|(g[0]&p[1]&p[2]);

    assign sum[0] = 1'b0^a[0]^b[0];
    assign sum[1] = cr[1]^a[1]^b[1];
    assign sum[2] = cr[2]^a[2]^b[2];
    assign sum[3] = cr[3]^a[3]^b[3];

endmodule 