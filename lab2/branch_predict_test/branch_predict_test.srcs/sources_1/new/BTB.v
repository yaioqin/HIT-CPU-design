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
    
//预测当前PC是否跳转
    always@(*)begin
    if(predict_en && resetn)begin
    ////////////////////////////////////////////////
    //判断跳转PC是否被缓存
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
 
 //写入缓存的地址该怎么选？  
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

//缓存更新
always@(*)begin

      if(upd_en && upd_jumpinst && resetn)begin
      //判断该指令PC是否已被缓存
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
          
             //若被缓存
             //判断是否预测成功
             //若成功，则不变，
             if(upd_index<=7)begin
             //预测成功，但是跳转了；则预测错误，删除该条记录
                if(!upd_jump && !upd_predfail)begin
                    cacheJump_PC[upd_index]<=-1;
                    cacheJump_destPC[upd_index]<=-1;
                    used[upd_index]<=0;
                end
                
             end
             //若没有被缓存
             else  begin
                 //是跳转指令，且未缓存，并且跳转了
                 if(upd_jump)begin
                 cacheJump_PC[store_index]<=upd_addr;
                 cacheJump_destPC[store_index]<=upd_target; 
                 used[store_index]<=1;
             end
            end 

    end
end

endmodule
