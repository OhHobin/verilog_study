module ripple_carry_sub(a, b, bollow0, result, lastballow);
    input [3:0] a;
    input [3:0] b;
    input bollow0;
    output lastbollow;
    output [3:0] result;
    wire [2:0] bollow;
   
    full_subtractor fs3 (a[3], b[3], bollow[2], lastbollow, result[3]);
    full_subtractor fs2 (a[2], b[2], bollow[1], bollow[2], result[2]);
    full_subtractor fs1 (a[1], b[1], bollow[0], bollow[1], result[1]);
    full_subtractor fs0 (a[0], b[0], bollow0, bollow[0], result[0]);

endmodule 