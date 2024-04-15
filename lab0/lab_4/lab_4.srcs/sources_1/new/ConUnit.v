`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/06 10:00:53
// Design Name: 
// Module Name: ConUnit
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



module ConUnit(clk,resetn,OP,alu_func,Zero,Cout,C_iram_wen,C_dram_wen,C_reg_we,C_A,C_B,C_reg_waddr,C_PC,C_reg_wdata,C_alu_CARD ,C_PC_up,C_dram_wdata);
input clk;
input resetn;
input [5:0]OP;
input [5:0] alu_func;
input Zero;
input Cout;
output reg C_iram_wen;//iram是否被写
output reg C_dram_wen;//dram是否被写
output reg C_reg_we;//寄存器是否被�?
output reg C_A;//A的数据�?�择
output reg C_B;//B的数据�?�择
output reg C_reg_waddr;//寄存器的写地�?选择
output reg [1:0]C_PC;//PC的�?�择
output reg [1:0]C_reg_wdata;//寄存器读数据的�?�择
output reg [5:0]C_alu_CARD;//alu的操作�?�择
output reg C_PC_up;//pc是否更新
output reg C_dram_wdata;//dram的写数据选择

parameter [4:0] STATE_IF  = 5'b00001;
parameter [4:0] STATE_ID  = 5'b00010;
parameter [4:0] STATE_EX  = 5'b00100;
parameter [4:0] STATE_MEM = 5'b01000;
parameter [4:0] STATE_WB  = 5'b10000;

parameter [5:0] CAL= 6'b000000;
parameter [5:0] SW = 6'b101011;
parameter [5:0] LW =6'b100011;
parameter [5:0] BNZ = 6'b000101;
parameter [5:0] J = 6'h000010;

parameter [5:0] i_ADD = 6'b100000;
parameter [5:0] i_SUB = 6'b100010;
parameter [5:0] i_AND = 6'b100100;
parameter [5:0] i_OR = 6'b100101;
parameter [5:0] i_XOR = 6'b100110;
parameter [5:0] i_SLT = 6'b101010;
parameter [5:0] i_MOVZ = 6'b001010;
parameter [5:0] i_SLL = 6'b000000;


parameter [5:0] GETA  = 6'b000001;
parameter [5:0] ADD = 6'b100000;
parameter [5:0] SUB =6'b100010;
parameter [5:0] AND = 6'b100100;
parameter [5:0] OR= 6'b100101;
parameter [5:0] XOR = 6'b100110;
parameter [5:0] SLT = 6'b101010;
parameter [5:0] GETB_MOVZ = 6'b001010;
parameter [5:0] SLL = 6'b000000;


reg [4:0] STATE;
reg [4:0] NEXT_STATE;

always@(negedge clk) begin
    if(resetn==0)begin
        C_iram_wen<=0; 
        C_reg_we<=0 ; 
        C_A<=0; 
        C_B<=0; 
        C_PC<=2'b00; 
        C_dram_wen<=0; 
        C_reg_waddr<=0; 
        C_reg_wdata<=2'b00;
        STATE<=STATE_WB;
        NEXT_STATE<=STATE_IF;
    end
    else begin
        STATE <= NEXT_STATE;
        
        case(OP)
            CAL:C_alu_CARD<=alu_func;
            SW: C_alu_CARD<=ADD;
            LW:C_alu_CARD<=ADD;
            BNZ:C_alu_CARD<=SUB;
            default: C_alu_CARD<=GETA;
        endcase
        
        case (NEXT_STATE)
            STATE_IF : NEXT_STATE <= STATE_ID;
            STATE_ID : NEXT_STATE <= STATE_EX;
            STATE_EX : NEXT_STATE <= STATE_MEM;
            STATE_MEM: NEXT_STATE <= STATE_WB;
            STATE_WB : NEXT_STATE <= STATE_IF;
        endcase



        //  更改当前�?处的状�??


    
        C_iram_wen <= 0;//iram�?直读
        C_dram_wen<=(STATE == STATE_EX && OP==SW)? 1 : 0;
        C_reg_we<=(STATE == STATE_WB && 
                    ((OP==CAL && (alu_func==ADD|
                    alu_func==SUB|
                    alu_func==AND|
                    alu_func==OR|
                    alu_func==XOR|
                    alu_func==SLT|
                    alu_func==SLL|
                    (alu_func==GETB_MOVZ && Zero==1)))||OP==LW))?1:0;
        C_A<=(OP==CAL && alu_func==SLL)?1:0;
        C_B<=(OP==SW || OP==LW) ? 1 : 0;
        C_reg_waddr<=(STATE == STATE_WB && OP==LW)? 1:0;
        C_PC<=(STATE == STATE_WB && OP==BNZ ) ? 2'b01:(STATE == STATE_WB && OP==J)? 2'b10 : 2'b00;
        C_reg_wdata<=(STATE == STATE_WB && OP==CAL && alu_func==GETB_MOVZ) ? 2'b10 : (STATE == STATE_WB && OP==LW) ? 2'b01 : 2'b00;
        C_PC_up <=(STATE == STATE_WB) ? 1 : 0;
        C_dram_wdata<=(STATE == STATE_EX && OP==SW) ?1:0;
end
end

endmodule
