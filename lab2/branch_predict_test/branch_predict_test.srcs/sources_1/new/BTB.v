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


module BTB(
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

    
    reg [31:0] cacheJump_PC[7:0];
    reg [31:0]  cacheJump_destPC[7:0];
    reg used[7:0];
    reg [3:0] upd_index;
    reg [3:0] pre_index;
    reg [2:0] store_index;
    reg ready;
    initial begin
        cacheJump_PC[0]<=-1;
        cacheJump_PC[1]<=-1;
        cacheJump_PC[2]<=-1;
        cacheJump_PC[3]<=-1;
        cacheJump_PC[4]<=-1;
        cacheJump_PC[5]<=-1;
        cacheJump_PC[6]<=-1;
        cacheJump_PC[7]<=-1;
        cacheJump_destPC[0]<=-1;
        cacheJump_destPC[1]<=-1;  
        cacheJump_destPC[2]<=-1;  
        cacheJump_destPC[3]<=-1;
        cacheJump_destPC[4]<=-1;
        cacheJump_destPC[5]<=-1;
        cacheJump_destPC[6]<=-1;
        cacheJump_destPC[7]<=-1;  
        upd_index<=8;
        pre_index<=8;
        used[0]<=0;
        used[1]<=0;
        used[2]<=0;
        used[3]<=0;
        used[4]<=0;
        used[5]<=0;
        used[6]<=0;
        used[7]<=0; 
        ready<=0;
        store_index<=0;

    end
    
//Ԥ�⵱ǰPC�Ƿ���ת
    always@(*)begin
    if(predict_en && resetn)begin
    ////////////////////////////////////////////////
    //�ж���תPC�Ƿ񱻻���
    case(old_PC)
    cacheJump_PC[0]:pre_index<=0;
    cacheJump_PC[1]:pre_index<=1;
    cacheJump_PC[2]:pre_index<=2;
    cacheJump_PC[3]:pre_index<=3;
    cacheJump_PC[4]:pre_index<=4;
    cacheJump_PC[5]:pre_index<=5;
    cacheJump_PC[6]:pre_index<=6;
    cacheJump_PC[7]:pre_index<=7;
    default:pre_index<=8;
    endcase
    if(pre_index<=7)begin
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
 
 //д�뻺��ĵ�ַ����ôѡ��  
always @(*)begin
    case(ready)
    used[0]:store_index<=0;
    used[1]:store_index<=1;
    used[2]:store_index<=2;
    used[3]:store_index<=3;
    used[4]:store_index<=4;
    used[5]:store_index<=5;
    used[6]:store_index<=6;
    used[7]:store_index<=7;
    default: store_index<=7;
    endcase
end

//�������
always@(*)begin

      if(upd_en && upd_jumpinst && resetn)begin
      //�жϸ�ָ��PC�Ƿ��ѱ�����
          case(upd_addr)
            cacheJump_PC[0]:upd_index<=0;
            cacheJump_PC[1]:upd_index<=1;
            cacheJump_PC[2]:upd_index<=2;
            cacheJump_PC[3]:upd_index<=3;
            cacheJump_PC[4]:upd_index<=4;
            cacheJump_PC[5]:upd_index<=5;
            cacheJump_PC[6]:upd_index<=6;
            cacheJump_PC[7]:upd_index<=7;
            default:upd_index<=8;
            endcase
          
             //��������
             //�ж��Ƿ�Ԥ��ɹ�
             //���ɹ����򲻱䣬
             if(upd_index<=7)begin
             //Ԥ��ɹ���������ת�ˣ���Ԥ�����ɾ��������¼
                if(!upd_jump && !upd_predfail)begin
                    cacheJump_PC[upd_index]<=-1;
                    cacheJump_destPC[upd_index]<=-1;
                    used[upd_index]<=0;
                end
                
             end
             //��û�б�����
             else  begin
                 //����תָ���δ���棬������ת��
                 if(upd_jump)begin
                 cacheJump_PC[store_index]<=upd_addr;
                 cacheJump_destPC[store_index]<=upd_target; 
                 used[store_index]<=1;
             end
            end 

    end
end

endmodule
