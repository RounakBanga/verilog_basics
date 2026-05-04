`timescale 1ns / 1ps

module decoder_tb();
reg En;
reg [1:0] A;
wire [3:0] out;

decoder_2x4 D1(En, A, out);
initial
begin
En=0; A=2'b00;
#5 En=1; A=2'b00;
#5 En=1; A=2'b01;
#5 En=1; A=2'b10;
#5 En=1; A=2'b11;
#5 $finish;
end
initial
$monitor("En=%b","A=%b","out=%b",En, A, out);

endmodule
