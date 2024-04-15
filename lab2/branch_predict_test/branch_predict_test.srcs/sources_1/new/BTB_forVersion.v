`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/18 15:55:44
// Design Name: 
// Module Name: BTB
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


module BTB_for(
    input           clk,        //ʱ���źţ�������CPU����һ��
    input           resetn,     //����Ч��λ�źţ�������CPU����һ��

    //��CPU��һ����ˮ��ʹ�õĽӿڣ�
    //��һ��ָ���ַ
    input[31:0]     old_PC,
    //�������Ƿ���Ҫ����PC�����з�֧Ԥ�⣩
    input           predict_en,
    //Ԥ�������һ��ָ���ַ
    output reg [31:0]    new_PC,
    //�Ƿ�Ԥ��Ϊִ��ת�Ƶ�ת��ָ��
    output    reg      predict_jump,

    //��֧Ԥ�������½ӿڣ�
    //����ʹ��
    input           upd_en,
    //ת��ָ���ַ
    input[31:0]     upd_addr,
    //�Ƿ�Ϊת��ָ��
    input           upd_jumpinst,
    //��Ϊת��ָ����Ƿ�ת��
    input           upd_jump,
    //�Ƿ�Ԥ��ʧ��
    input           upd_predfail,
    //ת��ָ����Ŀ���ַ�������Ƿ�ת�ƣ�
    input[31:0]     upd_target
);

    
    reg [31:0] cacheJump_PC[1023:0];
    reg [31:0]  cacheJump_destPC[1023:0];
   // reg used[7:0];
    reg [11:0] upd_index;
    reg [11:0] pre_index;
   // reg [2:0] store_index;
   // reg ready;
    integer i,j,k; 

    initial begin
        
    for (i=0;i<=1023;i=i+1)begin
            cacheJump_PC[i]<=-1;
            cacheJump_destPC[i]<=-1;
     end 
        upd_index<=1024;
        pre_index<=1024;

    end
    always@(negedge predict_en)begin
    pre_index<=1024;
    end
    
    always@(negedge upd_en)begin
    upd_index<=1024;
    end
    
//Ԥ�⵱ǰPC�Ƿ���ת
    always@(*)begin
    if(resetn)begin
    ////////////////////////////////////////////////
  
        for(j=0;j<=1023;j=j+1)
        begin
        if(cacheJump_PC[j]==old_PC) begin
            pre_index<=j;
            end
        end

        if(pre_index<=1023)begin
            new_PC<=cacheJump_destPC[pre_index];
            predict_jump<=1;
            
        end
        else begin
            predict_jump<=0;    
            new_PC<=old_PC+4;
        end 
    ////////////////////////////
    end
    else begin
        predict_jump<=0;
        new_PC<=old_PC+4;
    end
    end
 


//�������
always@(*)begin

      if( upd_jumpinst && resetn)begin
      //�жϸ�ָ��PC�Ƿ��ѱ�����
            for(k=0;k<=1023;k=k+1)
            begin
            if(cacheJump_PC[k]==upd_addr) begin
                upd_index<=k;
                end
            end
          
             //��������
             //�ж��Ƿ�Ԥ��ɹ�
             //���ɹ����򲻱䣬
             if(upd_index<=1023)begin
             //Ԥ��ɹ���������ת�ˣ���Ԥ�����ɾ��������¼
                if(!upd_jump && !upd_predfail)begin
                    cacheJump_PC[upd_index]<=-1;
                    cacheJump_destPC[upd_index]<=-1;
                end
                
             end
             //��û�б�����
             else  begin
                 //����תָ���δ���棬������ת��
                 if(upd_jump)begin
                 cacheJump_PC[upd_addr[10:0]]<=upd_addr;
                 cacheJump_destPC[upd_addr[10:0]]<=upd_target; 
             end
            end 

    end
end

endmodule
