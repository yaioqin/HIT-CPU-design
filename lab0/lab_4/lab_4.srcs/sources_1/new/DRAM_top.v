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


module DRAM_top(
input clk ,
input resetn,
input [31:0] ram_addr ,
input [31:0] ram_wdata,
input ram_wen ,
output reg [31:0] ram_rdata
    );
    reg [31:0] ram [0:225];
 
initial begin
    $readmemh("D:\\CPU_design\\lab4\\lab_4\\lab4.data\\data_data.txt",ram);
end
 
always @(posedge clk) begin
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
