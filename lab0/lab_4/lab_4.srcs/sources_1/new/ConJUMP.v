`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/04 15:29:58
// Design Name: 
// Module Name: ConJUMP
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

//Ìõ¼þÌø×ª sign_extend(offset) ? 2 + NPC
module ConJUMP(NPC,offset,out);
input [31:0]NPC;
input [15:0]offset;
output [31:0]out;
wire [31:0]a;
extend16to32 extend(.din(offset),.dout(a));
assign out=(a<<2)+NPC;
endmodule
