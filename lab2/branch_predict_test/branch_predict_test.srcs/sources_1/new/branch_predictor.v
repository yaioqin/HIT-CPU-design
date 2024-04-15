`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/11 16:24:47
// Design Name: 
// Module Name: branch_predictor
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


module branch_predictor(
    input           clk,        //ʱ���źţ�������CPU����һ��
    input           resetn,     //����Ч��λ�źţ�������CPU����һ��

    //��CPU��һ����ˮ��ʹ�õĽӿڣ�
    //��һ��ָ���ַ
    input[31:0]     old_PC,
    //�������Ƿ���Ҫ����PC�����з�֧Ԥ�⣩
    input           predict_en,
    //Ԥ�������һ��ָ���ַ
    output[31:0]    new_PC,
    //�Ƿ�Ԥ��Ϊִ��ת�Ƶ�ת��ָ��
    output          predict_jump,

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

BTB pre(
    .clk(clk),     
    .resetn(resetn),    
    .old_PC(old_PC),
    .predict_en(predict_en),
    .new_PC(new_PC),
    .predict_jump(predict_jump),
    .upd_en(upd_en),
    .upd_addr(upd_addr),
    .upd_jumpinst(upd_jumpinst),
    .upd_jump(upd_jump),
    .upd_predfail(upd_predfail),
    .upd_target(upd_target)
);
    
    
    
endmodule
