`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/28 16:13:30
// Design Name: 
// Module Name: BuMa
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

//È¡²¹Âë
module BuMa(
    input [31:0] A,
    output [31:0] A_comp
    );
    assign A_comp=A[31]?{A[31],~A[30:0]+1}:A;
    
endmodule
