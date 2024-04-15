`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/29 19:56:57
// Design Name: 
// Module Name: regfile_tb
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


module regfile_tb;
    reg clk;// Ê±ÖÓĞÅºÅ
    reg [4:0] raddr1;// ¼Ä´æÆ÷¶Ñ¶ÁµØÖ· 1
    wire [31:0] rdata1;// ¼Ä´æÆ÷¶Ñ¶Á·µ»ØÊı¾İ 1
    reg [4:0] raddr2;// ¼Ä´æÆ÷¶Ñ¶ÁµØÖ· 2
    wire [31:0] rdata2;// ¼Ä´æÆ÷¶Ñ¶Á·µ»ØÊı¾İ 2
    reg we;// ¼Ä´æÆ÷¶ÑĞ´Ê¹ÄÜ
    reg [4:0] waddr;// ¼Ä´æÆ÷¶ÑĞ´µØÖ·
    reg [31:0] wdata;// ¼Ä´æÆ÷¶ÑĞ´Êı¾İ
    
    initial begin 
        clk=0;
        raddr1=5'b00000 ;raddr2=5'b00000 ; we=0; wdata=32'h00000001; waddr=5'b00001;
        #100 raddr1=5'b00001 ;raddr2=5'b00000 ; we=1; wdata=32'h00f0f001; waddr=5'b00010;
        #100 raddr1=5'b00010 ;raddr2=5'b00001 ; we=1; wdata=32'h00e0f001; waddr=5'b00011;
        #100 raddr1=5'b00011 ;raddr2=5'b00011 ; we=1; wdata=32'h0e000d01; waddr=5'b00100;
        #100 raddr1=5'b00011 ;raddr2=5'b00100 ; we=0; wdata=32'h0e000d01; waddr=5'b00100;
        #100 raddr1=5'b00010 ;raddr2=5'b00001 ; we=0; wdata=32'h0e000d01; waddr=5'b00100;
        #100 raddr1=5'b00001 ;raddr2=5'b00100 ; we=0; wdata=32'h0e000d01; waddr=5'b00100;
 
    end
    always #5 clk=~clk;
    //ÊµÀı»¯
    regfile u_regfile(
     .clk(clk),
    .raddr1(raddr1),
    .rdata1(rdata1),
    .raddr2(raddr2),
    .rdata2(rdata2),
    .we(we),
    .waddr(waddr),
    .wdata(wdata)
    );  
    
endmodule
















