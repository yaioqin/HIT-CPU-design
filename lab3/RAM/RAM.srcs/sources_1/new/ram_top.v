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
input clk ,//时钟信号
input [15:0] ram_addr ,//同步RAM写使能，置位时写入
input [31:0] ram_wdata,//同步RAM地址信号，表示读/写地址
input ram_wen ,//同步RAM写数据信号，表示写入数据
output [31:0] ram_rdata//同步RAM读数据信号，表示读出数据
);
block_ram block_ram (
.clka (clk ),
.wea (ram_wen ),
.addra(ram_addr ),
.dina (ram_wdata ),
.douta(ram_rdata ) 
);
endmodule
