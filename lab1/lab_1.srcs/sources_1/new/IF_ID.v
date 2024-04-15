`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/07 20:18:45
// Design Name: 
// Module Name: IF_ID
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


module IF_ID(
input clk,
input rstn,
input stall,
input [31:0] IF_IR,
input [31:0] IF_NPC,
input [31:0] IF_PC,
output reg [31:0] IF_ID_IR,
output reg [31:0] IF_ID_NPC,
output reg [31:0] IF_ID_PC
    );
    always @(posedge stall or posedge clk)begin
      if (rstn)
       // if(stall) begin end
        //else
            begin
            IF_ID_IR<=IF_IR;
            IF_ID_NPC<=IF_NPC;
            IF_ID_PC<=IF_PC;
            end
      
      /*  if (rstn && !stall)
            begin
            IF_ID_IR<=IF_IR;
            IF_ID_NPC<=IF_NPC;
            IF_ID_PC<=IF_PC;
            end
        if (rstn && stall)
            begin
            IF_ID_IR<=0;
            IF_ID_NPC<=0;
            IF_ID_PC<=0;
            end */
    end
      
endmodule
