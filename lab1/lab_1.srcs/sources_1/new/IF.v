`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/08 20:01:13
// Design Name: 
// Module Name: IF
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


module IF(
input clk,
input rstn,
input [31:0] EX_MEM_ALUoutput,
input EX_MEM_cond,
output [31:0] IF_PC,
output [31:0] IF_NPC,
output [31:0] IF_IR
 );
reg [31:0] PC;
reg [31:0] NPC;


 initial begin
    PC<=0;
    NPC<=4;
 end
 
//上升沿，用PC取指令
    IRAM iram(
    .clk(clk),
    .resetn(rstn),
    .ram_addr(PC), //PC读指令
    .ram_wdata(0),//无写数据
    .ram_wen(1'b0),//置0，只能读指令
    .ram_rdata(IF_IR)); 


 always @(posedge clk)begin
     if(rstn) begin
        PC<=(EX_MEM_cond==1) ? EX_MEM_ALUoutput : NPC;
        #5 NPC<=PC+4;
     end
     end
     
assign IF_PC=PC;
assign IF_NPC=NPC;

endmodule








