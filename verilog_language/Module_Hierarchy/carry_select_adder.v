module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cout;
    
    add16 lower ( .a(a[15:0]),.b(b[15:0]),.cin(0),.cout(cout),.sum(sum[15:0]) );
    
    wire [15:0] t1,t2;
    add16 upper1 ( .a(a[31:16]),.b(b[31:16]),.cin(0),.cout(),.sum(t1) );
    add16 upper2 ( .a(a[31:16]),.b(b[31:16]),.cin(1),.cout(),.sum(t2) );
    
    always @(*) begin
    if (cout)
        sum[31:16] = t2;
    else 
        sum[31:16] = t1;
    end

endmodule
