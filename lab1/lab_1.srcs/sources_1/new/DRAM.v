`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/04 13:46:13
// Design Name: 
// Module Name: DRAM_top
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


module DRAM(
input clk ,
input resetn,
input [31:0] ram_addr ,
input [31:0] ram_wdata,
input ram_wen ,
output reg [31:0] ram_rdata
    );
    reg [31:0] ram [0:225];
 
initial begin
   // $readmemh("D:/CPU_design/labcopy/lab/lab_1/lab_1.data/base_data_data",ram);
   //$readmemh("D:/CPU_design/labcopy/lab/lab_1/lab_1.data/additional_data_data1",ram);
   $readmemh("D:/CPU_design/labcopy/lab/lab_1/lab_1.data/additional_data_data2",ram);
end

always @(*) begin
    if(resetn==0) begin
        ram_rdata<=0;
    end
    else begin
        if (ram_wen)begin
            ram[ram_addr/4] <= ram_wdata;
        end
        else begin
        ram_rdata <= ram[ram_addr/4];
        end
        end
    
    end 
 
endmodule
