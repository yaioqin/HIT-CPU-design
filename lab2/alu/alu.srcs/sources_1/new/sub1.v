`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/28 21:17:48
// Design Name: 
// Module Name: sub1
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


module sub(
    input [31:0] A,
    input [31:0] B,
    output [31:0] F,
    output Cout,
    output Zero
    );

    adder32 u2_adder(
    .A(A),
    .B(~B),
    .Cin(1),
    .F(F),
    .Cout(Cout)
    );
     //«Û¡„±Í÷æ
    assign Zero = F==0 ? 1:0;
endmodule
