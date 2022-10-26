`include "combi_ckt.v"
module combi_ckt_tb;
    reg A, B, C, D;
    wire Y;
 

    combi_ckt uut(A, B, C, D, Y);
 
    initial begin
    $dumpfile("combi_ckt.vcd");
    $dumpvars(0, combi_ckt_tb);
        A = 0; B = 0; C = 0; D = 0;  
        #1
        A = 0; B = 0; C = 0; D = 1;   
        #1
        A = 0; B = 0; C = 1; D = 0;   
        #1
        A = 0; B = 0; C = 1; D = 1;   
        #1
        A = 0; B = 1; C = 0; D = 0;  
        #1
        A = 0; B = 1; C = 0; D = 1;   
        #1
        A = 0; B = 1; C = 1; D = 0;   
        #1
        A = 0; B = 1; C = 1; D = 1;   
        #1
        A = 1; B = 0; C = 0; D = 0;   
        #1
        A = 1; B = 0; C = 0; D = 1;  
        #1
        A = 1; B = 0; C = 1; D = 0;   
        #1
        A = 1; B = 0; C = 1; D = 1;   
        #1
        A = 1; B = 1; C = 0; D = 0;  
        #1
        A = 1; B = 1; C = 0; D = 1;   
        #1
        A = 1; B = 1; C = 1; D = 0;   
        #1
        A = 1; B = 1; C = 1; D = 1;   
        #1;
 
    end
endmodule