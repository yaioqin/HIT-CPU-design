`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/09 09:22:44
// Design Name: 
// Module Name: select_A
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


module select_A(
input [1:0] selectA,
input [31:0] ID_EX_A,
input [31:0] EX_MEM_ALUoutput,
input [31:0] MEM_WB_ALUoutput,
input [31:0] MEM_WB_LMD,
output reg [31:0] EX_A
    );
    always@(*)begin
        case(selectA)
            2'b00:EX_A<=ID_EX_A;
            //ÅÔÂ·¼¼Êõ ¡ý
            2'b01:EX_A<=EX_MEM_ALUoutput;
            2'b10:EX_A<=MEM_WB_ALUoutput;
            2'b11:EX_A<=MEM_WB_LMD;
        endcase
        end

endmodule
