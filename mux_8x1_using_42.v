module mux_8x1_using_42(
    input i0,
    input i1,
    input i2,
    input i3,
    input i4,
    input i5,
    input i6,
    input i7,    
    input s0,
    input s1,
    input s2,
    output out
    );
wire w1;
wire w2;
mux_4x2 M1(i0,i1,i2,i3,s0,s1,w1);
mux_4x2 M2(i4,i5,i6,i7,s0,s1,w2);
mux_2x1 M3(w1,w2,s2,out);
endmodule
