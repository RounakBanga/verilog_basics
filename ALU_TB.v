`timescale 1ns / 1ps
module ALU_TB();
reg [15:0] A;
reg [15:0] B;
reg [3:0] sel;
wire [15:0] Y;
wire carry;
ALU A1(A,B,sel,Y,carry);
initial 
begin
A=16'h5871;B=16'h1234;sel=4'h0;
#5 sel=4'h1;
#5 sel=4'h2;
#5 sel=4'h3;
#5 sel=4'h4;
#5 sel=4'h5;
#5 sel=4'h6;
#5 sel=4'h7;
#5 sel=4'hF;
#10 $finish;
end
initial 
$monitor($time,"A=%b,B=%b,sel=%b,Y=%b,carry=%b",A,B,sel,Y,carry);
endmodule
