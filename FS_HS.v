module FS_HS(
    input A,
    input B,
    input C,
    output diff,
    output borrow
);
wire c1,c2,c3;

    Half_subtractor H1(A, B, c1, c2);
    Half_subtractor H2(c1, C, diff, c3);
    assign borrow = c2 | c3;
endmodule
