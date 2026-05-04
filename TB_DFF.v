`timescale 1ns / 1ps

module TB_DFF();
reg D, Clk, Reset;
wire Q;
D_flipflop D1(D,Clk,Reset,Q);

initial begin
Clk = 0;
D=0;
Reset=0;
forever #34 Clk = ~Clk; 
end
initial
forever #122 D= ~D;
initial
forever #200 Reset = ~Reset;
initial
#1000 $finish;
endmodule
