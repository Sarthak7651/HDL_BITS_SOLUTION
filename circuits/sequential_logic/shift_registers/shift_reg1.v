module top_module (
    input clk,
    input resetn,   // synchronous reset
    input in,
    output out);
    
    wire t1,t2,t3;
    dfff x1 (.clk(clk),.resetn(resetn),.inp(in),.out(t1));
    dfff x2 (.clk(clk),.resetn(resetn),.inp(t1),.out(t2));
    dfff x3 (.clk(clk),.resetn(resetn),.inp(t2),.out(t3));
    dfff x4 (.clk(clk),.resetn(resetn),.inp(t3),.out(out));

endmodule

module dfff (input clk , input resetn,input inp,output reg out);
    always @(posedge clk)
        begin
            if (!resetn)
                out <= 0;
            else 
                out <= inp;
        end
endmodule
