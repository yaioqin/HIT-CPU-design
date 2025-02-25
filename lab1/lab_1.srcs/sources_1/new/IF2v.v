`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/09 09:10:50
// Design Name: 
// Module Name: IF2v
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

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/08 20:01:13
// Design Name: 
// Module Name: IF
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


module IF2v(
input clk,
input rstn,
input stall,
input [31:0] EX_MEM_ALUoutput,
input EX_MEM_cond,
output [31:0] IF_PC,
output [31:0] IF_NPC,
output [31:0] IF_IR
 );
reg [31:0] PC;
reg [31:0] NPC;


 initial begin
    PC<=0;
    NPC<=4;
 end
 
//上升沿，用PC取指令
    iram2v iram(
    .clk(clk),
    .resetn(rstn),
    .ram_addr(PC), //PC读指令
    .ram_wdata(0),//无写数据
    .ram_wen(1'b0),//置0，只能读指令
    .ram_rdata(IF_IR)); 


 always @(posedge clk)begin
     if(rstn) begin
        if (stall) begin
            //需要暂停,PC不用改变，NPC也不用改变，IR也不会变
             end
        else 
            begin 
            PC<=(EX_MEM_cond==1) ? EX_MEM_ALUoutput : NPC;
            #5 NPC<=PC+4;
            end
     end
     
     end
     
assign IF_PC=PC;
assign IF_NPC=NPC;

endmodule









