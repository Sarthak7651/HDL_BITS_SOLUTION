module top_module (
    input clk,
    input d,
    output q
);
    /*actually we can not assign same variable(q) in two always block (for posedge and for negedge)
    so we need to d ff one for posedge and other for negedge after that we have to put a mux that select the output
    based on clk is posedge clk it select q_pos and if negedge clk it select q_neg*/
    reg q_pos;
    reg q_neg;
    
    always @(posedge clk)
        begin
            q_pos <= d;
        end
    
    always @(negedge clk)
        begin
            q_neg <= d;
        end
    
    assign q = clk ? q_pos : q_neg;

endmodule
