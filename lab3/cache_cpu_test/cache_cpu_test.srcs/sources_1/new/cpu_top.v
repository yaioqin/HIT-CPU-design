`timescale 1ns / 1ps

/*
    By ywy_c_asm
    CPU top module, including CPU core and i-Cache
*/


module cpu_top(
    input           clk,
    input           resetn,

    //  AXI接口信号，用于Cache访问主存
    output [3 :0]   arid   ,              //Cache向主存发起读请求时使用的AXI信道的id号
    output [31:0]   araddr ,              //Cache向主存发起读请求时所使用的地址
    output          arvalid,              //Cache向主存发起读请求的请求信号
    input           arready,              //读请求能否被接收的握手信号

    input  [3 :0]   rid    ,              //主存向Cache返回数据时使用的AXI信道的id号
    input  [31:0]   rdata  ,              //主存向Cache返回的数据
    input           rlast  ,              //是否是主存向Cache返回的最后一个数据
    input           rvalid ,              //主存向Cache返回数据时的数据有效信号
    output          rready ,              //标识当前的Cache已经准备好可以接收主存返回的数据  

    //数据访存（你无需关心）
    output          data_sram_en,
    output[3:0]     data_sram_wen,
    output[31:0]    data_sram_addr,
    output[31:0]    data_sram_wdata,
    input[31:0]     data_sram_rdata,

    output[31:0]    debug_wb_pc,
    output          debug_wb_rf_wen,
    output[4:0]     debug_wb_rf_wnum,
    output[31:0]    debug_wb_rf_wdata,

    //性能统计
    output          cache_req,
    output          cache_miss,
    output          inst_commit_en
    );

    wire            cpu_req      ;    //由CPU发送至Cache
    wire[31:0]      cpu_addr     ;    //由CPU发送至Cache
    wire[31:0]      cache_rdata  ;    //由Cache返回给CPU
    wire            cache_addr_ok;    //由Cache返回给CPU
    wire            cache_data_ok;    //由Cache返回给CPU 

    assign cache_req=cache_data_ok;
    assign cache_miss=arvalid & arready;

    cpu_core ccore(
        .clk(clk),
        .resetn(resetn),

        .cpu_req(cpu_req),
        .cpu_addr(cpu_addr),
        .cache_rdata(cache_rdata),
        .cache_addr_ok(cache_addr_ok),
        .cache_data_ok(cache_data_ok),
        
        .data_sram_en(data_sram_en),
        .data_sram_wen(data_sram_wen),
        .data_sram_addr(data_sram_addr),
        .data_sram_wdata(data_sram_wdata),
        .data_sram_rdata(data_sram_rdata),
        .debug_wb_pc(debug_wb_pc),
        .debug_wb_rf_wen(debug_wb_rf_wen),
        .debug_wb_rf_wnum(debug_wb_rf_wnum),
        .debug_wb_rf_wdata(debug_wb_rf_wdata),
        .inst_commit_en(inst_commit_en)
    );

    //-----Module call-----
    cache u_cache(
        //Control signal
        .clk            (clk            ),
        .rst            (resetn         ),

        //Sram-like interface(from CPU core)
        .cpu_req        (cpu_req        ),
        .cpu_addr       (cpu_addr       ),
        .cache_rdata    (cache_rdata    ),
        .cache_addr_ok  (cache_addr_ok  ),
        .cache_data_ok  (cache_data_ok  ),

        //axi interface(from RAM)
        .arid           (arid     ),
        .araddr         (araddr   ),
        .arvalid        (arvalid  ),
        .arready        (arready  ),
        .rid            (rid      ),
        .rdata          (rdata    ),
        .rlast          (rlast    ),
        .rvalid         (rvalid   ),
        .rready         (rready   )
    );
    

endmodule