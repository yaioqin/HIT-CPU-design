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
    input           clk,        //时钟信号，必须与CPU保持一致
    input           resetn,     //低有效复位信号，必须与CPU保持一致

    //供CPU第一级流水段使用的接口：
    //上一个指令地址
    input[31:0]     old_PC,
    //这周期是否需要更新PC（进行分支预测）
    input           predict_en,
    //预测出的下一个指令地址
    output reg [31:0]    new_PC,
    //是否被预测为执行转移的转移指令
    output    reg      predict_jump,

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
    
//预测当前PC是否跳转
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
 


//缓存更新
always@(*)begin

      if( upd_jumpinst && resetn)begin
      //判断该指令PC是否已被缓存
            for(k=0;k<=1023;k=k+1)
            begin
            if(cacheJump_PC[k]==upd_addr) begin
                upd_index<=k;
                end
            end
          
             //若被缓存
             //判断是否预测成功
             //若成功，则不变，
             if(upd_index<=1023)begin
             //预测成功，但是跳转了；则预测错误，删除该条记录
                if(!upd_jump && !upd_predfail)begin
                    cacheJump_PC[upd_index]<=-1;
                    cacheJump_destPC[upd_index]<=-1;
                end
                
             end
             //若没有被缓存
             else  begin
                 //是跳转指令，且未缓存，并且跳转了
                 if(upd_jump)begin
                 cacheJump_PC[upd_addr[10:0]]<=upd_addr;
                 cacheJump_destPC[upd_addr[10:0]]<=upd_target; 
             end
            end 

    end
end

endmodule
