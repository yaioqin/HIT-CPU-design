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
    output [31:0] debug_wb_pc , // �� ǰ �� �� ִ �� ָ �� ��PC
    output debug_wb_rf_wen , // �� ǰ ͨ �� �� �� �� �� �� д ʹ �� �� ��
    output [4 :0] debug_wb_rf_addr, // �� ǰ ͨ �� �� �� �� �� д �� �� �� �� �� �� ��
    output [31:0] debug_wb_rf_wdata // �� ǰ ָ �� �� Ҫ д �� �� �� ��
);
/*TODO�� �� �� �� �� ˮCPU�� �� �� �� ��*/
    
   
    reg [31:0] IR;
    reg [31:0] PC;
    wire [31:0]NPC;//pc+1
    wire [31:0]PC1;
    wire [31:0]PC2;
    wire [31:0]PC_new;
    wire [1:0]Cond_PC;
    wire PC_up;
    
    //regfile
    wire [4:0] raddr1;// �Ĵ����Ѷ���ַ A
    wire [31:0] rdata1;// �Ĵ����Ѷ��������� A
    wire [4:0] raddr2;// �Ĵ����Ѷ���ַ B
    wire [31:0] rdata2;// �Ĵ����Ѷ��������� B
    wire we;// �Ĵ�����дʹ��
    wire [4:0] waddr;// �Ĵ�����д��ַ
    wire [31:0] wdata;// �Ĵ�����д����

    //iram�ź�
    wire [31:0] iram_wdata;
    assign iram_wdata=0;
    //wire [31:0] iram_addr;
    wire iram_wen ;
    wire [31:0] iram_rdata;
    //dram�ź�
    wire [31:0] dram_wdata;
    wire [31:0] dram_addr;
    wire dram_wen ;
    wire [31:0] dram_rdata;
    
    //alu�ź�
    wire [31:0]A;
    wire [31:0]B;
    wire Cin;
    wire [5:0]Card;
    wire [31:0]F; 
    wire Zero;
    wire Cout;
    wire [31:0]Inn;
    assign Cin=0;
    
    //��·ѡ�����Ŀ����ź�
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
    .ram_addr(PC), //PC��ָ��
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
    .clk(clk),//ʱ���ź�
    .resetn(resetn),//��λ�ź�
    .OP(IR[31:26]),//����λ31��26
    .alu_func(IR[5:0]),//����λ5��0
    .Zero(Zero),//���־
    .Cout(Cout),//��λ��־
    .C_iram_wen(iram_wen),//iram��дʹ�ܶ�
    .C_dram_wen(dram_wen),//dram��дʹ�ܶ�
    .C_reg_we(we),//�Ĵ�����дʹ�ܶ�
    .C_A(selectA),//A������ѡ������źţ���ѡһ
    .C_B(selectB),//B������ѡ������źţ���ѡһ
    .C_reg_waddr(select_reg_waddr),//�Ĵ���д��ַ������ѡ������ź�
    .C_PC(Cond_PC),//PC������ѡ������ź�
    .C_reg_wdata(select_reg_wdata),//�Ĵ���д���ݵ�����ѡ������ź�
    .C_alu_CARD(Card) ,//alu�Ĺ���ѡ��
    .C_PC_up(PC_up),
    .C_dram_wdata(select_dram_wdata));//PC�ĸ��¿����ź�
    
    //��ѡһѡreg_waddr
    MUX2X5 mux_waddr(
    .d0(IR[15:11]),
    .d1(IR[20:16]),
    .select(select_reg_waddr), //Ϊ0ʱ��ѡd0 = rd, Ϊ1ʱ��ѡd1 = rt;
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
    .select(selectA), //Ϊ0ʱ��ѡd0 = [rs] ����[base], Ϊ1ʱ��ѡd1 = sa;
    .out(A));
    
    MUX2X32 mux_alu_B(
    .d0(rdata2),
    .d1(Inn),
    .select(selectB), //Ϊ0ʱ��ѡd0 = rd, Ϊ1ʱ��ѡd1 = rt;
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
    .select(select_reg_wdata), //Ϊ0ʱ��ѡd0 = rd, Ϊ01ʱ��ѡd1 = mem;
    .out(wdata));    
    
    MUX2X32 mux_dram_wdata(
    .d0(F),
    .d1(rdata2),
    .select(select_dram_wdata), //Ϊ0ʱ��ѡd0 = F, Ϊ1ʱ��ѡd1 = rt;
    .out(dram_wdata));    
    
endmodule
