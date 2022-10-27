module combi_circuit;

    reg A, B, C;
    wire Y;

    assign Y = ( (A && B) || ((!A) && B) || ((!B) && C) );

    initial begin
        $dumpfile("activity_num_four.vcd");
        $dumpvars(0, combi_circuit);
        
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

//Keemchard Tamio