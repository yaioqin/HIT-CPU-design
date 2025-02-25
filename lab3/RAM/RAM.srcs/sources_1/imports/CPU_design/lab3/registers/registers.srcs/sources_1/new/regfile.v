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

//�Ĵ�����
module regfile(
    input clk,// ʱ���ź�
    input [4:0] raddr1,// �Ĵ����Ѷ���ַ 1
    output reg [31:0] rdata1,// �Ĵ����Ѷ��������� 1
    input [4:0] raddr2,// �Ĵ����Ѷ���ַ 2
    output reg [31:0] rdata2,// �Ĵ����Ѷ��������� 2
    input we,// �Ĵ�����дʹ��
    input [4:0] waddr,// �Ĵ�����д��ַ
    input [31:0] wdata// �Ĵ�����д����
    );   
    //MIPS��32��ͨ�üĴ��� 
    reg [31:0] registers[0:31];
    
    integer i;
    initial begin 
     for(i=0;i<32;i=i+1)begin
        registers[i]<=0;
     end
    end
    
    //��ȡ����
    always @(posedge clk) begin
    //if(!we)begin
         rdata1 <= ( raddr1 == 0 ) ? 32'h00000000 : registers[raddr1];
         rdata2 <= ( raddr2 == 0 ) ? 32'h00000000 : registers[raddr2];
    //end
    end
     
    //д����
    always @(posedge clk)begin  
        if(we) begin 
            if(waddr!=0) begin
                registers[waddr] <= wdata;
                end

         end
     end


endmodule
