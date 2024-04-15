`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/04 13:08:40
// Design Name: 
// Module Name: CU
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
//���Ķ���

`define T1 5'b00010
`define T2 5'b00100
`define T3 5'b01000
`define T4 5'b10000
`define T5 5'b00001

//ָ������
`define CAL 6'b000000
`define SW 6'b101011
`define LW 6'b100011
`define BNZ 6'b000101
`define J 6'h000010
//���������?

`define i_ADD 6'b100000
`define i_SUB 6'b100010
`define i_AND 6'b100100
`define i_OR 6'b100101
`define i_XOR 6'b100110
`define i_SLT 6'b101010
`define i_MOVZ 6'b001010
`define i_SLL 6'b000000

//alu
`define GETA 4'b0001
`define ADD 4'b0010
`define SUB 4'b0011
`define AND 4'b0100
`define OR 4'b0101
`define XOR 4'b0110
`define SLT 4'b0111
`define SLL 4'b1000
`define GETB 4'b1001

module CU(clk,resetn,OP,func,Zero,Cout,C_iram_wen,C_dram_wen,C_reg_we,C_A,C_B,C_reg_waddr,C_PC,C_reg_wdata,C_alu_CARD ,C_PC_up,C_dram_wdata);
input clk;
input resetn;
input [5:0]OP;
input [5:0] func;
input Zero;
input Cout;//
output reg C_iram_wen;
output reg C_dram_wen;
output reg C_reg_we;
output reg C_A;
output reg C_B;
output reg C_reg_waddr;
output reg [1:0]C_PC;
output reg [1:0]C_reg_wdata;
output reg [3:0]C_alu_CARD;
output reg C_PC_up;
output reg C_dram_wdata;

    wire [4:0] T;
    counter cpu_counter(
    .clk(clk),
    .rst(resetn),
    .T(T)
    );
    
    always @(*)begin
    if (!resetn) begin 
    C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`GETA; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
    end
    else begin
    case(T)
        `T1://get command
        begin 
        C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`GETA; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;    
        end
        `T2://read register
        begin 
            case(OP)
                `CAL:
                begin
                    case(func)
                        `i_ADD:
                        begin
                            C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`GETA; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                        end
                        `i_SUB:
                        begin
                            C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`GETA; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                        end
                        `i_AND:
                        begin 
                            C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`GETA; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                        end
                        `i_OR:
                        begin 
                            C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`GETA; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                        end
                        `i_XOR:
                        begin 
                            C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`GETA; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                        end
                        `i_SLT:
                        begin 
                            C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`GETA; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                        end
                        `i_MOVZ:
                        begin 
                            C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`GETA; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                        end
                        `i_SLL:
                        begin 
                            C_iram_wen<=0; C_reg_we<=0 ; C_A<=1; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`GETA; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                        end
                    endcase
                
                end
                `SW:
                begin 
                    C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=1; C_PC<=2'b00; C_alu_CARD<=`GETA; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                end
                `LW:
                begin 
                    C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`GETA; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                end
                `BNZ:
                begin 
                    C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`GETA; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                end
                `J:
                begin 
                    C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`GETA; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                end
            endcase
        end
        `T3://execute
        begin 
            case(OP)
                `CAL:
                begin
                    case(func)
                        `i_ADD:
                        begin 
                            C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`ADD; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                        end
                        `i_SUB:
                        begin 
                            C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`SUB; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                        end
                        `i_AND:
                        begin 
                            C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`AND; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                        end
                        `i_OR:
                        begin 
                            C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`OR; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                        end
                        `i_XOR:
                        begin 
                            C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`XOR; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                        end
                        `i_SLT:
                        begin 
                            C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`SLT; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                        end
                        `i_MOVZ:
                        begin 
                            C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`GETB; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                        end
                        `i_SLL:
                        begin 
                            C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`SLL; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                        end
                    endcase
                
                end
                `SW:
                begin 
                   C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=1; C_PC<=2'b00; C_alu_CARD<=`ADD; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=1; 
                end
                `LW:
                begin 
                    C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=1; C_PC<=2'b00; C_alu_CARD<=`ADD; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                end
                `BNZ:
                begin 
                    C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`SUB; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0; 
                end
                `J:
                begin 
                    C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=1; C_PC<=2'b00; C_alu_CARD<=`GETA; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                end
            endcase
        end
        
        `T4:
        begin 
            case(OP)
                `CAL:
                begin
                    case(func)
                        `i_ADD:
                        begin 
                            C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`ADD; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                        end
                        `i_SUB:
                        begin 
                            C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`SUB; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                        end
                        `i_AND:
                        begin 
                            C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`AND; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                        end
                        `i_OR:
                        begin 
                            C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`OR; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                        end
                        `i_XOR:
                        begin 
                            C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`XOR; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                        end
                        `i_SLT:
                        begin 
                            C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`SLT; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                        end
                        `i_MOVZ:
                        begin 
                            C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`GETB; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                        end
                        `i_SLL:
                        begin 
                            C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`SLL; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                        end
                    endcase
                
                end
                `SW:
                begin 
                   C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=1; C_PC<=2'b00; C_alu_CARD<=`ADD; C_dram_wen<=1; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=1; 
                end
                `LW:
                begin 
                    C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=1; C_PC<=2'b00; C_alu_CARD<=`ADD; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b01; C_PC_up<=0; C_dram_wdata<=0;
                end
                `BNZ:
                begin 
                    C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`SUB; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0; 
                end
                `J:
                begin 
                    C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=1; C_PC<=2'b00; C_alu_CARD<=`GETA; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=0; C_dram_wdata<=0;
                end
            endcase
        end
        `T5:
        begin 
            case(OP)
                `CAL:
                begin
                    case(func)
                        `i_ADD:
                        begin 
                            C_iram_wen<=0; C_reg_we<=1 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`ADD; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=1; C_dram_wdata<=0;       
                        end
                        `i_SUB:
                        begin 
                            C_iram_wen<=0; C_reg_we<=1 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`SUB; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=1; C_dram_wdata<=0;   
                        end
                        `i_AND:
                        begin 
                            C_iram_wen<=0; C_reg_we<=1 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`AND; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=1; C_dram_wdata<=0;   
                        end
                        `i_OR:
                        begin 
                            C_iram_wen<=0; C_reg_we<=1 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`OR; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=1; C_dram_wdata<=0;   
                        end
                        `i_XOR:
                        begin 
                            C_iram_wen<=0; C_reg_we<=1 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`XOR; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=1; C_dram_wdata<=0;   
                        end
                        `i_SLT:
                        begin 
                            C_iram_wen<=0; C_reg_we<=1 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`SLT; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=1; C_dram_wdata<=0;   
                        end
                        `i_MOVZ:
                        begin 
                            if(Zero==1) begin 
                                C_iram_wen<=0; C_reg_we<=1 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`GETB; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=1; C_dram_wdata<=0;   
                            end
                            else begin
                                C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`GETB; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=1; C_dram_wdata<=0;   
                            end
                        end
                        `i_SLL:
                        begin 
                            C_iram_wen<=0; C_reg_we<=1 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`SLL; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=1; C_dram_wdata<=0;   
                        end
                    endcase
                
                end
                `SW:
                begin 
                    C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`ADD; C_dram_wen<=1; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=1; C_dram_wdata<=1;   
                end
                `LW:
                begin 
                    C_iram_wen<=0; C_reg_we<=1 ; C_A<=0; C_B<=0; C_PC<=2'b00; C_alu_CARD<=`ADD; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b01; C_PC_up<=1; C_dram_wdata<=0;   
                end
                `BNZ:
                begin 
                    C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b01; C_alu_CARD<=`GETA; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=1; C_dram_wdata<=0;   
                end
                `J:
                begin 
                    C_iram_wen<=0; C_reg_we<=0 ; C_A<=0; C_B<=0; C_PC<=2'b10; C_alu_CARD<=`GETA; C_dram_wen<=0; C_reg_waddr<=0; C_reg_wdata<=2'b00; C_PC_up<=1; C_dram_wdata<=0;   
                end
            endcase
        end
        
        
    endcase
    
    
    end
    end

endmodule
