module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    
    wire t1,t2,t3,t4,t5,t6;
    
    and G1(t1,p2a,p2b);
    and G2(t2,p2c,p2d);
    or G3(t3,t1,t2);
    assign p2y=t3;
    
    and G4(t4,p1a,p1c,p1b);
    and G5(t5,p1f,p1e,p1d);
    or G6(t6,t4,t5);
    assign p1y=t6;
    


endmodule
