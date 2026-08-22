`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    wire t1,t2,t3;
    
    and G1(t1,a,b);
    and G2(t2,c,d);
    or G3(t3,t1,t2);
    
    assign out=t3;
    assign out_n=~t3;
    

endmodule
