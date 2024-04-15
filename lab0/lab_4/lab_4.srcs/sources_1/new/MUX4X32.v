`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/04 22:47:52
// Design Name: 
// Module Name: MUX4X32
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


module MUX3X32(d0,d1,d2,select,out );
input [31:0]d0;
input [31:0]d1;
input [31:0]d2;
input [1:0]select;
output [31:0] out;
assign out=(select==2'b01)?d1:(select==2'b10)?d2:d0;
endmodule
