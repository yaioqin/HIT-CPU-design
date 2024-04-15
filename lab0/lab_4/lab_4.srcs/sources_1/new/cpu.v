`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/01 13:20:32
// Design Name: 
// Module Name: CPU
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

module cpu (
    input clk , // clock, 100MHz    
    input resetn , // active low
    // debug signals
    output [31:0] debug_wb_pc , // 当 前 正 在 执 行 指 令 的PC
    output debug_wb_rf_wen , // 当 前 通 用 寄 存 器 组 的 写 使 能 信 号
    output [4 :0] debug_wb_rf_addr, // 当 前 通 用 寄 存 器 组 写 回 的 寄 存 器 编 号
    output [31:0] debug_wb_rf_wdata // 当 前 指 令 需 要 写 回 的 数 据
);
/*TODO： 完 成 非 流 水CPU的 设 计 代 码*/
    
   
    reg [31:0] IR;
    reg [31:0] PC;
    wire [31:0]NPC;//pc+1
    wire [31:0]PC1;
    wire [31:0]PC2;
    wire [31:0]PC_new;
    wire [1:0]Cond_PC;
    wire PC_up;
    
    //regfile
    wire [4:0] raddr1;// 寄存器堆读地址 A
    wire [31:0] rdata1;// 寄存器堆读返回数据 A
    wire [4:0] raddr2;// 寄存器堆读地址 B
    wire [31:0] rdata2;// 寄存器堆读返回数据 B
    wire we;// 寄存器堆写使能
    wire [4:0] waddr;// 寄存器堆写地址
    wire [31:0] wdata;// 寄存器堆写数据

    //iram信号
    wire [31:0] iram_wdata;
    assign iram_wdata=0;
    //wire [31:0] iram_addr;
    wire iram_wen ;
    wire [31:0] iram_rdata;
    //dram信号
    wire [31:0] dram_wdata;
    wire [31:0] dram_addr;
    wire dram_wen ;
    wire [31:0] dram_rdata;
    
    //alu信号
    wire [31:0]A;
    wire [31:0]B;
    wire Cin;
    wire [5:0]Card;
    wire [31:0]F; 
    wire Zero;
    wire Cout;
    wire [31:0]Inn;
    assign Cin=0;
    
    //二路选择器的控制信号
    wire selectA;
    wire selectB;
    wire select_reg_waddr;
    wire [1:0]select_reg_wdata;
    wire select_dram_wdata;

    initial begin
        IR<=0;
    end
    always @(posedge clk)begin
    if(resetn==0)begin 
        
    end
    end
    
    assign debug_wb_pc=PC;
    assign debug_wb_rf_wen=we;
    assign debug_wb_rf_addr=waddr;
    assign debug_wb_rf_wdata=wdata;
    
    pcadder u_pc4(.PC(PC),.NPC(NPC));
    ConJUMP u_jump1(.NPC(NPC),.offset(IR[15:0]),.out(PC1));
    noConJUMP u_jump2(.NPC(NPC),.offset(IR[25:0]),.out(PC2));
    PC_updater u_PC_updater(.clk(clk),.resetn(resetn),.Cond_PC(Cond_PC),.PC_up(PC_up),.NPC(NPC),.PC1(PC1),.PC2(PC2),.PC(PC_new));
    
    //IRAM 
    //assign iram_addr=PC;
    IRAM_top cpu_iram(
    .clk(clk),
    .resetn(resetn),
    .ram_addr(PC), //PC读指令
    .ram_wdata(iram_wdata),
    .ram_wen(iram_wen),
    .ram_rdata(iram_rdata));
    
    always @(negedge clk)begin 
    if(resetn==1 && PC_up==1 )begin
        PC<=PC_new;
     end
     if(resetn==0)begin
        PC<=0-4;
     end
    end
    
   always @(posedge clk)begin 
        IR<=iram_rdata;
    end
    //CU
    ConUnit cu_1(
    .clk(clk),//时钟信号
    .resetn(resetn),//复位信号
    .OP(IR[31:26]),//操作位31：26
    .alu_func(IR[5:0]),//功能位5：0
    .Zero(Zero),//零标志
    .Cout(Cout),//进位标志
    .C_iram_wen(iram_wen),//iram的写使能端
    .C_dram_wen(dram_wen),//dram的写使能端
    .C_reg_we(we),//寄存器的写使能端
    .C_A(selectA),//A的数据选择控制信号，二选一
    .C_B(selectB),//B的数据选择控制信号，二选一
    .C_reg_waddr(select_reg_waddr),//寄存器写地址的数据选择控制信号
    .C_PC(Cond_PC),//PC的数据选择控制信号
    .C_reg_wdata(select_reg_wdata),//寄存器写数据的数据选择控制信号
    .C_alu_CARD(Card) ,//alu的功能选择
    .C_PC_up(PC_up),
    .C_dram_wdata(select_dram_wdata));//PC的更新控制信号
    
    //二选一选reg_waddr
    MUX2X5 mux_waddr(
    .d0(IR[15:11]),
    .d1(IR[20:16]),
    .select(select_reg_waddr), //为0时，选d0 = rd, 为1时，选d1 = rt;
    .out(waddr));
    
    
    //ALU
    CPU_ALU cpu_alu(
    .A(A) ,
    .B(B) , 
    .Cin(Cin) ,
    .Card(Card),
    .F(F) ,
    .Cout(Cout),
     .Zero(Zero) );
     
    assign dram_addr=F;
    
    //DRAM
    DRAM_top cpu_dram(
    .resetn(resetn),
    .clk(clk),
    .ram_addr(dram_addr),
    .ram_wdata(dram_wdata),
     .ram_wen(dram_wen),
     .ram_rdata(dram_rdata));
     
    wire [31:0] A2;
    extend5to32 extend5(.din(IR[10:6]),.dout(A2));
    MUX2X32 mux_alu_A(
    .d0(rdata1),
    .d1(A2),
    .select(selectA), //为0时，选d0 = [rs] 或者[base], 为1时，选d1 = sa;
    .out(A));
    
    MUX2X32 mux_alu_B(
    .d0(rdata2),
    .d1(Inn),
    .select(selectB), //为0时，选d0 = rd, 为1时，选d1 = rt;
    .out(B));  
    
    extend16to32 extend16(.din(IR[15:0]),.dout(Inn)); 
     
    //regfile
    regfile cpu_regfile(
    .clk(clk),
    .raddr1(raddr1),
    .rdata1(rdata1),
    .raddr2(raddr2),
    .rdata2(rdata2),
    .we(we),
    .waddr(waddr),
    .wdata(wdata));  
    assign raddr1=IR[25:21];
    assign raddr2=IR[20:16];
    
    MUX3X32 mux_reg_wdata(
    .d0(F),
    .d1(dram_rdata),
    .d2(rdata1),
    .select(select_reg_wdata), //为0时，选d0 = rd, 为01时，选d1 = mem;
    .out(wdata));    
    
    MUX2X32 mux_dram_wdata(
    .d0(F),
    .d1(rdata2),
    .select(select_dram_wdata), //为0时，选d0 = F, 为1时，选d1 = rt;
    .out(dram_wdata));    
    
endmodule
