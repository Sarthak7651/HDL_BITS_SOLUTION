module top_module (input x, input y, output z);
    wire t1,t2,t3,t4,t5,t6;
    A IA1 (x,y,t1);
    B IB1 (x,y,t2);
    A IA2 (x,y,t3);
    B IB2 (x,y,t4);
    
    or G1 (t5,t1,t2);
    and G2 (t6,t3,t4);
    xor G3 (z,t5,t6);
endmodule

module A (input x, input y, output z);
    assign z=(x^y) & x;

endmodule

module B ( input x, input y, output z );
    assign z=~(x^y);

endmodule
