module top_module (input x, input y, output z);
    wire w1, w2, w3, w4, w5, w6;
    modb b1(x,y,w1);
    moda a1(x,y,w2);
    assign w5 = w1|w2;
    assign w6 = w1&w2;
    assign z = w5^w6;
    
endmodule

module modb ( input x, input y, output z );
    assign z = ~x&~y | x&y;
endmodule

module moda (input x, input y, output z);
    assign z = (x^y) & x;
endmodule


