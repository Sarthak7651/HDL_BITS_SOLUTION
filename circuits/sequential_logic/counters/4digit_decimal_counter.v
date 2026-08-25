module top_module (
    input clk,
    input reset,   // Synchronous active-high reset
    output [3:1] ena,
    output [15:0] q);
    
    assign ena[1] = (q[3:0] == 4'b1001);
    assign ena[2] = ena[1] && (q[7:4] == 4'b1001);
    assign ena[3] = ena[2] && (q[11:8] == 4'b1001);
    
    bcd_counter ones ( .clk(clk),.reset(reset),.enable(1'b1),.q(q[3:0]));
    bcd_counter tens ( .clk(clk),.reset(reset),.enable(ena[1]),.q(q[7:4]));
    bcd_counter hunsreds ( .clk(clk),.reset(reset),.enable(ena[2]),.q(q[11:8]));
    bcd_counter thousands ( .clk(clk),.reset(reset),.enable(ena[3]),.q(q[15:12]));
    

endmodule

module bcd_counter (
    input clk,
    input reset,
    input enable,
    output reg [3:0] q
);

    always @(posedge clk) begin
        if (reset)
            q <= 4'b0000;
        else if (enable) begin
            if (q == 4'b1001)
                q <= 4'b0;
            else
                q <= q + 4'b1;
        end
    end

endmodule
