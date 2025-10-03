// synthesis verilog_input_version verilog_2001
module top_module (
    input [15:0] scancode,
    output reg left,
    output reg down,
    output reg right,
    output reg up  ); 
    
    always@(*) begin
        case(scancode)
            16'he06b: 	begin
                {left,down,right,up}=4'b1000;
            end
            16'he072: 	begin
                {left,down,right,up}=4'b0100;
            end
            16'he074: begin
                {left,down,right,up}=4'b0010;
            end 	
            16'he075: begin
                {left,down,right,up}=4'b0001;
            end 
            default: {left,down,right,up}=4'b0000;
        endcase
    end

endmodule

