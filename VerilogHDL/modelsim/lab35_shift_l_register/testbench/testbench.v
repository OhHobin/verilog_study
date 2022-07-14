`timescale 1ps/1ps

module testbench();
    reg rst_n, sl;
    wire [3:0] Q;
    always #10 sl = ~sl;
    shift_l_register slreg(sl, rst_n, Q);
    initial begin
        sl = 1'b0; rst_n = 1'b0;
        #7 rst_n = 1'b1;
        #100 $stop;
    end
    
endmodule
