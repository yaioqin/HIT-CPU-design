`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/14 23:09:54
// Design Name: 
// Module Name: ram_top
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

module ram_top (
input clk ,//ʱ���ź�
input [15:0] ram_addr ,//ͬ��RAMдʹ�ܣ���λʱд��
input [31:0] ram_wdata,//ͬ��RAM��ַ�źţ���ʾ��/д��ַ
input ram_wen ,//ͬ��RAMд�����źţ���ʾд������
output [31:0] ram_rdata//ͬ��RAM�������źţ���ʾ��������
);
block_ram block_ram (
.clka (clk ),
.wea (ram_wen ),
.addra(ram_addr ),
.dina (ram_wdata ),
.douta(ram_rdata ) 
);
endmodule
