`timescale 1ns / 1ps

module ALU(
    input [15:0] A,
    input [15:0] B,
    input [3:0] sel,
    output reg [15:0] Y,
    output reg carry
    );
always@(*)
begin
carry=0;
case(sel)
4'b0000:Y=A+B;
4'b0001:Y=A-B;
4'b0010:Y=A&B;
4'b0011:Y=A|B;
4'b0100:Y=A^B;
4'b0101:Y=~A;
4'b0110:Y=A<<1;
4'b0111:Y=A>>1;
4'b1000:{carry,Y}=A+B;
default: Y=16'b0000;
endcase
end
endmodule
