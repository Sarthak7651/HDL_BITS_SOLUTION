module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    
    wire t1,t2,t3;


    FA X0 (.a(x[0]),.b(y[0]),.cin(0),.cout(t1),.sum(sum[0]));
    FA X1 (.a(x[1]),.b(y[1]),.cin(t1),.cout(t2),.sum(sum[1]));
    FA X2 (.a(x[2]),.b(y[2]),.cin(t2),.cout(t3),.sum(sum[2]));
    FA X3 (.a(x[3]),.b(y[3]),.cin(t3),.cout(sum[4]),.sum(sum[3]));

endmodule

module FA( 
    input a, b, cin,
    output cout, sum );
    
    assign sum=a^b^cin;
    assign cout=a&b | (a^b)&cin;

endmodule
