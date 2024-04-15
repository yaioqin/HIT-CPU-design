`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/29 19:17:29
// Design Name: 
// Module Name: regfile
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

//寄存器堆
module regfile(
    input clk,// 时钟信号
    input [4:0] raddr1,// 寄存器堆读地址 1
    output reg [31:0] rdata1,// 寄存器堆读返回数据 1
    input [4:0] raddr2,// 寄存器堆读地址 2
    output reg [31:0] rdata2,// 寄存器堆读返回数据 2
    input we,// 寄存器堆写使能
    input [4:0] waddr,// 寄存器堆写地址
    input [31:0] wdata// 寄存器堆写数据
    );   
    //MIPS的32个通用寄存器 
    reg [31:0] registers[0:31];
    
    integer i;
    initial begin 
     for(i=0;i<32;i=i+1)begin
        registers[i]<=0;
     end
    end
    
    //读取数据
    always @(*) begin
    if(!we)begin
         rdata1 <= ( raddr1 == 0 ) ? 32'h00000000 : registers[raddr1];
         rdata2 <= ( raddr2 == 0 ) ? 32'h00000000 : registers[raddr2];
    end
    end
     
    //写数据
    always @(posedge clk)begin  
        if(we) begin 
            if(waddr!=0) begin
                registers[waddr] <= wdata;
                end

         end
     end


endmodule
