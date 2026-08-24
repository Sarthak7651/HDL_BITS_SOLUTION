module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
    wire t1,t2;
    
    assign t1 = E ? w : Q;
    assign t2 = L ? R : t1;
    
    always @(posedge clk)
        begin
            Q <= t2;
        end

endmodule
