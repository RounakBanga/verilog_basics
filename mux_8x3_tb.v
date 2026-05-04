`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2025 00:43:08
// Design Name: 
// Module Name: mux_8x3_tb
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


module mux_8x3_tb();
reg i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2;
wire out;
mux_8x1_using_42 M1(i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,out);
initial
begin
#5 i0=1;i1=0;i2=0;i3=0;i4=0;i5=0;i6=0;i7=0;s0=0;s1=0;s2=0;
#5 i0=0;i1=1;i2=0;i3=0;i4=0;i5=0;i6=0;i7=0;s0=1;s1=0;s2=0;
#5 i0=0;i1=0;i2=1;i3=0;i4=0;i5=0;i6=0;i7=0;s0=0;s1=1;s2=0;
#5 i0=0;i1=0;i2=0;i3=1;i4=0;i5=0;i6=0;i7=0;s0=1;s1=1;s2=0;
#5 i0=0;i1=0;i2=0;i3=0;i4=1;i5=0;i6=0;i7=0;s0=0;s1=0;s2=1;
#5 i0=0;i1=0;i2=0;i3=0;i4=0;i5=1;i6=0;i7=0;s0=1;s1=0;s2=1;
#5 i0=0;i1=0;i2=0;i3=0;i4=0;i5=0;i6=1;i7=0;s0=0;s1=1;s2=1;
#5 i0=0;i1=0;i2=0;i3=0;i4=0;i5=0;i6=0;i7=1;s0=1;s1=1;s2=1;
end
initial
$monitor ($time, "i0=%b","i1=%b","i2=%b","i3=%b","i4=%b","i5=%b","i6=%b","i7=%b","s0=%b","s1=%b","s2=%b","out=%b",i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,out);

endmodule