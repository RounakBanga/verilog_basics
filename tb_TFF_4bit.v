`timescale 1ns / 1ps

module tb_TFF_4bit();

reg T,clk,rst,a;
wire [3:0] Q;

TFF_4bit counter (T,clk,rst,a,Q);

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    T=1; rst=1; a=1;
    #10 rst=0;
    #10 a=0;
    #20 rst=1;
    #30 rst=0;
    #30 a=0;
    #130 $finish;
end

endmodule
