module top_module( 
    input a, b, cin,
    output cout, sum );
    
    assign sum=a^b^c;
    assign cout=a&b | (a^b)&c;

endmodule
