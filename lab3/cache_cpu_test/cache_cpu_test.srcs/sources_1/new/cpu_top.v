`timescale 1ns / 1ps

/*
    By ywy_c_asm
    CPU top module, including CPU core and i-Cache
*/


module cpu_top(
    input           clk,
    input           resetn,

    //  AXI�ӿ��źţ�����Cache��������
    output [3 :0]   arid   ,              //Cache�����淢�������ʱʹ�õ�AXI�ŵ���id��
    output [31:0]   araddr ,              //Cache�����淢�������ʱ��ʹ�õĵ�ַ
    output          arvalid,              //Cache�����淢�������������ź�
    input           arready,              //�������ܷ񱻽��յ������ź�

    input  [3 :0]   rid    ,              //������Cache��������ʱʹ�õ�AXI�ŵ���id��
    input  [31:0]   rdata  ,              //������Cache���ص�����
    input           rlast  ,              //�Ƿ���������Cache���ص����һ������
    input           rvalid ,              //������Cache��������ʱ��������Ч�ź�
    output          rready ,              //��ʶ��ǰ��Cache�Ѿ�׼���ÿ��Խ������淵�ص�����  

    //���ݷô棨��������ģ�
    output          data_sram_en,
    output[3:0]     data_sram_wen,
    output[31:0]    data_sram_addr,
    output[31:0]    data_sram_wdata,
    input[31:0]     data_sram_rdata,

    output[31:0]    debug_wb_pc,
    output          debug_wb_rf_wen,
    output[4:0]     debug_wb_rf_wnum,
    output[31:0]    debug_wb_rf_wdata,

    //����ͳ��
    output          cache_req,
    output          cache_miss,
    output          inst_commit_en
    );

    wire            cpu_req      ;    //��CPU������Cache
    wire[31:0]      cpu_addr     ;    //��CPU������Cache
    wire[31:0]      cache_rdata  ;    //��Cache���ظ�CPU
    wire            cache_addr_ok;    //��Cache���ظ�CPU
    wire            cache_data_ok;    //��Cache���ظ�CPU 

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