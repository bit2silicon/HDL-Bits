module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out );
    integer i;
    always @(*) begin
        i = sel * 4;
        out = {in[i+3], in[i+2], in[i+1], in[i]};
    end

endmodule

