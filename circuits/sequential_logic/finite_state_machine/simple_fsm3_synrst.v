module top_module(
    input clk,
    input in,
    input reset,
    output out); //

    // State transition logic

    // State flip-flops with synchronous reset

    // Output logic
    parameter A=2'b00,
              B=2'b01,
              C=2'b10,
              D=2'b11;
    reg [1:0] state,nextstate;
    
    always @(posedge clk)
        begin
            if(reset)
                state <= A;
            else state <= nextstate;
        end
    
    always @(*)
        begin
            case (state)
                A : nextstate = in ? B:A;
                B : nextstate = in ? B:C;
                C : nextstate = in ? D:A;
                D : nextstate = in ? B:C;
            endcase
        end
    assign out = (state == D);

endmodule
