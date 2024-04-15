`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/28 22:05:14
// Design Name: 
// Module Name: XNOR
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


module XNOR(
input [31:0] A,
input [31:0] B,
output [31:0] F,
output Zero
    );
    assign F=(A & B)|(~A & ~B);
    assign Zero = F==0 ? 1:0;
endmodule
