`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/04 15:29:58
// Design Name: 
// Module Name: noConJUMP
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

//无条件跳转 (NPC[31:28]) ## (instr_index ? 2)
module noConJUMP(NPC,offset,out);
input [31:0] NPC;
input [25:0] offset;
output [31:0] out;
assign out={NPC[31:28],offset,2'b00};
endmodule
