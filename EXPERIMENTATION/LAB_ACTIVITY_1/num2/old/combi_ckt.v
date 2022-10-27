module combi_ckt (a, b, c, d, y);
 

    input a, b, c, d;
    output y;

    assign y = (!( ( (a && b) || (a && c))  || ( (c || (!c)) && ((!d) || (a)) ) ));

endmodule
