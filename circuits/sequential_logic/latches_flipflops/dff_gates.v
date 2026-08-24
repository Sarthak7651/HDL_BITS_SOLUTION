module top_module (
    input clk,
    input x,
    output z
); 
    wire Q1,Q2,Q3;
    
    df up (clk,x^Q1,Q1);
    df middle (clk,x&~Q2,Q2);
    df down (clk,x|~Q3,Q3);
    
    assign z=~(Q1 | Q2 | Q3);
    

endmodule

module df (input clk,input D,output Q);
    
    always @(posedge clk)
        begin
            Q <= D;
        end
endmodule
