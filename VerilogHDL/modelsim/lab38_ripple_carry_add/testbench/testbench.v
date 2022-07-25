module testbench();
    reg [3:0]x;
    reg [3:0]y;
    wire cr;
    wire [3:0]sum;
    ripple_carry_add rca(x, y, cr, sum);
    initial begin
        x = 4'b0001; y = 4'b1011;
        #10 x = 4'b0011; y = 4'b0011;
        #10 x = 4'b0110; y = 4'b1110;
        #10 x = 4'b1110; y = 4'b0001;
        #10 $stop;
    end
endmodule