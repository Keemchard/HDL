module combi_ckt (A, B, C, Y);
 

    input A, B, C;
    output Y;

    assign Y = ( (A && B) || ((!A) && B) || ((!B) && C) );

endmodule
