`timescale 1ns/1ps

module full_subtractor(
    a, 
    b, 
    bollow1, 
    bollow, 
    out
    );

    input a, b, bollow1;
    output bollow, out;
    wire d1_out, bollow0, bollow2;

    half_subtractor hs1(.a(a), .b(b), ,bollow(bollow0), .out(d1_out));
    half_subtractor hs2(d1_out, bollow1, bollow2, out);
    assign bollow = bollow0|ballow2;
    
endmodule