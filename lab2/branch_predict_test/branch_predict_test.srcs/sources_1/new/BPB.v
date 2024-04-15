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
    input           clk,        //时钟信号，必须与CPU保持一致
    input           resetn,     //低有效复位信号，必须与CPU保持一致

    //供CPU第一级流水段使用的接口：
    //上一个指令地址
    input[31:0]     old_PC,
    //这周期是否需要更新PC（进行分支预测）
    input           predict_en,
    //预测出的下一个指令地址
    output reg[31:0]    new_PC,

    //是否被预测为执行转移的转移指令
    output reg  predict_jump,

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


    integer MAX_NUM=1024;
    
    reg [1:0] cacheJump_flag[0:1023]; //PC[10:1]来索引标志位
    reg [31:0] cacheJump_PC[0:1023];
    reg [31:0]  cacheJump_destPC[0:1023];
    reg valid_cache[0:1023];//缓存是否有效 ,当标志位为11，10时有效；当标志位为01，00时无效。
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


//一个程序中，一个PC地址对应的指令在运行的时候是不会变的
//BPB预测当前PC是否跳转
    always@(*)begin
    if(predict_en) begin
    if(resetn && valid_cache[old_PC[10:1]])begin  //restn==1,valid_cache==1时(也就是源PC和目标PC已经缓存)，才能根据标志位预测
            predict_jump<=1;
            new_PC<=cacheJump_destPC[old_PC[10:1]];
            //由于是00，01时，所以valid_cache有效的时候是不应该有00，01
            //所以valid有效就可以预测成功
    end
    else begin  //restn==0 或者是 valid无效，缓存中没有该PC和他的目标PC
            predict_jump<=0;
            new_PC<=old_PC+4;
    end
    end
    end
    
//BPB和BTB更新
    always@(*)begin
    if(upd_en)begin
     if(resetn && upd_jumpinst)begin//是跳转指令
     index<=upd_addr[10:1];
//*/////////////////////////////*/*/////////////////////////////////////
//以下是valid_cache为1的情况
        if(upd_jump && !upd_predfail )begin //预测成功，分支成功
        
        if(cacheJump_flag[index]==2'b10) cacheJump_flag[index]<=2'b11;
        else if(cacheJump_flag[index]==2'b11) cacheJump_flag[index]<=2'b11;
        //无需修改valid_ache[],cache_PC[],cache_destPC[] ,预测成功的前提，就有valid_cache为1
        end
        
        if(!upd_jump && !upd_predfail ) //预测成功，分支不成功
        begin
        if(cacheJump_flag[index]==2'b11) cacheJump_flag[index]<=2'b10;
        
        else if(cacheJump_flag[index]==2'b10) begin
            cacheJump_flag[index]<=2'b00;
            //删除记录
            valid_cache[index]<=0;//作废该条PC记录，但是由于此程序中的跳转代码不会出现映射到同一个记录单元里，就不作废了
        end
 
        end
//*/////////////////////////////*/*/////////////////////////////////////
//以下是valid_cache为0的情况
        if( !upd_jump &&  upd_predfail)//预测失败，分支失败
        begin
        if(cacheJump_flag[index]==2'b00 && !valid_cache[index] ) cacheJump_flag[index]<=2'b00;
        else if(cacheJump_flag[index]==2'b01 &&  !valid_cache[index]) cacheJump_flag[index]<=2'b00;
        end
        
        
        if( upd_jump && upd_predfail) //预测失败，分支成功
        begin
        if(cacheJump_flag[index]==2'b00 && !valid_cache[index]) cacheJump_flag[index]<=2'b01;
        
        //当标志为01时，需要转为11，那么需要将valid_cache置1，并缓存PC和destPC
        else if(cacheJump_flag[index]==2'b01 && !valid_cache[index]) begin
        cacheJump_flag[index]<=2'b11;
        //缓存记录
        cacheJump_PC[index]<=upd_addr;
        cacheJump_destPC[index]<=upd_target;
        valid_cache[index]<=1;
        end
        end

     end
    end
    end


endmodule
