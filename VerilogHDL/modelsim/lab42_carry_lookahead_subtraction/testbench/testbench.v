module testbench();
    reg [3:0] a;
    reg [3:0] b;
    wire [3:0] result;

    lookahead_sub cls(
        .a(a), 
        .b(b), 
        .result(result)
    );

    initial begin
        a = 4'b0001; b = 4'b1100;
        #10 a = 4'b0011; b = 4'b0110;
        #10 a = 4'b1110; b = 4'b0001;
        #10 a = 4'b0001; b = 4'b0111;
        #10 $stop;
    end
endmodule