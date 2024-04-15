`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/04 21:29:25
// Design Name: 
// Module Name: getPCaddr
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


module getPCaddr(
    input clk,
    input rstn,
    input         stall,
    input         cpu_req      ,    //由CPU发送至Cache
    input  [31:0] cpu_addr     ,    //由CPU发送至Cache
   // output reg     cache_addr_ok,    //由Cache返回给CPU
    output reg [31:0] cpu_addr_buffer
    );
    initial begin
    cpu_addr_buffer<=-1;
   // cache_addr_ok<=0;
    end

   // reg [31:0] buffer_PC;
    always @(posedge clk)begin
        if(rstn)begin
            if(cpu_req)begin
                if(!stall) #1 begin
                    cpu_addr_buffer<=cpu_addr;
              //      cache_addr_ok<=1;
                end
                else begin
               //        cache_addr_ok<=0;
                end
            end
        end
        else begin
           //    cache_addr_ok<=0;
        end
    end
endmodule
