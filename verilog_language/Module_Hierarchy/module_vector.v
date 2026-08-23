module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] t1,t2,t3;
    
    my_dff8 X1 ( .d(d),.clk(clk),.q(t1) );
    my_dff8 X2 ( .d(t1),.clk(clk),.q(t2) );
    my_dff8 X3 ( .d(t2),.clk(clk),.q(t3) );
    
    always @(*)
        begin
            case(sel)
                2'b00: q=d;
                2'b01: q=t1;
                2'b10: q=t2;
                2'b11: q=t3;
            endcase
        end
endmodule
