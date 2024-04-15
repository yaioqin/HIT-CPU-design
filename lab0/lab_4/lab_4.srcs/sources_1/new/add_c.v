`timescale 1ns / 1ps
module add_c(
    input [31:0] A,
    input [31:0] B,
    input Cin,
    output [31:0] F,
    output Cout,
    output Zero
    );
    
    adder32 u_adder(
    .A(A),
    .B(B),
    .Cin(Cin),
    .F(F),
    .Cout(Cout)
    );
  assign Zero = F==0 ? 1:0;

endmodule