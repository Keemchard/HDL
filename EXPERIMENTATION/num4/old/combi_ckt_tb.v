`include "combi_ckt.v"
module combi_ckt_tb;
    reg A, B, C;
    wire Y;
 

    combi_ckt uut(A, B, C, Y);
 
    initial begin
    $dumpfile("combi_ckt.vcd");
    $dumpvars(0, combi_ckt_tb);
        A = 0; B = 0; C = 0;  
        #2
        A = 0; B = 0; C = 1;  
        #2
        A = 0; B = 1; C = 0;  
        #2
        A = 0; B = 1; C = 1;  
        #2
        A = 1; B = 0; C = 0;  
        #2
        A = 1; B = 0; C = 1;  
        #2
        A = 1; B = 1; C = 0;  
        #2
        A = 1; B = 1; C = 1;  
        #2;
 
    end
endmodule