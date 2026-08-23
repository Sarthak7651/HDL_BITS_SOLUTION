module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0]t1,t2,t3,t4;
    wire t5,t6;
    wire [15:0] t7,t8;
    
    assign t5=0;
    assign t1=a[15:0];
    assign t2=a[31:16];
    assign t3=b[15:0];
    assign t4=b[31:16];
    
    add16 x1 ( .a(t1),.b(t3),.cin(t5),.cout(t6),.sum(t7) );
    add16 x2 ( .a(t2),.b(t4),.cin(t6),.cout(),.sum(t8) );
    
    assign sum = {t8,t7};

endmodule


//or----------------

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire cout;

    add16 lower (
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(1'b0),
        .sum(sum[15:0]),
        .cout(cout)
    );

    add16 upper (
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(cout),
        .sum(sum[31:16]),
        .cout()
    );

endmodule
