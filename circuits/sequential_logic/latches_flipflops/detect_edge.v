module top_module (
    input clk,
    input [7:0] in,
    output reg [7:0] pedge
);
    reg [7:0] prev1;
    
    
    always @(posedge clk)
        begin
            prev1 <= in;
            pedge = in & ~prev1;
        end

endmodule
