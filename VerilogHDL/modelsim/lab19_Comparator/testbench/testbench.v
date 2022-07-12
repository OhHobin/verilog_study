`timescale 1ps/1ps

module testbench();
    reg [1:0] in1, in2;
    wire out;

    comparator cp(in1, in2, out);
    initial begin
        in1 = 2'b00; in2 = 2'b00;
        #10 in1 = 2'b00; in2 = 2'b01;
        #10 in1 = 2'b00; in2 = 2'b10;
        #10 in1 = 2'b00; in2 = 2'b11;
        #10 in1 = 2'b01; in2 = 2'b00;
        #10 in1 = 2'b01; in2 = 2'b01;
        #10 in1 = 2'b01; in2 = 2'b10;
        #10 in1 = 2'b01; in2 = 2'b11;
        #10 in1 = 2'b10; in2 = 2'b00;
        #10 in1 = 2'b10; in2 = 2'b01;
        #10 in1 = 2'b10; in2 = 2'b10;
        #10 in1 = 2'b10; in2 = 2'b11;
        #10 in1 = 2'b11; in2 = 2'b00;
        #10 in1 = 2'b11; in2 = 2'b01;
        #10 in1 = 2'b11; in2 = 2'b10;
        #10 in1 = 2'b11; in2 = 2'b11;
        #10 $stop;
    end
endmodule