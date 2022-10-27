module combi_circuit;

    reg A, B, C, D;
    wire Y;

    assign Y = ( ((!A)&&(B || ((!C)&&D))) || ((!A)&& C && D) );

    initial begin
        $dumpfile("activity_num_five.vcd");
        $dumpvars(0, combi_circuit);

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

//Keemchard Tamio