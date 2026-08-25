module top_module(
    input clk,
    input reset,    // Active-high synchronous reset to 32'h1
    output reg [31:0] q
); 
    always @(posedge clk)
        begin
            if (reset)
                q <= 32'h1;
            else
                begin
                    q <= (q >> 1); // Default right-shift
                    q[31] <= q[0];
                    q[21] <= q[22] ^ q[0];
                    q[1]  <= q[2]  ^ q[0];
                    q[0]  <= q[1]  ^ q[0];
                end
        end

endmodule
                          
                       

