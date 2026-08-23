module top_module( 
    input [99:0] in,
  output reg [99:0] out //for using always block declare it as reg
);
   /* genvar i;
    generate
        for(i=0;i<100;i=i+1)
            begin:for_loop
                assign out[i] = in[99-i];
            end
    endgenerate
    */
    
    always @(*) 
        begin
            for (int i=0;i<100;i=i+1)
                begin
                     out[i]=in[99-i];
                end
        end

endmodule
