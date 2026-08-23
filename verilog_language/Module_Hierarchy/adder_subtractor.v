module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire cout;
    wire [31:0] t1;
    assign t1=b^{32{sub}};//bcz sub is single bit so i have to replicate it for xor with every bit
    add16 lower ( .a(a[15:0]),.b(t1[15:0]),.cin(sub),.cout(cout),.sum(sum[15:0]) );
    add16 upper ( .a(a[31:16]),.b(t1[31:16]),.cin(cout),.cout(),.sum(sum[31:16]) );                 
endmodule
