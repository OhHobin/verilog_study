module testbench();
    reg [3:0]a;
    reg [3:0]b;
    reg bollow0;
    wire [3:0]result;
    wire lastbollow;
    ripple_carry_sub rcs(a, b, bollow0, result,lastbollow);
    initial begin
        a = 4'b1110; b = 4'b0001; bollow0 = 1'b0;
        #10 a = 4'b0011; b = 4'b0011; bollow0 = 1'b0;
        #10 a = 4'b0110; b = 4'b1110; bollow0 = 1'b0;
        #10 a = 4'b1110; b = 4'b0001; bollow0 = 1'b0;
        #10 $stop;
    end
endmodule