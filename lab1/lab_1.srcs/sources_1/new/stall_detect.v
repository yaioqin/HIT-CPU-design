`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/09 08:39:35
// Design Name: 
// Module Name: stall_detect
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


module stall_detect(
input clk,
input [31:0] ID_EX_IR,
input [31:0] IF_ID_IR,
output reg stall
    );
    
    //²ÎÊý
    parameter [5:0] ALUop= 6'b000000;
    parameter [5:0] SW = 6'b101011;
    parameter [5:0] LW =6'b100011;
    parameter [5:0] BNZ = 6'b000101;
    parameter [5:0] J = 6'h000010;
    
    //ÔÝÍ£¼ì²â
    always @(posedge clk )begin
        if(stall==1)begin
            stall<=0;
        end 
        else begin
             if(ID_EX_IR[20:16]==IF_ID_IR[25:21] && ID_EX_IR[31:26]==LW && (IF_ID_IR[31:26]==ALUop || IF_ID_IR[31:26]==LW || IF_ID_IR[31:26]==SW ||IF_ID_IR[31:26]==BNZ) )begin
             stall<=1;
             end
             else if(ID_EX_IR[20:16]==IF_ID_IR[20:16] && ID_EX_IR[31:26]==LW && IF_ID_IR[31:26]==ALUop) begin
             stall<=1;
             end
             else begin
             stall<=0;
             end
            end
    end
    
//    always @(posedge clk)begin
//        if (stall==1)
//    end
//    always @(posedge clk)begin
//     stall<=0;
//    end
     
endmodule
