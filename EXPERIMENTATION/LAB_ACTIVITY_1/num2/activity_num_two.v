module combi_circuit;

    reg a, b, c, d;
    wire y;

    assign y = (!( ( (a && b) || (a && c))  || ( (c || (!c)) && ((!d) || (a)) ) ));

    initial begin

        $dumpfile("activity_num_two.vcd");
        $dumpvars(0, combi_circuit);
        
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

//Keemchard Tamio