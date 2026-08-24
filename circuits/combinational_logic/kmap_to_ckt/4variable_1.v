module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    
    assign out = (~a&~d) | (~c&~b) | c&d&b | (a&~b&d);

endmodule
