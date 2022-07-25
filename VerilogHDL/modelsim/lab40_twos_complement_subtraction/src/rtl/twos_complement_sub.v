module twos_complement_sub(a, b, result);
    input [3:0]a;
    input [3:0]b;
    output [3:0]result;
    assign result = a+((~b)+4'b0001);
endmodule 