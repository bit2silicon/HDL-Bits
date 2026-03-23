module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    wire [2:0] w;
    fadd f1(x[0],y[0],1'b0,sum[0],w[0]);
    fadd f2(x[1],y[1],w[0],sum[1],w[1]);
    fadd f3(x[2],y[2],w[1],sum[2],w[2]);
    fadd f4(x[3],y[3],w[2], sum[3],sum[4]);
endmodule

module fadd(input a, b, c, output sum ,carry);
    assign sum = a^b^c;
    assign carry = a&b | b&c | c&a;
endmodule

