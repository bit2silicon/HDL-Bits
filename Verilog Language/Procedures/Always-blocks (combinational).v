// synthesis verilog_input_version verilog_2001
module top_module(
    input a, 
    input b,
    output reg out_assign,
    output reg out_alwaysblock
);
     
    always@(*) begin
        out_assign = a&b;
        out_alwaysblock = a&b;
    end

endmodule

