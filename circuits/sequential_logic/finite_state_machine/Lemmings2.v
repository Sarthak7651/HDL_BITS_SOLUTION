module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    input ground,
    output walk_left,
    output walk_right,
    output aaah ); 
    
    parameter left=2'd0, right=2'd1 , fall_left=2'd2, fall_right=2'd3;
    reg [1:0] state,nextstate;
    
    always @(posedge clk or posedge areset)
        begin
            if (areset)
                state <= left;
            else state <= nextstate;
        end
    
    always @(*)
        begin
            case (state)
                left : begin
                    if (!ground) nextstate = fall_left;
                    else if (bump_left) nextstate = right;
                    else nextstate = left;
                end
                
                right : begin
                    if (!ground) nextstate = fall_right;
                    else if (bump_right) nextstate = left;
                    else nextstate = right;
                end
                
                fall_left : begin
                    if (ground) nextstate = left;
                    else nextstate = fall_left;
                end
                
                 fall_right : begin
                     if (ground) nextstate = right;
                    else nextstate = fall_right;
                end
            endcase
        end
                
                assign walk_left = (state == left);
                assign walk_right = (state == right);
                assign aaah = (state == fall_left) || (state == fall_right);
            

endmodule
