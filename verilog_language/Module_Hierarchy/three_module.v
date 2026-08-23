module top_module ( input clk, input d, output q );
    wire t1,t2;
    my_dff X1 ( .d(d),.clk(clk),.q(t1));
    my_dff X2 ( .d(t1),.clk(clk),.q(t2));
    my_dff X3 ( .d(t2),.clk(clk),.q(q));

endmodule
