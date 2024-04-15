`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/04 13:46:13
// Design Name: 
// Module Name: IRAM_top
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


module iram2v(
input resetn,
input clk ,
input [31:0] ram_addr ,
input [31:0] ram_wdata,
input ram_wen ,
output  reg [31:0] ram_rdata
    );
    
    reg [31:0] ram [0:225];
 
initial begin
   //$readmemh("D:/CPU_design/labcopy/lab/lab_1/lab_1.data/base_inst_data",ram);
   // $readmemh("D:/CPU_design/labcopy/lab/lab_1/lab_1.data/additional_inst_data1",ram);
      $readmemh("D:/CPU_design/labcopy/lab/lab_1/lab_1.data/additional_inst_data2",ram);
end

always @(*) begin
    if (resetn) begin
        ram_rdata <= ram[ram_addr/4];
        end
    end
endmodule
    