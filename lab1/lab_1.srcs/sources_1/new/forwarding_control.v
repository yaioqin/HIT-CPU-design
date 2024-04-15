`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/09 08:41:38
// Design Name: 
// Module Name: forwarding_control
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


module forwarding_control(
input clk,
input [31:0] ID_EX_IR,
input [31:0] MEM_WB_IR,
input [31:0] EX_MEM_IR,
input EX_MEM_we,
input MEM_WB_we,
output reg [1:0] selectA,
output reg [1:0] selectB
    );
    
    //参数
    parameter [5:0] ALUop= 6'b000000;
    parameter [5:0] SW = 6'b101011;
    parameter [5:0] LW =6'b100011;
    parameter [5:0] BNZ = 6'b000101;
    parameter [5:0] J = 6'b000010;
    parameter [5:0] MOVZ=6'b001010;
    
    always@(*)begin
    /*
    selectA==2'b00,默认
    selectA=2'b01,选择EX_MEM_ALUoutput
    selectA=2'b10,选择MEM_WB_ALUoutput
    selectA=2'b11,选择MEM_WB_LMD
    */
    if(EX_MEM_IR[15:11]==ID_EX_IR[25:21] && EX_MEM_IR[15:11]!=0 && EX_MEM_IR[31:26]==ALUop && (ID_EX_IR[31:26]==ALUop || ID_EX_IR[31:26]==LW || ID_EX_IR[31:26]==SW || ID_EX_IR[31:26]==BNZ))begin
        if(EX_MEM_IR[5:0]==MOVZ && EX_MEM_we==0)begin
         selectA<=2'b00;
          end
       else begin
        selectA<=2'b01;
        end
        
    end
    else if(MEM_WB_IR[15:11]==ID_EX_IR[25:21] && MEM_WB_IR[15:11]!=0 && MEM_WB_IR[31:26]==ALUop && (ID_EX_IR[31:26]==ALUop || ID_EX_IR[31:26]==LW || ID_EX_IR[31:26]==SW || ID_EX_IR[31:26]==BNZ) )begin
        if(MEM_WB_IR[5:0]==MOVZ && MEM_WB_we==0)begin
        selectA<=2'b00;
        end
        else begin
        selectA<=2'b10;
        end
    end
    else if(MEM_WB_IR[20:16]==ID_EX_IR[25:21]  && MEM_WB_IR[31:26]==LW && (ID_EX_IR[31:26]==ALUop || ID_EX_IR[31:26]==LW || ID_EX_IR[31:26]==SW || ID_EX_IR[31:26]==BNZ))begin
    selectA<=2'b11;
    end
    else begin
    selectA<=2'b00;
    end
    
    /*
    selectB==2'b00,默认
    selectB=2'b01,选择EX_MEM_ALUoutput
    selectB=2'b10,选择MEM_WB_ALUoutput
    selectB=2'b11,选择MEM_WB_LMD
    */
    if(EX_MEM_IR[15:11]==ID_EX_IR[20:16] && EX_MEM_IR[15:11]!=0 && EX_MEM_IR[31:26]==ALUop && ID_EX_IR[31:26]==ALUop)begin
       if(EX_MEM_IR[5:0]==MOVZ && EX_MEM_we==0)begin
           selectB<=2'b00;
        end
        else begin
            selectB<=2'b01;
        end
    end
    else if(MEM_WB_IR[15:11]==ID_EX_IR[20:16] && MEM_WB_IR[15:11]!=0 && MEM_WB_IR[31:26]==ALUop && ID_EX_IR[31:26]==ALUop)begin

       if(MEM_WB_IR[5:0]==MOVZ && MEM_WB_we==0)begin
           selectB<=2'b00;
        end
        else begin
            selectB<=2'b10;
       end
    end
    else if(MEM_WB_IR[20:16]==ID_EX_IR[20:16] && MEM_WB_IR[31:26]==LW && ID_EX_IR[31:26]==ALUop)begin
        selectB<=2'b11;
    end
    else begin
    selectB<=2'b00;
    end
    
end
    
endmodule
