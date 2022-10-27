module combi_ckt (a, b, c, y);
 

    input a, b, c;
    output y;

    assign y = ( (!((a && c) || (b && c))) || (!(a && c)) );

endmodule
