module top_module (
    input clk,
    input reset,
    input [3:1] s,
    output fr3,
    output fr2,
    output fr1,
    output dfr
); 
    
    /*problem needs 6 states, not 3.The extra states are needed to 
    remember whether the water level is falling, so that dfr can stay asserted.*/
    parameter A2=3'd0,//water below s[1]
              B1=3'd1,//water around s[1],rising
              B2=3'd2,//water around s[1],falling
              C1=3'd3,//water around s[2],rising
              C2=3'd4,//water around s[2],falling
              D1=3'd5;//water around s[3]
    
    reg [2:0]state,nextstate;
    
    always @(posedge clk)
        begin
            if(reset)
                state <= A2;
            else 
                state <= nextstate;
        end
    
    always @(*)
        begin
            case (state)
                A2 : nextstate = s[1] ? B1:A2;
                
                B1 : begin
                    if (s[2]) nextstate = C1;
                    else if (s[1]) nextstate = B1;
                    else nextstate = A2;
                    end
                
                B2 : begin
                    if (s[2]) nextstate = C1;
                    else if (s[1]) nextstate = B2;
                    else nextstate = A2;
                    end
                
                C1 : begin
                    if (s[3]) nextstate = D1;
                    else if (s[2]) nextstate = C1;
                    else nextstate = B2;
                    end
                    
                C2 : begin
                    if (s[3]) nextstate = D1;
                    else if (s[2]) nextstate = C2;
                    else nextstate = B2;
                    end
                    
                D1 : begin
                    if (s[3]) nextstate = D1;
                    else nextstate = C2;
                    end

                default : nextstate = A2;
                    
                    endcase
                end
                
   always @(*) begin
        case (state)

            A2: {fr3, fr2, fr1, dfr} = 4'b1111;
            B1: {fr3, fr2, fr1, dfr} = 4'b0110;
            B2: {fr3, fr2, fr1, dfr} = 4'b0111;
            C1: {fr3, fr2, fr1, dfr} = 4'b0010;
            C2: {fr3, fr2, fr1, dfr} = 4'b0011;
            D1: {fr3, fr2, fr1, dfr} = 4'b0000;

            default: {fr3, fr2, fr1, dfr} = 4'bxxxx;

        endcase
    end      
endmodule
