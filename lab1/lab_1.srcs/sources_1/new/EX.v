`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/08 20:43:41
// Design Name: 
// Module Name: EX
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


module EX(
input clk,
input rstn,

input [31:0] ID_EX_IR,
input [31:0] ID_EX_NPC,
input [31:0] ID_EX_PC,
input [31:0] ID_EX_A,
input [31:0] ID_EX_B,
input [31:0] ID_EX_Imm,

output  [31:0] EX_A,
output  [31:0] EX_B,
output reg [31:0] EX_cond,
output reg [31:0] EX_ALUoutput,
output  [31:0] EX_IR,
output  [31:0] EX_PC
    );
//²ÎÊý
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
    
    reg [31:0]A;
    reg [31:0]B;
    reg [5:0]Card;
    wire [31:0] F;
    reg Cin;
    wire Zero;
    wire Cout;
 
wire [31:0] sa;
assign   sa={27'b0 ,ID_EX_IR[10:6]};
assign   EX_A=ID_EX_A;/**/
assign   EX_B=ID_EX_B;/**/
assign   EX_IR=ID_EX_IR;
assign   EX_PC=ID_EX_PC;   


    CPU_ALU cpu_alu(
    .A(A) ,
    .B(B) , 
    .Cin(Cin) ,
    .Card(Card),
    .F(F),
    .Cout(Cout),
    .Zero(Zero));




//¿ØÖÆA£¬B
//EX_MEM_IR,EX_MEM_ALUoutput,EX_MEM_cond,EX_MEM_PC; EX_MEM_dwe,EX_MEM_rwe;EX_MEM_A,EX_MEM_B,
    always @(*) begin
    if (rstn) begin
    case(ID_EX_IR[31:26])
    ALUop:  begin 
            A<=(ID_EX_IR[5:0]==SLL) ? sa : EX_A; //sa or [rs]
            B<=EX_B;//[rt]
            Card<=ID_EX_IR[5:0];
            EX_cond<=0;
            EX_ALUoutput <= F ;//A op B 
            end
    SW: begin 
        A<=EX_A;//[base]
        B<=ID_EX_Imm;//offset
        Card<=ADD; //+
        EX_cond<=0;//npc
        EX_ALUoutput<=F;
        end
    LW: begin 
        A<=EX_A;//[base]
        B<=ID_EX_Imm;//offset
        Card<=ADD;//
        EX_cond<=0;//npc
        EX_ALUoutput<=F; //[base]+offset
        end
    BNZ:begin 
        EX_ALUoutput<=ID_EX_Imm<<2+ID_EX_NPC;
        EX_cond<=(EX_A==0) ? 1:0;
        end
    J:begin
        EX_ALUoutput<={ID_EX_NPC[31:28],ID_EX_IR[26:0],2'b00};
        EX_cond<=1;
       end
    endcase
    end
    end
     
endmodule
