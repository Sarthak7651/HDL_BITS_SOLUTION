module top_module(
    input in,
    input [1:0] state,
    output [1:0] next_state,
    output out); //

    parameter A=2'b00, B=2'b01, C=2'b10, D=2'b11; 

    // State transition logic: next_state = f(state, in)

    // Output logic:  out = f(state) for a Moore state machine
    
    always @(*)
        begin
            case(state)
                A : begin
                    if (in) next_state = B;
                    else next_state = A;
                    //out = 1'b0;
                    end
                
                B : begin
                    if (in) next_state = B;
                    else next_state = C;
                    //out = 1'b0;
                    end
                
                C : begin
                    if (in) next_state = D;
                    else next_state = A;
                    //out = 1'b0;
                    end
                
                D : begin
                    if (in) next_state = B;
                    else next_state = C;
                    //out = 1'b1;
                    end
                
            endcase
        end
    assign out = (state == D);
    /*explicitely assign out to D state or in every state*/            

endmodule
