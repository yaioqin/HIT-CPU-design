`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/09 09:16:46
// Design Name: 
// Module Name: ID_EX_2v
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


module ID_EX_2v(
input clk,
input rstn,
input stall,
input [31:0] ID_A,
input [31:0] ID_B,
input [31:0] ID_Imm,
input [31:0] ID_IR,
input [31:0] ID_NPC,
input [31:0] ID_PC,
output reg [31:0] ID_EX_A,
output reg [31:0] ID_EX_B,
output reg [31:0] ID_EX_NPC,
output reg [31:0] ID_EX_IR,
output reg [31:0] ID_EX_Imm,
output reg [31:0] ID_EX_PC
    );
    
    always @(posedge clk)begin
        if(rstn)begin
            if (stall) begin
            //≤Â»Î∆¯≈›
                ID_EX_A<=0;
                ID_EX_B<=0;
                ID_EX_NPC<=0;
                ID_EX_IR<=0;
                ID_EX_Imm<=0;
                ID_EX_PC<=-1;
            end
            else begin
                ID_EX_A<=ID_A;
                ID_EX_B<=ID_B;
                ID_EX_NPC<=ID_NPC;
                ID_EX_IR<=ID_IR;
                ID_EX_Imm<=ID_Imm;
                ID_EX_PC<=ID_PC;
            end
        end
    end
endmodule
