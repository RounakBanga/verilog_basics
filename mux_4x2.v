`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2025 22:10:59
// Design Name: 
// Module Name: mux_4x2
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


module mux_4x2(
    input i0,
    input i1,
    input i2,
    input i3,
    input s0,
    input s1,
    output out
    );
assign out=(~s1&(s0&i1|~s0&i0))|(s1&(s0&i3|~s0&i2));
endmodule
