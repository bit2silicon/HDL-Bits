module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    wire w1,w2,w3,w4,w5,w6,w7,w8;
    assign w1 = b&(~a)&(~c)&(~d);
    assign w2= (~c)&(~d)&a&(~b);
    assign w3 = (~c)&d&(~a)&(~b);
    assign w4 = (~c)&d&a&b;
    assign w5 = c&d&(~a)&b;
    assign w6 = c&d&a&(~b);
    assign w7 = c&(~a)&(~b)&(~d);
    assign w8 = a&b&c&(~d);
    assign out = (w1^w3) | (w4^w2) | (w7^w5) | (w6^w8);

endmodule

