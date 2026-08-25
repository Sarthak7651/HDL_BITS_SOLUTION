module top_module (
    input clk,
    input reset,
    input enable,
    output [3:0] Q,
    output c_enable,
    output c_load,
    output [3:0] c_d
);
    /*load has more priority than enable is load and enable goes high at same time system follow load.*/
    assign c_d = 4'b0001; //value to be loded into q

    assign c_enable = enable; 
    
    //we have to load value when system is in reset or its count value is 12 and and enable is high.
    assign c_load = reset | (enable & (Q == 4'b1100));

    count4 the_counter (
        .clk(clk),
        .enable(c_enable),
        .load(c_load),
        .d(c_d),
        .Q(Q)
    );

endmodule
