`timescale 1ns / 1ps

module D_flipflop(
    input D,
    input Clk,
    input Reset,
    output reg Q=1'b0
    );

always@(posedge Clk or posedge Reset)
begin
if(Reset)
Q=0;
else
Q=D;
end

endmodule