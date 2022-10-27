module combi_ckt (A, B, C, D, Y);
 

    input A, B, C, D;
    output Y;

    assign Y = ( ((!A)&&(B || ((!C)&&D))) || ((!A)&& C && D) );

endmodule
