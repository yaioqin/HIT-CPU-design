`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/28 21:42:08
// Design Name: 
// Module Name: sub1_c
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


module sub_c(
    input [31:0] A,
    input [31:0] B,
    input Cin,
    output [31:0] F,
    output Cout,
    output Zero
    );

    wire [31:0] Cin1;
    assign Cin1= Cin==0? {32'h00000000}:{32'h00000001};
    
    adder32 u1_adder(
    .A(A),
    .B(~(B+Cin1)),
    .Cin(1),
    .F(F),
    .Cout(Cout)
    );

     //«Û¡„±Í÷æ
    assign Zero = F==0 ? 1:0;
endmodule
