module top_module(
    input clk,
    input in,
    input areset,
    output out); //

    // State transition logic

    // State flip-flops with asynchronous reset

    // Output logic
    parameter A=2'b00,B=2'b01,C=2'b10,D=2'b11;
    reg [1:0]state,nextstate;
    
    always @(posedge clk or posedge areset)
        begin
            if(areset)
                state <= 2'b00;
            else state <= nextstate;
        end
    
    always @(*)
        begin
            case (state)
                2'b00 : begin
                    if (in) nextstate = 2'b01;
                    else nextstate = 2'b00;
                    out = 1'b0;
                end
                
                2'b01 : begin
                    if (in) nextstate = 2'b01;
                    else nextstate = 2'b10;
                    out = 1'b0;
                end
                
                2'b10 : begin
                    if (in) nextstate = 2'b11;
                    else nextstate = 2'b00;
                    out = 1'b0;
                end
                
                2'b11 : begin
                    if (in) nextstate = 2'b01;
                    else nextstate = 2'b10;
                    out = 1'b1;
                end
            endcase
        end
            

endmodule
