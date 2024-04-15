`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/04 21:28:53
// Design Name: 
// Module Name: icache_tagv_table
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

/*
�ж�ĳһ·�Ƿ�hit
*/
/* �ñ��������һ·��tag��������·�������Ҫ���������ñ� */
module icache_tagv_table(
    input           clk,        //ʱ���ź�
    input           resetn,     //����Ч��λ�ź�
    input           stall,
    
    //д�˿ڣ�Cache miss������Cache�к�
    input           wen,        //дʹ��
    input           valid_wdata,//д����Чλ��ֵ��һ��Ϊ1��
    input[19:0]     tag_wdata,  //д��tag��ֵ
    input[6:0]      windex,     //д��Cache�ж�Ӧ��index 7λ

    //���˿ڣ�Cache��һ����ˮ���������
    input           rden,       //��ʹ��
    input[31:0]     cpu_addr,   //����CPU�ĵ�ַ
    output hit  ,                //���н�����������غ����
    output valid
    );

    reg[127:0]      valids;     //��Чλ��ʵ��Ϊ128λ�Ĵ���
    reg[19:0]       tags[0:127];//ÿ��Cache�е�tag
    

    genvar i;
    generate
        for(i=0; i < 128; i = i + 1) begin
            initial begin
                tags[i]=0;      //��tag ram�ڳ�ʼʱ��0
                //�����ڸ�λʱ��tag ram��0����Ϊ��λʱ�ѽ���Чλ��0��
            end
        end
    endgenerate

    //д�봦��
    always@(posedge clk) begin
        if(~resetn)
            valids <= 0;        //��λʱ������Cache����Ϊ��Ч
        else begin
            if(wen) begin
                valids[windex] <= valid_wdata;
                tags[windex] <= tag_wdata;
            end
        end
    end

    //һ������ˮ�μ���м�Ĵ���
    reg[19:0]       reg_tag;    //һ����ˮ�ζ�����tag
    reg             reg_valid;  //һ����ˮ�ζ�������Чλ
    reg[31:0]       reg_cpu_addr;   //�����CPU��ַ
    //reg 
    wire [6:0]       cpu_index=cpu_addr[11:5];   //CPU��ַ��index����Ϊ����ַ����һ����ˮ��
    wire[19:0]      r_cpu_tag=reg_cpu_addr[31:12];    //CPU��ַ��tag������ѡ·���ڶ�����ˮ��

    //������
    always@(posedge clk) begin
        if(~resetn) begin
            reg_tag <= 0;
          //  reg_valid <= 0;
            reg_cpu_addr <= 0;
        end
        else begin
            if(rden ) #2 begin
             //   if(!stall)begin
                    reg_tag <= tags[cpu_index];
                    reg_cpu_addr <= cpu_addr; 
               // end
            end
        end
    end
   

    //�ڵڶ�����ˮ�θ��ݶ�����tag�ж�����
    assign hit=(r_cpu_tag == reg_tag) & valid;
    assign valid=valids[reg_cpu_addr[11:5]];

endmodule
