`include "combi_ckt.v"
module combi_ckt_tb;
    reg a, b, c;
    wire y;
 

    combi_ckt uut(a, b, c, y);
 
    initial begin
    $dumpfile("combi_ckt.vcd");
    $dumpvars(0, combi_ckt_tb);
        a = 0; b = 0; c = 0;  
        #3
        a = 0; b = 0; c = 1;  
        #3
        a = 0; b = 1; c = 0;  
        #3
        a = 0; b = 1; c = 1;  
        #3
        a = 1; b = 0; c = 0;  
        #3
        a = 1; b = 0; c = 1;  
        #3
        a = 1; b = 1; c = 0; 
        #3
        a = 1; b = 1; c = 1;  
        #3;
 
    end
endmodule