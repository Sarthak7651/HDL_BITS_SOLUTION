module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    
    wire t1,t2,t3;
    
     bcd_fadd X1(a[3:0],b[3:0],cin,t1,sum[3:0] );
     bcd_fadd X2(a[7:4],b[7:4],t1,t2,sum[7:4] );   
     bcd_fadd X3(a[11:8],b[11:8],t2,t3,sum[11:8] );
     bcd_fadd X4(a[15:12],b[15:12],t3,cout,sum[15:12] );
endmodule
