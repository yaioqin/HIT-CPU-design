`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/26 18:42:05
// Design Name: 
// Module Name: add
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


module add(
    input [31:0] A,
    input [31:0] B,
    output [31:0] F,
    output Cout,
    output Zero
    );
    adder32 u_adder(
    .A(A),
    .B(B),
    .Cin(1'b0),
    .F(F),
    .Cout(Cout)
    );
  assign Zero= F==0 ? 1:0;
  

endmodule
