module top_module (
    input in1,
    input in2,
    input in3,
    output out);
    
    wire t1;
    assign t1=~(in1^in2);
    assign out=t1^in3;

endmodule
