`timescale 1ns / 1ps

module TFF(
    input T,
    input rst,
    input clk,
    output reg Q
    );
    
always@(posedge clk or rst)
begin

if(rst)
Q<=1'b0;

else if(T)
Q<=~Q;

else
Q<=Q;

end
endmodule