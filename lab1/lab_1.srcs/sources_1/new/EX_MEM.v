`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/07 20:19:47
// Design Name: 
// Module Name: EX_MEM
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


module EX_MEM(
input clk,
input rstn,
input [31:0] EX_A,
input [31:0] EX_B,
input [31:0] EX_IR,
input [31:0] EX_ALUoutput,
input [31:0] EX_PC,
input EX_cond,
output reg [31:0] EX_MEM_A,
output reg [31:0] EX_MEM_B,
output reg [31:0] EX_MEM_IR,
output reg [31:0] EX_MEM_ALUoutput,
output reg [31:0] EX_MEM_PC,
output reg  EX_MEM_we,
output reg EX_MEM_cond
    );
     parameter [5:0] MOVZ=6'b001010;
    always @(posedge clk)begin
    EX_MEM_A<=EX_A;
    EX_MEM_B<= EX_B;
    EX_MEM_IR<=EX_IR;
    EX_MEM_ALUoutput<=EX_ALUoutput;
    EX_MEM_PC<=EX_PC;
    EX_MEM_cond<=EX_cond;
    EX_MEM_we<=(EX_IR[5:0]==MOVZ &&  EX_B !=0)? 0:1;
    end
endmodule
