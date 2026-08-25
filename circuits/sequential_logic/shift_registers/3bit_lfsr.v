module top_module (
	input [2:0] SW,      // R
	input [1:0] KEY,     // L and clk
	output [2:0] LEDR);  // Q
    
    mux_dff first ( .clk(KEY[0]),.L(KEY[1]),.r_in(SW[0]),.q_in(LEDR[2]),.Q(LEDR[0]));
    mux_dff middle ( .clk(KEY[0]),.L(KEY[1]),.r_in(SW[1]),.q_in(LEDR[0]),.Q(LEDR[1]) );
    mux_dff last ( .clk(KEY[0]),.L(KEY[1]),.r_in(SW[2]),.q_in(LEDR[1] ^ LEDR[2]),.Q(LEDR[2]) );


endmodule

module mux_dff (
	input clk,
	input L,
	input r_in,
	input q_in,
	output reg Q);
    wire t1;
    assign t1 = L ? r_in : q_in;
    
    always @(posedge clk)
        begin
            Q=t1;
        end

endmodule


            
    
    
