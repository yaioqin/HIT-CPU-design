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
    input           clk,        //时钟信号，必须与CPU保持一致
    input           resetn,     //低有效复位信号，必须与CPU保持一致

    //供CPU第一级流水段使用的接口：
    //上一个指令地址
    input[31:0]     old_PC,
    //这周期是否需要更新PC（进行分支预测）
    input           predict_en,
    //预测出的下一个指令地址
    output[31:0]    new_PC,
    //是否被预测为执行转移的转移指令
    output          predict_jump,

    //分支预测器更新接口：
    //更新使能
    input           upd_en,
    //转移指令地址
    input[31:0]     upd_addr,
    //是否为转移指令
    input           upd_jumpinst,
    //若为转移指令，则是否转移
    input           upd_jump,
    //是否预测失败
    input           upd_predfail,
    //转移指令本身的目标地址（无论是否转移）
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
