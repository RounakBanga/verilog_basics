`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2025 13:33:48
// Design Name: 
// Module Name: Half_subtractor
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


module Half_subtractor(
    input A,
    input B,
    output diff,
    output borrow
    );
 assign diff=A^B;
 assign borrow=(~A)&B;
 
endmodule
