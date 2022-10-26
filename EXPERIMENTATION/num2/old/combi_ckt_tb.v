`include "combi_ckt.v"
module combi_ckt_tb;
    reg a, b, c, d;
    wire y;
 

    combi_ckt uut(a, b, c, d, y);
 
    initial begin
    $dumpfile("combi_ckt.vcd");
    $dumpvars(0, combi_ckt_tb);
        a = 0; b = 0; c = 0; d = 0;
        #1
        a = 0; b = 0; c = 0; d = 1;
        #1
        a = 0; b = 0; c = 1; d = 0;
        #1
        a = 0; b = 0; c = 1; d = 1;
        #1
        a = 0; b = 1; c = 0; d = 0;
        #1
        a = 0; b = 1; c = 0; d = 1;
        #1
        a = 0; b = 1; c = 1; d = 0;
        #1
        a = 0; b = 1; c = 1; d = 1;
        #1
        a = 1; b = 0; c = 0; d = 0;
        #1
        a = 1; b = 0; c = 0; d = 1;
        #1
        a = 1; b = 0; c = 1; d = 0;
        #1
        a = 1; b = 0; c = 1; d = 1;
        #1
        a = 1; b = 1; c = 0; d = 0;
        #1
        a = 1; b = 1; c = 0; d = 1;
        #1
        a = 1; b = 1; c = 1; d = 0;
        #1
        a = 1; b = 1; c = 1; d = 1;
        #1;
    end
endmodule