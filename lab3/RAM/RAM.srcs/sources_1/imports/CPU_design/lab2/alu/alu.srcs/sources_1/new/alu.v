`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/28 16:23:59
// Design Name: 
// Module Name: alu
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

//操作码定义
`define ADD 5'b00001
`define ADD_C 5'b00010
`define SUB1 5'b00011
`define SUB1_C 5'b00100
`define SUB2 5'b00101
`define SUB2_C 5'b00110
`define getA 5'b00111
`define getB 5'b01000
`define NOTA 5'b01001
`define NOTB 5'b01010
`define AORB 5'b01011
`define aANDb 5'b01100
`define aXNORb 5'b01101
`define aXORb 5'b01110
`define AND_NOT 5'b01111
`define ZERO 5'b10000


//alu顶层模块
module alu (
    input [31:0] A ,//输入数据
    input [31:0] B ,//输入数据
    input Cin ,//进位
    input [4 :0] Card,//操作码
    output [31:0] F ,//结果
    output Cout,//结果进位
    output Zero//零标志位
);
    wire [31:0] add_result;
    wire [31:0] add_c_result;
    wire [31:0] sub1_result;
    wire [31:0] sub1_c_result;
    wire [31:0] sub2_result;
    wire [31:0] sub2_c_result;
    wire [31:0] geta_result;
    wire [31:0] getb_result;
    wire [31:0] nota_result;
    wire [31:0] notb_result;
    wire [31:0] aorb_result;
    wire [31:0] aandb_result;
    wire [31:0] axnorb_result;
    wire [31:0] axorb_result;
    wire [31:0] and_not_result;
    wire [31:0] ZERO_result;
    
    wire [15:0] Cout_result;
    wire [15:0] Zero_result;
    //F=A加B
    add u_add(
    .A(A),
    .B(B),
    .F(add_result),
    .Cout(Cout_result[0]),
    .Zero(Zero_result[0])
    );
    //F=A加B加Cin
    add_c u_add_c(
    .A(A),
    .B(B),
    .Cin(Cin),
    .F(add_c_result),
    .Cout(Cout_result[1]),
    .Zero(Zero_result[1])
    );
    //F=A减B
    sub u_sub1(
    .A(A),
    .B(B),
    .F(sub1_result),
    .Cout(Cout_result[2]),
    .Zero(Zero_result[2])
    );
    //F=A减B减Cin
    sub_c u_sub1_c(
    .A(A),
    .B(B),
    .Cin(Cin),
    .F(sub1_c_result),
    .Cout(Cout_result[3]),
    .Zero(Zero_result[3])
    );
    //F=B减A
    sub u_sub2(
    .A(B),
    .B(A),
    .F(sub2_result),
    .Cout(Cout_result[4]),
    .Zero(Zero_result[4])
    );
    //F= B 减 A 减 Cin
    sub_c u_sub2_c(
    .A(B),
    .B(A),
    .Cin(Cin),
    .F(sub2_c_result),
    .Cout(Cout_result[5]),
    .Zero(Zero_result[5])
    );
    //F=A
    assign geta_result = A;
    assign Zero_result[6]= geta_result==0 ? 1:0;
    assign Cout_result[6]=0;
    //F=B
    assign getb_result = B;
    assign Zero_result[7]= getb_result==0 ? 1:0;
    assign Cout_result[7]=0;
    //F=/A
    NOT notA (
    .A(A),
    .F(nota_result)
    );
    assign Zero_result[8]=nota_result==0 ? 1:0;
    assign Cout_result[8]=0;
    //F=/B
    NOT notB (
    .A(B),
    .F(notb_result)
    );
    
    assign Zero_result[9]=notb_result==0 ? 1:0;
    assign Cout_result[9]=0;
    
    //F=A+B
    OR AorB(
    .A(A),
    .B(B),
    .F(aorb_result),
    .Zero(Zero_result[10])
    );
    assign Cout_result[10]=0;
    
    //F=AB
    AND AandB(
    .A(A),
    .B(B),
    .F(aandb_result),
    .Zero(Zero_result[11])
    );
    assign Cout_result[11]=0;
    
    //F=A⊙B
    XNOR AxnorB(
    .A(A),
    .B(B),
    .F(axnorb_result),
    .Zero(Zero_result[12])
    );
    assign Cout_result[12]=0;
    
    //F=A?B
    XOR AxorB( 
    .A(A),
    .B(B),
    .F(axorb_result),
    .Zero(Zero_result[13])
    );
    assign Cout_result[13]=0;
    //F=/(AB)
    and_not A_and_not_B( 
    .A(A),
    .B(B),
    .F(and_not_result),
    .Zero(Zero_result[14])
    );
    assign Cout_result[14]=0;
    //F=0
    assign ZERO_result=0;
    assign Zero_result[15]=1;
    assign Cout_result[15]=0;
   
    wire [4:0]alusel; //操作码
    assign alusel=Card;
//操作码判断与结果赋值
assign F =  ({32{alusel == `ADD}} & add_result) |
            ({32{alusel == `ADD_C}} & add_c_result) |
            ({32{alusel == `SUB1}} & sub1_result) |
            ({32{alusel == `SUB1_C}} & sub1_c_result) |
            ({32{alusel == `SUB2}} & sub2_result) |
            ({32{alusel == `SUB2_C}} & sub2_c_result) |
            ({32{alusel == `getA}} & geta_result) |
            ({32{alusel == `getB}} & getb_result) |
            ({32{alusel == `NOTA}} & nota_result) |
            ({32{alusel == `NOTB}} & notb_result) |
            ({32{alusel == `AORB}} & aorb_result) |
            ({32{alusel == `aANDb}} & aandb_result) |
            ({32{alusel == `aXNORb}} & axnorb_result) |
            ({32{alusel == `aXORb}} & axorb_result) |
            ({32{alusel == `AND_NOT}} & and_not_result) |
            ({32{alusel == `ZERO}} & ZERO_result) ;

//操作码判断与结果赋值
assign Cout = ({32{alusel == `ADD}} & Cout_result[0]) |
              ({32{alusel == `ADD_C}} & Cout_result[1]) |
              ({32{alusel == `SUB1}} & Cout_result[2]) |
              ({32{alusel == `SUB1_C}} & Cout_result[3]) |
              ({32{alusel == `SUB2}} & Cout_result[4]) |
              ({32{alusel == `SUB2_C}} & Cout_result[5]) |
              ({32{alusel == `getA}} & Cout_result[6]) |
              ({32{alusel == `getB}} & Cout_result[7]) |
              ({32{alusel == `NOTA}} & Cout_result[8]) |
              ({32{alusel == `NOTB}} & Cout_result[9]) |
              ({32{alusel == `AORB}} & Cout_result[10]) |
              ({32{alusel == `aANDb}} & Cout_result[11]) |
              ({32{alusel == `aXNORb}} & Cout_result[12]) |
              ({32{alusel == `aXORb}} & Cout_result[13]) |
              ({32{alusel == `AND_NOT}} & Cout_result[14]) |
              ({32{alusel == `ZERO}} & Cout_result[15]) ;
//操作码判断与结果赋值
assign Zero = ({32{alusel == `ADD}} & Zero_result[0]) |
              ({32{alusel == `ADD_C}} & Zero_result[1]) |
              ({32{alusel == `SUB1}} & Zero_result[2]) |
              ({32{alusel == `SUB1_C}} & Zero_result[3]) |
              ({32{alusel == `SUB2}} & Zero_result[4]) |
              ({32{alusel == `SUB2_C}} & Zero_result[5]) |
              ({32{alusel == `getA}} & Zero_result[6]) |
              ({32{alusel == `getB}} & Zero_result[7]) |
              ({32{alusel == `NOTA}} & Zero_result[8]) |
              ({32{alusel == `NOTB}} & Zero_result[9]) |
              ({32{alusel == `AORB}} & Zero_result[10]) |
              ({32{alusel == `aANDb}} & Zero_result[11]) |
              ({32{alusel == `aXNORb}} & Zero_result[12]) |
              ({32{alusel == `aXORb}} & Zero_result[13]) |
              ({32{alusel == `AND_NOT}} & Zero_result[14]) |
              ({32{alusel == `ZERO}} & Zero_result[15]) ;
endmodule
