module combi_circuit;

    reg a, b, c;
    wire y;

    assign y = ( (!((a && c) || (b && c))) || (!(a && c)) );

    initial begin
        $dumpfile("activity_num_three.vcd");
        $dumpvars(0, combi_circuit);

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

//Keemchard Tamio