`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/04 16:12:09
// Design Name: 
// Module Name: PC_ALU
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

`define GETA 6'b000001
`define ADD 6'b100000
`define SUB 6'b100010
`define AND 6'b100100
`define OR 6'b100101
`define XOR 6'b100110
`define SLT 6'b101010
`define GETB_MOVZ 6'b001010
`define SLL 6'b000000


module CPU_ALU(
    input [31:0] A ,
    input [31:0] B ,
    input Cin ,
    input [5:0] Card,
    output [31:0] F ,
    output Cout,
    output Zero
    );
    
    wire [31:0] geta_result;
    wire [31:0] add_result;
    wire [31:0] sub_result;
    wire [31:0] and_result;
    wire [31:0] or_result;
    wire [31:0] xor_result;
    wire [31:0] slt_result;
    wire [31:0] sll_result;
    wire [31:0] getb_result;
    
    wire [8:0] Cout_result;
    wire [8:0] Zero_result;
    
    assign geta_result=A;
    assign Cout_result[0]= geta_result==0 ? 1:0;
    assign Zero_result[0]=0;
    
    add u_add(
    .A(A),
    .B(B),
    .F(add_result),
    .Cout(Cout_result[1]),
    .Zero(Zero_result[1])
    );
    
    sub u_sub(
    .A(A),
    .B(B),
    .F(sub_result),
    .Cout(Cout_result[2]),
    .Zero(Zero_result[2])
    );
    
    AND AandB(
    .A(A),
    .B(B),
    .F(and_result),
    .Zero(Zero_result[3])
    );
    assign Cout_result[3]=0;
    
    
    OR AorB(
    .A(A),
    .B(B),
    .F(or_result),
    .Zero(Zero_result[4])
    );
    assign Cout_result[4]=0;
    
    XOR AxorB( 
    .A(A),
    .B(B),
    .F(xor_result),
    .Zero(Zero_result[5])
    );
    assign Cout_result[5]=0;
    
    assign slt_result=(A<B)?1:0;
    assign Zero_result[6]=slt_result==0 ? 1:0;
    assign Cout_result[6]=0;
    
    assign sll_result=A<<B; //[rt]<<sa
    assign Zero_result[7]=sll_result==0? 1:0;
    assign Cout_result[7]=0;
    
    assign getb_result=B;
    assign Zero_result[8]= getb_result==0 ? 1:0;
    assign Cout_result[8]=0;
    
    wire [5:0]alusel; //������
    assign alusel=Card;
assign F =  ({32{alusel == `GETA}} & geta_result) |
            ({32{alusel == `ADD}} & add_result) |
            ({32{alusel == `SUB}} & sub_result) |
            ({32{alusel == `AND}} & and_result) |
            ({32{alusel == `OR}} & or_result) | 
            ({32{alusel == `XOR}} & xor_result) |
            ({32{alusel == `SLT}} & slt_result) |
            ({32{alusel == `SLL}} & sll_result)|
            ({32{alusel == `GETB_MOVZ}} & getb_result)  ;  
            
             
assign Cout=({32{alusel == `GETA}} & Cout_result[0]) |
            ({32{alusel == `ADD}} & Cout_result[1]) |
            ({32{alusel == `SUB}} & Cout_result[2]) |
            ({32{alusel == `AND}} & Cout_result[3]) |
            ({32{alusel == `OR}} & Cout_result[4]) | 
            ({32{alusel == `XOR}} & Cout_result[5]) |
            ({32{alusel == `SLT}} & Cout_result[6]) |
            ({32{alusel == `SLL}} & Cout_result[7]) |
            ({32{alusel == `GETB_MOVZ}} & Cout_result[8]); 
            
assign Zero=({32{alusel == `GETA}} & Zero_result[0]) |
            ({32{alusel == `ADD}} & Zero_result[1]) |
            ({32{alusel == `SUB}} & Zero_result[2]) |
            ({32{alusel == `AND}} & Zero_result[3]) |
            ({32{alusel == `OR}} & Zero_result[4]) | 
            ({32{alusel == `XOR}} & Zero_result[5]) |
            ({32{alusel == `SLT}} & Zero_result[6]) |
            ({32{alusel == `SLL}} & Zero_result[7])|
            ({32{alusel == `GETB_MOVZ}} & Zero_result[8]);          
                       
      
endmodule
