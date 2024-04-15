`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/05 14:36:46
// Design Name: 
// Module Name: cpu3v
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
说明：
1.由于dram将指令数据分开，iram和dram，不存在结构相关
2.regfile上升沿读，下降沿写，不存在结构相关
3.cpu3v解决数据相关

*/
/////////////////////////////////////////////////////////////////////////////////

module cpu3v(
     input clk , // clock, 100MHz    
    input resetn , // active low
    // debug signals
    output [31:0] debug_wb_pc , // 执 行 写 回 行 为 的 指 令 地 址
    output debug_wb_rf_wen , // 当 前 通 用 寄 存 器 组 的 写 使 能 信 号
    output [4 :0] debug_wb_rf_addr, // 当 前 通 用 寄 存 器 组 写 回 的 寄 存 器 编 号
    output [31:0] debug_wb_rf_wdata // 当 前 指 令 需 要 写 回 的 数 据
);
/*TODO： 完 成 流 水 CPU 的 设 计 代 码*/
///////////////////////////////////////////////////////////////

//参数
    parameter [5:0] ALUop= 6'b000000;
    parameter [5:0] SW = 6'b101011;
    parameter [5:0] LW =6'b100011;
    parameter [5:0] BNZ = 6'b000101;
    parameter [5:0] J = 6'h000010;

    parameter [5:0] ADD = 6'b100000;
    parameter [5:0] SUB =6'b100010;
    parameter [5:0] AND = 6'b100100;
    parameter [5:0] OR= 6'b100101;
    parameter [5:0] XOR = 6'b100110;
    parameter [5:0] SLT = 6'b101010;
    parameter [5:0] GETA= 6'b001010;
    parameter [5:0] SLL = 6'b000000;
/////////////////////////////////////////////////////////////
//五段流水需要的段间寄存器
    wire [31:0] IF_ID_IR,IF_ID_NPC,IF_ID_PC;
    wire [31:0] ID_EX_A,ID_EX_B,ID_EX_NPC,ID_EX_IR,ID_EX_Imm,ID_EX_PC;
    wire [31:0] EX_MEM_A,EX_MEM_B,EX_MEM_IR,EX_MEM_ALUoutput,EX_MEM_PC;  
    wire EX_MEM_cond;

    wire [31:0] MEM_WB_A,MEM_WB_B,MEM_WB_IR,MEM_WB_ALUoutput,MEM_WB_LMD,MEM_WB_PC;
    wire EX_MEM_we;
    wire MEM_WB_we;
/////////////////////////////////////////////////////////////
//寄存器信号 WB或者ID段输出
    reg we;// 寄存器堆写使能
    reg [4:0] waddr;// 寄存器堆写地址
    reg [31:0] wdata;// 寄存器堆写数据

////////////////////////////////////////////////////////////
    initial begin
    we<=0;
    end
/////////////////////////////////////////////////////////////

    wire stall;
    wire [1:0] selectA;
    wire [1:0] selectB;
    
/////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////
    //IF
    wire [31:0] IF_PC;
    wire [31:0] IF_NPC;
    wire [31:0] IF_IR;
    
    reg cond;
    reg [31:0] JPC;
    
    initial begin
    cond<=0;
    JPC<=0;
    end
    
    always @(EX_MEM_cond or EX_MEM_ALUoutput )begin
    cond<=EX_MEM_cond;
    JPC<=EX_MEM_ALUoutput;
    end
    
    IF2v IF(
    .clk(clk),
    .rstn(resetn),
    .stall(stall),
    .EX_MEM_ALUoutput(JPC),
    .EX_MEM_cond(cond),
    .IF_PC(IF_PC),
    .IF_NPC(IF_NPC),
    .IF_IR(IF_IR)
     );
     


     IF_ID_2v IF_ID(
        .clk(clk),
        .rstn(resetn),
        .stall(stall),
        .IF_IR(IF_IR),
        .IF_NPC(IF_NPC),
        .IF_PC(IF_PC),
        .IF_ID_IR(IF_ID_IR),
        .IF_ID_NPC(IF_ID_NPC),
        .IF_ID_PC(IF_ID_PC) 
     );
//////////////////////////////////////////////////////////
    //ID
    wire [31:0] ID_A;
    wire [31:0] ID_B;
    wire [31:0] ID_Imm;
    wire [31:0] ID_IR;
    wire [31:0] ID_NPC;
    wire [31:0] ID_PC;
    

    
    assign ID_IR=IF_ID_IR;
    assign ID_PC=IF_ID_PC;
    assign ID_NPC=IF_ID_NPC;
    assign ID_Imm =(IF_ID_IR[15]==1) ? {16'hFFFF,IF_ID_IR[15:0]}:{16'h0000,IF_ID_IR[15:0]}; //扩展立即数
    
     regfile cpu_regfile(
        .clk(clk),
        .raddr1(ID_IR[25:21]),//rs
        .rdata1(ID_A),//A<-[rs]
        .raddr2(ID_IR[20:16]),//rt
        .rdata2(ID_B),//B<-[rt]
        .we(we),
        .waddr(waddr),
        .wdata(wdata)); 
    
    always @(posedge clk )begin
            we<=0;
    end
    
     ID_EX_2v ID_EX(
     .clk(clk),
     .rstn(resetn),
     .stall(stall),
     .ID_A(ID_A),
     .ID_B(ID_B),
     .ID_Imm(ID_Imm),
     .ID_IR(ID_IR),
     .ID_NPC(ID_NPC),
     .ID_PC(ID_PC),
     .ID_EX_A(ID_EX_A),
     .ID_EX_B(ID_EX_B),
     .ID_EX_NPC(ID_EX_NPC),
     .ID_EX_IR(ID_EX_IR),
     .ID_EX_Imm(ID_EX_Imm),
     .ID_EX_PC(ID_EX_PC)
     );


///////////////////////////////////
//定向控制
    forwarding_control fdc(
    .clk(clk),
    .MEM_WB_we(MEM_WB_we),
    .EX_MEM_we(EX_MEM_we),
    .ID_EX_IR(ID_EX_IR),
    .MEM_WB_IR(MEM_WB_IR),
    .EX_MEM_IR(EX_MEM_IR),
    .selectA(selectA),
    .selectB(selectB)
        );
////////////////////////////////////
//EX
    wire [31:0] EX_A;
    wire [31:0] EX_B;
    wire  EX_cond;
    wire [31:0] EX_ALUoutput;
    wire [31:0] EX_IR;
    wire [31:0] EX_PC;
    

    
    EX2v EX(
    .clk(clk),
    .rstn(resetn),
    .EX_MEM_ALUoutput(EX_MEM_ALUoutput),
    .MEM_WB_ALUoutput(MEM_WB_ALUoutput),
    .MEM_WB_LMD(MEM_WB_LMD),
    .selectA(selectA),
    .selectB(selectB),
    .ID_EX_IR(ID_EX_IR),
    .ID_EX_NPC(ID_EX_NPC),
    .ID_EX_PC(ID_EX_PC),
    .ID_EX_A(ID_EX_A),
    .ID_EX_B(ID_EX_B),
    .ID_EX_Imm(ID_EX_Imm),
    .EX_A(EX_A),
    .EX_B(EX_B),
    .EX_cond(EX_cond),
    .EX_ALUoutput(EX_ALUoutput),
    .EX_IR(EX_IR),
    .EX_PC(EX_PC)
    );

    EX_MEM base_EX_MEM(
    .clk(clk),
    .rstn(resetn),
    .EX_A(EX_A),
    .EX_B(EX_B),
    .EX_IR(EX_IR),
    .EX_ALUoutput(EX_ALUoutput),
    .EX_PC(EX_PC),
    .EX_cond(EX_cond),
    .EX_MEM_A(EX_MEM_A),
    .EX_MEM_B(EX_MEM_B),
    .EX_MEM_IR(EX_MEM_IR),
    .EX_MEM_ALUoutput(EX_MEM_ALUoutput),
    .EX_MEM_PC(EX_MEM_PC),
    .EX_MEM_we(EX_MEM_we),
    .EX_MEM_cond(EX_MEM_cond)
    );

    
////////////////////////////////////////////////////////
//MEM

//dram信号
    reg dram_wen ;
    reg [31:0] dram_wdata;
    reg [31:0] dram_addr;
    wire [31:0] dram_rdata;
    wire [31:0] MEM_LMD;
    
assign  MEM_LMD=dram_rdata; 
    
    //DRAM
    DRAM cpu_dram(
    .resetn(resetn),
    .clk(clk),
    .ram_addr(dram_addr),
    .ram_wdata(dram_wdata),
     .ram_wen(dram_wen),
     .ram_rdata(dram_rdata));

    always @(*) begin
        case(EX_MEM_IR[31:26])
        ALUop:dram_wen<=0;        
        SW:begin
           dram_wen<=1; //wirte
           dram_wdata<=EX_MEM_B; //wirte [rt]
           dram_addr<=EX_MEM_ALUoutput; // wirte  addr:[base]+offset]
           end 
        LW:begin 
           dram_wen<=0; //read MEM[[base]+offset]
           dram_addr<=EX_MEM_ALUoutput;
           end
         BNZ:dram_wen<=0;      
         J:dram_wen<=0;      
        endcase
    end

    MEM_WB base_MEM_WB(
        .clk(clk),
        .rstn(resetn),
        .EX_MEM_A(EX_MEM_A),
        .EX_MEM_B(EX_MEM_B),
        .EX_MEM_IR(EX_MEM_IR),
        .EX_MEM_ALUoutput(EX_MEM_ALUoutput),
        .MEM_LMD(MEM_LMD),
        .EX_MEM_PC(EX_MEM_PC),
        .EX_MEM_we(EX_MEM_we),
        .MEM_WB_we(MEM_WB_we),
        .MEM_WB_A(MEM_WB_A),
        .MEM_WB_B(MEM_WB_B),
        .MEM_WB_IR(MEM_WB_IR),
        .MEM_WB_ALUoutput(MEM_WB_ALUoutput),
        .MEM_WB_LMD(MEM_WB_LMD),
        .MEM_WB_PC(MEM_WB_PC)
    );    
     
//////////////////////////////////////////////////
//WB
    reg [31:0] WB_PC;
   //MEM_WB_LMD=MEM[[base]+offset]
    reg WB_we_reg;
    reg [31:0]WB_wdata;
    reg [31:0]WB_waddr;
    
    always @(*) begin
        case(MEM_WB_IR[31:26])
        ALUop:begin 
                waddr<=MEM_WB_IR[15:11];
                wdata<= MEM_WB_ALUoutput;
            end      
        LW:begin 
            waddr<=MEM_WB_IR[20:16];
            wdata<=MEM_WB_LMD;
           end
        default:begin end      
        endcase  
    end
 
 always @(negedge clk)begin
        case(MEM_WB_IR[31:26])
        ALUop: we<=(MEM_WB_IR[5:0]==GETA && MEM_WB_B !=0 )? 0:1;
        LW:we<=1;
        default:we<=0;      
        endcase  
 end
assign WB_we=WB_we_reg;
always @(posedge clk)begin
        WB_we_reg<=we;
        WB_wdata<=wdata;
        WB_waddr<=waddr; 
        WB_PC<=MEM_WB_PC;      
end
///////////////////////////////////////////////////////////////
//test-bug
assign debug_wb_pc= WB_PC; // 执 行 写 回 行 为 的 指 令 地 址
assign debug_wb_rf_wen = WB_we  ; // 当 前 通 用 寄 存 器 组 的 写 使 能 信 号
assign debug_wb_rf_addr = WB_waddr; // 当 前 通 用 寄 存 器 组 写 回 的 寄 存 器 编 号
assign debug_wb_rf_wdata= WB_wdata;// 当 前 指 令 需 要 写 回 的 数 据
///////////////////////////////////////////////////////////////////////////
endmodule