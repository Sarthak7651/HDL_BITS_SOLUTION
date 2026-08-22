module top_module( 
    input a,b,c,
    output w,x,y,z ); 
    assign w=a;
    //assign x=b;
    //assign y=b;
    assign {x,y}={b,b};
    assign z=c;
endmodule
