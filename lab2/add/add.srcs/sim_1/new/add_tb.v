`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/28 15:00:00
// Design Name: 
// Module Name: add_tb
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


module add_tb;
    reg [31:0] A;
    reg [31:0] B;
    reg Cin;
    wire [31:0] F;
    wire Cout;
    reg clk;

    initial begin
    clk=0;
    A=32'hfffffff0;
    B=32'h00000001;
    Cin=0;
    #10 Cin=1;
    end
    
    always #5 clk=~clk;  
    
    always @(posedge clk) begin
    A<=A-1;
    B<=B+10;
    end
    
    
    adder32 u_add(
    .A(A),
    .B(B),
    .Cin(Cin),
    .F(F),
    .Cout(Cout)
    );
    
endmodule
