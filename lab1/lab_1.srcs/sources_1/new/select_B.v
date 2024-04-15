`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/09 09:22:58
// Design Name: 
// Module Name: select_B
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


module select_B(
input [1:0] selectB,
input [31:0] ID_EX_B,
input [31:0] EX_MEM_ALUoutput,
input [31:0] MEM_WB_ALUoutput,
input [31:0] MEM_WB_LMD,
output reg [31:0] EX_B
    );
    always@(*)begin
        case(selectB)
            2'b00:EX_B<=ID_EX_B;
            //ÅÔÂ·¼¼Êõ ¡ý
            2'b01:EX_B<=EX_MEM_ALUoutput;
            2'b10:EX_B<=MEM_WB_ALUoutput;
            2'b11:EX_B<=MEM_WB_LMD;
        endcase
        end

endmodule
