module combi_circuit;

    reg a,b,c,d;  
    wire y; 

    assign y = (!( (a && b) && ( (b && c) || (c || d) ) ));

    initial begin
        $dumpfile("activity_num_one.vcd");  
        $dumpvars(0, combi_circuit);  
        
        a = 0; b = 0; c = 0; d = 0;
        #2
        a = 0; b = 0; c = 0; d = 1;
        #2
        a = 0; b = 0; c = 1; d = 0;
        #2
        a = 0; b = 0; c = 1; d = 1;
        #2
        a = 0; b = 1; c = 0; d = 0;
        #2
        a = 0; b = 1; c = 0; d = 1;
        #2
        a = 0; b = 1; c = 1; d = 0;
        #2
        a = 0; b = 1; c = 1; d = 1;
        #2
        a = 1; b = 0; c = 0; d = 0;
        #2
        a = 1; b = 0; c = 0; d = 1;
        #2
        a = 1; b = 0; c = 1; d = 0;
        #2
        a = 1; b = 0; c = 1; d = 1;
        #2
        a = 1; b = 1; c = 0; d = 0;
        #2
        a = 1; b = 1; c = 0; d = 1;
        #2
        a = 1; b = 1; c = 1; d = 0;
        #2
        a = 1; b = 1; c = 1; d = 1;
        #2;
    end
    
endmodule

//Keemchard Tamio