`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2025 20:55:12
// Design Name: 
// Module Name: tb_comparator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_comparator();

reg [3:0] A;
reg [3:0] B;
wire A_eq_B,A_gt_B,A_lt_B;

comparator_4bit M1(A,B,A_eq_B,A_gt_B,A_lt_B);


initial 
begin
A=4'b0000; B=4'b0000;
#5 A=4'b0001; B=4'b0000;
#5 A=4'b0000; B=4'b0001;
#5 $finish;
end

initial
$monitor("A=%b,B=%b,A_eq_B=%b,A_gt_B=%b,A_lt_B=%b",A,B,A_eq_B,A_gt_B,A_lt_B);
endmodule
