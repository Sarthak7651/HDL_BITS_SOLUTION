module top_module (
	input clk,
	input L,
	input r_in,
	input q_in,
	output reg Q);
    
   /* always @(posedge clk)
        begin
            if(L)
                Q <= r_in;
            else 
                Q <= q_in;
        end */
    wire t1;
    assign t1 = L ? r_in : q_in;
    
    always @(posedge clk)
        begin
            Q=t1;
        end

endmodule


            
    
    
