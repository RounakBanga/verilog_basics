`timescale 1ns / 1ps

module TFF_4bit(
    input  wire T,
    input  wire clk,
    input  wire rst,
    input  wire a,
    output wire [3:0] Q);

wire clk_1 = a? Q[0]:~Q[0];
wire clk_2 = a? Q[1]:~Q[1];
wire clk_3 = a? Q[2]:~Q[2];

TFF FF0(T,rst,clk,Q[0]);
TFF FF1(T,rst,clk_1,Q[1]);
TFF FF2(T,rst,clk_2,Q[2]);
TFF FF3(T,rst,clk_3,Q[3]);

endmodule
