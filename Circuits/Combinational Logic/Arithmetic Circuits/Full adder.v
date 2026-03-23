module top_module( 
    input a, b, cin,
    output cout, sum );
    
    assign sum = a^b^cin;
    assign cout = cin&a | a&b | b&cin;

endmodule

