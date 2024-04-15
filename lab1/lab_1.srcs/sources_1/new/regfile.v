`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/29 19:17:29
// Design Name: 
// Module Name: regfile
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

//¼Ä´æÆ÷¶Ñ
module regfile(
    input clk,// Ê±ÖÓĞÅºÅ
    input [4:0] raddr1,// ¼Ä´æÆ÷¶Ñ¶ÁµØÖ· 1
    output [31:0] rdata1,// ¼Ä´æÆ÷¶Ñ¶Á·µ»ØÊı¾İ 1
    input [4:0] raddr2,// ¼Ä´æÆ÷¶Ñ¶ÁµØÖ· 2
    output  [31:0] rdata2,// ¼Ä´æÆ÷¶Ñ¶Á·µ»ØÊı¾İ 2
    input we,// ¼Ä´æÆ÷¶ÑĞ´Ê¹ÄÜ
    input [4:0] waddr,// ¼Ä´æÆ÷¶ÑĞ´µØÖ·
    input [31:0] wdata// ¼Ä´æÆ÷¶ÑĞ´Êı¾İ
    );   
    //MIPSµÄ32¸öÍ¨ÓÃ¼Ä´æÆ÷ 
    reg [31:0] registers[0:31];
    

initial begin
   // $readmemh("D:/CPU_design/labcopy/lab/lab_1/lab_1.data/base_reg_data",registers);
  // $readmemh("D:/CPU_design/labcopy/lab/lab_1/lab_1.data/additional_reg_data1",registers);
    $readmemh("D:/CPU_design/labcopy/lab/lab_1/lab_1.data/additional_reg_data2",registers);
end

 //¶ÁÊı¾İ
assign   rdata1 = ( raddr1 == 0 ) ? 32'h00000000 : registers[raddr1];
assign   rdata2  = ( raddr2 == 0 ) ? 32'h00000000 : registers[raddr2];

     
//Ğ´Êı¾İ
always @(posedge we)  begin  
    if(waddr!=0 ) begin
        registers[waddr] <= wdata;
        end
 end
endmodule
