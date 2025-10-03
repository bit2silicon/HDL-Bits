module top_module (
    input c,
    input d,
    output [3:0] mux_in
); 
    //solving the kmap give the expression 
    // f= (ab'd') + (abcd) + (a'b'(c+d)) 
    // a and b are select variables
    
    assign mux_in[0] = c ? 1'b1 : (d ? 1'b1:1'b0);
    assign mux_in[1] = 1'b0;
    assign mux_in[2] = d?1'b0:1'b1;
    assign mux_in[3] = c?d:1'b0;
    

endmodule

