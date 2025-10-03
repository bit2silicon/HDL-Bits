// synthesis verilog_input_version verilog_2001
module top_module (
    input [3:0] in,
    output reg [1:0] pos  );
    always@(*) begin
        casez(in)
            4'b0000: pos=2'b00;
            4'b???1: pos=2'b00;
            4'b??1?: pos=2'b01;
            4'b?1??: pos=2'b10;
            4'b1???: pos=2'b11;
        endcase
    end

endmodule

