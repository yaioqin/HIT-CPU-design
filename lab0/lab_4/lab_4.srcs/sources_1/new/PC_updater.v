`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/04 15:43:30
// Design Name: 
// Module Name: PC_updater
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

//���PC�ĸ���
module PC_updater(clk,resetn,Cond_PC,PC_up,NPC,PC1,PC2,PC);
input clk;
input resetn;
input [1:0] Cond_PC;//����PC���µ���ֵ
input PC_up;//����PC�ĸ��µ�ʱ��
input [31:0] NPC;//pc+4
input [31:0] PC1;// sign_extend(offset) ? 2 + NPC ,������ת
input [31:0] PC2;// (NPC[31:28]) ## (instr_index ? 2)����������ת
output reg[31:0] PC;//pc

always @(posedge PC_up)begin 

    if(resetn==0)begin
        PC<=0;//PC_new
    end
    else begin
        if (PC_up) begin
            if(Cond_PC==2'b00 || Cond_PC==2'b11 ||Cond_PC==2'bxx)begin
                PC<=NPC;
            end
            else if (Cond_PC==2'b01)begin 
                PC<=PC1;
            end
            else begin 
                PC<=PC2;
            end
            
        end
    end
end
endmodule
