`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/07 20:20:25
// Design Name: 
// Module Name: MEM_WB
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


module MEM_WB(
input clk,
input rstn,
input [31:0] EX_MEM_A,
input [31:0] EX_MEM_B,
input [31:0] EX_MEM_IR,
input [31:0] EX_MEM_ALUoutput,
input [31:0] MEM_LMD,
input [31:0] EX_MEM_PC,
input  EX_MEM_we,
output reg [31:0] MEM_WB_A,
output reg [31:0] MEM_WB_B,
output reg [31:0] MEM_WB_IR,
output reg [31:0] MEM_WB_ALUoutput,
output reg [31:0] MEM_WB_LMD,
output reg [31:0] MEM_WB_PC,
output reg MEM_WB_we
    );
    always @(posedge clk)begin
        if(rstn)begin
        MEM_WB_A<=EX_MEM_A;
        MEM_WB_B<=EX_MEM_B;
        MEM_WB_IR<=EX_MEM_IR;
        MEM_WB_ALUoutput<=EX_MEM_ALUoutput;
        MEM_WB_LMD<=MEM_LMD;
        MEM_WB_PC<=EX_MEM_PC;
        MEM_WB_we<=EX_MEM_we;
        end
    end
endmodule
