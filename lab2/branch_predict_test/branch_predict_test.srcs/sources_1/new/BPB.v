`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/18 15:55:28
// Design Name: 
// Module Name: BPB
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


module BPB_BTB(
    input           clk,        //ʱ���źţ�������CPU����һ��
    input           resetn,     //����Ч��λ�źţ�������CPU����һ��

    //��CPU��һ����ˮ��ʹ�õĽӿڣ�
    //��һ��ָ���ַ
    input[31:0]     old_PC,
    //�������Ƿ���Ҫ����PC�����з�֧Ԥ�⣩
    input           predict_en,
    //Ԥ�������һ��ָ���ַ
    output reg[31:0]    new_PC,

    //�Ƿ�Ԥ��Ϊִ��ת�Ƶ�ת��ָ��
    output reg  predict_jump,

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


    integer MAX_NUM=1024;
    
    reg [1:0] cacheJump_flag[0:1023]; //PC[10:1]��������־λ
    reg [31:0] cacheJump_PC[0:1023];
    reg [31:0]  cacheJump_destPC[0:1023];
    reg valid_cache[0:1023];//�����Ƿ���Ч ,����־λΪ11��10ʱ��Ч������־λΪ01��00ʱ��Ч��
    reg [9:0] index;
    integer i; 
    
    initial begin
    for (i=0;i<MAX_NUM;i=i+1)begin
            cacheJump_PC[i]<=-1;
            cacheJump_destPC[i]<=-1;
            valid_cache[i]<=0;
             cacheJump_flag[i]<=2'b01;
     end 
        
        predict_jump<=0;
        new_PC<=old_PC+4;
        index<=-1;
    end


//һ�������У�һ��PC��ַ��Ӧ��ָ�������е�ʱ���ǲ�����
//BPBԤ�⵱ǰPC�Ƿ���ת
    always@(*)begin
    if(predict_en) begin
    if(resetn && valid_cache[old_PC[10:1]])begin  //restn==1,valid_cache==1ʱ(Ҳ����ԴPC��Ŀ��PC�Ѿ�����)�����ܸ��ݱ�־λԤ��
            predict_jump<=1;
            new_PC<=cacheJump_destPC[old_PC[10:1]];
            //������00��01ʱ������valid_cache��Ч��ʱ���ǲ�Ӧ����00��01
            //����valid��Ч�Ϳ���Ԥ��ɹ�
    end
    else begin  //restn==0 ������ valid��Ч��������û�и�PC������Ŀ��PC
            predict_jump<=0;
            new_PC<=old_PC+4;
    end
    end
    end
    
//BPB��BTB����
    always@(*)begin
    if(upd_en)begin
     if(resetn && upd_jumpinst)begin//����תָ��
     index<=upd_addr[10:1];
//*/////////////////////////////*/*/////////////////////////////////////
//������valid_cacheΪ1�����
        if(upd_jump && !upd_predfail )begin //Ԥ��ɹ�����֧�ɹ�
        
        if(cacheJump_flag[index]==2'b10) cacheJump_flag[index]<=2'b11;
        else if(cacheJump_flag[index]==2'b11) cacheJump_flag[index]<=2'b11;
        //�����޸�valid_ache[],cache_PC[],cache_destPC[] ,Ԥ��ɹ���ǰ�ᣬ����valid_cacheΪ1
        end
        
        if(!upd_jump && !upd_predfail ) //Ԥ��ɹ�����֧���ɹ�
        begin
        if(cacheJump_flag[index]==2'b11) cacheJump_flag[index]<=2'b10;
        
        else if(cacheJump_flag[index]==2'b10) begin
            cacheJump_flag[index]<=2'b00;
            //ɾ����¼
            valid_cache[index]<=0;//���ϸ���PC��¼���������ڴ˳����е���ת���벻�����ӳ�䵽ͬһ����¼��Ԫ��Ͳ�������
        end
 
        end
//*/////////////////////////////*/*/////////////////////////////////////
//������valid_cacheΪ0�����
        if( !upd_jump &&  upd_predfail)//Ԥ��ʧ�ܣ���֧ʧ��
        begin
        if(cacheJump_flag[index]==2'b00 && !valid_cache[index] ) cacheJump_flag[index]<=2'b00;
        else if(cacheJump_flag[index]==2'b01 &&  !valid_cache[index]) cacheJump_flag[index]<=2'b00;
        end
        
        
        if( upd_jump && upd_predfail) //Ԥ��ʧ�ܣ���֧�ɹ�
        begin
        if(cacheJump_flag[index]==2'b00 && !valid_cache[index]) cacheJump_flag[index]<=2'b01;
        
        //����־Ϊ01ʱ����ҪתΪ11����ô��Ҫ��valid_cache��1��������PC��destPC
        else if(cacheJump_flag[index]==2'b01 && !valid_cache[index]) begin
        cacheJump_flag[index]<=2'b11;
        //�����¼
        cacheJump_PC[index]<=upd_addr;
        cacheJump_destPC[index]<=upd_target;
        valid_cache[index]<=1;
        end
        end

     end
    end
    end


endmodule
