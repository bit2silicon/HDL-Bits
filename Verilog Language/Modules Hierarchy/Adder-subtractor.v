module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] w1;
    wire c1,c2;
    assign w1 = {{32{sub}}^b};
    add16 g1(a[15:0], w1[15:0], sub, sum[15:0],c1);
    add16 g2(a[31:16],w1[31:16],c1,sum[31:16],c2);

endmodule

