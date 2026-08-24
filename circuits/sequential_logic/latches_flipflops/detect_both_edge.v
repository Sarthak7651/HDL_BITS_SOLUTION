module top_module (
    input clk,
    input [7:0] in,
    output reg [7:0] anyedge
);
    reg [7:0] prev;
    
    always @(posedge clk)
        begin
            prev <= in;
            anyedge <= (in & ~prev) | (~in & prev);
        end

endmodule
