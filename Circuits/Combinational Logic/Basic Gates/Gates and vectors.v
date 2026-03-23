module top_module( 
    input [3:0] in,
    output [2:0] out_both,
    output [3:1] out_any,
    output [3:0] out_different );
    
    always@(*) begin
        for(integer i=0; i<$bits(in); i=i+1) begin
            if(i<=2) begin out_both[i] = i==3 ? 1'b0 : (in[i]&in[i+1] ? 1'b1 : 1'b0); end
            if(i!=0) begin out_any[i] = (in[i] | in[i-1]) ? 1'b1 : 1'b0; end
            out_different[i] = i==3 ? (in[i] ^ in[0] ? 1'b1 : 1'b0): (in[i] ^ in[i+1] ? 1'b1 : 1'b0);
        end
    end
            

endmodule

