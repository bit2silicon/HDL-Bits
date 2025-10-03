module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire c1, c2;
    wire [31:0] w1;
    add16 g1(a[15:0],b[15:0],1'b0,sum[15:0],c1);
    add16 g11(a[31:16],b[31:16],1'b1,w1[31:16],c2);
    add16 g10(a[31:16],b[31:16],1'b0,w1[15:0],c2);
    assign sum[31:16] = c1 ? w1[31:16] : w1[15:0];

endmodule

