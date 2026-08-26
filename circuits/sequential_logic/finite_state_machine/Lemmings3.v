module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    input ground,
    input dig,
    output walk_left,
    output walk_right,
    output aaah,
    output digging ); 
    
    parameter left =3'd0,right=3'd1,fall_left=3'd2,fall_right=3'd3,dig_left=3'd4,dig_right=3'd5;
    reg [2:0] state,nextstate;
    
    always @(posedge clk or posedge areset)
        begin
            if(areset)
                state <= left;
            else state <= nextstate;
        end
    
    always @(*)
        begin
            case(state)
                left : begin
                    if (ground && dig) nextstate = dig_left;
                    else if (!ground) nextstate = fall_left;
                    else if (bump_left) nextstate = right;
                    else nextstate = left;
                end
                
                right : begin
                    if (ground && dig) nextstate = dig_right;
                    else if (!ground) nextstate = fall_right;
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
                
                dig_left : begin
                    if (!ground) nextstate = fall_left;
                    else nextstate = dig_left;
                end
                
                dig_right : begin
                    if (!ground) nextstate = fall_right;
                    else nextstate = dig_right;
                end
            endcase
        end
    
    assign walk_left = (state == left);
    assign  walk_right = (state == right);
    assign  aaah = (state == fall_right) || (state == fall_left);
    assign  digging = (state == dig_left) || (state == dig_right);

endmodule
