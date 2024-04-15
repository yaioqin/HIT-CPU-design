`timescale 1ns / 1ps

/*
    By ywy_c_asm
    CPU top module, including CPU core and branch predictor
*/


module cpu_top(
    input           clk,
    input           resetn,

    output          inst_sram_en,
    output[3:0]     inst_sram_wen,
    output[31:0]    inst_sram_addr,
    output[31:0]    inst_sram_wdata,
    input[31:0]     inst_sram_rdata,    

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
    output          jumpinst_en,
    output          jumpinst_fail_en,
    output          inst_commit_en
    );

    wire[31:0]      old_PC;
    wire            predict_en;
    wire[31:0]      new_PC;
    wire            predict_jump;
    wire            upd_en;
    wire[31:0]      upd_addr;
    wire            upd_jumpinst;
    wire            upd_jump;
    wire            upd_predfail;
    wire[31:0]      upd_target;

    cpu_core ccore(
        .clk(clk),
        .resetn(resetn),
        .inst_sram_en(inst_sram_en),
        .inst_sram_wen(inst_sram_wen),
        .inst_sram_addr(inst_sram_addr),
        .inst_sram_wdata(inst_sram_wdata),
        .inst_sram_rdata(inst_sram_rdata),
        .data_sram_en(data_sram_en),
        .data_sram_wen(data_sram_wen),
        .data_sram_addr(data_sram_addr),
        .data_sram_wdata(data_sram_wdata),
        .data_sram_rdata(data_sram_rdata),
        .debug_wb_pc(debug_wb_pc),
        .debug_wb_rf_wen(debug_wb_rf_wen),
        .debug_wb_rf_wnum(debug_wb_rf_wnum),
        .debug_wb_rf_wdata(debug_wb_rf_wdata),
        .jumpinst_en(jumpinst_en),
        .jumpinst_fail_en(jumpinst_fail_en),
        .inst_commit_en(inst_commit_en),
        .old_PC(old_PC),
        .predict_en(predict_en),
        .new_PC(new_PC),
        .predict_jump(predict_jump),
        .upd_en(upd_en),
        .upd_addr(upd_addr),
        .upd_jumpinst(upd_jumpinst),
        .upd_jump(upd_jump),
        .upd_predfail(upd_predfail),
        .upd_target(upd_target)
    );

    branch_predictor bp(
        .clk(clk),
        .resetn(resetn),
        .old_PC(old_PC),
        .predict_en(predict_en),
        .new_PC(new_PC),
        .predict_jump(predict_jump),
        .upd_en(upd_en),
        .upd_addr(upd_addr),
        .upd_jumpinst(upd_jumpinst),
        .upd_jump(upd_jump),
        .upd_predfail(upd_predfail),
        .upd_target(upd_target)
    );

endmodule