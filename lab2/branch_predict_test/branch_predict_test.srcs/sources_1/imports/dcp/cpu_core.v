// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Sep  2 19:31:02 2023
// Host        : ywy_c_asm_PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim cpu_core.v
// Design      : cpu_core
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbv676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module cpu_core
   (clk,
    resetn,
    inst_sram_en,
    inst_sram_wen,
    inst_sram_addr,
    inst_sram_wdata,
    inst_sram_rdata,
    data_sram_en,
    data_sram_wen,
    data_sram_addr,
    data_sram_wdata,
    data_sram_rdata,
    debug_wb_pc,
    debug_wb_rf_wen,
    debug_wb_rf_wnum,
    debug_wb_rf_wdata,
    jumpinst_en,
    jumpinst_fail_en,
    inst_commit_en,
    old_PC,
    predict_en,
    new_PC,
    predict_jump,
    upd_en,
    upd_addr,
    upd_jumpinst,
    upd_jump,
    upd_predfail,
    upd_target);
  input clk;
  input resetn;
  output inst_sram_en;
  output [3:0]inst_sram_wen;
  output [31:0]inst_sram_addr;
  output [31:0]inst_sram_wdata;
  input [31:0]inst_sram_rdata;
  output data_sram_en;
  output [3:0]data_sram_wen;
  output [31:0]data_sram_addr;
  output [31:0]data_sram_wdata;
  input [31:0]data_sram_rdata;
  output [31:0]debug_wb_pc;
  output debug_wb_rf_wen;
  output [4:0]debug_wb_rf_wnum;
  output [31:0]debug_wb_rf_wdata;
  output jumpinst_en;
  output jumpinst_fail_en;
  output inst_commit_en;
  output [31:0]old_PC;
  output predict_en;
  input [31:0]new_PC;
  input predict_jump;
  output upd_en;
  output [31:0]upd_addr;
  output upd_jumpinst;
  output upd_jump;
  output upd_predfail;
  output [31:0]upd_target;

  wire \<const0> ;
  wire [31:1]A;
  wire B0;
  wire \PC[31]_i_1_n_0 ;
  wire \PC[31]_i_2_n_0 ;
  wire [31:0]addr;
  wire [2:0]aluop;
  wire [31:1]bnetarget;
  wire clk;
  wire [6:1]ctrl;
  wire [31:0]data0;
  wire [31:0]data1;
  wire data2;
  wire [8:8]data6;
  wire [31:0]data_sram_addr;
  wire data_sram_en;
  wire [31:0]data_sram_rdata;
  wire [31:0]data_sram_wdata;
  wire [0:0]\^data_sram_wen ;
  wire [31:0]debug_wb_pc;
  wire [31:0]debug_wb_rf_wdata;
  wire debug_wb_rf_wen;
  wire [4:0]debug_wb_rf_wnum;
  wire \exmem_addr[11]_i_2_n_0 ;
  wire \exmem_addr[11]_i_3_n_0 ;
  wire \exmem_addr[11]_i_4_n_0 ;
  wire \exmem_addr[11]_i_5_n_0 ;
  wire \exmem_addr[15]_i_2_n_0 ;
  wire \exmem_addr[15]_i_3_n_0 ;
  wire \exmem_addr[15]_i_4_n_0 ;
  wire \exmem_addr[15]_i_5_n_0 ;
  wire \exmem_addr[19]_i_5_n_0 ;
  wire \exmem_addr[19]_i_6_n_0 ;
  wire \exmem_addr[19]_i_7_n_0 ;
  wire \exmem_addr[19]_i_8_n_0 ;
  wire \exmem_addr[19]_i_9_n_0 ;
  wire \exmem_addr[23]_i_6_n_0 ;
  wire \exmem_addr[23]_i_7_n_0 ;
  wire \exmem_addr[23]_i_8_n_0 ;
  wire \exmem_addr[23]_i_9_n_0 ;
  wire \exmem_addr[27]_i_6_n_0 ;
  wire \exmem_addr[27]_i_7_n_0 ;
  wire \exmem_addr[27]_i_8_n_0 ;
  wire \exmem_addr[27]_i_9_n_0 ;
  wire \exmem_addr[31]_i_10_n_0 ;
  wire \exmem_addr[31]_i_13_n_0 ;
  wire \exmem_addr[31]_i_14_n_0 ;
  wire \exmem_addr[31]_i_5_n_0 ;
  wire \exmem_addr[31]_i_6_n_0 ;
  wire \exmem_addr[31]_i_7_n_0 ;
  wire \exmem_addr[31]_i_8_n_0 ;
  wire \exmem_addr[3]_i_2_n_0 ;
  wire \exmem_addr[3]_i_3_n_0 ;
  wire \exmem_addr[3]_i_4_n_0 ;
  wire \exmem_addr[3]_i_5_n_0 ;
  wire \exmem_addr[7]_i_2_n_0 ;
  wire \exmem_addr[7]_i_3_n_0 ;
  wire \exmem_addr[7]_i_4_n_0 ;
  wire \exmem_addr[7]_i_5_n_0 ;
  wire \exmem_addr_reg[11]_i_1_n_0 ;
  wire \exmem_addr_reg[11]_i_1_n_1 ;
  wire \exmem_addr_reg[11]_i_1_n_2 ;
  wire \exmem_addr_reg[11]_i_1_n_3 ;
  wire \exmem_addr_reg[15]_i_1_n_0 ;
  wire \exmem_addr_reg[15]_i_1_n_1 ;
  wire \exmem_addr_reg[15]_i_1_n_2 ;
  wire \exmem_addr_reg[15]_i_1_n_3 ;
  wire \exmem_addr_reg[19]_i_1_n_0 ;
  wire \exmem_addr_reg[19]_i_1_n_1 ;
  wire \exmem_addr_reg[19]_i_1_n_2 ;
  wire \exmem_addr_reg[19]_i_1_n_3 ;
  wire \exmem_addr_reg[23]_i_1_n_0 ;
  wire \exmem_addr_reg[23]_i_1_n_1 ;
  wire \exmem_addr_reg[23]_i_1_n_2 ;
  wire \exmem_addr_reg[23]_i_1_n_3 ;
  wire \exmem_addr_reg[27]_i_1_n_0 ;
  wire \exmem_addr_reg[27]_i_1_n_1 ;
  wire \exmem_addr_reg[27]_i_1_n_2 ;
  wire \exmem_addr_reg[27]_i_1_n_3 ;
  wire \exmem_addr_reg[31]_i_1_n_1 ;
  wire \exmem_addr_reg[31]_i_1_n_2 ;
  wire \exmem_addr_reg[31]_i_1_n_3 ;
  wire \exmem_addr_reg[3]_i_1_n_0 ;
  wire \exmem_addr_reg[3]_i_1_n_1 ;
  wire \exmem_addr_reg[3]_i_1_n_2 ;
  wire \exmem_addr_reg[3]_i_1_n_3 ;
  wire \exmem_addr_reg[7]_i_1_n_0 ;
  wire \exmem_addr_reg[7]_i_1_n_1 ;
  wire \exmem_addr_reg[7]_i_1_n_2 ;
  wire \exmem_addr_reg[7]_i_1_n_3 ;
  wire exmem_flush_i_10_n_0;
  wire exmem_flush_i_11_n_0;
  wire exmem_flush_i_12_n_0;
  wire exmem_flush_i_13_n_0;
  wire exmem_flush_i_14_n_0;
  wire exmem_flush_i_15_n_0;
  wire exmem_flush_i_16_n_0;
  wire exmem_flush_i_1_n_0;
  wire exmem_flush_i_2_n_0;
  wire exmem_flush_i_5_n_0;
  wire exmem_flush_i_6_n_0;
  wire exmem_flush_i_7_n_0;
  wire exmem_flush_i_9_n_0;
  wire exmem_flush_reg_i_3_n_2;
  wire exmem_flush_reg_i_3_n_3;
  wire exmem_flush_reg_i_4_n_0;
  wire exmem_flush_reg_i_4_n_1;
  wire exmem_flush_reg_i_4_n_2;
  wire exmem_flush_reg_i_4_n_3;
  wire exmem_flush_reg_i_8_n_0;
  wire exmem_flush_reg_i_8_n_1;
  wire exmem_flush_reg_i_8_n_2;
  wire exmem_flush_reg_i_8_n_3;
  wire [31:0]exmem_flush_target;
  wire \exmem_flush_target[0]_i_1_n_0 ;
  wire \exmem_flush_target[10]_i_1_n_0 ;
  wire \exmem_flush_target[11]_i_1_n_0 ;
  wire \exmem_flush_target[12]_i_1_n_0 ;
  wire \exmem_flush_target[12]_i_4_n_0 ;
  wire \exmem_flush_target[12]_i_5_n_0 ;
  wire \exmem_flush_target[12]_i_6_n_0 ;
  wire \exmem_flush_target[12]_i_7_n_0 ;
  wire \exmem_flush_target[13]_i_1_n_0 ;
  wire \exmem_flush_target[14]_i_1_n_0 ;
  wire \exmem_flush_target[15]_i_1_n_0 ;
  wire \exmem_flush_target[16]_i_1_n_0 ;
  wire \exmem_flush_target[16]_i_4_n_0 ;
  wire \exmem_flush_target[16]_i_5_n_0 ;
  wire \exmem_flush_target[16]_i_6_n_0 ;
  wire \exmem_flush_target[16]_i_7_n_0 ;
  wire \exmem_flush_target[17]_i_1_n_0 ;
  wire \exmem_flush_target[18]_i_1_n_0 ;
  wire \exmem_flush_target[19]_i_1_n_0 ;
  wire \exmem_flush_target[1]_i_1_n_0 ;
  wire \exmem_flush_target[20]_i_1_n_0 ;
  wire \exmem_flush_target[20]_i_4_n_0 ;
  wire \exmem_flush_target[20]_i_5_n_0 ;
  wire \exmem_flush_target[20]_i_6_n_0 ;
  wire \exmem_flush_target[20]_i_7_n_0 ;
  wire \exmem_flush_target[20]_i_8_n_0 ;
  wire \exmem_flush_target[21]_i_1_n_0 ;
  wire \exmem_flush_target[22]_i_1_n_0 ;
  wire \exmem_flush_target[23]_i_1_n_0 ;
  wire \exmem_flush_target[24]_i_1_n_0 ;
  wire \exmem_flush_target[24]_i_4_n_0 ;
  wire \exmem_flush_target[24]_i_5_n_0 ;
  wire \exmem_flush_target[24]_i_6_n_0 ;
  wire \exmem_flush_target[24]_i_7_n_0 ;
  wire \exmem_flush_target[25]_i_1_n_0 ;
  wire \exmem_flush_target[26]_i_1_n_0 ;
  wire \exmem_flush_target[27]_i_1_n_0 ;
  wire \exmem_flush_target[28]_i_1_n_0 ;
  wire \exmem_flush_target[28]_i_3_n_0 ;
  wire \exmem_flush_target[28]_i_4_n_0 ;
  wire \exmem_flush_target[28]_i_5_n_0 ;
  wire \exmem_flush_target[28]_i_6_n_0 ;
  wire \exmem_flush_target[29]_i_1_n_0 ;
  wire \exmem_flush_target[2]_i_1_n_0 ;
  wire \exmem_flush_target[30]_i_1_n_0 ;
  wire \exmem_flush_target[31]_i_10_n_0 ;
  wire \exmem_flush_target[31]_i_12_n_0 ;
  wire \exmem_flush_target[31]_i_13_n_0 ;
  wire \exmem_flush_target[31]_i_14_n_0 ;
  wire \exmem_flush_target[31]_i_15_n_0 ;
  wire \exmem_flush_target[31]_i_16_n_0 ;
  wire \exmem_flush_target[31]_i_17_n_0 ;
  wire \exmem_flush_target[31]_i_18_n_0 ;
  wire \exmem_flush_target[31]_i_19_n_0 ;
  wire \exmem_flush_target[31]_i_1_n_0 ;
  wire \exmem_flush_target[31]_i_4_n_0 ;
  wire \exmem_flush_target[31]_i_5_n_0 ;
  wire \exmem_flush_target[31]_i_6_n_0 ;
  wire \exmem_flush_target[31]_i_8_n_0 ;
  wire \exmem_flush_target[31]_i_9_n_0 ;
  wire \exmem_flush_target[3]_i_1_n_0 ;
  wire \exmem_flush_target[4]_i_1_n_0 ;
  wire \exmem_flush_target[4]_i_4_n_0 ;
  wire \exmem_flush_target[4]_i_5_n_0 ;
  wire \exmem_flush_target[4]_i_6_n_0 ;
  wire \exmem_flush_target[4]_i_7_n_0 ;
  wire \exmem_flush_target[5]_i_1_n_0 ;
  wire \exmem_flush_target[6]_i_1_n_0 ;
  wire \exmem_flush_target[7]_i_1_n_0 ;
  wire \exmem_flush_target[8]_i_1_n_0 ;
  wire \exmem_flush_target[8]_i_4_n_0 ;
  wire \exmem_flush_target[8]_i_5_n_0 ;
  wire \exmem_flush_target[8]_i_6_n_0 ;
  wire \exmem_flush_target[8]_i_7_n_0 ;
  wire \exmem_flush_target[9]_i_1_n_0 ;
  wire \exmem_flush_target_reg[12]_i_2_n_0 ;
  wire \exmem_flush_target_reg[12]_i_2_n_1 ;
  wire \exmem_flush_target_reg[12]_i_2_n_2 ;
  wire \exmem_flush_target_reg[12]_i_2_n_3 ;
  wire \exmem_flush_target_reg[12]_i_3_n_0 ;
  wire \exmem_flush_target_reg[12]_i_3_n_1 ;
  wire \exmem_flush_target_reg[12]_i_3_n_2 ;
  wire \exmem_flush_target_reg[12]_i_3_n_3 ;
  wire \exmem_flush_target_reg[16]_i_2_n_0 ;
  wire \exmem_flush_target_reg[16]_i_2_n_1 ;
  wire \exmem_flush_target_reg[16]_i_2_n_2 ;
  wire \exmem_flush_target_reg[16]_i_2_n_3 ;
  wire \exmem_flush_target_reg[16]_i_3_n_0 ;
  wire \exmem_flush_target_reg[16]_i_3_n_1 ;
  wire \exmem_flush_target_reg[16]_i_3_n_2 ;
  wire \exmem_flush_target_reg[16]_i_3_n_3 ;
  wire \exmem_flush_target_reg[20]_i_2_n_0 ;
  wire \exmem_flush_target_reg[20]_i_2_n_1 ;
  wire \exmem_flush_target_reg[20]_i_2_n_2 ;
  wire \exmem_flush_target_reg[20]_i_2_n_3 ;
  wire \exmem_flush_target_reg[20]_i_3_n_0 ;
  wire \exmem_flush_target_reg[20]_i_3_n_1 ;
  wire \exmem_flush_target_reg[20]_i_3_n_2 ;
  wire \exmem_flush_target_reg[20]_i_3_n_3 ;
  wire \exmem_flush_target_reg[24]_i_2_n_0 ;
  wire \exmem_flush_target_reg[24]_i_2_n_1 ;
  wire \exmem_flush_target_reg[24]_i_2_n_2 ;
  wire \exmem_flush_target_reg[24]_i_2_n_3 ;
  wire \exmem_flush_target_reg[24]_i_3_n_0 ;
  wire \exmem_flush_target_reg[24]_i_3_n_1 ;
  wire \exmem_flush_target_reg[24]_i_3_n_2 ;
  wire \exmem_flush_target_reg[24]_i_3_n_3 ;
  wire \exmem_flush_target_reg[28]_i_2_n_0 ;
  wire \exmem_flush_target_reg[28]_i_2_n_1 ;
  wire \exmem_flush_target_reg[28]_i_2_n_2 ;
  wire \exmem_flush_target_reg[28]_i_2_n_3 ;
  wire \exmem_flush_target_reg[31]_i_11_n_0 ;
  wire \exmem_flush_target_reg[31]_i_11_n_1 ;
  wire \exmem_flush_target_reg[31]_i_11_n_2 ;
  wire \exmem_flush_target_reg[31]_i_11_n_3 ;
  wire \exmem_flush_target_reg[31]_i_2_n_2 ;
  wire \exmem_flush_target_reg[31]_i_2_n_3 ;
  wire \exmem_flush_target_reg[31]_i_3_n_2 ;
  wire \exmem_flush_target_reg[31]_i_3_n_3 ;
  wire \exmem_flush_target_reg[31]_i_7_n_0 ;
  wire \exmem_flush_target_reg[31]_i_7_n_1 ;
  wire \exmem_flush_target_reg[31]_i_7_n_2 ;
  wire \exmem_flush_target_reg[31]_i_7_n_3 ;
  wire \exmem_flush_target_reg[4]_i_2_n_0 ;
  wire \exmem_flush_target_reg[4]_i_2_n_1 ;
  wire \exmem_flush_target_reg[4]_i_2_n_2 ;
  wire \exmem_flush_target_reg[4]_i_2_n_3 ;
  wire \exmem_flush_target_reg[4]_i_3_n_0 ;
  wire \exmem_flush_target_reg[4]_i_3_n_1 ;
  wire \exmem_flush_target_reg[4]_i_3_n_2 ;
  wire \exmem_flush_target_reg[4]_i_3_n_3 ;
  wire \exmem_flush_target_reg[8]_i_2_n_0 ;
  wire \exmem_flush_target_reg[8]_i_2_n_1 ;
  wire \exmem_flush_target_reg[8]_i_2_n_2 ;
  wire \exmem_flush_target_reg[8]_i_2_n_3 ;
  wire \exmem_flush_target_reg[8]_i_3_n_0 ;
  wire \exmem_flush_target_reg[8]_i_3_n_1 ;
  wire \exmem_flush_target_reg[8]_i_3_n_2 ;
  wire \exmem_flush_target_reg[8]_i_3_n_3 ;
  wire exmem_jump;
  wire exmem_jumpinst;
  wire exmem_jumpinst_fail;
  wire exmem_jumpinst_fail0;
  wire exmem_jumpinst_fail_i_10_n_0;
  wire exmem_jumpinst_fail_i_11_n_0;
  wire exmem_jumpinst_fail_i_20_n_0;
  wire exmem_jumpinst_fail_i_21_n_0;
  wire exmem_jumpinst_fail_i_22_n_0;
  wire exmem_jumpinst_fail_i_23_n_0;
  wire exmem_jumpinst_fail_i_45_n_0;
  wire exmem_jumpinst_fail_i_4_n_0;
  wire exmem_jumpinst_fail_i_5_n_0;
  wire exmem_jumpinst_fail_i_6_n_0;
  wire exmem_jumpinst_fail_i_8_n_0;
  wire exmem_jumpinst_fail_i_9_n_0;
  wire exmem_jumpinst_fail_reg_i_2_n_2;
  wire exmem_jumpinst_fail_reg_i_2_n_3;
  wire exmem_jumpinst_fail_reg_i_3_n_0;
  wire exmem_jumpinst_fail_reg_i_3_n_1;
  wire exmem_jumpinst_fail_reg_i_3_n_2;
  wire exmem_jumpinst_fail_reg_i_3_n_3;
  wire exmem_jumpinst_fail_reg_i_7_n_0;
  wire exmem_jumpinst_fail_reg_i_7_n_1;
  wire exmem_jumpinst_fail_reg_i_7_n_2;
  wire exmem_jumpinst_fail_reg_i_7_n_3;
  wire exmem_load;
  wire [4:0]exmem_rd;
  wire \exmem_result[0]_i_10_n_0 ;
  wire \exmem_result[0]_i_11_n_0 ;
  wire \exmem_result[0]_i_12_n_0 ;
  wire \exmem_result[0]_i_13_n_0 ;
  wire \exmem_result[0]_i_14_n_0 ;
  wire \exmem_result[0]_i_15_n_0 ;
  wire \exmem_result[0]_i_17_n_0 ;
  wire \exmem_result[0]_i_18_n_0 ;
  wire \exmem_result[0]_i_19_n_0 ;
  wire \exmem_result[0]_i_1_n_0 ;
  wire \exmem_result[0]_i_20_n_0 ;
  wire \exmem_result[0]_i_21_n_0 ;
  wire \exmem_result[0]_i_22_n_0 ;
  wire \exmem_result[0]_i_23_n_0 ;
  wire \exmem_result[0]_i_24_n_0 ;
  wire \exmem_result[0]_i_26_n_0 ;
  wire \exmem_result[0]_i_27_n_0 ;
  wire \exmem_result[0]_i_28_n_0 ;
  wire \exmem_result[0]_i_29_n_0 ;
  wire \exmem_result[0]_i_2_n_0 ;
  wire \exmem_result[0]_i_30_n_0 ;
  wire \exmem_result[0]_i_31_n_0 ;
  wire \exmem_result[0]_i_32_n_0 ;
  wire \exmem_result[0]_i_33_n_0 ;
  wire \exmem_result[0]_i_34_n_0 ;
  wire \exmem_result[0]_i_35_n_0 ;
  wire \exmem_result[0]_i_36_n_0 ;
  wire \exmem_result[0]_i_37_n_0 ;
  wire \exmem_result[0]_i_38_n_0 ;
  wire \exmem_result[0]_i_39_n_0 ;
  wire \exmem_result[0]_i_3_n_0 ;
  wire \exmem_result[0]_i_40_n_0 ;
  wire \exmem_result[0]_i_41_n_0 ;
  wire \exmem_result[0]_i_4_n_0 ;
  wire \exmem_result[0]_i_6_n_0 ;
  wire \exmem_result[0]_i_8_n_0 ;
  wire \exmem_result[0]_i_9_n_0 ;
  wire \exmem_result[10]_i_1_n_0 ;
  wire \exmem_result[10]_i_2_n_0 ;
  wire \exmem_result[10]_i_3_n_0 ;
  wire \exmem_result[10]_i_4_n_0 ;
  wire \exmem_result[10]_i_5_n_0 ;
  wire \exmem_result[10]_i_6_n_0 ;
  wire \exmem_result[10]_i_7_n_0 ;
  wire \exmem_result[11]_i_10_n_0 ;
  wire \exmem_result[11]_i_11_n_0 ;
  wire \exmem_result[11]_i_12_n_0 ;
  wire \exmem_result[11]_i_13_n_0 ;
  wire \exmem_result[11]_i_14_n_0 ;
  wire \exmem_result[11]_i_15_n_0 ;
  wire \exmem_result[11]_i_16_n_0 ;
  wire \exmem_result[11]_i_17_n_0 ;
  wire \exmem_result[11]_i_1_n_0 ;
  wire \exmem_result[11]_i_2_n_0 ;
  wire \exmem_result[11]_i_3_n_0 ;
  wire \exmem_result[11]_i_4_n_0 ;
  wire \exmem_result[11]_i_5_n_0 ;
  wire \exmem_result[11]_i_6_n_0 ;
  wire \exmem_result[11]_i_9_n_0 ;
  wire \exmem_result[12]_i_1_n_0 ;
  wire \exmem_result[12]_i_2_n_0 ;
  wire \exmem_result[12]_i_3_n_0 ;
  wire \exmem_result[12]_i_4_n_0 ;
  wire \exmem_result[12]_i_5_n_0 ;
  wire \exmem_result[12]_i_6_n_0 ;
  wire \exmem_result[12]_i_7_n_0 ;
  wire \exmem_result[13]_i_1_n_0 ;
  wire \exmem_result[13]_i_2_n_0 ;
  wire \exmem_result[13]_i_3_n_0 ;
  wire \exmem_result[13]_i_4_n_0 ;
  wire \exmem_result[13]_i_5_n_0 ;
  wire \exmem_result[13]_i_6_n_0 ;
  wire \exmem_result[13]_i_7_n_0 ;
  wire \exmem_result[14]_i_1_n_0 ;
  wire \exmem_result[14]_i_2_n_0 ;
  wire \exmem_result[14]_i_3_n_0 ;
  wire \exmem_result[14]_i_4_n_0 ;
  wire \exmem_result[14]_i_5_n_0 ;
  wire \exmem_result[14]_i_6_n_0 ;
  wire \exmem_result[14]_i_7_n_0 ;
  wire \exmem_result[15]_i_10_n_0 ;
  wire \exmem_result[15]_i_11_n_0 ;
  wire \exmem_result[15]_i_12_n_0 ;
  wire \exmem_result[15]_i_13_n_0 ;
  wire \exmem_result[15]_i_14_n_0 ;
  wire \exmem_result[15]_i_15_n_0 ;
  wire \exmem_result[15]_i_16_n_0 ;
  wire \exmem_result[15]_i_17_n_0 ;
  wire \exmem_result[15]_i_1_n_0 ;
  wire \exmem_result[15]_i_2_n_0 ;
  wire \exmem_result[15]_i_3_n_0 ;
  wire \exmem_result[15]_i_4_n_0 ;
  wire \exmem_result[15]_i_5_n_0 ;
  wire \exmem_result[15]_i_6_n_0 ;
  wire \exmem_result[15]_i_9_n_0 ;
  wire \exmem_result[16]_i_1_n_0 ;
  wire \exmem_result[16]_i_2_n_0 ;
  wire \exmem_result[16]_i_3_n_0 ;
  wire \exmem_result[16]_i_4_n_0 ;
  wire \exmem_result[16]_i_5_n_0 ;
  wire \exmem_result[16]_i_6_n_0 ;
  wire \exmem_result[16]_i_7_n_0 ;
  wire \exmem_result[17]_i_1_n_0 ;
  wire \exmem_result[17]_i_2_n_0 ;
  wire \exmem_result[17]_i_3_n_0 ;
  wire \exmem_result[17]_i_4_n_0 ;
  wire \exmem_result[17]_i_5_n_0 ;
  wire \exmem_result[17]_i_6_n_0 ;
  wire \exmem_result[17]_i_7_n_0 ;
  wire \exmem_result[18]_i_1_n_0 ;
  wire \exmem_result[18]_i_2_n_0 ;
  wire \exmem_result[18]_i_3_n_0 ;
  wire \exmem_result[18]_i_4_n_0 ;
  wire \exmem_result[18]_i_5_n_0 ;
  wire \exmem_result[18]_i_6_n_0 ;
  wire \exmem_result[18]_i_7_n_0 ;
  wire \exmem_result[19]_i_10_n_0 ;
  wire \exmem_result[19]_i_11_n_0 ;
  wire \exmem_result[19]_i_12_n_0 ;
  wire \exmem_result[19]_i_13_n_0 ;
  wire \exmem_result[19]_i_14_n_0 ;
  wire \exmem_result[19]_i_15_n_0 ;
  wire \exmem_result[19]_i_16_n_0 ;
  wire \exmem_result[19]_i_17_n_0 ;
  wire \exmem_result[19]_i_1_n_0 ;
  wire \exmem_result[19]_i_2_n_0 ;
  wire \exmem_result[19]_i_3_n_0 ;
  wire \exmem_result[19]_i_4_n_0 ;
  wire \exmem_result[19]_i_5_n_0 ;
  wire \exmem_result[19]_i_6_n_0 ;
  wire \exmem_result[19]_i_9_n_0 ;
  wire \exmem_result[1]_i_1_n_0 ;
  wire \exmem_result[1]_i_2_n_0 ;
  wire \exmem_result[1]_i_3_n_0 ;
  wire \exmem_result[1]_i_4_n_0 ;
  wire \exmem_result[1]_i_5_n_0 ;
  wire \exmem_result[1]_i_6_n_0 ;
  wire \exmem_result[20]_i_1_n_0 ;
  wire \exmem_result[20]_i_2_n_0 ;
  wire \exmem_result[20]_i_3_n_0 ;
  wire \exmem_result[20]_i_4_n_0 ;
  wire \exmem_result[20]_i_5_n_0 ;
  wire \exmem_result[20]_i_6_n_0 ;
  wire \exmem_result[20]_i_7_n_0 ;
  wire \exmem_result[21]_i_1_n_0 ;
  wire \exmem_result[21]_i_2_n_0 ;
  wire \exmem_result[21]_i_3_n_0 ;
  wire \exmem_result[21]_i_4_n_0 ;
  wire \exmem_result[21]_i_5_n_0 ;
  wire \exmem_result[21]_i_6_n_0 ;
  wire \exmem_result[21]_i_7_n_0 ;
  wire \exmem_result[22]_i_1_n_0 ;
  wire \exmem_result[22]_i_2_n_0 ;
  wire \exmem_result[22]_i_3_n_0 ;
  wire \exmem_result[22]_i_4_n_0 ;
  wire \exmem_result[22]_i_5_n_0 ;
  wire \exmem_result[22]_i_6_n_0 ;
  wire \exmem_result[22]_i_7_n_0 ;
  wire \exmem_result[23]_i_10_n_0 ;
  wire \exmem_result[23]_i_11_n_0 ;
  wire \exmem_result[23]_i_12_n_0 ;
  wire \exmem_result[23]_i_13_n_0 ;
  wire \exmem_result[23]_i_14_n_0 ;
  wire \exmem_result[23]_i_15_n_0 ;
  wire \exmem_result[23]_i_16_n_0 ;
  wire \exmem_result[23]_i_17_n_0 ;
  wire \exmem_result[23]_i_1_n_0 ;
  wire \exmem_result[23]_i_2_n_0 ;
  wire \exmem_result[23]_i_3_n_0 ;
  wire \exmem_result[23]_i_4_n_0 ;
  wire \exmem_result[23]_i_5_n_0 ;
  wire \exmem_result[23]_i_6_n_0 ;
  wire \exmem_result[23]_i_9_n_0 ;
  wire \exmem_result[24]_i_1_n_0 ;
  wire \exmem_result[24]_i_2_n_0 ;
  wire \exmem_result[24]_i_3_n_0 ;
  wire \exmem_result[24]_i_4_n_0 ;
  wire \exmem_result[24]_i_5_n_0 ;
  wire \exmem_result[24]_i_6_n_0 ;
  wire \exmem_result[24]_i_7_n_0 ;
  wire \exmem_result[25]_i_1_n_0 ;
  wire \exmem_result[25]_i_2_n_0 ;
  wire \exmem_result[25]_i_3_n_0 ;
  wire \exmem_result[25]_i_4_n_0 ;
  wire \exmem_result[25]_i_5_n_0 ;
  wire \exmem_result[25]_i_6_n_0 ;
  wire \exmem_result[25]_i_7_n_0 ;
  wire \exmem_result[26]_i_1_n_0 ;
  wire \exmem_result[26]_i_2_n_0 ;
  wire \exmem_result[26]_i_3_n_0 ;
  wire \exmem_result[26]_i_4_n_0 ;
  wire \exmem_result[26]_i_5_n_0 ;
  wire \exmem_result[26]_i_6_n_0 ;
  wire \exmem_result[26]_i_7_n_0 ;
  wire \exmem_result[27]_i_10_n_0 ;
  wire \exmem_result[27]_i_11_n_0 ;
  wire \exmem_result[27]_i_12_n_0 ;
  wire \exmem_result[27]_i_13_n_0 ;
  wire \exmem_result[27]_i_14_n_0 ;
  wire \exmem_result[27]_i_15_n_0 ;
  wire \exmem_result[27]_i_16_n_0 ;
  wire \exmem_result[27]_i_17_n_0 ;
  wire \exmem_result[27]_i_1_n_0 ;
  wire \exmem_result[27]_i_2_n_0 ;
  wire \exmem_result[27]_i_3_n_0 ;
  wire \exmem_result[27]_i_4_n_0 ;
  wire \exmem_result[27]_i_5_n_0 ;
  wire \exmem_result[27]_i_6_n_0 ;
  wire \exmem_result[27]_i_9_n_0 ;
  wire \exmem_result[28]_i_1_n_0 ;
  wire \exmem_result[28]_i_2_n_0 ;
  wire \exmem_result[28]_i_3_n_0 ;
  wire \exmem_result[28]_i_4_n_0 ;
  wire \exmem_result[28]_i_5_n_0 ;
  wire \exmem_result[28]_i_6_n_0 ;
  wire \exmem_result[28]_i_7_n_0 ;
  wire \exmem_result[29]_i_1_n_0 ;
  wire \exmem_result[29]_i_2_n_0 ;
  wire \exmem_result[29]_i_3_n_0 ;
  wire \exmem_result[29]_i_4_n_0 ;
  wire \exmem_result[29]_i_5_n_0 ;
  wire \exmem_result[29]_i_6_n_0 ;
  wire \exmem_result[29]_i_7_n_0 ;
  wire \exmem_result[2]_i_1_n_0 ;
  wire \exmem_result[2]_i_2_n_0 ;
  wire \exmem_result[2]_i_3_n_0 ;
  wire \exmem_result[2]_i_4_n_0 ;
  wire \exmem_result[2]_i_5_n_0 ;
  wire \exmem_result[2]_i_6_n_0 ;
  wire \exmem_result[30]_i_1_n_0 ;
  wire \exmem_result[30]_i_2_n_0 ;
  wire \exmem_result[30]_i_3_n_0 ;
  wire \exmem_result[30]_i_4_n_0 ;
  wire \exmem_result[30]_i_5_n_0 ;
  wire \exmem_result[30]_i_6_n_0 ;
  wire \exmem_result[30]_i_7_n_0 ;
  wire \exmem_result[31]_i_11_n_0 ;
  wire \exmem_result[31]_i_12_n_0 ;
  wire \exmem_result[31]_i_13_n_0 ;
  wire \exmem_result[31]_i_14_n_0 ;
  wire \exmem_result[31]_i_15_n_0 ;
  wire \exmem_result[31]_i_16_n_0 ;
  wire \exmem_result[31]_i_17_n_0 ;
  wire \exmem_result[31]_i_18_n_0 ;
  wire \exmem_result[31]_i_19_n_0 ;
  wire \exmem_result[31]_i_1_n_0 ;
  wire \exmem_result[31]_i_20_n_0 ;
  wire \exmem_result[31]_i_21_n_0 ;
  wire \exmem_result[31]_i_22_n_0 ;
  wire \exmem_result[31]_i_23_n_0 ;
  wire \exmem_result[31]_i_24_n_0 ;
  wire \exmem_result[31]_i_25_n_0 ;
  wire \exmem_result[31]_i_26_n_0 ;
  wire \exmem_result[31]_i_27_n_0 ;
  wire \exmem_result[31]_i_28_n_0 ;
  wire \exmem_result[31]_i_29_n_0 ;
  wire \exmem_result[31]_i_2_n_0 ;
  wire \exmem_result[31]_i_3_n_0 ;
  wire \exmem_result[31]_i_4_n_0 ;
  wire \exmem_result[31]_i_5_n_0 ;
  wire \exmem_result[31]_i_6_n_0 ;
  wire \exmem_result[31]_i_7_n_0 ;
  wire \exmem_result[3]_i_10_n_0 ;
  wire \exmem_result[3]_i_11_n_0 ;
  wire \exmem_result[3]_i_12_n_0 ;
  wire \exmem_result[3]_i_13_n_0 ;
  wire \exmem_result[3]_i_14_n_0 ;
  wire \exmem_result[3]_i_15_n_0 ;
  wire \exmem_result[3]_i_16_n_0 ;
  wire \exmem_result[3]_i_1_n_0 ;
  wire \exmem_result[3]_i_2_n_0 ;
  wire \exmem_result[3]_i_3_n_0 ;
  wire \exmem_result[3]_i_4_n_0 ;
  wire \exmem_result[3]_i_5_n_0 ;
  wire \exmem_result[3]_i_6_n_0 ;
  wire \exmem_result[3]_i_9_n_0 ;
  wire \exmem_result[4]_i_1_n_0 ;
  wire \exmem_result[4]_i_2_n_0 ;
  wire \exmem_result[4]_i_3_n_0 ;
  wire \exmem_result[4]_i_4_n_0 ;
  wire \exmem_result[4]_i_5_n_0 ;
  wire \exmem_result[4]_i_6_n_0 ;
  wire \exmem_result[5]_i_1_n_0 ;
  wire \exmem_result[5]_i_2_n_0 ;
  wire \exmem_result[5]_i_3_n_0 ;
  wire \exmem_result[5]_i_4_n_0 ;
  wire \exmem_result[5]_i_5_n_0 ;
  wire \exmem_result[5]_i_6_n_0 ;
  wire \exmem_result[6]_i_1_n_0 ;
  wire \exmem_result[6]_i_2_n_0 ;
  wire \exmem_result[6]_i_3_n_0 ;
  wire \exmem_result[6]_i_4_n_0 ;
  wire \exmem_result[6]_i_5_n_0 ;
  wire \exmem_result[6]_i_6_n_0 ;
  wire \exmem_result[7]_i_10_n_0 ;
  wire \exmem_result[7]_i_11_n_0 ;
  wire \exmem_result[7]_i_12_n_0 ;
  wire \exmem_result[7]_i_13_n_0 ;
  wire \exmem_result[7]_i_14_n_0 ;
  wire \exmem_result[7]_i_15_n_0 ;
  wire \exmem_result[7]_i_16_n_0 ;
  wire \exmem_result[7]_i_17_n_0 ;
  wire \exmem_result[7]_i_18_n_0 ;
  wire \exmem_result[7]_i_19_n_0 ;
  wire \exmem_result[7]_i_1_n_0 ;
  wire \exmem_result[7]_i_20_n_0 ;
  wire \exmem_result[7]_i_21_n_0 ;
  wire \exmem_result[7]_i_22_n_0 ;
  wire \exmem_result[7]_i_23_n_0 ;
  wire \exmem_result[7]_i_24_n_0 ;
  wire \exmem_result[7]_i_25_n_0 ;
  wire \exmem_result[7]_i_26_n_0 ;
  wire \exmem_result[7]_i_27_n_0 ;
  wire \exmem_result[7]_i_28_n_0 ;
  wire \exmem_result[7]_i_2_n_0 ;
  wire \exmem_result[7]_i_3_n_0 ;
  wire \exmem_result[7]_i_4_n_0 ;
  wire \exmem_result[7]_i_5_n_0 ;
  wire \exmem_result[7]_i_6_n_0 ;
  wire \exmem_result[7]_i_7_n_0 ;
  wire \exmem_result[8]_i_1_n_0 ;
  wire \exmem_result[8]_i_2_n_0 ;
  wire \exmem_result[8]_i_3_n_0 ;
  wire \exmem_result[8]_i_4_n_0 ;
  wire \exmem_result[8]_i_6_n_0 ;
  wire \exmem_result[9]_i_1_n_0 ;
  wire \exmem_result[9]_i_2_n_0 ;
  wire \exmem_result[9]_i_3_n_0 ;
  wire \exmem_result[9]_i_4_n_0 ;
  wire \exmem_result[9]_i_5_n_0 ;
  wire \exmem_result[9]_i_6_n_0 ;
  wire \exmem_result[9]_i_7_n_0 ;
  wire \exmem_result_reg[0]_i_16_n_0 ;
  wire \exmem_result_reg[0]_i_16_n_1 ;
  wire \exmem_result_reg[0]_i_16_n_2 ;
  wire \exmem_result_reg[0]_i_16_n_3 ;
  wire \exmem_result_reg[0]_i_25_n_0 ;
  wire \exmem_result_reg[0]_i_25_n_1 ;
  wire \exmem_result_reg[0]_i_25_n_2 ;
  wire \exmem_result_reg[0]_i_25_n_3 ;
  wire \exmem_result_reg[0]_i_5_n_1 ;
  wire \exmem_result_reg[0]_i_5_n_2 ;
  wire \exmem_result_reg[0]_i_5_n_3 ;
  wire \exmem_result_reg[0]_i_7_n_0 ;
  wire \exmem_result_reg[0]_i_7_n_1 ;
  wire \exmem_result_reg[0]_i_7_n_2 ;
  wire \exmem_result_reg[0]_i_7_n_3 ;
  wire \exmem_result_reg[11]_i_7_n_0 ;
  wire \exmem_result_reg[11]_i_7_n_1 ;
  wire \exmem_result_reg[11]_i_7_n_2 ;
  wire \exmem_result_reg[11]_i_7_n_3 ;
  wire \exmem_result_reg[11]_i_8_n_0 ;
  wire \exmem_result_reg[11]_i_8_n_1 ;
  wire \exmem_result_reg[11]_i_8_n_2 ;
  wire \exmem_result_reg[11]_i_8_n_3 ;
  wire \exmem_result_reg[15]_i_7_n_0 ;
  wire \exmem_result_reg[15]_i_7_n_1 ;
  wire \exmem_result_reg[15]_i_7_n_2 ;
  wire \exmem_result_reg[15]_i_7_n_3 ;
  wire \exmem_result_reg[15]_i_8_n_0 ;
  wire \exmem_result_reg[15]_i_8_n_1 ;
  wire \exmem_result_reg[15]_i_8_n_2 ;
  wire \exmem_result_reg[15]_i_8_n_3 ;
  wire \exmem_result_reg[19]_i_7_n_0 ;
  wire \exmem_result_reg[19]_i_7_n_1 ;
  wire \exmem_result_reg[19]_i_7_n_2 ;
  wire \exmem_result_reg[19]_i_7_n_3 ;
  wire \exmem_result_reg[19]_i_8_n_0 ;
  wire \exmem_result_reg[19]_i_8_n_1 ;
  wire \exmem_result_reg[19]_i_8_n_2 ;
  wire \exmem_result_reg[19]_i_8_n_3 ;
  wire \exmem_result_reg[23]_i_7_n_0 ;
  wire \exmem_result_reg[23]_i_7_n_1 ;
  wire \exmem_result_reg[23]_i_7_n_2 ;
  wire \exmem_result_reg[23]_i_7_n_3 ;
  wire \exmem_result_reg[23]_i_8_n_0 ;
  wire \exmem_result_reg[23]_i_8_n_1 ;
  wire \exmem_result_reg[23]_i_8_n_2 ;
  wire \exmem_result_reg[23]_i_8_n_3 ;
  wire \exmem_result_reg[27]_i_7_n_0 ;
  wire \exmem_result_reg[27]_i_7_n_1 ;
  wire \exmem_result_reg[27]_i_7_n_2 ;
  wire \exmem_result_reg[27]_i_7_n_3 ;
  wire \exmem_result_reg[27]_i_8_n_0 ;
  wire \exmem_result_reg[27]_i_8_n_1 ;
  wire \exmem_result_reg[27]_i_8_n_2 ;
  wire \exmem_result_reg[27]_i_8_n_3 ;
  wire \exmem_result_reg[31]_i_8_n_1 ;
  wire \exmem_result_reg[31]_i_8_n_2 ;
  wire \exmem_result_reg[31]_i_8_n_3 ;
  wire \exmem_result_reg[31]_i_9_n_1 ;
  wire \exmem_result_reg[31]_i_9_n_2 ;
  wire \exmem_result_reg[31]_i_9_n_3 ;
  wire \exmem_result_reg[3]_i_7_n_0 ;
  wire \exmem_result_reg[3]_i_7_n_1 ;
  wire \exmem_result_reg[3]_i_7_n_2 ;
  wire \exmem_result_reg[3]_i_7_n_3 ;
  wire \exmem_result_reg[3]_i_8_n_0 ;
  wire \exmem_result_reg[3]_i_8_n_1 ;
  wire \exmem_result_reg[3]_i_8_n_2 ;
  wire \exmem_result_reg[3]_i_8_n_3 ;
  wire \exmem_result_reg[7]_i_8_n_0 ;
  wire \exmem_result_reg[7]_i_8_n_1 ;
  wire \exmem_result_reg[7]_i_8_n_2 ;
  wire \exmem_result_reg[7]_i_8_n_3 ;
  wire \exmem_result_reg[7]_i_9_n_0 ;
  wire \exmem_result_reg[7]_i_9_n_1 ;
  wire \exmem_result_reg[7]_i_9_n_2 ;
  wire \exmem_result_reg[7]_i_9_n_3 ;
  wire exmem_store;
  wire \exmem_target[0]_i_1_n_0 ;
  wire \exmem_target[12]_i_2_n_0 ;
  wire \exmem_target[12]_i_3_n_0 ;
  wire \exmem_target[12]_i_4_n_0 ;
  wire \exmem_target[12]_i_5_n_0 ;
  wire \exmem_target[12]_i_6_n_0 ;
  wire \exmem_target[12]_i_7_n_0 ;
  wire \exmem_target[12]_i_8_n_0 ;
  wire \exmem_target[12]_i_9_n_0 ;
  wire \exmem_target[16]_i_2_n_0 ;
  wire \exmem_target[16]_i_3_n_0 ;
  wire \exmem_target[16]_i_4_n_0 ;
  wire \exmem_target[16]_i_5_n_0 ;
  wire \exmem_target[16]_i_6_n_0 ;
  wire \exmem_target[16]_i_7_n_0 ;
  wire \exmem_target[16]_i_8_n_0 ;
  wire \exmem_target[16]_i_9_n_0 ;
  wire \exmem_target[1]_i_1_n_0 ;
  wire \exmem_target[20]_i_2_n_0 ;
  wire \exmem_target[20]_i_3_n_0 ;
  wire \exmem_target[20]_i_4_n_0 ;
  wire \exmem_target[20]_i_5_n_0 ;
  wire \exmem_target[20]_i_6_n_0 ;
  wire \exmem_target[20]_i_7_n_0 ;
  wire \exmem_target[20]_i_8_n_0 ;
  wire \exmem_target[20]_i_9_n_0 ;
  wire \exmem_target[24]_i_2_n_0 ;
  wire \exmem_target[24]_i_3_n_0 ;
  wire \exmem_target[24]_i_4_n_0 ;
  wire \exmem_target[24]_i_5_n_0 ;
  wire \exmem_target[24]_i_6_n_0 ;
  wire \exmem_target[24]_i_7_n_0 ;
  wire \exmem_target[24]_i_8_n_0 ;
  wire \exmem_target[24]_i_9_n_0 ;
  wire \exmem_target[28]_i_3_n_0 ;
  wire \exmem_target[28]_i_4_n_0 ;
  wire \exmem_target[28]_i_5_n_0 ;
  wire \exmem_target[28]_i_6_n_0 ;
  wire \exmem_target[28]_i_7_n_0 ;
  wire \exmem_target[28]_i_8_n_0 ;
  wire \exmem_target[28]_i_9_n_0 ;
  wire \exmem_target[31]_i_3_n_0 ;
  wire \exmem_target[31]_i_4_n_0 ;
  wire \exmem_target[31]_i_5_n_0 ;
  wire \exmem_target[4]_i_2_n_0 ;
  wire \exmem_target[4]_i_3_n_0 ;
  wire \exmem_target[4]_i_4_n_0 ;
  wire \exmem_target[4]_i_5_n_0 ;
  wire \exmem_target[4]_i_6_n_0 ;
  wire \exmem_target[4]_i_7_n_0 ;
  wire \exmem_target[4]_i_8_n_0 ;
  wire \exmem_target[8]_i_2_n_0 ;
  wire \exmem_target[8]_i_3_n_0 ;
  wire \exmem_target[8]_i_4_n_0 ;
  wire \exmem_target[8]_i_5_n_0 ;
  wire \exmem_target[8]_i_6_n_0 ;
  wire \exmem_target[8]_i_7_n_0 ;
  wire \exmem_target[8]_i_8_n_0 ;
  wire \exmem_target[8]_i_9_n_0 ;
  wire \exmem_target_reg[12]_i_1_n_0 ;
  wire \exmem_target_reg[12]_i_1_n_1 ;
  wire \exmem_target_reg[12]_i_1_n_2 ;
  wire \exmem_target_reg[12]_i_1_n_3 ;
  wire \exmem_target_reg[12]_i_1_n_4 ;
  wire \exmem_target_reg[12]_i_1_n_5 ;
  wire \exmem_target_reg[12]_i_1_n_6 ;
  wire \exmem_target_reg[12]_i_1_n_7 ;
  wire \exmem_target_reg[16]_i_1_n_0 ;
  wire \exmem_target_reg[16]_i_1_n_1 ;
  wire \exmem_target_reg[16]_i_1_n_2 ;
  wire \exmem_target_reg[16]_i_1_n_3 ;
  wire \exmem_target_reg[16]_i_1_n_4 ;
  wire \exmem_target_reg[16]_i_1_n_5 ;
  wire \exmem_target_reg[16]_i_1_n_6 ;
  wire \exmem_target_reg[16]_i_1_n_7 ;
  wire \exmem_target_reg[20]_i_1_n_0 ;
  wire \exmem_target_reg[20]_i_1_n_1 ;
  wire \exmem_target_reg[20]_i_1_n_2 ;
  wire \exmem_target_reg[20]_i_1_n_3 ;
  wire \exmem_target_reg[20]_i_1_n_4 ;
  wire \exmem_target_reg[20]_i_1_n_5 ;
  wire \exmem_target_reg[20]_i_1_n_6 ;
  wire \exmem_target_reg[20]_i_1_n_7 ;
  wire \exmem_target_reg[24]_i_1_n_0 ;
  wire \exmem_target_reg[24]_i_1_n_1 ;
  wire \exmem_target_reg[24]_i_1_n_2 ;
  wire \exmem_target_reg[24]_i_1_n_3 ;
  wire \exmem_target_reg[24]_i_1_n_4 ;
  wire \exmem_target_reg[24]_i_1_n_5 ;
  wire \exmem_target_reg[24]_i_1_n_6 ;
  wire \exmem_target_reg[24]_i_1_n_7 ;
  wire \exmem_target_reg[28]_i_1_n_0 ;
  wire \exmem_target_reg[28]_i_1_n_1 ;
  wire \exmem_target_reg[28]_i_1_n_2 ;
  wire \exmem_target_reg[28]_i_1_n_3 ;
  wire \exmem_target_reg[28]_i_1_n_4 ;
  wire \exmem_target_reg[28]_i_1_n_5 ;
  wire \exmem_target_reg[28]_i_1_n_6 ;
  wire \exmem_target_reg[28]_i_1_n_7 ;
  wire \exmem_target_reg[28]_i_2_n_0 ;
  wire \exmem_target_reg[28]_i_2_n_1 ;
  wire \exmem_target_reg[28]_i_2_n_2 ;
  wire \exmem_target_reg[28]_i_2_n_3 ;
  wire \exmem_target_reg[31]_i_1_n_2 ;
  wire \exmem_target_reg[31]_i_1_n_3 ;
  wire \exmem_target_reg[31]_i_1_n_5 ;
  wire \exmem_target_reg[31]_i_1_n_6 ;
  wire \exmem_target_reg[31]_i_1_n_7 ;
  wire \exmem_target_reg[31]_i_2_n_2 ;
  wire \exmem_target_reg[31]_i_2_n_3 ;
  wire \exmem_target_reg[4]_i_1_n_0 ;
  wire \exmem_target_reg[4]_i_1_n_1 ;
  wire \exmem_target_reg[4]_i_1_n_2 ;
  wire \exmem_target_reg[4]_i_1_n_3 ;
  wire \exmem_target_reg[4]_i_1_n_4 ;
  wire \exmem_target_reg[4]_i_1_n_5 ;
  wire \exmem_target_reg[4]_i_1_n_6 ;
  wire \exmem_target_reg[4]_i_1_n_7 ;
  wire \exmem_target_reg[8]_i_1_n_0 ;
  wire \exmem_target_reg[8]_i_1_n_1 ;
  wire \exmem_target_reg[8]_i_1_n_2 ;
  wire \exmem_target_reg[8]_i_1_n_3 ;
  wire \exmem_target_reg[8]_i_1_n_4 ;
  wire \exmem_target_reg[8]_i_1_n_5 ;
  wire \exmem_target_reg[8]_i_1_n_6 ;
  wire \exmem_target_reg[8]_i_1_n_7 ;
  wire exmem_valid_i_1_n_0;
  wire exmem_wen;
  wire exmem_wen_i_1_n_0;
  wire exmem_wen_i_2_n_0;
  wire exmem_wen_i_3_n_0;
  wire exmem_wen_i_4_n_0;
  wire exmem_wen_i_5_n_0;
  wire exmem_wen_i_6_n_0;
  wire exmem_wen_i_7_n_0;
  wire exmem_wen_i_8_n_0;
  wire exmem_wen_i_9_n_0;
  wire fail1;
  wire fail2;
  wire flush;
  wire icode_0;
  wire icode_1;
  wire icode_10;
  wire icode_2;
  wire icode_4;
  wire icode_5;
  wire icode_50;
  wire icode_7;
  wire icode_8;
  wire icode_9;
  wire [31:0]idex_PC;
  wire [2:0]idex_aluop;
  wire \idex_ctrl[0]_i_10_n_0 ;
  wire \idex_ctrl[0]_i_11_n_0 ;
  wire \idex_ctrl[0]_i_12_n_0 ;
  wire \idex_ctrl[0]_i_13_n_0 ;
  wire \idex_ctrl[0]_i_14_n_0 ;
  wire \idex_ctrl[0]_i_6_n_0 ;
  wire \idex_ctrl[0]_i_7_n_0 ;
  wire \idex_ctrl[0]_i_8_n_0 ;
  wire \idex_ctrl[0]_i_9_n_0 ;
  wire \idex_ctrl[5]_i_3_n_0 ;
  wire \idex_ctrl[5]_i_4_n_0 ;
  wire \idex_ctrl[5]_i_5_n_0 ;
  wire \idex_ctrl[6]_i_2_n_0 ;
  wire \idex_ctrl[6]_i_3_n_0 ;
  wire \idex_ctrl_reg_n_0_[0] ;
  wire \idex_ctrl_reg_n_0_[2] ;
  wire \idex_ctrl_reg_n_0_[4] ;
  wire \idex_ctrl_reg_n_0_[5] ;
  wire \idex_ctrl_reg_n_0_[6] ;
  wire \idex_inst_reg_n_0_[0] ;
  wire \idex_inst_reg_n_0_[11] ;
  wire \idex_inst_reg_n_0_[12] ;
  wire \idex_inst_reg_n_0_[13] ;
  wire \idex_inst_reg_n_0_[14] ;
  wire \idex_inst_reg_n_0_[1] ;
  wire \idex_inst_reg_n_0_[2] ;
  wire \idex_inst_reg_n_0_[3] ;
  wire \idex_inst_reg_n_0_[4] ;
  wire \idex_inst_reg_n_0_[5] ;
  wire [31:0]idex_predict_PC;
  wire idex_predict_jump;
  wire [4:0]idex_rd;
  wire [4:0]idex_rs;
  wire [31:0]idex_rsval;
  wire [31:0]idex_rsval2;
  wire idex_rsval20_in;
  wire idex_rsval3;
  wire \idex_rsval[0]_i_1_n_0 ;
  wire \idex_rsval[10]_i_1_n_0 ;
  wire \idex_rsval[11]_i_1_n_0 ;
  wire \idex_rsval[12]_i_1_n_0 ;
  wire \idex_rsval[13]_i_1_n_0 ;
  wire \idex_rsval[14]_i_1_n_0 ;
  wire \idex_rsval[15]_i_1_n_0 ;
  wire \idex_rsval[16]_i_1_n_0 ;
  wire \idex_rsval[17]_i_1_n_0 ;
  wire \idex_rsval[18]_i_1_n_0 ;
  wire \idex_rsval[19]_i_1_n_0 ;
  wire \idex_rsval[1]_i_1_n_0 ;
  wire \idex_rsval[20]_i_1_n_0 ;
  wire \idex_rsval[21]_i_1_n_0 ;
  wire \idex_rsval[22]_i_1_n_0 ;
  wire \idex_rsval[23]_i_1_n_0 ;
  wire \idex_rsval[24]_i_1_n_0 ;
  wire \idex_rsval[25]_i_1_n_0 ;
  wire \idex_rsval[26]_i_1_n_0 ;
  wire \idex_rsval[27]_i_1_n_0 ;
  wire \idex_rsval[28]_i_1_n_0 ;
  wire \idex_rsval[29]_i_1_n_0 ;
  wire \idex_rsval[2]_i_1_n_0 ;
  wire \idex_rsval[30]_i_1_n_0 ;
  wire \idex_rsval[31]_i_1_n_0 ;
  wire \idex_rsval[31]_i_4_n_0 ;
  wire \idex_rsval[3]_i_1_n_0 ;
  wire \idex_rsval[4]_i_1_n_0 ;
  wire \idex_rsval[5]_i_1_n_0 ;
  wire \idex_rsval[6]_i_1_n_0 ;
  wire \idex_rsval[7]_i_1_n_0 ;
  wire \idex_rsval[8]_i_1_n_0 ;
  wire \idex_rsval[9]_i_1_n_0 ;
  wire [4:0]idex_rt;
  wire [31:0]idex_rtval;
  wire [31:0]idex_rtval2;
  wire idex_rtval20_in;
  wire idex_rtval3;
  wire \idex_rtval[0]_i_1_n_0 ;
  wire \idex_rtval[10]_i_1_n_0 ;
  wire \idex_rtval[11]_i_1_n_0 ;
  wire \idex_rtval[12]_i_1_n_0 ;
  wire \idex_rtval[13]_i_1_n_0 ;
  wire \idex_rtval[14]_i_1_n_0 ;
  wire \idex_rtval[15]_i_1_n_0 ;
  wire \idex_rtval[16]_i_1_n_0 ;
  wire \idex_rtval[17]_i_1_n_0 ;
  wire \idex_rtval[18]_i_1_n_0 ;
  wire \idex_rtval[19]_i_1_n_0 ;
  wire \idex_rtval[1]_i_1_n_0 ;
  wire \idex_rtval[20]_i_1_n_0 ;
  wire \idex_rtval[21]_i_1_n_0 ;
  wire \idex_rtval[22]_i_1_n_0 ;
  wire \idex_rtval[23]_i_1_n_0 ;
  wire \idex_rtval[24]_i_1_n_0 ;
  wire \idex_rtval[25]_i_1_n_0 ;
  wire \idex_rtval[26]_i_1_n_0 ;
  wire \idex_rtval[27]_i_1_n_0 ;
  wire \idex_rtval[28]_i_1_n_0 ;
  wire \idex_rtval[29]_i_1_n_0 ;
  wire \idex_rtval[2]_i_1_n_0 ;
  wire \idex_rtval[30]_i_1_n_0 ;
  wire \idex_rtval[31]_i_1_n_0 ;
  wire \idex_rtval[31]_i_4_n_0 ;
  wire \idex_rtval[3]_i_1_n_0 ;
  wire \idex_rtval[4]_i_1_n_0 ;
  wire \idex_rtval[5]_i_1_n_0 ;
  wire \idex_rtval[6]_i_1_n_0 ;
  wire \idex_rtval[7]_i_1_n_0 ;
  wire \idex_rtval[8]_i_1_n_0 ;
  wire \idex_rtval[9]_i_1_n_0 ;
  wire idex_valid;
  wire idex_valid1;
  wire idex_valid_i_1_n_0;
  wire [31:0]ifid_PC;
  wire [31:0]ifid_predict_PC;
  wire ifid_predict_jump;
  wire ifid_valid;
  wire ifid_valid_i_1_n_0;
  wire ifid_wait3;
  wire ifid_wait30_out;
  wire inst_commit_en;
  wire [31:0]inst_sram_addr;
  wire [31:0]inst_sram_rdata;
  wire jump;
  wire jump1;
  wire jumpinst_en;
  wire jumpinst_fail_en;
  wire memwb_load;
  wire [31:0]memwb_result;
  wire [31:0]new_PC;
  wire p_0_in;
  wire p_0_in13_out;
  wire [4:0]p_0_in__0;
  wire p_1_in;
  wire p_2_in;
  wire [31:0]p_2_in__0;
  wire p_9_in;
  wire predict_en;
  wire predict_en_INST_0_i_1_n_0;
  wire predict_en_INST_0_i_6_n_0;
  wire predict_en_INST_0_i_7_n_0;
  wire predict_en_INST_0_i_8_n_0;
  wire predict_en_INST_0_i_9_n_0;
  wire predict_jump;
  wire [4:0]rd;
  wire real_rs1;
  wire real_rt1;
  wire [31:1]real_target;
  wire resetn;
  wire [30:0]srs;
  wire [31:31]srs__0;
  wire [31:0]upd_addr;
  wire upd_jump;
  wire [31:0]upd_target;
  wire write_rt;
  wire [3:3]\NLW_exmem_addr_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:3]NLW_exmem_flush_reg_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_exmem_flush_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_exmem_flush_reg_i_4_O_UNCONNECTED;
  wire [3:0]NLW_exmem_flush_reg_i_8_O_UNCONNECTED;
  wire [3:0]\NLW_exmem_flush_target_reg[31]_i_11_O_UNCONNECTED ;
  wire [3:2]\NLW_exmem_flush_target_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_exmem_flush_target_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_exmem_flush_target_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_exmem_flush_target_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_exmem_flush_target_reg[31]_i_7_O_UNCONNECTED ;
  wire [3:3]NLW_exmem_jumpinst_fail_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_exmem_jumpinst_fail_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_exmem_jumpinst_fail_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_exmem_jumpinst_fail_reg_i_7_O_UNCONNECTED;
  wire [3:0]\NLW_exmem_result_reg[0]_i_16_O_UNCONNECTED ;
  wire [3:0]\NLW_exmem_result_reg[0]_i_25_O_UNCONNECTED ;
  wire [3:0]\NLW_exmem_result_reg[0]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_exmem_result_reg[0]_i_7_O_UNCONNECTED ;
  wire [3:3]\NLW_exmem_result_reg[31]_i_8_CO_UNCONNECTED ;
  wire [3:3]\NLW_exmem_result_reg[31]_i_9_CO_UNCONNECTED ;
  wire [3:2]\NLW_exmem_target_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_exmem_target_reg[31]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_exmem_target_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_exmem_target_reg[31]_i_2_O_UNCONNECTED ;
  wire [1:0]NLW_regfile_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_regfile_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_regfile_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_regfile_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_regfile_reg_r1_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_regfile_reg_r1_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_regfile_reg_r1_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_regfile_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_regfile_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_regfile_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_regfile_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_regfile_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_regfile_reg_r2_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_regfile_reg_r2_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_regfile_reg_r2_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_regfile_reg_r2_0_31_6_11_DOD_UNCONNECTED;

  assign data_sram_wen[3] = \^data_sram_wen [0];
  assign data_sram_wen[2] = \^data_sram_wen [0];
  assign data_sram_wen[1] = \^data_sram_wen [0];
  assign data_sram_wen[0] = \^data_sram_wen [0];
  assign inst_sram_en = predict_en;
  assign inst_sram_wdata[31] = \<const0> ;
  assign inst_sram_wdata[30] = \<const0> ;
  assign inst_sram_wdata[29] = \<const0> ;
  assign inst_sram_wdata[28] = \<const0> ;
  assign inst_sram_wdata[27] = \<const0> ;
  assign inst_sram_wdata[26] = \<const0> ;
  assign inst_sram_wdata[25] = \<const0> ;
  assign inst_sram_wdata[24] = \<const0> ;
  assign inst_sram_wdata[23] = \<const0> ;
  assign inst_sram_wdata[22] = \<const0> ;
  assign inst_sram_wdata[21] = \<const0> ;
  assign inst_sram_wdata[20] = \<const0> ;
  assign inst_sram_wdata[19] = \<const0> ;
  assign inst_sram_wdata[18] = \<const0> ;
  assign inst_sram_wdata[17] = \<const0> ;
  assign inst_sram_wdata[16] = \<const0> ;
  assign inst_sram_wdata[15] = \<const0> ;
  assign inst_sram_wdata[14] = \<const0> ;
  assign inst_sram_wdata[13] = \<const0> ;
  assign inst_sram_wdata[12] = \<const0> ;
  assign inst_sram_wdata[11] = \<const0> ;
  assign inst_sram_wdata[10] = \<const0> ;
  assign inst_sram_wdata[9] = \<const0> ;
  assign inst_sram_wdata[8] = \<const0> ;
  assign inst_sram_wdata[7] = \<const0> ;
  assign inst_sram_wdata[6] = \<const0> ;
  assign inst_sram_wdata[5] = \<const0> ;
  assign inst_sram_wdata[4] = \<const0> ;
  assign inst_sram_wdata[3] = \<const0> ;
  assign inst_sram_wdata[2] = \<const0> ;
  assign inst_sram_wdata[1] = \<const0> ;
  assign inst_sram_wdata[0] = \<const0> ;
  assign inst_sram_wen[3] = \<const0> ;
  assign inst_sram_wen[2] = \<const0> ;
  assign inst_sram_wen[1] = \<const0> ;
  assign inst_sram_wen[0] = \<const0> ;
  assign old_PC[31:0] = inst_sram_addr;
  assign upd_en = inst_commit_en;
  assign upd_jumpinst = jumpinst_en;
  assign upd_predfail = jumpinst_fail_en;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[0]_i_1 
       (.I0(exmem_flush_target[0]),
        .I1(new_PC[0]),
        .I2(flush),
        .O(p_2_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[10]_i_1 
       (.I0(exmem_flush_target[10]),
        .I1(new_PC[10]),
        .I2(flush),
        .O(p_2_in__0[10]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[11]_i_1 
       (.I0(exmem_flush_target[11]),
        .I1(new_PC[11]),
        .I2(flush),
        .O(p_2_in__0[11]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[12]_i_1 
       (.I0(exmem_flush_target[12]),
        .I1(new_PC[12]),
        .I2(flush),
        .O(p_2_in__0[12]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[13]_i_1 
       (.I0(exmem_flush_target[13]),
        .I1(new_PC[13]),
        .I2(flush),
        .O(p_2_in__0[13]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[14]_i_1 
       (.I0(exmem_flush_target[14]),
        .I1(new_PC[14]),
        .I2(flush),
        .O(p_2_in__0[14]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[15]_i_1 
       (.I0(exmem_flush_target[15]),
        .I1(new_PC[15]),
        .I2(flush),
        .O(p_2_in__0[15]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[16]_i_1 
       (.I0(exmem_flush_target[16]),
        .I1(new_PC[16]),
        .I2(flush),
        .O(p_2_in__0[16]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[17]_i_1 
       (.I0(exmem_flush_target[17]),
        .I1(new_PC[17]),
        .I2(flush),
        .O(p_2_in__0[17]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[18]_i_1 
       (.I0(exmem_flush_target[18]),
        .I1(new_PC[18]),
        .I2(flush),
        .O(p_2_in__0[18]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[19]_i_1 
       (.I0(exmem_flush_target[19]),
        .I1(new_PC[19]),
        .I2(flush),
        .O(p_2_in__0[19]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[1]_i_1 
       (.I0(exmem_flush_target[1]),
        .I1(new_PC[1]),
        .I2(flush),
        .O(p_2_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[20]_i_1 
       (.I0(exmem_flush_target[20]),
        .I1(new_PC[20]),
        .I2(flush),
        .O(p_2_in__0[20]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[21]_i_1 
       (.I0(exmem_flush_target[21]),
        .I1(new_PC[21]),
        .I2(flush),
        .O(p_2_in__0[21]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[22]_i_1 
       (.I0(exmem_flush_target[22]),
        .I1(new_PC[22]),
        .I2(flush),
        .O(p_2_in__0[22]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[23]_i_1 
       (.I0(exmem_flush_target[23]),
        .I1(new_PC[23]),
        .I2(flush),
        .O(p_2_in__0[23]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[24]_i_1 
       (.I0(exmem_flush_target[24]),
        .I1(new_PC[24]),
        .I2(flush),
        .O(p_2_in__0[24]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[25]_i_1 
       (.I0(exmem_flush_target[25]),
        .I1(new_PC[25]),
        .I2(flush),
        .O(p_2_in__0[25]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[26]_i_1 
       (.I0(exmem_flush_target[26]),
        .I1(new_PC[26]),
        .I2(flush),
        .O(p_2_in__0[26]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[27]_i_1 
       (.I0(exmem_flush_target[27]),
        .I1(new_PC[27]),
        .I2(flush),
        .O(p_2_in__0[27]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[28]_i_1 
       (.I0(exmem_flush_target[28]),
        .I1(new_PC[28]),
        .I2(flush),
        .O(p_2_in__0[28]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[29]_i_1 
       (.I0(exmem_flush_target[29]),
        .I1(new_PC[29]),
        .I2(flush),
        .O(p_2_in__0[29]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[2]_i_1 
       (.I0(exmem_flush_target[2]),
        .I1(new_PC[2]),
        .I2(flush),
        .O(p_2_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[30]_i_1 
       (.I0(exmem_flush_target[30]),
        .I1(new_PC[30]),
        .I2(flush),
        .O(p_2_in__0[30]));
  LUT1 #(
    .INIT(2'h1)) 
    \PC[31]_i_1 
       (.I0(resetn),
        .O(\PC[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \PC[31]_i_2 
       (.I0(idex_valid),
        .I1(ifid_valid),
        .I2(predict_en_INST_0_i_1_n_0),
        .I3(flush),
        .O(\PC[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[31]_i_3 
       (.I0(exmem_flush_target[31]),
        .I1(new_PC[31]),
        .I2(flush),
        .O(p_2_in__0[31]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[3]_i_1 
       (.I0(exmem_flush_target[3]),
        .I1(new_PC[3]),
        .I2(flush),
        .O(p_2_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[4]_i_1 
       (.I0(exmem_flush_target[4]),
        .I1(new_PC[4]),
        .I2(flush),
        .O(p_2_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[5]_i_1 
       (.I0(exmem_flush_target[5]),
        .I1(new_PC[5]),
        .I2(flush),
        .O(p_2_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[6]_i_1 
       (.I0(exmem_flush_target[6]),
        .I1(new_PC[6]),
        .I2(flush),
        .O(p_2_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[7]_i_1 
       (.I0(exmem_flush_target[7]),
        .I1(new_PC[7]),
        .I2(flush),
        .O(p_2_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[8]_i_1 
       (.I0(exmem_flush_target[8]),
        .I1(new_PC[8]),
        .I2(flush),
        .O(p_2_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC[9]_i_1 
       (.I0(exmem_flush_target[9]),
        .I1(new_PC[9]),
        .I2(flush),
        .O(p_2_in__0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[0] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[0]),
        .Q(inst_sram_addr[0]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[10] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[10]),
        .Q(inst_sram_addr[10]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[11] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[11]),
        .Q(inst_sram_addr[11]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[12] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[12]),
        .Q(inst_sram_addr[12]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[13] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[13]),
        .Q(inst_sram_addr[13]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[14] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[14]),
        .Q(inst_sram_addr[14]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[15] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[15]),
        .Q(inst_sram_addr[15]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[16] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[16]),
        .Q(inst_sram_addr[16]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[17] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[17]),
        .Q(inst_sram_addr[17]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[18] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[18]),
        .Q(inst_sram_addr[18]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[19] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[19]),
        .Q(inst_sram_addr[19]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[1] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[1]),
        .Q(inst_sram_addr[1]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[20] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[20]),
        .Q(inst_sram_addr[20]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[21] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[21]),
        .Q(inst_sram_addr[21]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[22] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[22]),
        .Q(inst_sram_addr[22]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[23] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[23]),
        .Q(inst_sram_addr[23]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[24] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[24]),
        .Q(inst_sram_addr[24]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[25] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[25]),
        .Q(inst_sram_addr[25]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[26] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[26]),
        .Q(inst_sram_addr[26]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[27] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[27]),
        .Q(inst_sram_addr[27]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[28] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[28]),
        .Q(inst_sram_addr[28]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[29] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[29]),
        .Q(inst_sram_addr[29]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[2] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[2]),
        .Q(inst_sram_addr[2]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[30] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[30]),
        .Q(inst_sram_addr[30]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[31] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[31]),
        .Q(inst_sram_addr[31]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[3] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[3]),
        .Q(inst_sram_addr[3]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[4] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[4]),
        .Q(inst_sram_addr[4]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[5] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[5]),
        .Q(inst_sram_addr[5]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[6] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[6]),
        .Q(inst_sram_addr[6]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[7] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[7]),
        .Q(inst_sram_addr[7]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[8] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[8]),
        .Q(inst_sram_addr[8]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[9] 
       (.C(clk),
        .CE(\PC[31]_i_2_n_0 ),
        .D(p_2_in__0[9]),
        .Q(inst_sram_addr[9]),
        .R(\PC[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    data_sram_en_INST_0
       (.I0(inst_commit_en),
        .I1(exmem_store),
        .I2(exmem_load),
        .O(data_sram_en));
  LUT2 #(
    .INIT(4'h8)) 
    \data_sram_wen[0]_INST_0 
       (.I0(inst_commit_en),
        .I1(exmem_store),
        .O(\^data_sram_wen ));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[0]_INST_0 
       (.I0(data_sram_rdata[0]),
        .I1(memwb_result[0]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[10]_INST_0 
       (.I0(data_sram_rdata[10]),
        .I1(memwb_result[10]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[11]_INST_0 
       (.I0(data_sram_rdata[11]),
        .I1(memwb_result[11]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[12]_INST_0 
       (.I0(data_sram_rdata[12]),
        .I1(memwb_result[12]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[13]_INST_0 
       (.I0(data_sram_rdata[13]),
        .I1(memwb_result[13]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[14]_INST_0 
       (.I0(data_sram_rdata[14]),
        .I1(memwb_result[14]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[15]_INST_0 
       (.I0(data_sram_rdata[15]),
        .I1(memwb_result[15]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[16]_INST_0 
       (.I0(data_sram_rdata[16]),
        .I1(memwb_result[16]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[16]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[17]_INST_0 
       (.I0(data_sram_rdata[17]),
        .I1(memwb_result[17]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[17]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[18]_INST_0 
       (.I0(data_sram_rdata[18]),
        .I1(memwb_result[18]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[18]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[19]_INST_0 
       (.I0(data_sram_rdata[19]),
        .I1(memwb_result[19]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[19]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[1]_INST_0 
       (.I0(data_sram_rdata[1]),
        .I1(memwb_result[1]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[20]_INST_0 
       (.I0(data_sram_rdata[20]),
        .I1(memwb_result[20]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[20]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[21]_INST_0 
       (.I0(data_sram_rdata[21]),
        .I1(memwb_result[21]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[21]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[22]_INST_0 
       (.I0(data_sram_rdata[22]),
        .I1(memwb_result[22]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[22]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[23]_INST_0 
       (.I0(data_sram_rdata[23]),
        .I1(memwb_result[23]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[23]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[24]_INST_0 
       (.I0(data_sram_rdata[24]),
        .I1(memwb_result[24]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[24]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[25]_INST_0 
       (.I0(data_sram_rdata[25]),
        .I1(memwb_result[25]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[25]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[26]_INST_0 
       (.I0(data_sram_rdata[26]),
        .I1(memwb_result[26]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[26]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[27]_INST_0 
       (.I0(data_sram_rdata[27]),
        .I1(memwb_result[27]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[27]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[28]_INST_0 
       (.I0(data_sram_rdata[28]),
        .I1(memwb_result[28]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[28]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[29]_INST_0 
       (.I0(data_sram_rdata[29]),
        .I1(memwb_result[29]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[29]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[2]_INST_0 
       (.I0(data_sram_rdata[2]),
        .I1(memwb_result[2]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[30]_INST_0 
       (.I0(data_sram_rdata[30]),
        .I1(memwb_result[30]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[30]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[31]_INST_0 
       (.I0(data_sram_rdata[31]),
        .I1(memwb_result[31]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[31]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[3]_INST_0 
       (.I0(data_sram_rdata[3]),
        .I1(memwb_result[3]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[4]_INST_0 
       (.I0(data_sram_rdata[4]),
        .I1(memwb_result[4]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[5]_INST_0 
       (.I0(data_sram_rdata[5]),
        .I1(memwb_result[5]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[6]_INST_0 
       (.I0(data_sram_rdata[6]),
        .I1(memwb_result[6]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[7]_INST_0 
       (.I0(data_sram_rdata[7]),
        .I1(memwb_result[7]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[8]_INST_0 
       (.I0(data_sram_rdata[8]),
        .I1(memwb_result[8]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    \debug_wb_rf_wdata[9]_INST_0 
       (.I0(data_sram_rdata[9]),
        .I1(memwb_result[9]),
        .I2(memwb_load),
        .O(debug_wb_rf_wdata[9]));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[0]),
        .Q(upd_addr[0]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[10]),
        .Q(upd_addr[10]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[11]),
        .Q(upd_addr[11]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[12]),
        .Q(upd_addr[12]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[13]),
        .Q(upd_addr[13]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[14]),
        .Q(upd_addr[14]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[15]),
        .Q(upd_addr[15]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[16]),
        .Q(upd_addr[16]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[17]),
        .Q(upd_addr[17]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[18]),
        .Q(upd_addr[18]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[19]),
        .Q(upd_addr[19]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[1]),
        .Q(upd_addr[1]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[20]),
        .Q(upd_addr[20]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[21]),
        .Q(upd_addr[21]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[22]),
        .Q(upd_addr[22]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[23]),
        .Q(upd_addr[23]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[24]),
        .Q(upd_addr[24]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[25]),
        .Q(upd_addr[25]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[26]),
        .Q(upd_addr[26]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[27]),
        .Q(upd_addr[27]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[28]),
        .Q(upd_addr[28]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[29]),
        .Q(upd_addr[29]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[2]),
        .Q(upd_addr[2]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[30]),
        .Q(upd_addr[30]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[31]),
        .Q(upd_addr[31]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[3]),
        .Q(upd_addr[3]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[4]),
        .Q(upd_addr[4]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[5]),
        .Q(upd_addr[5]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[6]),
        .Q(upd_addr[6]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[7]),
        .Q(upd_addr[7]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[8]),
        .Q(upd_addr[8]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_PC_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_PC[9]),
        .Q(upd_addr[9]),
        .R(\PC[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_addr[11]_i_2 
       (.I0(srs[11]),
        .I1(\idex_inst_reg_n_0_[11] ),
        .O(\exmem_addr[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_addr[11]_i_3 
       (.I0(srs[10]),
        .I1(p_0_in__0[4]),
        .O(\exmem_addr[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_addr[11]_i_4 
       (.I0(srs[9]),
        .I1(p_0_in__0[3]),
        .O(\exmem_addr[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_addr[11]_i_5 
       (.I0(srs[8]),
        .I1(p_0_in__0[2]),
        .O(\exmem_addr[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[11]_i_6 
       (.I0(data_sram_wdata[11]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[11]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[11]),
        .O(srs[11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[11]_i_7 
       (.I0(data_sram_wdata[10]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[10]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[10]),
        .O(srs[10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[11]_i_8 
       (.I0(data_sram_wdata[9]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[9]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[9]),
        .O(srs[9]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[11]_i_9 
       (.I0(data_sram_wdata[8]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[8]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[8]),
        .O(srs[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_addr[15]_i_2 
       (.I0(B0),
        .I1(srs[15]),
        .O(\exmem_addr[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_addr[15]_i_3 
       (.I0(srs[14]),
        .I1(\idex_inst_reg_n_0_[14] ),
        .O(\exmem_addr[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_addr[15]_i_4 
       (.I0(srs[13]),
        .I1(\idex_inst_reg_n_0_[13] ),
        .O(\exmem_addr[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_addr[15]_i_5 
       (.I0(srs[12]),
        .I1(\idex_inst_reg_n_0_[12] ),
        .O(\exmem_addr[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[15]_i_6 
       (.I0(data_sram_wdata[15]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[15]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[15]),
        .O(srs[15]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[15]_i_7 
       (.I0(data_sram_wdata[14]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[14]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[14]),
        .O(srs[14]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[15]_i_8 
       (.I0(data_sram_wdata[13]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[13]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[13]),
        .O(srs[13]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[15]_i_9 
       (.I0(data_sram_wdata[12]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[12]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[12]),
        .O(srs[12]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[19]_i_2 
       (.I0(data_sram_wdata[18]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[18]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[18]),
        .O(srs[18]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[19]_i_3 
       (.I0(data_sram_wdata[17]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[17]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[17]),
        .O(srs[17]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[19]_i_4 
       (.I0(data_sram_wdata[16]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[16]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[16]),
        .O(srs[16]));
  LUT1 #(
    .INIT(2'h1)) 
    \exmem_addr[19]_i_5 
       (.I0(B0),
        .O(\exmem_addr[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_addr[19]_i_6 
       (.I0(srs[18]),
        .I1(srs[19]),
        .O(\exmem_addr[19]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_addr[19]_i_7 
       (.I0(srs[17]),
        .I1(srs[18]),
        .O(\exmem_addr[19]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_addr[19]_i_8 
       (.I0(srs[16]),
        .I1(srs[17]),
        .O(\exmem_addr[19]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_addr[19]_i_9 
       (.I0(B0),
        .I1(srs[16]),
        .O(\exmem_addr[19]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[23]_i_2 
       (.I0(data_sram_wdata[22]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[22]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[22]),
        .O(srs[22]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[23]_i_3 
       (.I0(data_sram_wdata[21]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[21]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[21]),
        .O(srs[21]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[23]_i_4 
       (.I0(data_sram_wdata[20]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[20]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[20]),
        .O(srs[20]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[23]_i_5 
       (.I0(data_sram_wdata[19]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[19]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[19]),
        .O(srs[19]));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_addr[23]_i_6 
       (.I0(srs[22]),
        .I1(srs[23]),
        .O(\exmem_addr[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_addr[23]_i_7 
       (.I0(srs[21]),
        .I1(srs[22]),
        .O(\exmem_addr[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_addr[23]_i_8 
       (.I0(srs[20]),
        .I1(srs[21]),
        .O(\exmem_addr[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_addr[23]_i_9 
       (.I0(srs[19]),
        .I1(srs[20]),
        .O(\exmem_addr[23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[27]_i_2 
       (.I0(data_sram_wdata[26]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[26]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[26]),
        .O(srs[26]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[27]_i_3 
       (.I0(data_sram_wdata[25]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[25]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[25]),
        .O(srs[25]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[27]_i_4 
       (.I0(data_sram_wdata[24]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[24]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[24]),
        .O(srs[24]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[27]_i_5 
       (.I0(data_sram_wdata[23]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[23]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[23]),
        .O(srs[23]));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_addr[27]_i_6 
       (.I0(srs[26]),
        .I1(srs[27]),
        .O(\exmem_addr[27]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_addr[27]_i_7 
       (.I0(srs[25]),
        .I1(srs[26]),
        .O(\exmem_addr[27]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_addr[27]_i_8 
       (.I0(srs[24]),
        .I1(srs[25]),
        .O(\exmem_addr[27]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_addr[27]_i_9 
       (.I0(srs[23]),
        .I1(srs[24]),
        .O(\exmem_addr[27]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8200000000008200)) 
    \exmem_addr[31]_i_10 
       (.I0(debug_wb_rf_wen),
        .I1(debug_wb_rf_wnum[4]),
        .I2(idex_rs[4]),
        .I3(\exmem_addr[31]_i_14_n_0 ),
        .I4(idex_rs[3]),
        .I5(debug_wb_rf_wnum[3]),
        .O(\exmem_addr[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[31]_i_11 
       (.I0(data_sram_wdata[30]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[30]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[30]),
        .O(srs[30]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[31]_i_12 
       (.I0(data_sram_wdata[31]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[31]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[31]),
        .O(srs__0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \exmem_addr[31]_i_13 
       (.I0(exmem_rd[0]),
        .I1(idex_rs[0]),
        .I2(idex_rs[2]),
        .I3(exmem_rd[2]),
        .I4(idex_rs[1]),
        .I5(exmem_rd[1]),
        .O(\exmem_addr[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \exmem_addr[31]_i_14 
       (.I0(debug_wb_rf_wnum[0]),
        .I1(idex_rs[0]),
        .I2(idex_rs[2]),
        .I3(debug_wb_rf_wnum[2]),
        .I4(idex_rs[1]),
        .I5(debug_wb_rf_wnum[1]),
        .O(\exmem_addr[31]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[31]_i_2 
       (.I0(data_sram_wdata[29]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[29]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[29]),
        .O(srs[29]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[31]_i_3 
       (.I0(data_sram_wdata[28]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[28]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[28]),
        .O(srs[28]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[31]_i_4 
       (.I0(data_sram_wdata[27]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[27]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[27]),
        .O(srs[27]));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_addr[31]_i_5 
       (.I0(srs[30]),
        .I1(srs__0),
        .O(\exmem_addr[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_addr[31]_i_6 
       (.I0(srs[29]),
        .I1(srs[30]),
        .O(\exmem_addr[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_addr[31]_i_7 
       (.I0(srs[28]),
        .I1(srs[29]),
        .O(\exmem_addr[31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_addr[31]_i_8 
       (.I0(srs[27]),
        .I1(srs[28]),
        .O(\exmem_addr[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8200000000008200)) 
    \exmem_addr[31]_i_9 
       (.I0(p_9_in),
        .I1(exmem_rd[4]),
        .I2(idex_rs[4]),
        .I3(\exmem_addr[31]_i_13_n_0 ),
        .I4(idex_rs[3]),
        .I5(exmem_rd[3]),
        .O(real_rs1));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_addr[3]_i_2 
       (.I0(srs[3]),
        .I1(\idex_inst_reg_n_0_[3] ),
        .O(\exmem_addr[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_addr[3]_i_3 
       (.I0(srs[2]),
        .I1(\idex_inst_reg_n_0_[2] ),
        .O(\exmem_addr[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_addr[3]_i_4 
       (.I0(srs[1]),
        .I1(\idex_inst_reg_n_0_[1] ),
        .O(\exmem_addr[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_addr[3]_i_5 
       (.I0(srs[0]),
        .I1(\idex_inst_reg_n_0_[0] ),
        .O(\exmem_addr[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[3]_i_6 
       (.I0(data_sram_wdata[3]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[3]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[3]),
        .O(srs[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[3]_i_7 
       (.I0(data_sram_wdata[2]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[2]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[2]),
        .O(srs[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[3]_i_8 
       (.I0(data_sram_wdata[1]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[1]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[1]),
        .O(srs[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[3]_i_9 
       (.I0(data_sram_wdata[0]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[0]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[0]),
        .O(srs[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_addr[7]_i_2 
       (.I0(srs[7]),
        .I1(p_0_in__0[1]),
        .O(\exmem_addr[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_addr[7]_i_3 
       (.I0(srs[6]),
        .I1(p_0_in__0[0]),
        .O(\exmem_addr[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_addr[7]_i_4 
       (.I0(srs[5]),
        .I1(\idex_inst_reg_n_0_[5] ),
        .O(\exmem_addr[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_addr[7]_i_5 
       (.I0(srs[4]),
        .I1(\idex_inst_reg_n_0_[4] ),
        .O(\exmem_addr[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[7]_i_6 
       (.I0(data_sram_wdata[7]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[7]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[7]),
        .O(srs[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[7]_i_7 
       (.I0(data_sram_wdata[6]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[6]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[6]),
        .O(srs[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[7]_i_8 
       (.I0(data_sram_wdata[5]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[5]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[5]),
        .O(srs[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_addr[7]_i_9 
       (.I0(data_sram_wdata[4]),
        .I1(real_rs1),
        .I2(debug_wb_rf_wdata[4]),
        .I3(\exmem_addr[31]_i_10_n_0 ),
        .I4(idex_rsval[4]),
        .O(srs[4]));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[0]),
        .Q(data_sram_addr[0]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[10]),
        .Q(data_sram_addr[10]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[11]),
        .Q(data_sram_addr[11]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_addr_reg[11]_i_1 
       (.CI(\exmem_addr_reg[7]_i_1_n_0 ),
        .CO({\exmem_addr_reg[11]_i_1_n_0 ,\exmem_addr_reg[11]_i_1_n_1 ,\exmem_addr_reg[11]_i_1_n_2 ,\exmem_addr_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\idex_inst_reg_n_0_[11] ,p_0_in__0[4:2]}),
        .O(addr[11:8]),
        .S({\exmem_addr[11]_i_2_n_0 ,\exmem_addr[11]_i_3_n_0 ,\exmem_addr[11]_i_4_n_0 ,\exmem_addr[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[12]),
        .Q(data_sram_addr[12]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[13]),
        .Q(data_sram_addr[13]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[14]),
        .Q(data_sram_addr[14]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[15]),
        .Q(data_sram_addr[15]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_addr_reg[15]_i_1 
       (.CI(\exmem_addr_reg[11]_i_1_n_0 ),
        .CO({\exmem_addr_reg[15]_i_1_n_0 ,\exmem_addr_reg[15]_i_1_n_1 ,\exmem_addr_reg[15]_i_1_n_2 ,\exmem_addr_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({B0,\idex_inst_reg_n_0_[14] ,\idex_inst_reg_n_0_[13] ,\idex_inst_reg_n_0_[12] }),
        .O(addr[15:12]),
        .S({\exmem_addr[15]_i_2_n_0 ,\exmem_addr[15]_i_3_n_0 ,\exmem_addr[15]_i_4_n_0 ,\exmem_addr[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[16]),
        .Q(data_sram_addr[16]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[17]),
        .Q(data_sram_addr[17]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[18]),
        .Q(data_sram_addr[18]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[19]),
        .Q(data_sram_addr[19]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_addr_reg[19]_i_1 
       (.CI(\exmem_addr_reg[15]_i_1_n_0 ),
        .CO({\exmem_addr_reg[19]_i_1_n_0 ,\exmem_addr_reg[19]_i_1_n_1 ,\exmem_addr_reg[19]_i_1_n_2 ,\exmem_addr_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({srs[18:16],\exmem_addr[19]_i_5_n_0 }),
        .O(addr[19:16]),
        .S({\exmem_addr[19]_i_6_n_0 ,\exmem_addr[19]_i_7_n_0 ,\exmem_addr[19]_i_8_n_0 ,\exmem_addr[19]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[1]),
        .Q(data_sram_addr[1]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[20]),
        .Q(data_sram_addr[20]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[21]),
        .Q(data_sram_addr[21]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[22]),
        .Q(data_sram_addr[22]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[23]),
        .Q(data_sram_addr[23]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_addr_reg[23]_i_1 
       (.CI(\exmem_addr_reg[19]_i_1_n_0 ),
        .CO({\exmem_addr_reg[23]_i_1_n_0 ,\exmem_addr_reg[23]_i_1_n_1 ,\exmem_addr_reg[23]_i_1_n_2 ,\exmem_addr_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(srs[22:19]),
        .O(addr[23:20]),
        .S({\exmem_addr[23]_i_6_n_0 ,\exmem_addr[23]_i_7_n_0 ,\exmem_addr[23]_i_8_n_0 ,\exmem_addr[23]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[24]),
        .Q(data_sram_addr[24]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[25]),
        .Q(data_sram_addr[25]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[26]),
        .Q(data_sram_addr[26]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[27]),
        .Q(data_sram_addr[27]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_addr_reg[27]_i_1 
       (.CI(\exmem_addr_reg[23]_i_1_n_0 ),
        .CO({\exmem_addr_reg[27]_i_1_n_0 ,\exmem_addr_reg[27]_i_1_n_1 ,\exmem_addr_reg[27]_i_1_n_2 ,\exmem_addr_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(srs[26:23]),
        .O(addr[27:24]),
        .S({\exmem_addr[27]_i_6_n_0 ,\exmem_addr[27]_i_7_n_0 ,\exmem_addr[27]_i_8_n_0 ,\exmem_addr[27]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[28]),
        .Q(data_sram_addr[28]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[29]),
        .Q(data_sram_addr[29]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[2]),
        .Q(data_sram_addr[2]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[30]),
        .Q(data_sram_addr[30]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[31]),
        .Q(data_sram_addr[31]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_addr_reg[31]_i_1 
       (.CI(\exmem_addr_reg[27]_i_1_n_0 ),
        .CO({\NLW_exmem_addr_reg[31]_i_1_CO_UNCONNECTED [3],\exmem_addr_reg[31]_i_1_n_1 ,\exmem_addr_reg[31]_i_1_n_2 ,\exmem_addr_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,srs[29:27]}),
        .O(addr[31:28]),
        .S({\exmem_addr[31]_i_5_n_0 ,\exmem_addr[31]_i_6_n_0 ,\exmem_addr[31]_i_7_n_0 ,\exmem_addr[31]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[3]),
        .Q(data_sram_addr[3]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_addr_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\exmem_addr_reg[3]_i_1_n_0 ,\exmem_addr_reg[3]_i_1_n_1 ,\exmem_addr_reg[3]_i_1_n_2 ,\exmem_addr_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\idex_inst_reg_n_0_[3] ,\idex_inst_reg_n_0_[2] ,\idex_inst_reg_n_0_[1] ,\idex_inst_reg_n_0_[0] }),
        .O(addr[3:0]),
        .S({\exmem_addr[3]_i_2_n_0 ,\exmem_addr[3]_i_3_n_0 ,\exmem_addr[3]_i_4_n_0 ,\exmem_addr[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[4]),
        .Q(data_sram_addr[4]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[5]),
        .Q(data_sram_addr[5]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[6]),
        .Q(data_sram_addr[6]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[7]),
        .Q(data_sram_addr[7]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_addr_reg[7]_i_1 
       (.CI(\exmem_addr_reg[3]_i_1_n_0 ),
        .CO({\exmem_addr_reg[7]_i_1_n_0 ,\exmem_addr_reg[7]_i_1_n_1 ,\exmem_addr_reg[7]_i_1_n_2 ,\exmem_addr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({p_0_in__0[1:0],\idex_inst_reg_n_0_[5] ,\idex_inst_reg_n_0_[4] }),
        .O(addr[7:4]),
        .S({\exmem_addr[7]_i_2_n_0 ,\exmem_addr[7]_i_3_n_0 ,\exmem_addr[7]_i_4_n_0 ,\exmem_addr[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[8]),
        .Q(data_sram_addr[8]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_addr_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(addr[9]),
        .Q(data_sram_addr[9]),
        .R(\PC[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000008A8A8A88)) 
    exmem_flush_i_1
       (.I0(idex_valid),
        .I1(exmem_flush_i_2_n_0),
        .I2(p_0_in),
        .I3(idex_predict_jump),
        .I4(fail2),
        .I5(flush),
        .O(exmem_flush_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    exmem_flush_i_10
       (.I0(idex_predict_PC[18]),
        .I1(A[18]),
        .I2(A[20]),
        .I3(idex_predict_PC[20]),
        .I4(A[19]),
        .I5(idex_predict_PC[19]),
        .O(exmem_flush_i_10_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    exmem_flush_i_11
       (.I0(idex_predict_PC[15]),
        .I1(A[15]),
        .I2(A[17]),
        .I3(idex_predict_PC[17]),
        .I4(A[16]),
        .I5(idex_predict_PC[16]),
        .O(exmem_flush_i_11_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    exmem_flush_i_12
       (.I0(idex_predict_PC[12]),
        .I1(A[12]),
        .I2(A[14]),
        .I3(idex_predict_PC[14]),
        .I4(A[13]),
        .I5(idex_predict_PC[13]),
        .O(exmem_flush_i_12_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    exmem_flush_i_13
       (.I0(idex_predict_PC[9]),
        .I1(A[9]),
        .I2(A[11]),
        .I3(idex_predict_PC[11]),
        .I4(A[10]),
        .I5(idex_predict_PC[10]),
        .O(exmem_flush_i_13_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    exmem_flush_i_14
       (.I0(idex_predict_PC[6]),
        .I1(A[6]),
        .I2(A[8]),
        .I3(idex_predict_PC[8]),
        .I4(A[7]),
        .I5(idex_predict_PC[7]),
        .O(exmem_flush_i_14_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    exmem_flush_i_15
       (.I0(idex_predict_PC[3]),
        .I1(A[3]),
        .I2(A[5]),
        .I3(idex_predict_PC[5]),
        .I4(A[4]),
        .I5(idex_predict_PC[4]),
        .O(exmem_flush_i_15_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    exmem_flush_i_16
       (.I0(idex_predict_PC[0]),
        .I1(idex_PC[0]),
        .I2(A[2]),
        .I3(idex_predict_PC[2]),
        .I4(A[1]),
        .I5(idex_predict_PC[1]),
        .O(exmem_flush_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFA25D5DFFA2)) 
    exmem_flush_i_2
       (.I0(p_0_in),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .I2(jump1),
        .I3(fail2),
        .I4(idex_predict_jump),
        .I5(fail1),
        .O(exmem_flush_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    exmem_flush_i_5
       (.I0(idex_predict_PC[30]),
        .I1(A[30]),
        .I2(idex_predict_PC[31]),
        .I3(A[31]),
        .O(exmem_flush_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    exmem_flush_i_6
       (.I0(idex_predict_PC[27]),
        .I1(A[27]),
        .I2(A[29]),
        .I3(idex_predict_PC[29]),
        .I4(A[28]),
        .I5(idex_predict_PC[28]),
        .O(exmem_flush_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    exmem_flush_i_7
       (.I0(idex_predict_PC[24]),
        .I1(A[24]),
        .I2(A[26]),
        .I3(idex_predict_PC[26]),
        .I4(A[25]),
        .I5(idex_predict_PC[25]),
        .O(exmem_flush_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    exmem_flush_i_9
       (.I0(idex_predict_PC[21]),
        .I1(A[21]),
        .I2(A[23]),
        .I3(idex_predict_PC[23]),
        .I4(A[22]),
        .I5(idex_predict_PC[22]),
        .O(exmem_flush_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    exmem_flush_reg
       (.C(clk),
        .CE(1'b1),
        .D(exmem_flush_i_1_n_0),
        .Q(flush),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 exmem_flush_reg_i_3
       (.CI(exmem_flush_reg_i_4_n_0),
        .CO({NLW_exmem_flush_reg_i_3_CO_UNCONNECTED[3],fail2,exmem_flush_reg_i_3_n_2,exmem_flush_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_exmem_flush_reg_i_3_O_UNCONNECTED[3:0]),
        .S({1'b0,exmem_flush_i_5_n_0,exmem_flush_i_6_n_0,exmem_flush_i_7_n_0}));
  CARRY4 exmem_flush_reg_i_4
       (.CI(exmem_flush_reg_i_8_n_0),
        .CO({exmem_flush_reg_i_4_n_0,exmem_flush_reg_i_4_n_1,exmem_flush_reg_i_4_n_2,exmem_flush_reg_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_exmem_flush_reg_i_4_O_UNCONNECTED[3:0]),
        .S({exmem_flush_i_9_n_0,exmem_flush_i_10_n_0,exmem_flush_i_11_n_0,exmem_flush_i_12_n_0}));
  CARRY4 exmem_flush_reg_i_8
       (.CI(1'b0),
        .CO({exmem_flush_reg_i_8_n_0,exmem_flush_reg_i_8_n_1,exmem_flush_reg_i_8_n_2,exmem_flush_reg_i_8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_exmem_flush_reg_i_8_O_UNCONNECTED[3:0]),
        .S({exmem_flush_i_13_n_0,exmem_flush_i_14_n_0,exmem_flush_i_15_n_0,exmem_flush_i_16_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \exmem_flush_target[0]_i_1 
       (.I0(idex_PC[0]),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .I2(p_0_in),
        .O(\exmem_flush_target[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCCCF0F0F0F0)) 
    \exmem_flush_target[10]_i_1 
       (.I0(bnetarget[10]),
        .I1(p_0_in__0[2]),
        .I2(A[10]),
        .I3(jump1),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(\exmem_flush_target[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCCCF0F0F0F0)) 
    \exmem_flush_target[11]_i_1 
       (.I0(bnetarget[11]),
        .I1(p_0_in__0[3]),
        .I2(A[11]),
        .I3(jump1),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(\exmem_flush_target[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCCCF0F0F0F0)) 
    \exmem_flush_target[12]_i_1 
       (.I0(bnetarget[12]),
        .I1(p_0_in__0[4]),
        .I2(A[12]),
        .I3(jump1),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(\exmem_flush_target[12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_flush_target[12]_i_4 
       (.I0(A[12]),
        .I1(p_0_in__0[4]),
        .O(\exmem_flush_target[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_flush_target[12]_i_5 
       (.I0(A[11]),
        .I1(p_0_in__0[3]),
        .O(\exmem_flush_target[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_flush_target[12]_i_6 
       (.I0(A[10]),
        .I1(p_0_in__0[2]),
        .O(\exmem_flush_target[12]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_flush_target[12]_i_7 
       (.I0(A[9]),
        .I1(p_0_in__0[1]),
        .O(\exmem_flush_target[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCCCF0F0F0F0)) 
    \exmem_flush_target[13]_i_1 
       (.I0(bnetarget[13]),
        .I1(\idex_inst_reg_n_0_[11] ),
        .I2(A[13]),
        .I3(jump1),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(\exmem_flush_target[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCCCF0F0F0F0)) 
    \exmem_flush_target[14]_i_1 
       (.I0(bnetarget[14]),
        .I1(\idex_inst_reg_n_0_[12] ),
        .I2(A[14]),
        .I3(jump1),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(\exmem_flush_target[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCCCF0F0F0F0)) 
    \exmem_flush_target[15]_i_1 
       (.I0(bnetarget[15]),
        .I1(\idex_inst_reg_n_0_[13] ),
        .I2(A[15]),
        .I3(jump1),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(\exmem_flush_target[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCCCF0F0F0F0)) 
    \exmem_flush_target[16]_i_1 
       (.I0(bnetarget[16]),
        .I1(\idex_inst_reg_n_0_[14] ),
        .I2(A[16]),
        .I3(jump1),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(\exmem_flush_target[16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_flush_target[16]_i_4 
       (.I0(A[16]),
        .I1(\idex_inst_reg_n_0_[14] ),
        .O(\exmem_flush_target[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_flush_target[16]_i_5 
       (.I0(A[15]),
        .I1(\idex_inst_reg_n_0_[13] ),
        .O(\exmem_flush_target[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_flush_target[16]_i_6 
       (.I0(A[14]),
        .I1(\idex_inst_reg_n_0_[12] ),
        .O(\exmem_flush_target[16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_flush_target[16]_i_7 
       (.I0(A[13]),
        .I1(\idex_inst_reg_n_0_[11] ),
        .O(\exmem_flush_target[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCCCF0F0F0F0)) 
    \exmem_flush_target[17]_i_1 
       (.I0(bnetarget[17]),
        .I1(B0),
        .I2(A[17]),
        .I3(jump1),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(\exmem_flush_target[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCCCF0F0F0F0)) 
    \exmem_flush_target[18]_i_1 
       (.I0(bnetarget[18]),
        .I1(idex_rt[0]),
        .I2(A[18]),
        .I3(jump1),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(\exmem_flush_target[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCCCF0F0F0F0)) 
    \exmem_flush_target[19]_i_1 
       (.I0(bnetarget[19]),
        .I1(idex_rt[1]),
        .I2(A[19]),
        .I3(jump1),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(\exmem_flush_target[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAC00CCCC)) 
    \exmem_flush_target[1]_i_1 
       (.I0(bnetarget[1]),
        .I1(A[1]),
        .I2(jump1),
        .I3(\idex_ctrl_reg_n_0_[2] ),
        .I4(p_0_in),
        .O(\exmem_flush_target[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCCCF0F0F0F0)) 
    \exmem_flush_target[20]_i_1 
       (.I0(bnetarget[20]),
        .I1(idex_rt[2]),
        .I2(A[20]),
        .I3(jump1),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(\exmem_flush_target[20]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \exmem_flush_target[20]_i_4 
       (.I0(B0),
        .O(\exmem_flush_target[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_flush_target[20]_i_5 
       (.I0(A[19]),
        .I1(A[20]),
        .O(\exmem_flush_target[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_flush_target[20]_i_6 
       (.I0(A[18]),
        .I1(A[19]),
        .O(\exmem_flush_target[20]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_flush_target[20]_i_7 
       (.I0(B0),
        .I1(A[18]),
        .O(\exmem_flush_target[20]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_flush_target[20]_i_8 
       (.I0(B0),
        .I1(A[17]),
        .O(\exmem_flush_target[20]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCCCF0F0F0F0)) 
    \exmem_flush_target[21]_i_1 
       (.I0(bnetarget[21]),
        .I1(idex_rt[3]),
        .I2(A[21]),
        .I3(jump1),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(\exmem_flush_target[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCCCF0F0F0F0)) 
    \exmem_flush_target[22]_i_1 
       (.I0(bnetarget[22]),
        .I1(idex_rt[4]),
        .I2(A[22]),
        .I3(jump1),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(\exmem_flush_target[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCCCF0F0F0F0)) 
    \exmem_flush_target[23]_i_1 
       (.I0(bnetarget[23]),
        .I1(idex_rs[0]),
        .I2(A[23]),
        .I3(jump1),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(\exmem_flush_target[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCCCF0F0F0F0)) 
    \exmem_flush_target[24]_i_1 
       (.I0(bnetarget[24]),
        .I1(idex_rs[1]),
        .I2(A[24]),
        .I3(jump1),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(\exmem_flush_target[24]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_flush_target[24]_i_4 
       (.I0(A[23]),
        .I1(A[24]),
        .O(\exmem_flush_target[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_flush_target[24]_i_5 
       (.I0(A[22]),
        .I1(A[23]),
        .O(\exmem_flush_target[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_flush_target[24]_i_6 
       (.I0(A[21]),
        .I1(A[22]),
        .O(\exmem_flush_target[24]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_flush_target[24]_i_7 
       (.I0(A[20]),
        .I1(A[21]),
        .O(\exmem_flush_target[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCCCF0F0F0F0)) 
    \exmem_flush_target[25]_i_1 
       (.I0(bnetarget[25]),
        .I1(idex_rs[2]),
        .I2(A[25]),
        .I3(jump1),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(\exmem_flush_target[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCCCF0F0F0F0)) 
    \exmem_flush_target[26]_i_1 
       (.I0(bnetarget[26]),
        .I1(idex_rs[3]),
        .I2(A[26]),
        .I3(jump1),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(\exmem_flush_target[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCCCF0F0F0F0)) 
    \exmem_flush_target[27]_i_1 
       (.I0(bnetarget[27]),
        .I1(idex_rs[4]),
        .I2(A[27]),
        .I3(jump1),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(\exmem_flush_target[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \exmem_flush_target[28]_i_1 
       (.I0(bnetarget[28]),
        .I1(A[28]),
        .I2(jump1),
        .I3(\idex_ctrl_reg_n_0_[2] ),
        .I4(p_0_in),
        .O(\exmem_flush_target[28]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_flush_target[28]_i_3 
       (.I0(A[27]),
        .I1(A[28]),
        .O(\exmem_flush_target[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_flush_target[28]_i_4 
       (.I0(A[26]),
        .I1(A[27]),
        .O(\exmem_flush_target[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_flush_target[28]_i_5 
       (.I0(A[25]),
        .I1(A[26]),
        .O(\exmem_flush_target[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_flush_target[28]_i_6 
       (.I0(A[24]),
        .I1(A[25]),
        .O(\exmem_flush_target[28]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \exmem_flush_target[29]_i_1 
       (.I0(bnetarget[29]),
        .I1(A[29]),
        .I2(jump1),
        .I3(\idex_ctrl_reg_n_0_[2] ),
        .I4(p_0_in),
        .O(\exmem_flush_target[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCCCF0F0F0F0)) 
    \exmem_flush_target[2]_i_1 
       (.I0(bnetarget[2]),
        .I1(\idex_inst_reg_n_0_[0] ),
        .I2(A[2]),
        .I3(jump1),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(\exmem_flush_target[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \exmem_flush_target[30]_i_1 
       (.I0(bnetarget[30]),
        .I1(A[30]),
        .I2(jump1),
        .I3(\idex_ctrl_reg_n_0_[2] ),
        .I4(p_0_in),
        .O(\exmem_flush_target[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \exmem_flush_target[31]_i_1 
       (.I0(bnetarget[31]),
        .I1(A[31]),
        .I2(jump1),
        .I3(\idex_ctrl_reg_n_0_[2] ),
        .I4(p_0_in),
        .O(\exmem_flush_target[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \exmem_flush_target[31]_i_10 
       (.I0(\exmem_result[24]_i_4_n_0 ),
        .I1(srs[24]),
        .I2(srs[26]),
        .I3(\exmem_result[26]_i_4_n_0 ),
        .I4(srs[25]),
        .I5(\exmem_result[25]_i_4_n_0 ),
        .O(\exmem_flush_target[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \exmem_flush_target[31]_i_12 
       (.I0(\exmem_result[21]_i_4_n_0 ),
        .I1(srs[21]),
        .I2(srs[23]),
        .I3(\exmem_result[23]_i_4_n_0 ),
        .I4(srs[22]),
        .I5(\exmem_result[22]_i_4_n_0 ),
        .O(\exmem_flush_target[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \exmem_flush_target[31]_i_13 
       (.I0(\exmem_result[18]_i_4_n_0 ),
        .I1(srs[18]),
        .I2(srs[20]),
        .I3(\exmem_result[20]_i_4_n_0 ),
        .I4(srs[19]),
        .I5(\exmem_result[19]_i_4_n_0 ),
        .O(\exmem_flush_target[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \exmem_flush_target[31]_i_14 
       (.I0(\exmem_result[15]_i_4_n_0 ),
        .I1(srs[15]),
        .I2(srs[17]),
        .I3(\exmem_result[17]_i_4_n_0 ),
        .I4(srs[16]),
        .I5(\exmem_result[16]_i_4_n_0 ),
        .O(\exmem_flush_target[31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \exmem_flush_target[31]_i_15 
       (.I0(\exmem_result[12]_i_4_n_0 ),
        .I1(srs[12]),
        .I2(srs[14]),
        .I3(\exmem_result[14]_i_4_n_0 ),
        .I4(srs[13]),
        .I5(\exmem_result[13]_i_4_n_0 ),
        .O(\exmem_flush_target[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \exmem_flush_target[31]_i_16 
       (.I0(\exmem_result[9]_i_4_n_0 ),
        .I1(srs[9]),
        .I2(srs[11]),
        .I3(\exmem_result[11]_i_4_n_0 ),
        .I4(srs[10]),
        .I5(\exmem_result[10]_i_4_n_0 ),
        .O(\exmem_flush_target[31]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \exmem_flush_target[31]_i_17 
       (.I0(\exmem_result[6]_i_4_n_0 ),
        .I1(srs[6]),
        .I2(srs[8]),
        .I3(\exmem_result[8]_i_4_n_0 ),
        .I4(srs[7]),
        .I5(\exmem_result[7]_i_4_n_0 ),
        .O(\exmem_flush_target[31]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \exmem_flush_target[31]_i_18 
       (.I0(\exmem_result[3]_i_4_n_0 ),
        .I1(srs[3]),
        .I2(srs[5]),
        .I3(\exmem_result[5]_i_4_n_0 ),
        .I4(srs[4]),
        .I5(\exmem_result[4]_i_4_n_0 ),
        .O(\exmem_flush_target[31]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \exmem_flush_target[31]_i_19 
       (.I0(\exmem_result[0]_i_4_n_0 ),
        .I1(srs[0]),
        .I2(srs[2]),
        .I3(\exmem_result[2]_i_4_n_0 ),
        .I4(srs[1]),
        .I5(\exmem_result[1]_i_4_n_0 ),
        .O(\exmem_flush_target[31]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_flush_target[31]_i_4 
       (.I0(A[30]),
        .I1(A[31]),
        .O(\exmem_flush_target[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_flush_target[31]_i_5 
       (.I0(A[29]),
        .I1(A[30]),
        .O(\exmem_flush_target[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_flush_target[31]_i_6 
       (.I0(A[28]),
        .I1(A[29]),
        .O(\exmem_flush_target[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \exmem_flush_target[31]_i_8 
       (.I0(\exmem_result[30]_i_4_n_0 ),
        .I1(srs[30]),
        .I2(\exmem_result[31]_i_4_n_0 ),
        .I3(srs__0),
        .O(\exmem_flush_target[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \exmem_flush_target[31]_i_9 
       (.I0(\exmem_result[27]_i_4_n_0 ),
        .I1(srs[27]),
        .I2(srs[29]),
        .I3(\exmem_result[29]_i_4_n_0 ),
        .I4(srs[28]),
        .I5(\exmem_result[28]_i_4_n_0 ),
        .O(\exmem_flush_target[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCCCF0F0F0F0)) 
    \exmem_flush_target[3]_i_1 
       (.I0(bnetarget[3]),
        .I1(\idex_inst_reg_n_0_[1] ),
        .I2(A[3]),
        .I3(jump1),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(\exmem_flush_target[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCCCF0F0F0F0)) 
    \exmem_flush_target[4]_i_1 
       (.I0(bnetarget[4]),
        .I1(\idex_inst_reg_n_0_[2] ),
        .I2(A[4]),
        .I3(jump1),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(\exmem_flush_target[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_flush_target[4]_i_4 
       (.I0(A[4]),
        .I1(\idex_inst_reg_n_0_[2] ),
        .O(\exmem_flush_target[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_flush_target[4]_i_5 
       (.I0(A[3]),
        .I1(\idex_inst_reg_n_0_[1] ),
        .O(\exmem_flush_target[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_flush_target[4]_i_6 
       (.I0(A[2]),
        .I1(\idex_inst_reg_n_0_[0] ),
        .O(\exmem_flush_target[4]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \exmem_flush_target[4]_i_7 
       (.I0(idex_PC[2]),
        .O(\exmem_flush_target[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCCCF0F0F0F0)) 
    \exmem_flush_target[5]_i_1 
       (.I0(bnetarget[5]),
        .I1(\idex_inst_reg_n_0_[3] ),
        .I2(A[5]),
        .I3(jump1),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(\exmem_flush_target[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCCCF0F0F0F0)) 
    \exmem_flush_target[6]_i_1 
       (.I0(bnetarget[6]),
        .I1(\idex_inst_reg_n_0_[4] ),
        .I2(A[6]),
        .I3(jump1),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(\exmem_flush_target[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCCCF0F0F0F0)) 
    \exmem_flush_target[7]_i_1 
       (.I0(bnetarget[7]),
        .I1(\idex_inst_reg_n_0_[5] ),
        .I2(A[7]),
        .I3(jump1),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(\exmem_flush_target[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCCCF0F0F0F0)) 
    \exmem_flush_target[8]_i_1 
       (.I0(bnetarget[8]),
        .I1(p_0_in__0[0]),
        .I2(A[8]),
        .I3(jump1),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(\exmem_flush_target[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_flush_target[8]_i_4 
       (.I0(A[8]),
        .I1(p_0_in__0[0]),
        .O(\exmem_flush_target[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_flush_target[8]_i_5 
       (.I0(A[7]),
        .I1(\idex_inst_reg_n_0_[5] ),
        .O(\exmem_flush_target[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_flush_target[8]_i_6 
       (.I0(A[6]),
        .I1(\idex_inst_reg_n_0_[4] ),
        .O(\exmem_flush_target[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_flush_target[8]_i_7 
       (.I0(A[5]),
        .I1(\idex_inst_reg_n_0_[3] ),
        .O(\exmem_flush_target[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCCCF0F0F0F0)) 
    \exmem_flush_target[9]_i_1 
       (.I0(bnetarget[9]),
        .I1(p_0_in__0[1]),
        .I2(A[9]),
        .I3(jump1),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(\exmem_flush_target[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[0]_i_1_n_0 ),
        .Q(exmem_flush_target[0]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[10]_i_1_n_0 ),
        .Q(exmem_flush_target[10]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[11]_i_1_n_0 ),
        .Q(exmem_flush_target[11]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[12]_i_1_n_0 ),
        .Q(exmem_flush_target[12]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_flush_target_reg[12]_i_2 
       (.CI(\exmem_flush_target_reg[8]_i_2_n_0 ),
        .CO({\exmem_flush_target_reg[12]_i_2_n_0 ,\exmem_flush_target_reg[12]_i_2_n_1 ,\exmem_flush_target_reg[12]_i_2_n_2 ,\exmem_flush_target_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(A[12:9]),
        .O(bnetarget[12:9]),
        .S({\exmem_flush_target[12]_i_4_n_0 ,\exmem_flush_target[12]_i_5_n_0 ,\exmem_flush_target[12]_i_6_n_0 ,\exmem_flush_target[12]_i_7_n_0 }));
  CARRY4 \exmem_flush_target_reg[12]_i_3 
       (.CI(\exmem_flush_target_reg[8]_i_3_n_0 ),
        .CO({\exmem_flush_target_reg[12]_i_3_n_0 ,\exmem_flush_target_reg[12]_i_3_n_1 ,\exmem_flush_target_reg[12]_i_3_n_2 ,\exmem_flush_target_reg[12]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(A[12:9]),
        .S(idex_PC[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[13]_i_1_n_0 ),
        .Q(exmem_flush_target[13]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[14]_i_1_n_0 ),
        .Q(exmem_flush_target[14]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[15]_i_1_n_0 ),
        .Q(exmem_flush_target[15]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[16]_i_1_n_0 ),
        .Q(exmem_flush_target[16]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_flush_target_reg[16]_i_2 
       (.CI(\exmem_flush_target_reg[12]_i_2_n_0 ),
        .CO({\exmem_flush_target_reg[16]_i_2_n_0 ,\exmem_flush_target_reg[16]_i_2_n_1 ,\exmem_flush_target_reg[16]_i_2_n_2 ,\exmem_flush_target_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(A[16:13]),
        .O(bnetarget[16:13]),
        .S({\exmem_flush_target[16]_i_4_n_0 ,\exmem_flush_target[16]_i_5_n_0 ,\exmem_flush_target[16]_i_6_n_0 ,\exmem_flush_target[16]_i_7_n_0 }));
  CARRY4 \exmem_flush_target_reg[16]_i_3 
       (.CI(\exmem_flush_target_reg[12]_i_3_n_0 ),
        .CO({\exmem_flush_target_reg[16]_i_3_n_0 ,\exmem_flush_target_reg[16]_i_3_n_1 ,\exmem_flush_target_reg[16]_i_3_n_2 ,\exmem_flush_target_reg[16]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(A[16:13]),
        .S(idex_PC[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[17]_i_1_n_0 ),
        .Q(exmem_flush_target[17]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[18]_i_1_n_0 ),
        .Q(exmem_flush_target[18]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[19]_i_1_n_0 ),
        .Q(exmem_flush_target[19]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[1]_i_1_n_0 ),
        .Q(exmem_flush_target[1]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[20]_i_1_n_0 ),
        .Q(exmem_flush_target[20]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_flush_target_reg[20]_i_2 
       (.CI(\exmem_flush_target_reg[16]_i_2_n_0 ),
        .CO({\exmem_flush_target_reg[20]_i_2_n_0 ,\exmem_flush_target_reg[20]_i_2_n_1 ,\exmem_flush_target_reg[20]_i_2_n_2 ,\exmem_flush_target_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({A[19:18],\exmem_flush_target[20]_i_4_n_0 ,B0}),
        .O(bnetarget[20:17]),
        .S({\exmem_flush_target[20]_i_5_n_0 ,\exmem_flush_target[20]_i_6_n_0 ,\exmem_flush_target[20]_i_7_n_0 ,\exmem_flush_target[20]_i_8_n_0 }));
  CARRY4 \exmem_flush_target_reg[20]_i_3 
       (.CI(\exmem_flush_target_reg[16]_i_3_n_0 ),
        .CO({\exmem_flush_target_reg[20]_i_3_n_0 ,\exmem_flush_target_reg[20]_i_3_n_1 ,\exmem_flush_target_reg[20]_i_3_n_2 ,\exmem_flush_target_reg[20]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(A[20:17]),
        .S(idex_PC[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[21]_i_1_n_0 ),
        .Q(exmem_flush_target[21]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[22]_i_1_n_0 ),
        .Q(exmem_flush_target[22]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[23]_i_1_n_0 ),
        .Q(exmem_flush_target[23]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[24]_i_1_n_0 ),
        .Q(exmem_flush_target[24]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_flush_target_reg[24]_i_2 
       (.CI(\exmem_flush_target_reg[20]_i_2_n_0 ),
        .CO({\exmem_flush_target_reg[24]_i_2_n_0 ,\exmem_flush_target_reg[24]_i_2_n_1 ,\exmem_flush_target_reg[24]_i_2_n_2 ,\exmem_flush_target_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(A[23:20]),
        .O(bnetarget[24:21]),
        .S({\exmem_flush_target[24]_i_4_n_0 ,\exmem_flush_target[24]_i_5_n_0 ,\exmem_flush_target[24]_i_6_n_0 ,\exmem_flush_target[24]_i_7_n_0 }));
  CARRY4 \exmem_flush_target_reg[24]_i_3 
       (.CI(\exmem_flush_target_reg[20]_i_3_n_0 ),
        .CO({\exmem_flush_target_reg[24]_i_3_n_0 ,\exmem_flush_target_reg[24]_i_3_n_1 ,\exmem_flush_target_reg[24]_i_3_n_2 ,\exmem_flush_target_reg[24]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(A[24:21]),
        .S(idex_PC[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[25]_i_1_n_0 ),
        .Q(exmem_flush_target[25]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[26]_i_1_n_0 ),
        .Q(exmem_flush_target[26]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[27]_i_1_n_0 ),
        .Q(exmem_flush_target[27]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[28]_i_1_n_0 ),
        .Q(exmem_flush_target[28]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_flush_target_reg[28]_i_2 
       (.CI(\exmem_flush_target_reg[24]_i_2_n_0 ),
        .CO({\exmem_flush_target_reg[28]_i_2_n_0 ,\exmem_flush_target_reg[28]_i_2_n_1 ,\exmem_flush_target_reg[28]_i_2_n_2 ,\exmem_flush_target_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(A[27:24]),
        .O(bnetarget[28:25]),
        .S({\exmem_flush_target[28]_i_3_n_0 ,\exmem_flush_target[28]_i_4_n_0 ,\exmem_flush_target[28]_i_5_n_0 ,\exmem_flush_target[28]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[29]_i_1_n_0 ),
        .Q(exmem_flush_target[29]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[2]_i_1_n_0 ),
        .Q(exmem_flush_target[2]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[30]_i_1_n_0 ),
        .Q(exmem_flush_target[30]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[31]_i_1_n_0 ),
        .Q(exmem_flush_target[31]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_flush_target_reg[31]_i_11 
       (.CI(1'b0),
        .CO({\exmem_flush_target_reg[31]_i_11_n_0 ,\exmem_flush_target_reg[31]_i_11_n_1 ,\exmem_flush_target_reg[31]_i_11_n_2 ,\exmem_flush_target_reg[31]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_exmem_flush_target_reg[31]_i_11_O_UNCONNECTED [3:0]),
        .S({\exmem_flush_target[31]_i_16_n_0 ,\exmem_flush_target[31]_i_17_n_0 ,\exmem_flush_target[31]_i_18_n_0 ,\exmem_flush_target[31]_i_19_n_0 }));
  CARRY4 \exmem_flush_target_reg[31]_i_2 
       (.CI(\exmem_flush_target_reg[28]_i_2_n_0 ),
        .CO({\NLW_exmem_flush_target_reg[31]_i_2_CO_UNCONNECTED [3:2],\exmem_flush_target_reg[31]_i_2_n_2 ,\exmem_flush_target_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,A[29:28]}),
        .O({\NLW_exmem_flush_target_reg[31]_i_2_O_UNCONNECTED [3],bnetarget[31:29]}),
        .S({1'b0,\exmem_flush_target[31]_i_4_n_0 ,\exmem_flush_target[31]_i_5_n_0 ,\exmem_flush_target[31]_i_6_n_0 }));
  CARRY4 \exmem_flush_target_reg[31]_i_3 
       (.CI(\exmem_flush_target_reg[31]_i_7_n_0 ),
        .CO({\NLW_exmem_flush_target_reg[31]_i_3_CO_UNCONNECTED [3],jump1,\exmem_flush_target_reg[31]_i_3_n_2 ,\exmem_flush_target_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(\NLW_exmem_flush_target_reg[31]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,\exmem_flush_target[31]_i_8_n_0 ,\exmem_flush_target[31]_i_9_n_0 ,\exmem_flush_target[31]_i_10_n_0 }));
  CARRY4 \exmem_flush_target_reg[31]_i_7 
       (.CI(\exmem_flush_target_reg[31]_i_11_n_0 ),
        .CO({\exmem_flush_target_reg[31]_i_7_n_0 ,\exmem_flush_target_reg[31]_i_7_n_1 ,\exmem_flush_target_reg[31]_i_7_n_2 ,\exmem_flush_target_reg[31]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_exmem_flush_target_reg[31]_i_7_O_UNCONNECTED [3:0]),
        .S({\exmem_flush_target[31]_i_12_n_0 ,\exmem_flush_target[31]_i_13_n_0 ,\exmem_flush_target[31]_i_14_n_0 ,\exmem_flush_target[31]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[3]_i_1_n_0 ),
        .Q(exmem_flush_target[3]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[4]_i_1_n_0 ),
        .Q(exmem_flush_target[4]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_flush_target_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\exmem_flush_target_reg[4]_i_2_n_0 ,\exmem_flush_target_reg[4]_i_2_n_1 ,\exmem_flush_target_reg[4]_i_2_n_2 ,\exmem_flush_target_reg[4]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({A[4:2],1'b0}),
        .O(bnetarget[4:1]),
        .S({\exmem_flush_target[4]_i_4_n_0 ,\exmem_flush_target[4]_i_5_n_0 ,\exmem_flush_target[4]_i_6_n_0 ,A[1]}));
  CARRY4 \exmem_flush_target_reg[4]_i_3 
       (.CI(1'b0),
        .CO({\exmem_flush_target_reg[4]_i_3_n_0 ,\exmem_flush_target_reg[4]_i_3_n_1 ,\exmem_flush_target_reg[4]_i_3_n_2 ,\exmem_flush_target_reg[4]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,idex_PC[2],1'b0}),
        .O(A[4:1]),
        .S({idex_PC[4:3],\exmem_flush_target[4]_i_7_n_0 ,idex_PC[1]}));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[5]_i_1_n_0 ),
        .Q(exmem_flush_target[5]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[6]_i_1_n_0 ),
        .Q(exmem_flush_target[6]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[7]_i_1_n_0 ),
        .Q(exmem_flush_target[7]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[8]_i_1_n_0 ),
        .Q(exmem_flush_target[8]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_flush_target_reg[8]_i_2 
       (.CI(\exmem_flush_target_reg[4]_i_2_n_0 ),
        .CO({\exmem_flush_target_reg[8]_i_2_n_0 ,\exmem_flush_target_reg[8]_i_2_n_1 ,\exmem_flush_target_reg[8]_i_2_n_2 ,\exmem_flush_target_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(A[8:5]),
        .O(bnetarget[8:5]),
        .S({\exmem_flush_target[8]_i_4_n_0 ,\exmem_flush_target[8]_i_5_n_0 ,\exmem_flush_target[8]_i_6_n_0 ,\exmem_flush_target[8]_i_7_n_0 }));
  CARRY4 \exmem_flush_target_reg[8]_i_3 
       (.CI(\exmem_flush_target_reg[4]_i_3_n_0 ),
        .CO({\exmem_flush_target_reg[8]_i_3_n_0 ,\exmem_flush_target_reg[8]_i_3_n_1 ,\exmem_flush_target_reg[8]_i_3_n_2 ,\exmem_flush_target_reg[8]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(A[8:5]),
        .S(idex_PC[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_flush_target_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_flush_target[9]_i_1_n_0 ),
        .Q(exmem_flush_target[9]),
        .R(\PC[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hA2)) 
    exmem_jump_i_1
       (.I0(p_0_in),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .I2(jump1),
        .O(jump));
  FDRE #(
    .INIT(1'b0)) 
    exmem_jump_reg
       (.C(clk),
        .CE(1'b1),
        .D(jump),
        .Q(exmem_jump),
        .R(\PC[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBFCBBBB00000000)) 
    exmem_jumpinst_fail_i_1
       (.I0(fail1),
        .I1(idex_predict_jump),
        .I2(fail2),
        .I3(jump1),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(exmem_jumpinst_fail0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    exmem_jumpinst_fail_i_10
       (.I0(idex_predict_PC[15]),
        .I1(real_target[15]),
        .I2(real_target[17]),
        .I3(idex_predict_PC[17]),
        .I4(real_target[16]),
        .I5(idex_predict_PC[16]),
        .O(exmem_jumpinst_fail_i_10_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    exmem_jumpinst_fail_i_11
       (.I0(idex_predict_PC[12]),
        .I1(real_target[12]),
        .I2(real_target[14]),
        .I3(idex_predict_PC[14]),
        .I4(real_target[13]),
        .I5(idex_predict_PC[13]),
        .O(exmem_jumpinst_fail_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    exmem_jumpinst_fail_i_12
       (.I0(bnetarget[30]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(\idex_ctrl_reg_n_0_[2] ),
        .I4(A[30]),
        .O(real_target[30]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    exmem_jumpinst_fail_i_13
       (.I0(bnetarget[31]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(\idex_ctrl_reg_n_0_[2] ),
        .I4(A[31]),
        .O(real_target[31]));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    exmem_jumpinst_fail_i_14
       (.I0(bnetarget[27]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(A[27]),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(idex_rs[4]),
        .O(real_target[27]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    exmem_jumpinst_fail_i_15
       (.I0(bnetarget[29]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(\idex_ctrl_reg_n_0_[2] ),
        .I4(A[29]),
        .O(real_target[29]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    exmem_jumpinst_fail_i_16
       (.I0(bnetarget[28]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(\idex_ctrl_reg_n_0_[2] ),
        .I4(A[28]),
        .O(real_target[28]));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    exmem_jumpinst_fail_i_17
       (.I0(bnetarget[24]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(A[24]),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(idex_rs[1]),
        .O(real_target[24]));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    exmem_jumpinst_fail_i_18
       (.I0(bnetarget[26]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(A[26]),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(idex_rs[3]),
        .O(real_target[26]));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    exmem_jumpinst_fail_i_19
       (.I0(bnetarget[25]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(A[25]),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(idex_rs[2]),
        .O(real_target[25]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    exmem_jumpinst_fail_i_20
       (.I0(idex_predict_PC[9]),
        .I1(real_target[9]),
        .I2(real_target[11]),
        .I3(idex_predict_PC[11]),
        .I4(real_target[10]),
        .I5(idex_predict_PC[10]),
        .O(exmem_jumpinst_fail_i_20_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    exmem_jumpinst_fail_i_21
       (.I0(idex_predict_PC[6]),
        .I1(real_target[6]),
        .I2(real_target[8]),
        .I3(idex_predict_PC[8]),
        .I4(real_target[7]),
        .I5(idex_predict_PC[7]),
        .O(exmem_jumpinst_fail_i_21_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    exmem_jumpinst_fail_i_22
       (.I0(idex_predict_PC[3]),
        .I1(real_target[3]),
        .I2(real_target[5]),
        .I3(idex_predict_PC[5]),
        .I4(real_target[4]),
        .I5(idex_predict_PC[4]),
        .O(exmem_jumpinst_fail_i_22_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    exmem_jumpinst_fail_i_23
       (.I0(idex_predict_PC[0]),
        .I1(exmem_jumpinst_fail_i_45_n_0),
        .I2(real_target[2]),
        .I3(idex_predict_PC[2]),
        .I4(real_target[1]),
        .I5(idex_predict_PC[1]),
        .O(exmem_jumpinst_fail_i_23_n_0));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    exmem_jumpinst_fail_i_24
       (.I0(bnetarget[21]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(A[21]),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(idex_rt[3]),
        .O(real_target[21]));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    exmem_jumpinst_fail_i_25
       (.I0(bnetarget[23]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(A[23]),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(idex_rs[0]),
        .O(real_target[23]));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    exmem_jumpinst_fail_i_26
       (.I0(bnetarget[22]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(A[22]),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(idex_rt[4]),
        .O(real_target[22]));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    exmem_jumpinst_fail_i_27
       (.I0(bnetarget[18]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(A[18]),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(idex_rt[0]),
        .O(real_target[18]));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    exmem_jumpinst_fail_i_28
       (.I0(bnetarget[20]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(A[20]),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(idex_rt[2]),
        .O(real_target[20]));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    exmem_jumpinst_fail_i_29
       (.I0(bnetarget[19]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(A[19]),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(idex_rt[1]),
        .O(real_target[19]));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    exmem_jumpinst_fail_i_30
       (.I0(bnetarget[15]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(A[15]),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(\idex_inst_reg_n_0_[13] ),
        .O(real_target[15]));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    exmem_jumpinst_fail_i_31
       (.I0(bnetarget[17]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(A[17]),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(B0),
        .O(real_target[17]));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    exmem_jumpinst_fail_i_32
       (.I0(bnetarget[16]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(A[16]),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(\idex_inst_reg_n_0_[14] ),
        .O(real_target[16]));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    exmem_jumpinst_fail_i_33
       (.I0(bnetarget[12]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(A[12]),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in__0[4]),
        .O(real_target[12]));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    exmem_jumpinst_fail_i_34
       (.I0(bnetarget[14]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(A[14]),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(\idex_inst_reg_n_0_[12] ),
        .O(real_target[14]));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    exmem_jumpinst_fail_i_35
       (.I0(bnetarget[13]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(A[13]),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(\idex_inst_reg_n_0_[11] ),
        .O(real_target[13]));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    exmem_jumpinst_fail_i_36
       (.I0(bnetarget[9]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(A[9]),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in__0[1]),
        .O(real_target[9]));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    exmem_jumpinst_fail_i_37
       (.I0(bnetarget[11]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(A[11]),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in__0[3]),
        .O(real_target[11]));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    exmem_jumpinst_fail_i_38
       (.I0(bnetarget[10]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(A[10]),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in__0[2]),
        .O(real_target[10]));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    exmem_jumpinst_fail_i_39
       (.I0(bnetarget[6]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(A[6]),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(\idex_inst_reg_n_0_[4] ),
        .O(real_target[6]));
  LUT4 #(
    .INIT(16'h9009)) 
    exmem_jumpinst_fail_i_4
       (.I0(idex_predict_PC[30]),
        .I1(real_target[30]),
        .I2(idex_predict_PC[31]),
        .I3(real_target[31]),
        .O(exmem_jumpinst_fail_i_4_n_0));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    exmem_jumpinst_fail_i_40
       (.I0(bnetarget[8]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(A[8]),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(p_0_in__0[0]),
        .O(real_target[8]));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    exmem_jumpinst_fail_i_41
       (.I0(bnetarget[7]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(A[7]),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(\idex_inst_reg_n_0_[5] ),
        .O(real_target[7]));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    exmem_jumpinst_fail_i_42
       (.I0(bnetarget[3]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(A[3]),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(\idex_inst_reg_n_0_[1] ),
        .O(real_target[3]));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    exmem_jumpinst_fail_i_43
       (.I0(bnetarget[5]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(A[5]),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(\idex_inst_reg_n_0_[3] ),
        .O(real_target[5]));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    exmem_jumpinst_fail_i_44
       (.I0(bnetarget[4]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(A[4]),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(\idex_inst_reg_n_0_[2] ),
        .O(real_target[4]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    exmem_jumpinst_fail_i_45
       (.I0(\idex_ctrl_reg_n_0_[2] ),
        .I1(idex_PC[0]),
        .O(exmem_jumpinst_fail_i_45_n_0));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    exmem_jumpinst_fail_i_46
       (.I0(bnetarget[2]),
        .I1(p_0_in),
        .I2(jump1),
        .I3(A[2]),
        .I4(\idex_ctrl_reg_n_0_[2] ),
        .I5(\idex_inst_reg_n_0_[0] ),
        .O(real_target[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hE0A020A0)) 
    exmem_jumpinst_fail_i_47
       (.I0(A[1]),
        .I1(jump1),
        .I2(\idex_ctrl_reg_n_0_[2] ),
        .I3(p_0_in),
        .I4(bnetarget[1]),
        .O(real_target[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    exmem_jumpinst_fail_i_5
       (.I0(idex_predict_PC[27]),
        .I1(real_target[27]),
        .I2(real_target[29]),
        .I3(idex_predict_PC[29]),
        .I4(real_target[28]),
        .I5(idex_predict_PC[28]),
        .O(exmem_jumpinst_fail_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    exmem_jumpinst_fail_i_6
       (.I0(idex_predict_PC[24]),
        .I1(real_target[24]),
        .I2(real_target[26]),
        .I3(idex_predict_PC[26]),
        .I4(real_target[25]),
        .I5(idex_predict_PC[25]),
        .O(exmem_jumpinst_fail_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    exmem_jumpinst_fail_i_8
       (.I0(idex_predict_PC[21]),
        .I1(real_target[21]),
        .I2(real_target[23]),
        .I3(idex_predict_PC[23]),
        .I4(real_target[22]),
        .I5(idex_predict_PC[22]),
        .O(exmem_jumpinst_fail_i_8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    exmem_jumpinst_fail_i_9
       (.I0(idex_predict_PC[18]),
        .I1(real_target[18]),
        .I2(real_target[20]),
        .I3(idex_predict_PC[20]),
        .I4(real_target[19]),
        .I5(idex_predict_PC[19]),
        .O(exmem_jumpinst_fail_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    exmem_jumpinst_fail_reg
       (.C(clk),
        .CE(1'b1),
        .D(exmem_jumpinst_fail0),
        .Q(exmem_jumpinst_fail),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 exmem_jumpinst_fail_reg_i_2
       (.CI(exmem_jumpinst_fail_reg_i_3_n_0),
        .CO({NLW_exmem_jumpinst_fail_reg_i_2_CO_UNCONNECTED[3],fail1,exmem_jumpinst_fail_reg_i_2_n_2,exmem_jumpinst_fail_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_exmem_jumpinst_fail_reg_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,exmem_jumpinst_fail_i_4_n_0,exmem_jumpinst_fail_i_5_n_0,exmem_jumpinst_fail_i_6_n_0}));
  CARRY4 exmem_jumpinst_fail_reg_i_3
       (.CI(exmem_jumpinst_fail_reg_i_7_n_0),
        .CO({exmem_jumpinst_fail_reg_i_3_n_0,exmem_jumpinst_fail_reg_i_3_n_1,exmem_jumpinst_fail_reg_i_3_n_2,exmem_jumpinst_fail_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_exmem_jumpinst_fail_reg_i_3_O_UNCONNECTED[3:0]),
        .S({exmem_jumpinst_fail_i_8_n_0,exmem_jumpinst_fail_i_9_n_0,exmem_jumpinst_fail_i_10_n_0,exmem_jumpinst_fail_i_11_n_0}));
  CARRY4 exmem_jumpinst_fail_reg_i_7
       (.CI(1'b0),
        .CO({exmem_jumpinst_fail_reg_i_7_n_0,exmem_jumpinst_fail_reg_i_7_n_1,exmem_jumpinst_fail_reg_i_7_n_2,exmem_jumpinst_fail_reg_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_exmem_jumpinst_fail_reg_i_7_O_UNCONNECTED[3:0]),
        .S({exmem_jumpinst_fail_i_20_n_0,exmem_jumpinst_fail_i_21_n_0,exmem_jumpinst_fail_i_22_n_0,exmem_jumpinst_fail_i_23_n_0}));
  FDRE #(
    .INIT(1'b0)) 
    exmem_jumpinst_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(exmem_jumpinst),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    exmem_load_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(exmem_load),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_rd_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_rd[0]),
        .Q(exmem_rd[0]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_rd_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_rd[1]),
        .Q(exmem_rd[1]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_rd_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_rd[2]),
        .Q(exmem_rd[2]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_rd_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_rd[3]),
        .Q(exmem_rd[3]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_rd_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(idex_rd[4]),
        .Q(exmem_rd[4]),
        .R(\PC[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[0]_i_1 
       (.I0(\exmem_result[0]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[0]_i_3_n_0 ),
        .I3(\exmem_result[0]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \exmem_result[0]_i_10 
       (.I0(\exmem_result[26]_i_4_n_0 ),
        .I1(srs[26]),
        .I2(srs[27]),
        .I3(\exmem_result[27]_i_4_n_0 ),
        .O(\exmem_result[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \exmem_result[0]_i_11 
       (.I0(\exmem_result[24]_i_4_n_0 ),
        .I1(srs[24]),
        .I2(srs[25]),
        .I3(\exmem_result[25]_i_4_n_0 ),
        .O(\exmem_result[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \exmem_result[0]_i_12 
       (.I0(\exmem_result[30]_i_4_n_0 ),
        .I1(srs[30]),
        .I2(\exmem_result[31]_i_4_n_0 ),
        .I3(srs__0),
        .O(\exmem_result[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \exmem_result[0]_i_13 
       (.I0(\exmem_result[28]_i_4_n_0 ),
        .I1(srs[28]),
        .I2(\exmem_result[29]_i_4_n_0 ),
        .I3(srs[29]),
        .O(\exmem_result[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \exmem_result[0]_i_14 
       (.I0(\exmem_result[26]_i_4_n_0 ),
        .I1(srs[26]),
        .I2(\exmem_result[27]_i_4_n_0 ),
        .I3(srs[27]),
        .O(\exmem_result[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \exmem_result[0]_i_15 
       (.I0(\exmem_result[24]_i_4_n_0 ),
        .I1(srs[24]),
        .I2(\exmem_result[25]_i_4_n_0 ),
        .I3(srs[25]),
        .O(\exmem_result[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \exmem_result[0]_i_17 
       (.I0(\exmem_result[22]_i_4_n_0 ),
        .I1(srs[22]),
        .I2(srs[23]),
        .I3(\exmem_result[23]_i_4_n_0 ),
        .O(\exmem_result[0]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \exmem_result[0]_i_18 
       (.I0(\exmem_result[20]_i_4_n_0 ),
        .I1(srs[20]),
        .I2(srs[21]),
        .I3(\exmem_result[21]_i_4_n_0 ),
        .O(\exmem_result[0]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \exmem_result[0]_i_19 
       (.I0(\exmem_result[18]_i_4_n_0 ),
        .I1(srs[18]),
        .I2(srs[19]),
        .I3(\exmem_result[19]_i_4_n_0 ),
        .O(\exmem_result[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h004F0F4F0F4F0040)) 
    \exmem_result[0]_i_2 
       (.I0(p_0_in__0[0]),
        .I1(\exmem_result[1]_i_5_n_0 ),
        .I2(idex_aluop[1]),
        .I3(idex_aluop[0]),
        .I4(srs[0]),
        .I5(\exmem_result[0]_i_4_n_0 ),
        .O(\exmem_result[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \exmem_result[0]_i_20 
       (.I0(\exmem_result[16]_i_4_n_0 ),
        .I1(srs[16]),
        .I2(srs[17]),
        .I3(\exmem_result[17]_i_4_n_0 ),
        .O(\exmem_result[0]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \exmem_result[0]_i_21 
       (.I0(\exmem_result[22]_i_4_n_0 ),
        .I1(srs[22]),
        .I2(\exmem_result[23]_i_4_n_0 ),
        .I3(srs[23]),
        .O(\exmem_result[0]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \exmem_result[0]_i_22 
       (.I0(\exmem_result[20]_i_4_n_0 ),
        .I1(srs[20]),
        .I2(\exmem_result[21]_i_4_n_0 ),
        .I3(srs[21]),
        .O(\exmem_result[0]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \exmem_result[0]_i_23 
       (.I0(\exmem_result[18]_i_4_n_0 ),
        .I1(srs[18]),
        .I2(\exmem_result[19]_i_4_n_0 ),
        .I3(srs[19]),
        .O(\exmem_result[0]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \exmem_result[0]_i_24 
       (.I0(\exmem_result[16]_i_4_n_0 ),
        .I1(srs[16]),
        .I2(\exmem_result[17]_i_4_n_0 ),
        .I3(srs[17]),
        .O(\exmem_result[0]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \exmem_result[0]_i_26 
       (.I0(\exmem_result[14]_i_4_n_0 ),
        .I1(srs[14]),
        .I2(srs[15]),
        .I3(\exmem_result[15]_i_4_n_0 ),
        .O(\exmem_result[0]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \exmem_result[0]_i_27 
       (.I0(\exmem_result[12]_i_4_n_0 ),
        .I1(srs[12]),
        .I2(srs[13]),
        .I3(\exmem_result[13]_i_4_n_0 ),
        .O(\exmem_result[0]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \exmem_result[0]_i_28 
       (.I0(\exmem_result[10]_i_4_n_0 ),
        .I1(srs[10]),
        .I2(srs[11]),
        .I3(\exmem_result[11]_i_4_n_0 ),
        .O(\exmem_result[0]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \exmem_result[0]_i_29 
       (.I0(\exmem_result[8]_i_4_n_0 ),
        .I1(srs[8]),
        .I2(srs[9]),
        .I3(\exmem_result[9]_i_4_n_0 ),
        .O(\exmem_result[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \exmem_result[0]_i_3 
       (.I0(srs[0]),
        .I1(\exmem_result[0]_i_4_n_0 ),
        .I2(idex_aluop[0]),
        .I3(data2),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[0]_i_6_n_0 ),
        .O(\exmem_result[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \exmem_result[0]_i_30 
       (.I0(\exmem_result[14]_i_4_n_0 ),
        .I1(srs[14]),
        .I2(\exmem_result[15]_i_4_n_0 ),
        .I3(srs[15]),
        .O(\exmem_result[0]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \exmem_result[0]_i_31 
       (.I0(\exmem_result[12]_i_4_n_0 ),
        .I1(srs[12]),
        .I2(\exmem_result[13]_i_4_n_0 ),
        .I3(srs[13]),
        .O(\exmem_result[0]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \exmem_result[0]_i_32 
       (.I0(\exmem_result[10]_i_4_n_0 ),
        .I1(srs[10]),
        .I2(\exmem_result[11]_i_4_n_0 ),
        .I3(srs[11]),
        .O(\exmem_result[0]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \exmem_result[0]_i_33 
       (.I0(\exmem_result[8]_i_4_n_0 ),
        .I1(srs[8]),
        .I2(\exmem_result[9]_i_4_n_0 ),
        .I3(srs[9]),
        .O(\exmem_result[0]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \exmem_result[0]_i_34 
       (.I0(\exmem_result[6]_i_4_n_0 ),
        .I1(srs[6]),
        .I2(srs[7]),
        .I3(\exmem_result[7]_i_4_n_0 ),
        .O(\exmem_result[0]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \exmem_result[0]_i_35 
       (.I0(\exmem_result[4]_i_4_n_0 ),
        .I1(srs[4]),
        .I2(srs[5]),
        .I3(\exmem_result[5]_i_4_n_0 ),
        .O(\exmem_result[0]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \exmem_result[0]_i_36 
       (.I0(\exmem_result[2]_i_4_n_0 ),
        .I1(srs[2]),
        .I2(srs[3]),
        .I3(\exmem_result[3]_i_4_n_0 ),
        .O(\exmem_result[0]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \exmem_result[0]_i_37 
       (.I0(\exmem_result[0]_i_4_n_0 ),
        .I1(srs[0]),
        .I2(srs[1]),
        .I3(\exmem_result[1]_i_4_n_0 ),
        .O(\exmem_result[0]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \exmem_result[0]_i_38 
       (.I0(\exmem_result[6]_i_4_n_0 ),
        .I1(srs[6]),
        .I2(\exmem_result[7]_i_4_n_0 ),
        .I3(srs[7]),
        .O(\exmem_result[0]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \exmem_result[0]_i_39 
       (.I0(\exmem_result[4]_i_4_n_0 ),
        .I1(srs[4]),
        .I2(\exmem_result[5]_i_4_n_0 ),
        .I3(srs[5]),
        .O(\exmem_result[0]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[0]_i_4 
       (.I0(data_sram_wdata[0]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[0]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[0]),
        .O(\exmem_result[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \exmem_result[0]_i_40 
       (.I0(\exmem_result[2]_i_4_n_0 ),
        .I1(srs[2]),
        .I2(\exmem_result[3]_i_4_n_0 ),
        .I3(srs[3]),
        .O(\exmem_result[0]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \exmem_result[0]_i_41 
       (.I0(\exmem_result[0]_i_4_n_0 ),
        .I1(srs[0]),
        .I2(\exmem_result[1]_i_4_n_0 ),
        .I3(srs[1]),
        .O(\exmem_result[0]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \exmem_result[0]_i_6 
       (.I0(data1[0]),
        .I1(idex_aluop[0]),
        .I2(data0[0]),
        .O(\exmem_result[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \exmem_result[0]_i_8 
       (.I0(\exmem_result[30]_i_4_n_0 ),
        .I1(srs[30]),
        .I2(\exmem_result[31]_i_4_n_0 ),
        .I3(srs__0),
        .O(\exmem_result[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \exmem_result[0]_i_9 
       (.I0(\exmem_result[28]_i_4_n_0 ),
        .I1(srs[28]),
        .I2(srs[29]),
        .I3(\exmem_result[29]_i_4_n_0 ),
        .O(\exmem_result[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[10]_i_1 
       (.I0(\exmem_result[10]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[10]_i_3_n_0 ),
        .I3(\exmem_result[10]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[10]_i_2 
       (.I0(\exmem_result[11]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[10]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[10]_i_6_n_0 ),
        .O(\exmem_result[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[10]_i_3 
       (.I0(\exmem_result[10]_i_4_n_0 ),
        .I1(srs[10]),
        .I2(idex_aluop[1]),
        .I3(data1[10]),
        .I4(idex_aluop[0]),
        .I5(data0[10]),
        .O(\exmem_result[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[10]_i_4 
       (.I0(data_sram_wdata[10]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[10]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[10]),
        .O(\exmem_result[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \exmem_result[10]_i_5 
       (.I0(\exmem_result[10]_i_7_n_0 ),
        .I1(p_0_in__0[1]),
        .I2(\exmem_result[12]_i_7_n_0 ),
        .O(\exmem_result[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[10]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[10]),
        .I2(\exmem_result[10]_i_4_n_0 ),
        .O(\exmem_result[10]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \exmem_result[10]_i_7 
       (.I0(\exmem_result[3]_i_4_n_0 ),
        .I1(p_0_in__0[2]),
        .I2(p_0_in__0[4]),
        .I3(\exmem_result[7]_i_4_n_0 ),
        .I4(p_0_in__0[3]),
        .O(\exmem_result[10]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[11]_i_1 
       (.I0(\exmem_result[11]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[11]_i_3_n_0 ),
        .I3(\exmem_result[11]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[11]_i_10 
       (.I0(srs[11]),
        .I1(\exmem_result[11]_i_4_n_0 ),
        .O(\exmem_result[11]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[11]_i_11 
       (.I0(srs[10]),
        .I1(\exmem_result[10]_i_4_n_0 ),
        .O(\exmem_result[11]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[11]_i_12 
       (.I0(srs[9]),
        .I1(\exmem_result[9]_i_4_n_0 ),
        .O(\exmem_result[11]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[11]_i_13 
       (.I0(srs[8]),
        .I1(\exmem_result[8]_i_4_n_0 ),
        .O(\exmem_result[11]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[11]_i_14 
       (.I0(srs[11]),
        .I1(\exmem_result[11]_i_4_n_0 ),
        .O(\exmem_result[11]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[11]_i_15 
       (.I0(srs[10]),
        .I1(\exmem_result[10]_i_4_n_0 ),
        .O(\exmem_result[11]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[11]_i_16 
       (.I0(srs[9]),
        .I1(\exmem_result[9]_i_4_n_0 ),
        .O(\exmem_result[11]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[11]_i_17 
       (.I0(srs[8]),
        .I1(\exmem_result[8]_i_4_n_0 ),
        .O(\exmem_result[11]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[11]_i_2 
       (.I0(\exmem_result[12]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[11]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[11]_i_6_n_0 ),
        .O(\exmem_result[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[11]_i_3 
       (.I0(\exmem_result[11]_i_4_n_0 ),
        .I1(srs[11]),
        .I2(idex_aluop[1]),
        .I3(data1[11]),
        .I4(idex_aluop[0]),
        .I5(data0[11]),
        .O(\exmem_result[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[11]_i_4 
       (.I0(data_sram_wdata[11]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[11]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[11]),
        .O(\exmem_result[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \exmem_result[11]_i_5 
       (.I0(\exmem_result[11]_i_9_n_0 ),
        .I1(p_0_in__0[1]),
        .I2(\exmem_result[13]_i_7_n_0 ),
        .O(\exmem_result[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[11]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[11]),
        .I2(\exmem_result[11]_i_4_n_0 ),
        .O(\exmem_result[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \exmem_result[11]_i_9 
       (.I0(\exmem_result[4]_i_4_n_0 ),
        .I1(p_0_in__0[2]),
        .I2(\exmem_result[0]_i_4_n_0 ),
        .I3(p_0_in__0[3]),
        .I4(\exmem_result[8]_i_4_n_0 ),
        .I5(p_0_in__0[4]),
        .O(\exmem_result[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[12]_i_1 
       (.I0(\exmem_result[12]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[12]_i_3_n_0 ),
        .I3(\exmem_result[12]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[12]_i_2 
       (.I0(\exmem_result[13]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[12]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[12]_i_6_n_0 ),
        .O(\exmem_result[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[12]_i_3 
       (.I0(\exmem_result[12]_i_4_n_0 ),
        .I1(srs[12]),
        .I2(idex_aluop[1]),
        .I3(data1[12]),
        .I4(idex_aluop[0]),
        .I5(data0[12]),
        .O(\exmem_result[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[12]_i_4 
       (.I0(data_sram_wdata[12]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[12]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[12]),
        .O(\exmem_result[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \exmem_result[12]_i_5 
       (.I0(\exmem_result[12]_i_7_n_0 ),
        .I1(p_0_in__0[1]),
        .I2(\exmem_result[14]_i_7_n_0 ),
        .O(\exmem_result[12]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[12]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[12]),
        .I2(\exmem_result[12]_i_4_n_0 ),
        .O(\exmem_result[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \exmem_result[12]_i_7 
       (.I0(\exmem_result[5]_i_4_n_0 ),
        .I1(p_0_in__0[2]),
        .I2(\exmem_result[1]_i_4_n_0 ),
        .I3(p_0_in__0[3]),
        .I4(\exmem_result[9]_i_4_n_0 ),
        .I5(p_0_in__0[4]),
        .O(\exmem_result[12]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[13]_i_1 
       (.I0(\exmem_result[13]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[13]_i_3_n_0 ),
        .I3(\exmem_result[13]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[13]_i_2 
       (.I0(\exmem_result[14]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[13]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[13]_i_6_n_0 ),
        .O(\exmem_result[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[13]_i_3 
       (.I0(\exmem_result[13]_i_4_n_0 ),
        .I1(srs[13]),
        .I2(idex_aluop[1]),
        .I3(data1[13]),
        .I4(idex_aluop[0]),
        .I5(data0[13]),
        .O(\exmem_result[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[13]_i_4 
       (.I0(data_sram_wdata[13]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[13]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[13]),
        .O(\exmem_result[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[13]_i_5 
       (.I0(\exmem_result[13]_i_7_n_0 ),
        .I1(p_0_in__0[1]),
        .I2(\exmem_result[15]_i_9_n_0 ),
        .I3(p_0_in__0[2]),
        .I4(\exmem_result[19]_i_9_n_0 ),
        .O(\exmem_result[13]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[13]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[13]),
        .I2(\exmem_result[13]_i_4_n_0 ),
        .O(\exmem_result[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \exmem_result[13]_i_7 
       (.I0(\exmem_result[6]_i_4_n_0 ),
        .I1(p_0_in__0[2]),
        .I2(\exmem_result[2]_i_4_n_0 ),
        .I3(p_0_in__0[3]),
        .I4(\exmem_result[10]_i_4_n_0 ),
        .I5(p_0_in__0[4]),
        .O(\exmem_result[13]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[14]_i_1 
       (.I0(\exmem_result[14]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[14]_i_3_n_0 ),
        .I3(\exmem_result[14]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[14]_i_2 
       (.I0(\exmem_result[15]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[14]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[14]_i_6_n_0 ),
        .O(\exmem_result[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[14]_i_3 
       (.I0(\exmem_result[14]_i_4_n_0 ),
        .I1(srs[14]),
        .I2(idex_aluop[1]),
        .I3(data1[14]),
        .I4(idex_aluop[0]),
        .I5(data0[14]),
        .O(\exmem_result[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[14]_i_4 
       (.I0(data_sram_wdata[14]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[14]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[14]),
        .O(\exmem_result[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[14]_i_5 
       (.I0(\exmem_result[14]_i_7_n_0 ),
        .I1(p_0_in__0[1]),
        .I2(\exmem_result[16]_i_7_n_0 ),
        .I3(p_0_in__0[2]),
        .I4(\exmem_result[20]_i_7_n_0 ),
        .O(\exmem_result[14]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[14]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[14]),
        .I2(\exmem_result[14]_i_4_n_0 ),
        .O(\exmem_result[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \exmem_result[14]_i_7 
       (.I0(\exmem_result[7]_i_4_n_0 ),
        .I1(p_0_in__0[2]),
        .I2(\exmem_result[3]_i_4_n_0 ),
        .I3(p_0_in__0[3]),
        .I4(\exmem_result[11]_i_4_n_0 ),
        .I5(p_0_in__0[4]),
        .O(\exmem_result[14]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[15]_i_1 
       (.I0(\exmem_result[15]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[15]_i_3_n_0 ),
        .I3(\exmem_result[15]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[15]_i_10 
       (.I0(srs[15]),
        .I1(\exmem_result[15]_i_4_n_0 ),
        .O(\exmem_result[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[15]_i_11 
       (.I0(srs[14]),
        .I1(\exmem_result[14]_i_4_n_0 ),
        .O(\exmem_result[15]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[15]_i_12 
       (.I0(srs[13]),
        .I1(\exmem_result[13]_i_4_n_0 ),
        .O(\exmem_result[15]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[15]_i_13 
       (.I0(srs[12]),
        .I1(\exmem_result[12]_i_4_n_0 ),
        .O(\exmem_result[15]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[15]_i_14 
       (.I0(srs[15]),
        .I1(\exmem_result[15]_i_4_n_0 ),
        .O(\exmem_result[15]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[15]_i_15 
       (.I0(srs[14]),
        .I1(\exmem_result[14]_i_4_n_0 ),
        .O(\exmem_result[15]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[15]_i_16 
       (.I0(srs[13]),
        .I1(\exmem_result[13]_i_4_n_0 ),
        .O(\exmem_result[15]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[15]_i_17 
       (.I0(srs[12]),
        .I1(\exmem_result[12]_i_4_n_0 ),
        .O(\exmem_result[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[15]_i_2 
       (.I0(\exmem_result[16]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[15]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[15]_i_6_n_0 ),
        .O(\exmem_result[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[15]_i_3 
       (.I0(\exmem_result[15]_i_4_n_0 ),
        .I1(srs[15]),
        .I2(idex_aluop[1]),
        .I3(data1[15]),
        .I4(idex_aluop[0]),
        .I5(data0[15]),
        .O(\exmem_result[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[15]_i_4 
       (.I0(data_sram_wdata[15]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[15]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[15]),
        .O(\exmem_result[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[15]_i_5 
       (.I0(\exmem_result[15]_i_9_n_0 ),
        .I1(\exmem_result[19]_i_9_n_0 ),
        .I2(p_0_in__0[1]),
        .I3(\exmem_result[17]_i_7_n_0 ),
        .I4(p_0_in__0[2]),
        .I5(\exmem_result[21]_i_7_n_0 ),
        .O(\exmem_result[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[15]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[15]),
        .I2(\exmem_result[15]_i_4_n_0 ),
        .O(\exmem_result[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \exmem_result[15]_i_9 
       (.I0(\exmem_result[0]_i_4_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(\exmem_result[8]_i_4_n_0 ),
        .I3(p_0_in__0[4]),
        .O(\exmem_result[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[16]_i_1 
       (.I0(\exmem_result[16]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[16]_i_3_n_0 ),
        .I3(\exmem_result[16]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[16]_i_2 
       (.I0(\exmem_result[17]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[16]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[16]_i_6_n_0 ),
        .O(\exmem_result[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[16]_i_3 
       (.I0(\exmem_result[16]_i_4_n_0 ),
        .I1(srs[16]),
        .I2(idex_aluop[1]),
        .I3(data1[16]),
        .I4(idex_aluop[0]),
        .I5(data0[16]),
        .O(\exmem_result[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[16]_i_4 
       (.I0(data_sram_wdata[16]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[16]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[16]),
        .O(\exmem_result[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[16]_i_5 
       (.I0(\exmem_result[16]_i_7_n_0 ),
        .I1(\exmem_result[20]_i_7_n_0 ),
        .I2(p_0_in__0[1]),
        .I3(\exmem_result[18]_i_7_n_0 ),
        .I4(p_0_in__0[2]),
        .I5(\exmem_result[22]_i_7_n_0 ),
        .O(\exmem_result[16]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[16]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[16]),
        .I2(\exmem_result[16]_i_4_n_0 ),
        .O(\exmem_result[16]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \exmem_result[16]_i_7 
       (.I0(\exmem_result[1]_i_4_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(\exmem_result[9]_i_4_n_0 ),
        .I3(p_0_in__0[4]),
        .O(\exmem_result[16]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[17]_i_1 
       (.I0(\exmem_result[17]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[17]_i_3_n_0 ),
        .I3(\exmem_result[17]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[17]_i_2 
       (.I0(\exmem_result[18]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[17]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[17]_i_6_n_0 ),
        .O(\exmem_result[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[17]_i_3 
       (.I0(\exmem_result[17]_i_4_n_0 ),
        .I1(srs[17]),
        .I2(idex_aluop[1]),
        .I3(data1[17]),
        .I4(idex_aluop[0]),
        .I5(data0[17]),
        .O(\exmem_result[17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[17]_i_4 
       (.I0(data_sram_wdata[17]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[17]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[17]),
        .O(\exmem_result[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[17]_i_5 
       (.I0(\exmem_result[17]_i_7_n_0 ),
        .I1(\exmem_result[21]_i_7_n_0 ),
        .I2(p_0_in__0[1]),
        .I3(\exmem_result[19]_i_9_n_0 ),
        .I4(p_0_in__0[2]),
        .I5(\exmem_result[23]_i_9_n_0 ),
        .O(\exmem_result[17]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[17]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[17]),
        .I2(\exmem_result[17]_i_4_n_0 ),
        .O(\exmem_result[17]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \exmem_result[17]_i_7 
       (.I0(\exmem_result[2]_i_4_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(\exmem_result[10]_i_4_n_0 ),
        .I3(p_0_in__0[4]),
        .O(\exmem_result[17]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[18]_i_1 
       (.I0(\exmem_result[18]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[18]_i_3_n_0 ),
        .I3(\exmem_result[18]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[18]_i_2 
       (.I0(\exmem_result[19]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[18]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[18]_i_6_n_0 ),
        .O(\exmem_result[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[18]_i_3 
       (.I0(\exmem_result[18]_i_4_n_0 ),
        .I1(srs[18]),
        .I2(idex_aluop[1]),
        .I3(data1[18]),
        .I4(idex_aluop[0]),
        .I5(data0[18]),
        .O(\exmem_result[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[18]_i_4 
       (.I0(data_sram_wdata[18]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[18]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[18]),
        .O(\exmem_result[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[18]_i_5 
       (.I0(\exmem_result[18]_i_7_n_0 ),
        .I1(\exmem_result[22]_i_7_n_0 ),
        .I2(p_0_in__0[1]),
        .I3(\exmem_result[20]_i_7_n_0 ),
        .I4(p_0_in__0[2]),
        .I5(\exmem_result[24]_i_7_n_0 ),
        .O(\exmem_result[18]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[18]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[18]),
        .I2(\exmem_result[18]_i_4_n_0 ),
        .O(\exmem_result[18]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \exmem_result[18]_i_7 
       (.I0(\exmem_result[3]_i_4_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(\exmem_result[11]_i_4_n_0 ),
        .I3(p_0_in__0[4]),
        .O(\exmem_result[18]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[19]_i_1 
       (.I0(\exmem_result[19]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[19]_i_3_n_0 ),
        .I3(\exmem_result[19]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[19]_i_10 
       (.I0(srs[19]),
        .I1(\exmem_result[19]_i_4_n_0 ),
        .O(\exmem_result[19]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[19]_i_11 
       (.I0(srs[18]),
        .I1(\exmem_result[18]_i_4_n_0 ),
        .O(\exmem_result[19]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[19]_i_12 
       (.I0(srs[17]),
        .I1(\exmem_result[17]_i_4_n_0 ),
        .O(\exmem_result[19]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[19]_i_13 
       (.I0(srs[16]),
        .I1(\exmem_result[16]_i_4_n_0 ),
        .O(\exmem_result[19]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[19]_i_14 
       (.I0(srs[19]),
        .I1(\exmem_result[19]_i_4_n_0 ),
        .O(\exmem_result[19]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[19]_i_15 
       (.I0(srs[18]),
        .I1(\exmem_result[18]_i_4_n_0 ),
        .O(\exmem_result[19]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[19]_i_16 
       (.I0(srs[17]),
        .I1(\exmem_result[17]_i_4_n_0 ),
        .O(\exmem_result[19]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[19]_i_17 
       (.I0(srs[16]),
        .I1(\exmem_result[16]_i_4_n_0 ),
        .O(\exmem_result[19]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[19]_i_2 
       (.I0(\exmem_result[20]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[19]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[19]_i_6_n_0 ),
        .O(\exmem_result[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[19]_i_3 
       (.I0(\exmem_result[19]_i_4_n_0 ),
        .I1(srs[19]),
        .I2(idex_aluop[1]),
        .I3(data1[19]),
        .I4(idex_aluop[0]),
        .I5(data0[19]),
        .O(\exmem_result[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[19]_i_4 
       (.I0(data_sram_wdata[19]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[19]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[19]),
        .O(\exmem_result[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[19]_i_5 
       (.I0(\exmem_result[19]_i_9_n_0 ),
        .I1(\exmem_result[23]_i_9_n_0 ),
        .I2(p_0_in__0[1]),
        .I3(\exmem_result[21]_i_7_n_0 ),
        .I4(p_0_in__0[2]),
        .I5(\exmem_result[25]_i_7_n_0 ),
        .O(\exmem_result[19]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[19]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[19]),
        .I2(\exmem_result[19]_i_4_n_0 ),
        .O(\exmem_result[19]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \exmem_result[19]_i_9 
       (.I0(\exmem_result[4]_i_4_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(\exmem_result[12]_i_4_n_0 ),
        .I3(p_0_in__0[4]),
        .O(\exmem_result[19]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[1]_i_1 
       (.I0(\exmem_result[1]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[1]_i_3_n_0 ),
        .I3(\exmem_result[1]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[1]_i_2 
       (.I0(\exmem_result[2]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[1]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[1]_i_6_n_0 ),
        .O(\exmem_result[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[1]_i_3 
       (.I0(\exmem_result[1]_i_4_n_0 ),
        .I1(srs[1]),
        .I2(idex_aluop[1]),
        .I3(data1[1]),
        .I4(idex_aluop[0]),
        .I5(data0[1]),
        .O(\exmem_result[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[1]_i_4 
       (.I0(data_sram_wdata[1]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[1]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[1]),
        .O(\exmem_result[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \exmem_result[1]_i_5 
       (.I0(p_0_in__0[2]),
        .I1(p_0_in__0[4]),
        .I2(\exmem_result[0]_i_4_n_0 ),
        .I3(p_0_in__0[3]),
        .I4(p_0_in__0[1]),
        .O(\exmem_result[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[1]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[1]),
        .I2(\exmem_result[1]_i_4_n_0 ),
        .O(\exmem_result[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[20]_i_1 
       (.I0(\exmem_result[20]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[20]_i_3_n_0 ),
        .I3(\exmem_result[20]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[20]_i_2 
       (.I0(\exmem_result[21]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[20]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[20]_i_6_n_0 ),
        .O(\exmem_result[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[20]_i_3 
       (.I0(\exmem_result[20]_i_4_n_0 ),
        .I1(srs[20]),
        .I2(idex_aluop[1]),
        .I3(data1[20]),
        .I4(idex_aluop[0]),
        .I5(data0[20]),
        .O(\exmem_result[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[20]_i_4 
       (.I0(data_sram_wdata[20]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[20]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[20]),
        .O(\exmem_result[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[20]_i_5 
       (.I0(\exmem_result[20]_i_7_n_0 ),
        .I1(\exmem_result[24]_i_7_n_0 ),
        .I2(p_0_in__0[1]),
        .I3(\exmem_result[22]_i_7_n_0 ),
        .I4(p_0_in__0[2]),
        .I5(\exmem_result[26]_i_7_n_0 ),
        .O(\exmem_result[20]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[20]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[20]),
        .I2(\exmem_result[20]_i_4_n_0 ),
        .O(\exmem_result[20]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \exmem_result[20]_i_7 
       (.I0(\exmem_result[5]_i_4_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(\exmem_result[13]_i_4_n_0 ),
        .I3(p_0_in__0[4]),
        .O(\exmem_result[20]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[21]_i_1 
       (.I0(\exmem_result[21]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[21]_i_3_n_0 ),
        .I3(\exmem_result[21]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[21]_i_2 
       (.I0(\exmem_result[22]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[21]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[21]_i_6_n_0 ),
        .O(\exmem_result[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[21]_i_3 
       (.I0(\exmem_result[21]_i_4_n_0 ),
        .I1(srs[21]),
        .I2(idex_aluop[1]),
        .I3(data1[21]),
        .I4(idex_aluop[0]),
        .I5(data0[21]),
        .O(\exmem_result[21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[21]_i_4 
       (.I0(data_sram_wdata[21]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[21]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[21]),
        .O(\exmem_result[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[21]_i_5 
       (.I0(\exmem_result[21]_i_7_n_0 ),
        .I1(\exmem_result[25]_i_7_n_0 ),
        .I2(p_0_in__0[1]),
        .I3(\exmem_result[23]_i_9_n_0 ),
        .I4(p_0_in__0[2]),
        .I5(\exmem_result[27]_i_9_n_0 ),
        .O(\exmem_result[21]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[21]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[21]),
        .I2(\exmem_result[21]_i_4_n_0 ),
        .O(\exmem_result[21]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \exmem_result[21]_i_7 
       (.I0(\exmem_result[6]_i_4_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(\exmem_result[14]_i_4_n_0 ),
        .I3(p_0_in__0[4]),
        .O(\exmem_result[21]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[22]_i_1 
       (.I0(\exmem_result[22]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[22]_i_3_n_0 ),
        .I3(\exmem_result[22]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[22]_i_2 
       (.I0(\exmem_result[23]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[22]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[22]_i_6_n_0 ),
        .O(\exmem_result[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[22]_i_3 
       (.I0(\exmem_result[22]_i_4_n_0 ),
        .I1(srs[22]),
        .I2(idex_aluop[1]),
        .I3(data1[22]),
        .I4(idex_aluop[0]),
        .I5(data0[22]),
        .O(\exmem_result[22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[22]_i_4 
       (.I0(data_sram_wdata[22]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[22]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[22]),
        .O(\exmem_result[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[22]_i_5 
       (.I0(\exmem_result[22]_i_7_n_0 ),
        .I1(\exmem_result[26]_i_7_n_0 ),
        .I2(p_0_in__0[1]),
        .I3(\exmem_result[24]_i_7_n_0 ),
        .I4(p_0_in__0[2]),
        .I5(\exmem_result[28]_i_7_n_0 ),
        .O(\exmem_result[22]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[22]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[22]),
        .I2(\exmem_result[22]_i_4_n_0 ),
        .O(\exmem_result[22]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \exmem_result[22]_i_7 
       (.I0(\exmem_result[7]_i_4_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(\exmem_result[15]_i_4_n_0 ),
        .I3(p_0_in__0[4]),
        .O(\exmem_result[22]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[23]_i_1 
       (.I0(\exmem_result[23]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[23]_i_3_n_0 ),
        .I3(\exmem_result[23]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[23]_i_10 
       (.I0(srs[23]),
        .I1(\exmem_result[23]_i_4_n_0 ),
        .O(\exmem_result[23]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[23]_i_11 
       (.I0(srs[22]),
        .I1(\exmem_result[22]_i_4_n_0 ),
        .O(\exmem_result[23]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[23]_i_12 
       (.I0(srs[21]),
        .I1(\exmem_result[21]_i_4_n_0 ),
        .O(\exmem_result[23]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[23]_i_13 
       (.I0(srs[20]),
        .I1(\exmem_result[20]_i_4_n_0 ),
        .O(\exmem_result[23]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[23]_i_14 
       (.I0(srs[23]),
        .I1(\exmem_result[23]_i_4_n_0 ),
        .O(\exmem_result[23]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[23]_i_15 
       (.I0(srs[22]),
        .I1(\exmem_result[22]_i_4_n_0 ),
        .O(\exmem_result[23]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[23]_i_16 
       (.I0(srs[21]),
        .I1(\exmem_result[21]_i_4_n_0 ),
        .O(\exmem_result[23]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[23]_i_17 
       (.I0(srs[20]),
        .I1(\exmem_result[20]_i_4_n_0 ),
        .O(\exmem_result[23]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[23]_i_2 
       (.I0(\exmem_result[24]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[23]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[23]_i_6_n_0 ),
        .O(\exmem_result[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[23]_i_3 
       (.I0(\exmem_result[23]_i_4_n_0 ),
        .I1(srs[23]),
        .I2(idex_aluop[1]),
        .I3(data1[23]),
        .I4(idex_aluop[0]),
        .I5(data0[23]),
        .O(\exmem_result[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[23]_i_4 
       (.I0(data_sram_wdata[23]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[23]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[23]),
        .O(\exmem_result[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[23]_i_5 
       (.I0(\exmem_result[23]_i_9_n_0 ),
        .I1(\exmem_result[27]_i_9_n_0 ),
        .I2(p_0_in__0[1]),
        .I3(\exmem_result[25]_i_7_n_0 ),
        .I4(p_0_in__0[2]),
        .I5(\exmem_result[29]_i_7_n_0 ),
        .O(\exmem_result[23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[23]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[23]),
        .I2(\exmem_result[23]_i_4_n_0 ),
        .O(\exmem_result[23]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \exmem_result[23]_i_9 
       (.I0(\exmem_result[8]_i_4_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(\exmem_result[0]_i_4_n_0 ),
        .I3(p_0_in__0[4]),
        .I4(\exmem_result[16]_i_4_n_0 ),
        .O(\exmem_result[23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[24]_i_1 
       (.I0(\exmem_result[24]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[24]_i_3_n_0 ),
        .I3(\exmem_result[24]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[24]_i_2 
       (.I0(\exmem_result[25]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[24]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[24]_i_6_n_0 ),
        .O(\exmem_result[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[24]_i_3 
       (.I0(\exmem_result[24]_i_4_n_0 ),
        .I1(srs[24]),
        .I2(idex_aluop[1]),
        .I3(data1[24]),
        .I4(idex_aluop[0]),
        .I5(data0[24]),
        .O(\exmem_result[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[24]_i_4 
       (.I0(data_sram_wdata[24]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[24]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[24]),
        .O(\exmem_result[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[24]_i_5 
       (.I0(\exmem_result[24]_i_7_n_0 ),
        .I1(\exmem_result[28]_i_7_n_0 ),
        .I2(p_0_in__0[1]),
        .I3(\exmem_result[26]_i_7_n_0 ),
        .I4(p_0_in__0[2]),
        .I5(\exmem_result[30]_i_7_n_0 ),
        .O(\exmem_result[24]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[24]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[24]),
        .I2(\exmem_result[24]_i_4_n_0 ),
        .O(\exmem_result[24]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \exmem_result[24]_i_7 
       (.I0(\exmem_result[9]_i_4_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(\exmem_result[1]_i_4_n_0 ),
        .I3(p_0_in__0[4]),
        .I4(\exmem_result[17]_i_4_n_0 ),
        .O(\exmem_result[24]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[25]_i_1 
       (.I0(\exmem_result[25]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[25]_i_3_n_0 ),
        .I3(\exmem_result[25]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[25]_i_2 
       (.I0(\exmem_result[26]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[25]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[25]_i_6_n_0 ),
        .O(\exmem_result[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[25]_i_3 
       (.I0(\exmem_result[25]_i_4_n_0 ),
        .I1(srs[25]),
        .I2(idex_aluop[1]),
        .I3(data1[25]),
        .I4(idex_aluop[0]),
        .I5(data0[25]),
        .O(\exmem_result[25]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[25]_i_4 
       (.I0(data_sram_wdata[25]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[25]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[25]),
        .O(\exmem_result[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[25]_i_5 
       (.I0(\exmem_result[25]_i_7_n_0 ),
        .I1(\exmem_result[29]_i_7_n_0 ),
        .I2(p_0_in__0[1]),
        .I3(\exmem_result[27]_i_9_n_0 ),
        .I4(p_0_in__0[2]),
        .I5(\exmem_result[31]_i_16_n_0 ),
        .O(\exmem_result[25]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[25]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[25]),
        .I2(\exmem_result[25]_i_4_n_0 ),
        .O(\exmem_result[25]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \exmem_result[25]_i_7 
       (.I0(\exmem_result[10]_i_4_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(\exmem_result[2]_i_4_n_0 ),
        .I3(p_0_in__0[4]),
        .I4(\exmem_result[18]_i_4_n_0 ),
        .O(\exmem_result[25]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[26]_i_1 
       (.I0(\exmem_result[26]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[26]_i_3_n_0 ),
        .I3(\exmem_result[26]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[26]_i_2 
       (.I0(\exmem_result[27]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[26]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[26]_i_6_n_0 ),
        .O(\exmem_result[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[26]_i_3 
       (.I0(\exmem_result[26]_i_4_n_0 ),
        .I1(srs[26]),
        .I2(idex_aluop[1]),
        .I3(data1[26]),
        .I4(idex_aluop[0]),
        .I5(data0[26]),
        .O(\exmem_result[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[26]_i_4 
       (.I0(data_sram_wdata[26]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[26]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[26]),
        .O(\exmem_result[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[26]_i_5 
       (.I0(\exmem_result[26]_i_7_n_0 ),
        .I1(\exmem_result[30]_i_7_n_0 ),
        .I2(p_0_in__0[1]),
        .I3(\exmem_result[28]_i_7_n_0 ),
        .I4(p_0_in__0[2]),
        .I5(\exmem_result[31]_i_12_n_0 ),
        .O(\exmem_result[26]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[26]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[26]),
        .I2(\exmem_result[26]_i_4_n_0 ),
        .O(\exmem_result[26]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \exmem_result[26]_i_7 
       (.I0(\exmem_result[11]_i_4_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(\exmem_result[3]_i_4_n_0 ),
        .I3(p_0_in__0[4]),
        .I4(\exmem_result[19]_i_4_n_0 ),
        .O(\exmem_result[26]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[27]_i_1 
       (.I0(\exmem_result[27]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[27]_i_3_n_0 ),
        .I3(\exmem_result[27]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[27]_i_10 
       (.I0(srs[27]),
        .I1(\exmem_result[27]_i_4_n_0 ),
        .O(\exmem_result[27]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[27]_i_11 
       (.I0(srs[26]),
        .I1(\exmem_result[26]_i_4_n_0 ),
        .O(\exmem_result[27]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[27]_i_12 
       (.I0(srs[25]),
        .I1(\exmem_result[25]_i_4_n_0 ),
        .O(\exmem_result[27]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[27]_i_13 
       (.I0(srs[24]),
        .I1(\exmem_result[24]_i_4_n_0 ),
        .O(\exmem_result[27]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[27]_i_14 
       (.I0(srs[27]),
        .I1(\exmem_result[27]_i_4_n_0 ),
        .O(\exmem_result[27]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[27]_i_15 
       (.I0(srs[26]),
        .I1(\exmem_result[26]_i_4_n_0 ),
        .O(\exmem_result[27]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[27]_i_16 
       (.I0(srs[25]),
        .I1(\exmem_result[25]_i_4_n_0 ),
        .O(\exmem_result[27]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[27]_i_17 
       (.I0(srs[24]),
        .I1(\exmem_result[24]_i_4_n_0 ),
        .O(\exmem_result[27]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[27]_i_2 
       (.I0(\exmem_result[28]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[27]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[27]_i_6_n_0 ),
        .O(\exmem_result[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[27]_i_3 
       (.I0(\exmem_result[27]_i_4_n_0 ),
        .I1(srs[27]),
        .I2(idex_aluop[1]),
        .I3(data1[27]),
        .I4(idex_aluop[0]),
        .I5(data0[27]),
        .O(\exmem_result[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[27]_i_4 
       (.I0(data_sram_wdata[27]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[27]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[27]),
        .O(\exmem_result[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[27]_i_5 
       (.I0(\exmem_result[27]_i_9_n_0 ),
        .I1(\exmem_result[31]_i_16_n_0 ),
        .I2(p_0_in__0[1]),
        .I3(\exmem_result[29]_i_7_n_0 ),
        .I4(p_0_in__0[2]),
        .I5(\exmem_result[31]_i_18_n_0 ),
        .O(\exmem_result[27]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[27]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[27]),
        .I2(\exmem_result[27]_i_4_n_0 ),
        .O(\exmem_result[27]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \exmem_result[27]_i_9 
       (.I0(\exmem_result[12]_i_4_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(\exmem_result[4]_i_4_n_0 ),
        .I3(p_0_in__0[4]),
        .I4(\exmem_result[20]_i_4_n_0 ),
        .O(\exmem_result[27]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[28]_i_1 
       (.I0(\exmem_result[28]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[28]_i_3_n_0 ),
        .I3(\exmem_result[28]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[28]_i_2 
       (.I0(\exmem_result[29]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[28]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[28]_i_6_n_0 ),
        .O(\exmem_result[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[28]_i_3 
       (.I0(\exmem_result[28]_i_4_n_0 ),
        .I1(srs[28]),
        .I2(idex_aluop[1]),
        .I3(data1[28]),
        .I4(idex_aluop[0]),
        .I5(data0[28]),
        .O(\exmem_result[28]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[28]_i_4 
       (.I0(data_sram_wdata[28]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[28]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[28]),
        .O(\exmem_result[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[28]_i_5 
       (.I0(\exmem_result[28]_i_7_n_0 ),
        .I1(\exmem_result[31]_i_12_n_0 ),
        .I2(p_0_in__0[1]),
        .I3(\exmem_result[30]_i_7_n_0 ),
        .I4(p_0_in__0[2]),
        .I5(\exmem_result[31]_i_14_n_0 ),
        .O(\exmem_result[28]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[28]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[28]),
        .I2(\exmem_result[28]_i_4_n_0 ),
        .O(\exmem_result[28]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \exmem_result[28]_i_7 
       (.I0(\exmem_result[13]_i_4_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(\exmem_result[5]_i_4_n_0 ),
        .I3(p_0_in__0[4]),
        .I4(\exmem_result[21]_i_4_n_0 ),
        .O(\exmem_result[28]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[29]_i_1 
       (.I0(\exmem_result[29]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[29]_i_3_n_0 ),
        .I3(\exmem_result[29]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[29]_i_2 
       (.I0(\exmem_result[30]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[29]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[29]_i_6_n_0 ),
        .O(\exmem_result[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[29]_i_3 
       (.I0(\exmem_result[29]_i_4_n_0 ),
        .I1(srs[29]),
        .I2(idex_aluop[1]),
        .I3(data1[29]),
        .I4(idex_aluop[0]),
        .I5(data0[29]),
        .O(\exmem_result[29]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[29]_i_4 
       (.I0(data_sram_wdata[29]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[29]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[29]),
        .O(\exmem_result[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[29]_i_5 
       (.I0(\exmem_result[29]_i_7_n_0 ),
        .I1(\exmem_result[31]_i_18_n_0 ),
        .I2(p_0_in__0[1]),
        .I3(\exmem_result[31]_i_16_n_0 ),
        .I4(p_0_in__0[2]),
        .I5(\exmem_result[31]_i_17_n_0 ),
        .O(\exmem_result[29]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[29]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[29]),
        .I2(\exmem_result[29]_i_4_n_0 ),
        .O(\exmem_result[29]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \exmem_result[29]_i_7 
       (.I0(\exmem_result[14]_i_4_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(\exmem_result[6]_i_4_n_0 ),
        .I3(p_0_in__0[4]),
        .I4(\exmem_result[22]_i_4_n_0 ),
        .O(\exmem_result[29]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[2]_i_1 
       (.I0(\exmem_result[2]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[2]_i_3_n_0 ),
        .I3(\exmem_result[2]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[2]_i_2 
       (.I0(\exmem_result[3]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[2]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[2]_i_6_n_0 ),
        .O(\exmem_result[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[2]_i_3 
       (.I0(\exmem_result[2]_i_4_n_0 ),
        .I1(srs[2]),
        .I2(idex_aluop[1]),
        .I3(data1[2]),
        .I4(idex_aluop[0]),
        .I5(data0[2]),
        .O(\exmem_result[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[2]_i_4 
       (.I0(data_sram_wdata[2]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[2]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[2]),
        .O(\exmem_result[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \exmem_result[2]_i_5 
       (.I0(p_0_in__0[2]),
        .I1(p_0_in__0[4]),
        .I2(\exmem_result[1]_i_4_n_0 ),
        .I3(p_0_in__0[3]),
        .I4(p_0_in__0[1]),
        .O(\exmem_result[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[2]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[2]),
        .I2(\exmem_result[2]_i_4_n_0 ),
        .O(\exmem_result[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[30]_i_1 
       (.I0(\exmem_result[30]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[30]_i_3_n_0 ),
        .I3(\exmem_result[30]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[30]_i_2 
       (.I0(\exmem_result[31]_i_6_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[30]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[30]_i_6_n_0 ),
        .O(\exmem_result[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[30]_i_3 
       (.I0(\exmem_result[30]_i_4_n_0 ),
        .I1(srs[30]),
        .I2(idex_aluop[1]),
        .I3(data1[30]),
        .I4(idex_aluop[0]),
        .I5(data0[30]),
        .O(\exmem_result[30]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[30]_i_4 
       (.I0(data_sram_wdata[30]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[30]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[30]),
        .O(\exmem_result[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[30]_i_5 
       (.I0(\exmem_result[30]_i_7_n_0 ),
        .I1(\exmem_result[31]_i_14_n_0 ),
        .I2(p_0_in__0[1]),
        .I3(\exmem_result[31]_i_12_n_0 ),
        .I4(p_0_in__0[2]),
        .I5(\exmem_result[31]_i_13_n_0 ),
        .O(\exmem_result[30]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[30]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[30]),
        .I2(\exmem_result[30]_i_4_n_0 ),
        .O(\exmem_result[30]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \exmem_result[30]_i_7 
       (.I0(\exmem_result[15]_i_4_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(\exmem_result[7]_i_4_n_0 ),
        .I3(p_0_in__0[4]),
        .I4(\exmem_result[23]_i_4_n_0 ),
        .O(\exmem_result[30]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[31]_i_1 
       (.I0(\exmem_result[31]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[31]_i_3_n_0 ),
        .I3(\exmem_result[31]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8200000000008200)) 
    \exmem_result[31]_i_10 
       (.I0(p_9_in),
        .I1(exmem_rd[4]),
        .I2(idex_rt[4]),
        .I3(\exmem_result[31]_i_28_n_0 ),
        .I4(idex_rt[3]),
        .I5(exmem_rd[3]),
        .O(real_rt1));
  LUT6 #(
    .INIT(64'h8200000000008200)) 
    \exmem_result[31]_i_11 
       (.I0(debug_wb_rf_wen),
        .I1(debug_wb_rf_wnum[4]),
        .I2(idex_rt[4]),
        .I3(\exmem_result[31]_i_29_n_0 ),
        .I4(idex_rt[3]),
        .I5(debug_wb_rf_wnum[3]),
        .O(\exmem_result[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[31]_i_12 
       (.I0(\exmem_result[1]_i_4_n_0 ),
        .I1(\exmem_result[17]_i_4_n_0 ),
        .I2(p_0_in__0[3]),
        .I3(\exmem_result[9]_i_4_n_0 ),
        .I4(p_0_in__0[4]),
        .I5(\exmem_result[25]_i_4_n_0 ),
        .O(\exmem_result[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[31]_i_13 
       (.I0(\exmem_result[5]_i_4_n_0 ),
        .I1(\exmem_result[21]_i_4_n_0 ),
        .I2(p_0_in__0[3]),
        .I3(\exmem_result[13]_i_4_n_0 ),
        .I4(p_0_in__0[4]),
        .I5(\exmem_result[29]_i_4_n_0 ),
        .O(\exmem_result[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[31]_i_14 
       (.I0(\exmem_result[3]_i_4_n_0 ),
        .I1(\exmem_result[19]_i_4_n_0 ),
        .I2(p_0_in__0[3]),
        .I3(\exmem_result[11]_i_4_n_0 ),
        .I4(p_0_in__0[4]),
        .I5(\exmem_result[27]_i_4_n_0 ),
        .O(\exmem_result[31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[31]_i_15 
       (.I0(\exmem_result[7]_i_4_n_0 ),
        .I1(\exmem_result[23]_i_4_n_0 ),
        .I2(p_0_in__0[3]),
        .I3(\exmem_result[15]_i_4_n_0 ),
        .I4(p_0_in__0[4]),
        .I5(\exmem_result[31]_i_4_n_0 ),
        .O(\exmem_result[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[31]_i_16 
       (.I0(\exmem_result[0]_i_4_n_0 ),
        .I1(\exmem_result[16]_i_4_n_0 ),
        .I2(p_0_in__0[3]),
        .I3(\exmem_result[8]_i_4_n_0 ),
        .I4(p_0_in__0[4]),
        .I5(\exmem_result[24]_i_4_n_0 ),
        .O(\exmem_result[31]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[31]_i_17 
       (.I0(\exmem_result[4]_i_4_n_0 ),
        .I1(\exmem_result[20]_i_4_n_0 ),
        .I2(p_0_in__0[3]),
        .I3(\exmem_result[12]_i_4_n_0 ),
        .I4(p_0_in__0[4]),
        .I5(\exmem_result[28]_i_4_n_0 ),
        .O(\exmem_result[31]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[31]_i_18 
       (.I0(\exmem_result[2]_i_4_n_0 ),
        .I1(\exmem_result[18]_i_4_n_0 ),
        .I2(p_0_in__0[3]),
        .I3(\exmem_result[10]_i_4_n_0 ),
        .I4(p_0_in__0[4]),
        .I5(\exmem_result[26]_i_4_n_0 ),
        .O(\exmem_result[31]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[31]_i_19 
       (.I0(\exmem_result[6]_i_4_n_0 ),
        .I1(\exmem_result[22]_i_4_n_0 ),
        .I2(p_0_in__0[3]),
        .I3(\exmem_result[14]_i_4_n_0 ),
        .I4(p_0_in__0[4]),
        .I5(\exmem_result[30]_i_4_n_0 ),
        .O(\exmem_result[31]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[31]_i_2 
       (.I0(\exmem_result[31]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[31]_i_6_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[31]_i_7_n_0 ),
        .O(\exmem_result[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[31]_i_20 
       (.I0(srs__0),
        .I1(\exmem_result[31]_i_4_n_0 ),
        .O(\exmem_result[31]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[31]_i_21 
       (.I0(srs[30]),
        .I1(\exmem_result[30]_i_4_n_0 ),
        .O(\exmem_result[31]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[31]_i_22 
       (.I0(srs[29]),
        .I1(\exmem_result[29]_i_4_n_0 ),
        .O(\exmem_result[31]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[31]_i_23 
       (.I0(srs[28]),
        .I1(\exmem_result[28]_i_4_n_0 ),
        .O(\exmem_result[31]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[31]_i_24 
       (.I0(srs__0),
        .I1(\exmem_result[31]_i_4_n_0 ),
        .O(\exmem_result[31]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[31]_i_25 
       (.I0(srs[30]),
        .I1(\exmem_result[30]_i_4_n_0 ),
        .O(\exmem_result[31]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[31]_i_26 
       (.I0(srs[29]),
        .I1(\exmem_result[29]_i_4_n_0 ),
        .O(\exmem_result[31]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[31]_i_27 
       (.I0(srs[28]),
        .I1(\exmem_result[28]_i_4_n_0 ),
        .O(\exmem_result[31]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \exmem_result[31]_i_28 
       (.I0(exmem_rd[0]),
        .I1(idex_rt[0]),
        .I2(idex_rt[2]),
        .I3(exmem_rd[2]),
        .I4(idex_rt[1]),
        .I5(exmem_rd[1]),
        .O(\exmem_result[31]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \exmem_result[31]_i_29 
       (.I0(debug_wb_rf_wnum[0]),
        .I1(idex_rt[0]),
        .I2(idex_rt[2]),
        .I3(debug_wb_rf_wnum[2]),
        .I4(idex_rt[1]),
        .I5(debug_wb_rf_wnum[1]),
        .O(\exmem_result[31]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[31]_i_3 
       (.I0(\exmem_result[31]_i_4_n_0 ),
        .I1(srs__0),
        .I2(idex_aluop[1]),
        .I3(data1[31]),
        .I4(idex_aluop[0]),
        .I5(data0[31]),
        .O(\exmem_result[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[31]_i_4 
       (.I0(data_sram_wdata[31]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[31]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[31]),
        .O(\exmem_result[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[31]_i_5 
       (.I0(\exmem_result[31]_i_12_n_0 ),
        .I1(\exmem_result[31]_i_13_n_0 ),
        .I2(p_0_in__0[1]),
        .I3(\exmem_result[31]_i_14_n_0 ),
        .I4(p_0_in__0[2]),
        .I5(\exmem_result[31]_i_15_n_0 ),
        .O(\exmem_result[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[31]_i_6 
       (.I0(\exmem_result[31]_i_16_n_0 ),
        .I1(\exmem_result[31]_i_17_n_0 ),
        .I2(p_0_in__0[1]),
        .I3(\exmem_result[31]_i_18_n_0 ),
        .I4(p_0_in__0[2]),
        .I5(\exmem_result[31]_i_19_n_0 ),
        .O(\exmem_result[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[31]_i_7 
       (.I0(idex_aluop[0]),
        .I1(srs__0),
        .I2(\exmem_result[31]_i_4_n_0 ),
        .O(\exmem_result[31]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[3]_i_1 
       (.I0(\exmem_result[3]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[3]_i_3_n_0 ),
        .I3(\exmem_result[3]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[3]_i_10 
       (.I0(srs[2]),
        .I1(\exmem_result[2]_i_4_n_0 ),
        .O(\exmem_result[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[3]_i_11 
       (.I0(srs[1]),
        .I1(\exmem_result[1]_i_4_n_0 ),
        .O(\exmem_result[3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[3]_i_12 
       (.I0(srs[0]),
        .I1(\exmem_result[0]_i_4_n_0 ),
        .O(\exmem_result[3]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[3]_i_13 
       (.I0(srs[3]),
        .I1(\exmem_result[3]_i_4_n_0 ),
        .O(\exmem_result[3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[3]_i_14 
       (.I0(srs[2]),
        .I1(\exmem_result[2]_i_4_n_0 ),
        .O(\exmem_result[3]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[3]_i_15 
       (.I0(srs[1]),
        .I1(\exmem_result[1]_i_4_n_0 ),
        .O(\exmem_result[3]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[3]_i_16 
       (.I0(srs[0]),
        .I1(\exmem_result[0]_i_4_n_0 ),
        .O(\exmem_result[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[3]_i_2 
       (.I0(\exmem_result[4]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[3]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[3]_i_6_n_0 ),
        .O(\exmem_result[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[3]_i_3 
       (.I0(\exmem_result[3]_i_4_n_0 ),
        .I1(srs[3]),
        .I2(idex_aluop[1]),
        .I3(data1[3]),
        .I4(idex_aluop[0]),
        .I5(data0[3]),
        .O(\exmem_result[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[3]_i_4 
       (.I0(data_sram_wdata[3]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[3]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[3]),
        .O(\exmem_result[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \exmem_result[3]_i_5 
       (.I0(\exmem_result[0]_i_4_n_0 ),
        .I1(p_0_in__0[1]),
        .I2(p_0_in__0[3]),
        .I3(\exmem_result[2]_i_4_n_0 ),
        .I4(p_0_in__0[4]),
        .I5(p_0_in__0[2]),
        .O(\exmem_result[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[3]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[3]),
        .I2(\exmem_result[3]_i_4_n_0 ),
        .O(\exmem_result[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[3]_i_9 
       (.I0(srs[3]),
        .I1(\exmem_result[3]_i_4_n_0 ),
        .O(\exmem_result[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[4]_i_1 
       (.I0(\exmem_result[4]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[4]_i_3_n_0 ),
        .I3(\exmem_result[4]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[4]_i_2 
       (.I0(\exmem_result[5]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[4]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[4]_i_6_n_0 ),
        .O(\exmem_result[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[4]_i_3 
       (.I0(\exmem_result[4]_i_4_n_0 ),
        .I1(srs[4]),
        .I2(idex_aluop[1]),
        .I3(data1[4]),
        .I4(idex_aluop[0]),
        .I5(data0[4]),
        .O(\exmem_result[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[4]_i_4 
       (.I0(data_sram_wdata[4]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[4]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[4]),
        .O(\exmem_result[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \exmem_result[4]_i_5 
       (.I0(\exmem_result[1]_i_4_n_0 ),
        .I1(p_0_in__0[1]),
        .I2(p_0_in__0[3]),
        .I3(\exmem_result[3]_i_4_n_0 ),
        .I4(p_0_in__0[4]),
        .I5(p_0_in__0[2]),
        .O(\exmem_result[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[4]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[4]),
        .I2(\exmem_result[4]_i_4_n_0 ),
        .O(\exmem_result[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[5]_i_1 
       (.I0(\exmem_result[5]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[5]_i_3_n_0 ),
        .I3(\exmem_result[5]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[5]_i_2 
       (.I0(\exmem_result[6]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[5]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[5]_i_6_n_0 ),
        .O(\exmem_result[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[5]_i_3 
       (.I0(\exmem_result[5]_i_4_n_0 ),
        .I1(srs[5]),
        .I2(idex_aluop[1]),
        .I3(data1[5]),
        .I4(idex_aluop[0]),
        .I5(data0[5]),
        .O(\exmem_result[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[5]_i_4 
       (.I0(data_sram_wdata[5]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[5]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[5]),
        .O(\exmem_result[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \exmem_result[5]_i_5 
       (.I0(p_0_in__0[3]),
        .I1(\exmem_result[2]_i_4_n_0 ),
        .I2(p_0_in__0[4]),
        .I3(p_0_in__0[2]),
        .I4(p_0_in__0[1]),
        .I5(\exmem_result[7]_i_14_n_0 ),
        .O(\exmem_result[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[5]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[5]),
        .I2(\exmem_result[5]_i_4_n_0 ),
        .O(\exmem_result[5]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[6]_i_1 
       (.I0(\exmem_result[6]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[6]_i_3_n_0 ),
        .I3(\exmem_result[6]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[6]_i_2 
       (.I0(\exmem_result[7]_i_6_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[6]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[6]_i_6_n_0 ),
        .O(\exmem_result[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[6]_i_3 
       (.I0(\exmem_result[6]_i_4_n_0 ),
        .I1(srs[6]),
        .I2(idex_aluop[1]),
        .I3(data1[6]),
        .I4(idex_aluop[0]),
        .I5(data0[6]),
        .O(\exmem_result[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[6]_i_4 
       (.I0(data_sram_wdata[6]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[6]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[6]),
        .O(\exmem_result[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \exmem_result[6]_i_5 
       (.I0(p_0_in__0[3]),
        .I1(\exmem_result[3]_i_4_n_0 ),
        .I2(p_0_in__0[4]),
        .I3(p_0_in__0[2]),
        .I4(p_0_in__0[1]),
        .I5(\exmem_result[8]_i_6_n_0 ),
        .O(\exmem_result[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[6]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[6]),
        .I2(\exmem_result[6]_i_4_n_0 ),
        .O(\exmem_result[6]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[7]_i_1 
       (.I0(\exmem_result[7]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[7]_i_3_n_0 ),
        .I3(\exmem_result[7]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \exmem_result[7]_i_10 
       (.I0(p_0_in__0[4]),
        .I1(data_sram_wdata[1]),
        .I2(real_rt1),
        .I3(\exmem_result[7]_i_23_n_0 ),
        .I4(p_0_in__0[3]),
        .O(\exmem_result[7]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \exmem_result[7]_i_11 
       (.I0(p_0_in__0[4]),
        .I1(data_sram_wdata[5]),
        .I2(real_rt1),
        .I3(\exmem_result[7]_i_24_n_0 ),
        .I4(p_0_in__0[3]),
        .O(\exmem_result[7]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \exmem_result[7]_i_12 
       (.I0(p_0_in__0[4]),
        .I1(data_sram_wdata[3]),
        .I2(real_rt1),
        .I3(\exmem_result[7]_i_25_n_0 ),
        .I4(p_0_in__0[3]),
        .O(\exmem_result[7]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \exmem_result[7]_i_13 
       (.I0(p_0_in__0[4]),
        .I1(data_sram_wdata[7]),
        .I2(real_rt1),
        .I3(\exmem_result[7]_i_26_n_0 ),
        .I4(p_0_in__0[3]),
        .O(\exmem_result[7]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \exmem_result[7]_i_14 
       (.I0(\exmem_result[0]_i_4_n_0 ),
        .I1(p_0_in__0[2]),
        .I2(p_0_in__0[4]),
        .I3(\exmem_result[4]_i_4_n_0 ),
        .I4(p_0_in__0[3]),
        .O(\exmem_result[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[7]_i_15 
       (.I0(srs[7]),
        .I1(\exmem_result[7]_i_4_n_0 ),
        .O(\exmem_result[7]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[7]_i_16 
       (.I0(srs[6]),
        .I1(\exmem_result[6]_i_4_n_0 ),
        .O(\exmem_result[7]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[7]_i_17 
       (.I0(srs[5]),
        .I1(\exmem_result[5]_i_4_n_0 ),
        .O(\exmem_result[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[7]_i_18 
       (.I0(srs[4]),
        .I1(\exmem_result[4]_i_4_n_0 ),
        .O(\exmem_result[7]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[7]_i_19 
       (.I0(srs[7]),
        .I1(\exmem_result[7]_i_4_n_0 ),
        .O(\exmem_result[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[7]_i_2 
       (.I0(\exmem_result[7]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[7]_i_6_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[7]_i_7_n_0 ),
        .O(\exmem_result[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[7]_i_20 
       (.I0(srs[6]),
        .I1(\exmem_result[6]_i_4_n_0 ),
        .O(\exmem_result[7]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[7]_i_21 
       (.I0(srs[5]),
        .I1(\exmem_result[5]_i_4_n_0 ),
        .O(\exmem_result[7]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \exmem_result[7]_i_22 
       (.I0(srs[4]),
        .I1(\exmem_result[4]_i_4_n_0 ),
        .O(\exmem_result[7]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \exmem_result[7]_i_23 
       (.I0(debug_wb_rf_wdata[1]),
        .I1(debug_wb_rf_wen),
        .I2(\exmem_result[7]_i_27_n_0 ),
        .I3(\exmem_result[31]_i_29_n_0 ),
        .I4(\exmem_result[7]_i_28_n_0 ),
        .I5(idex_rtval[1]),
        .O(\exmem_result[7]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \exmem_result[7]_i_24 
       (.I0(debug_wb_rf_wdata[5]),
        .I1(debug_wb_rf_wen),
        .I2(\exmem_result[7]_i_27_n_0 ),
        .I3(\exmem_result[31]_i_29_n_0 ),
        .I4(\exmem_result[7]_i_28_n_0 ),
        .I5(idex_rtval[5]),
        .O(\exmem_result[7]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \exmem_result[7]_i_25 
       (.I0(debug_wb_rf_wdata[3]),
        .I1(debug_wb_rf_wen),
        .I2(\exmem_result[7]_i_27_n_0 ),
        .I3(\exmem_result[31]_i_29_n_0 ),
        .I4(\exmem_result[7]_i_28_n_0 ),
        .I5(idex_rtval[3]),
        .O(\exmem_result[7]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \exmem_result[7]_i_26 
       (.I0(debug_wb_rf_wdata[7]),
        .I1(debug_wb_rf_wen),
        .I2(\exmem_result[7]_i_27_n_0 ),
        .I3(\exmem_result[31]_i_29_n_0 ),
        .I4(\exmem_result[7]_i_28_n_0 ),
        .I5(idex_rtval[7]),
        .O(\exmem_result[7]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[7]_i_27 
       (.I0(idex_rt[4]),
        .I1(debug_wb_rf_wnum[4]),
        .O(\exmem_result[7]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \exmem_result[7]_i_28 
       (.I0(idex_rt[3]),
        .I1(debug_wb_rf_wnum[3]),
        .O(\exmem_result[7]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[7]_i_3 
       (.I0(\exmem_result[7]_i_4_n_0 ),
        .I1(srs[7]),
        .I2(idex_aluop[1]),
        .I3(data1[7]),
        .I4(idex_aluop[0]),
        .I5(data0[7]),
        .O(\exmem_result[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[7]_i_4 
       (.I0(data_sram_wdata[7]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[7]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[7]),
        .O(\exmem_result[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[7]_i_5 
       (.I0(\exmem_result[7]_i_10_n_0 ),
        .I1(\exmem_result[7]_i_11_n_0 ),
        .I2(p_0_in__0[1]),
        .I3(\exmem_result[7]_i_12_n_0 ),
        .I4(p_0_in__0[2]),
        .I5(\exmem_result[7]_i_13_n_0 ),
        .O(\exmem_result[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \exmem_result[7]_i_6 
       (.I0(\exmem_result[7]_i_14_n_0 ),
        .I1(p_0_in__0[1]),
        .I2(\exmem_result[9]_i_7_n_0 ),
        .O(\exmem_result[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[7]_i_7 
       (.I0(idex_aluop[0]),
        .I1(srs[7]),
        .I2(\exmem_result[7]_i_4_n_0 ),
        .O(\exmem_result[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[8]_i_1 
       (.I0(\exmem_result[8]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[8]_i_3_n_0 ),
        .I3(\exmem_result[8]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0B3B3B08)) 
    \exmem_result[8]_i_2 
       (.I0(data6),
        .I1(idex_aluop[1]),
        .I2(idex_aluop[0]),
        .I3(srs[8]),
        .I4(\exmem_result[8]_i_4_n_0 ),
        .O(\exmem_result[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[8]_i_3 
       (.I0(\exmem_result[8]_i_4_n_0 ),
        .I1(srs[8]),
        .I2(idex_aluop[1]),
        .I3(data1[8]),
        .I4(idex_aluop[0]),
        .I5(data0[8]),
        .O(\exmem_result[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[8]_i_4 
       (.I0(data_sram_wdata[8]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[8]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[8]),
        .O(\exmem_result[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \exmem_result[8]_i_5 
       (.I0(\exmem_result[8]_i_6_n_0 ),
        .I1(\exmem_result[10]_i_7_n_0 ),
        .I2(p_0_in__0[0]),
        .I3(\exmem_result[9]_i_7_n_0 ),
        .I4(p_0_in__0[1]),
        .I5(\exmem_result[11]_i_9_n_0 ),
        .O(data6));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \exmem_result[8]_i_6 
       (.I0(\exmem_result[1]_i_4_n_0 ),
        .I1(p_0_in__0[2]),
        .I2(p_0_in__0[4]),
        .I3(\exmem_result[5]_i_4_n_0 ),
        .I4(p_0_in__0[3]),
        .O(\exmem_result[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \exmem_result[9]_i_1 
       (.I0(\exmem_result[9]_i_2_n_0 ),
        .I1(idex_aluop[2]),
        .I2(\exmem_result[9]_i_3_n_0 ),
        .I3(\exmem_result[9]_i_4_n_0 ),
        .I4(\idex_ctrl_reg_n_0_[0] ),
        .O(\exmem_result[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \exmem_result[9]_i_2 
       (.I0(\exmem_result[10]_i_5_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(\exmem_result[9]_i_5_n_0 ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\exmem_result[9]_i_6_n_0 ),
        .O(\exmem_result[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \exmem_result[9]_i_3 
       (.I0(\exmem_result[9]_i_4_n_0 ),
        .I1(srs[9]),
        .I2(idex_aluop[1]),
        .I3(data1[9]),
        .I4(idex_aluop[0]),
        .I5(data0[9]),
        .O(\exmem_result[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \exmem_result[9]_i_4 
       (.I0(data_sram_wdata[9]),
        .I1(real_rt1),
        .I2(debug_wb_rf_wdata[9]),
        .I3(\exmem_result[31]_i_11_n_0 ),
        .I4(idex_rtval[9]),
        .O(\exmem_result[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \exmem_result[9]_i_5 
       (.I0(\exmem_result[9]_i_7_n_0 ),
        .I1(p_0_in__0[1]),
        .I2(\exmem_result[11]_i_9_n_0 ),
        .O(\exmem_result[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \exmem_result[9]_i_6 
       (.I0(idex_aluop[0]),
        .I1(srs[9]),
        .I2(\exmem_result[9]_i_4_n_0 ),
        .O(\exmem_result[9]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \exmem_result[9]_i_7 
       (.I0(\exmem_result[2]_i_4_n_0 ),
        .I1(p_0_in__0[2]),
        .I2(p_0_in__0[4]),
        .I3(\exmem_result[6]_i_4_n_0 ),
        .I4(p_0_in__0[3]),
        .O(\exmem_result[9]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[0]_i_1_n_0 ),
        .Q(data_sram_wdata[0]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_result_reg[0]_i_16 
       (.CI(\exmem_result_reg[0]_i_25_n_0 ),
        .CO({\exmem_result_reg[0]_i_16_n_0 ,\exmem_result_reg[0]_i_16_n_1 ,\exmem_result_reg[0]_i_16_n_2 ,\exmem_result_reg[0]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\exmem_result[0]_i_26_n_0 ,\exmem_result[0]_i_27_n_0 ,\exmem_result[0]_i_28_n_0 ,\exmem_result[0]_i_29_n_0 }),
        .O(\NLW_exmem_result_reg[0]_i_16_O_UNCONNECTED [3:0]),
        .S({\exmem_result[0]_i_30_n_0 ,\exmem_result[0]_i_31_n_0 ,\exmem_result[0]_i_32_n_0 ,\exmem_result[0]_i_33_n_0 }));
  CARRY4 \exmem_result_reg[0]_i_25 
       (.CI(1'b0),
        .CO({\exmem_result_reg[0]_i_25_n_0 ,\exmem_result_reg[0]_i_25_n_1 ,\exmem_result_reg[0]_i_25_n_2 ,\exmem_result_reg[0]_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({\exmem_result[0]_i_34_n_0 ,\exmem_result[0]_i_35_n_0 ,\exmem_result[0]_i_36_n_0 ,\exmem_result[0]_i_37_n_0 }),
        .O(\NLW_exmem_result_reg[0]_i_25_O_UNCONNECTED [3:0]),
        .S({\exmem_result[0]_i_38_n_0 ,\exmem_result[0]_i_39_n_0 ,\exmem_result[0]_i_40_n_0 ,\exmem_result[0]_i_41_n_0 }));
  CARRY4 \exmem_result_reg[0]_i_5 
       (.CI(\exmem_result_reg[0]_i_7_n_0 ),
        .CO({data2,\exmem_result_reg[0]_i_5_n_1 ,\exmem_result_reg[0]_i_5_n_2 ,\exmem_result_reg[0]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({\exmem_result[0]_i_8_n_0 ,\exmem_result[0]_i_9_n_0 ,\exmem_result[0]_i_10_n_0 ,\exmem_result[0]_i_11_n_0 }),
        .O(\NLW_exmem_result_reg[0]_i_5_O_UNCONNECTED [3:0]),
        .S({\exmem_result[0]_i_12_n_0 ,\exmem_result[0]_i_13_n_0 ,\exmem_result[0]_i_14_n_0 ,\exmem_result[0]_i_15_n_0 }));
  CARRY4 \exmem_result_reg[0]_i_7 
       (.CI(\exmem_result_reg[0]_i_16_n_0 ),
        .CO({\exmem_result_reg[0]_i_7_n_0 ,\exmem_result_reg[0]_i_7_n_1 ,\exmem_result_reg[0]_i_7_n_2 ,\exmem_result_reg[0]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({\exmem_result[0]_i_17_n_0 ,\exmem_result[0]_i_18_n_0 ,\exmem_result[0]_i_19_n_0 ,\exmem_result[0]_i_20_n_0 }),
        .O(\NLW_exmem_result_reg[0]_i_7_O_UNCONNECTED [3:0]),
        .S({\exmem_result[0]_i_21_n_0 ,\exmem_result[0]_i_22_n_0 ,\exmem_result[0]_i_23_n_0 ,\exmem_result[0]_i_24_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[10]_i_1_n_0 ),
        .Q(data_sram_wdata[10]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[11]_i_1_n_0 ),
        .Q(data_sram_wdata[11]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_result_reg[11]_i_7 
       (.CI(\exmem_result_reg[7]_i_8_n_0 ),
        .CO({\exmem_result_reg[11]_i_7_n_0 ,\exmem_result_reg[11]_i_7_n_1 ,\exmem_result_reg[11]_i_7_n_2 ,\exmem_result_reg[11]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI(srs[11:8]),
        .O(data1[11:8]),
        .S({\exmem_result[11]_i_10_n_0 ,\exmem_result[11]_i_11_n_0 ,\exmem_result[11]_i_12_n_0 ,\exmem_result[11]_i_13_n_0 }));
  CARRY4 \exmem_result_reg[11]_i_8 
       (.CI(\exmem_result_reg[7]_i_9_n_0 ),
        .CO({\exmem_result_reg[11]_i_8_n_0 ,\exmem_result_reg[11]_i_8_n_1 ,\exmem_result_reg[11]_i_8_n_2 ,\exmem_result_reg[11]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(srs[11:8]),
        .O(data0[11:8]),
        .S({\exmem_result[11]_i_14_n_0 ,\exmem_result[11]_i_15_n_0 ,\exmem_result[11]_i_16_n_0 ,\exmem_result[11]_i_17_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[12]_i_1_n_0 ),
        .Q(data_sram_wdata[12]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[13]_i_1_n_0 ),
        .Q(data_sram_wdata[13]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[14]_i_1_n_0 ),
        .Q(data_sram_wdata[14]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[15]_i_1_n_0 ),
        .Q(data_sram_wdata[15]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_result_reg[15]_i_7 
       (.CI(\exmem_result_reg[11]_i_7_n_0 ),
        .CO({\exmem_result_reg[15]_i_7_n_0 ,\exmem_result_reg[15]_i_7_n_1 ,\exmem_result_reg[15]_i_7_n_2 ,\exmem_result_reg[15]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI(srs[15:12]),
        .O(data1[15:12]),
        .S({\exmem_result[15]_i_10_n_0 ,\exmem_result[15]_i_11_n_0 ,\exmem_result[15]_i_12_n_0 ,\exmem_result[15]_i_13_n_0 }));
  CARRY4 \exmem_result_reg[15]_i_8 
       (.CI(\exmem_result_reg[11]_i_8_n_0 ),
        .CO({\exmem_result_reg[15]_i_8_n_0 ,\exmem_result_reg[15]_i_8_n_1 ,\exmem_result_reg[15]_i_8_n_2 ,\exmem_result_reg[15]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(srs[15:12]),
        .O(data0[15:12]),
        .S({\exmem_result[15]_i_14_n_0 ,\exmem_result[15]_i_15_n_0 ,\exmem_result[15]_i_16_n_0 ,\exmem_result[15]_i_17_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[16]_i_1_n_0 ),
        .Q(data_sram_wdata[16]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[17]_i_1_n_0 ),
        .Q(data_sram_wdata[17]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[18]_i_1_n_0 ),
        .Q(data_sram_wdata[18]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[19]_i_1_n_0 ),
        .Q(data_sram_wdata[19]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_result_reg[19]_i_7 
       (.CI(\exmem_result_reg[15]_i_7_n_0 ),
        .CO({\exmem_result_reg[19]_i_7_n_0 ,\exmem_result_reg[19]_i_7_n_1 ,\exmem_result_reg[19]_i_7_n_2 ,\exmem_result_reg[19]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI(srs[19:16]),
        .O(data1[19:16]),
        .S({\exmem_result[19]_i_10_n_0 ,\exmem_result[19]_i_11_n_0 ,\exmem_result[19]_i_12_n_0 ,\exmem_result[19]_i_13_n_0 }));
  CARRY4 \exmem_result_reg[19]_i_8 
       (.CI(\exmem_result_reg[15]_i_8_n_0 ),
        .CO({\exmem_result_reg[19]_i_8_n_0 ,\exmem_result_reg[19]_i_8_n_1 ,\exmem_result_reg[19]_i_8_n_2 ,\exmem_result_reg[19]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(srs[19:16]),
        .O(data0[19:16]),
        .S({\exmem_result[19]_i_14_n_0 ,\exmem_result[19]_i_15_n_0 ,\exmem_result[19]_i_16_n_0 ,\exmem_result[19]_i_17_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[1]_i_1_n_0 ),
        .Q(data_sram_wdata[1]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[20]_i_1_n_0 ),
        .Q(data_sram_wdata[20]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[21]_i_1_n_0 ),
        .Q(data_sram_wdata[21]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[22]_i_1_n_0 ),
        .Q(data_sram_wdata[22]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[23]_i_1_n_0 ),
        .Q(data_sram_wdata[23]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_result_reg[23]_i_7 
       (.CI(\exmem_result_reg[19]_i_7_n_0 ),
        .CO({\exmem_result_reg[23]_i_7_n_0 ,\exmem_result_reg[23]_i_7_n_1 ,\exmem_result_reg[23]_i_7_n_2 ,\exmem_result_reg[23]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI(srs[23:20]),
        .O(data1[23:20]),
        .S({\exmem_result[23]_i_10_n_0 ,\exmem_result[23]_i_11_n_0 ,\exmem_result[23]_i_12_n_0 ,\exmem_result[23]_i_13_n_0 }));
  CARRY4 \exmem_result_reg[23]_i_8 
       (.CI(\exmem_result_reg[19]_i_8_n_0 ),
        .CO({\exmem_result_reg[23]_i_8_n_0 ,\exmem_result_reg[23]_i_8_n_1 ,\exmem_result_reg[23]_i_8_n_2 ,\exmem_result_reg[23]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(srs[23:20]),
        .O(data0[23:20]),
        .S({\exmem_result[23]_i_14_n_0 ,\exmem_result[23]_i_15_n_0 ,\exmem_result[23]_i_16_n_0 ,\exmem_result[23]_i_17_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[24]_i_1_n_0 ),
        .Q(data_sram_wdata[24]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[25]_i_1_n_0 ),
        .Q(data_sram_wdata[25]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[26]_i_1_n_0 ),
        .Q(data_sram_wdata[26]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[27]_i_1_n_0 ),
        .Q(data_sram_wdata[27]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_result_reg[27]_i_7 
       (.CI(\exmem_result_reg[23]_i_7_n_0 ),
        .CO({\exmem_result_reg[27]_i_7_n_0 ,\exmem_result_reg[27]_i_7_n_1 ,\exmem_result_reg[27]_i_7_n_2 ,\exmem_result_reg[27]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI(srs[27:24]),
        .O(data1[27:24]),
        .S({\exmem_result[27]_i_10_n_0 ,\exmem_result[27]_i_11_n_0 ,\exmem_result[27]_i_12_n_0 ,\exmem_result[27]_i_13_n_0 }));
  CARRY4 \exmem_result_reg[27]_i_8 
       (.CI(\exmem_result_reg[23]_i_8_n_0 ),
        .CO({\exmem_result_reg[27]_i_8_n_0 ,\exmem_result_reg[27]_i_8_n_1 ,\exmem_result_reg[27]_i_8_n_2 ,\exmem_result_reg[27]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(srs[27:24]),
        .O(data0[27:24]),
        .S({\exmem_result[27]_i_14_n_0 ,\exmem_result[27]_i_15_n_0 ,\exmem_result[27]_i_16_n_0 ,\exmem_result[27]_i_17_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[28]_i_1_n_0 ),
        .Q(data_sram_wdata[28]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[29]_i_1_n_0 ),
        .Q(data_sram_wdata[29]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[2]_i_1_n_0 ),
        .Q(data_sram_wdata[2]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[30]_i_1_n_0 ),
        .Q(data_sram_wdata[30]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[31]_i_1_n_0 ),
        .Q(data_sram_wdata[31]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_result_reg[31]_i_8 
       (.CI(\exmem_result_reg[27]_i_7_n_0 ),
        .CO({\NLW_exmem_result_reg[31]_i_8_CO_UNCONNECTED [3],\exmem_result_reg[31]_i_8_n_1 ,\exmem_result_reg[31]_i_8_n_2 ,\exmem_result_reg[31]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,srs[30:28]}),
        .O(data1[31:28]),
        .S({\exmem_result[31]_i_20_n_0 ,\exmem_result[31]_i_21_n_0 ,\exmem_result[31]_i_22_n_0 ,\exmem_result[31]_i_23_n_0 }));
  CARRY4 \exmem_result_reg[31]_i_9 
       (.CI(\exmem_result_reg[27]_i_8_n_0 ),
        .CO({\NLW_exmem_result_reg[31]_i_9_CO_UNCONNECTED [3],\exmem_result_reg[31]_i_9_n_1 ,\exmem_result_reg[31]_i_9_n_2 ,\exmem_result_reg[31]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,srs[30:28]}),
        .O(data0[31:28]),
        .S({\exmem_result[31]_i_24_n_0 ,\exmem_result[31]_i_25_n_0 ,\exmem_result[31]_i_26_n_0 ,\exmem_result[31]_i_27_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[3]_i_1_n_0 ),
        .Q(data_sram_wdata[3]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_result_reg[3]_i_7 
       (.CI(1'b0),
        .CO({\exmem_result_reg[3]_i_7_n_0 ,\exmem_result_reg[3]_i_7_n_1 ,\exmem_result_reg[3]_i_7_n_2 ,\exmem_result_reg[3]_i_7_n_3 }),
        .CYINIT(1'b1),
        .DI(srs[3:0]),
        .O(data1[3:0]),
        .S({\exmem_result[3]_i_9_n_0 ,\exmem_result[3]_i_10_n_0 ,\exmem_result[3]_i_11_n_0 ,\exmem_result[3]_i_12_n_0 }));
  CARRY4 \exmem_result_reg[3]_i_8 
       (.CI(1'b0),
        .CO({\exmem_result_reg[3]_i_8_n_0 ,\exmem_result_reg[3]_i_8_n_1 ,\exmem_result_reg[3]_i_8_n_2 ,\exmem_result_reg[3]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(srs[3:0]),
        .O(data0[3:0]),
        .S({\exmem_result[3]_i_13_n_0 ,\exmem_result[3]_i_14_n_0 ,\exmem_result[3]_i_15_n_0 ,\exmem_result[3]_i_16_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[4]_i_1_n_0 ),
        .Q(data_sram_wdata[4]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[5]_i_1_n_0 ),
        .Q(data_sram_wdata[5]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[6]_i_1_n_0 ),
        .Q(data_sram_wdata[6]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[7]_i_1_n_0 ),
        .Q(data_sram_wdata[7]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_result_reg[7]_i_8 
       (.CI(\exmem_result_reg[3]_i_7_n_0 ),
        .CO({\exmem_result_reg[7]_i_8_n_0 ,\exmem_result_reg[7]_i_8_n_1 ,\exmem_result_reg[7]_i_8_n_2 ,\exmem_result_reg[7]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(srs[7:4]),
        .O(data1[7:4]),
        .S({\exmem_result[7]_i_15_n_0 ,\exmem_result[7]_i_16_n_0 ,\exmem_result[7]_i_17_n_0 ,\exmem_result[7]_i_18_n_0 }));
  CARRY4 \exmem_result_reg[7]_i_9 
       (.CI(\exmem_result_reg[3]_i_8_n_0 ),
        .CO({\exmem_result_reg[7]_i_9_n_0 ,\exmem_result_reg[7]_i_9_n_1 ,\exmem_result_reg[7]_i_9_n_2 ,\exmem_result_reg[7]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI(srs[7:4]),
        .O(data0[7:4]),
        .S({\exmem_result[7]_i_19_n_0 ,\exmem_result[7]_i_20_n_0 ,\exmem_result[7]_i_21_n_0 ,\exmem_result[7]_i_22_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[8]_i_1_n_0 ),
        .Q(data_sram_wdata[8]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_result_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_result[9]_i_1_n_0 ),
        .Q(data_sram_wdata[9]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    exmem_store_reg
       (.C(clk),
        .CE(1'b1),
        .D(\idex_ctrl_reg_n_0_[4] ),
        .Q(exmem_store),
        .R(\PC[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \exmem_target[0]_i_1 
       (.I0(idex_PC[0]),
        .I1(resetn),
        .I2(\idex_ctrl_reg_n_0_[2] ),
        .O(\exmem_target[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \exmem_target[12]_i_2 
       (.I0(p_0_in__0[4]),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .O(\exmem_target[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \exmem_target[12]_i_3 
       (.I0(p_0_in__0[3]),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .O(\exmem_target[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \exmem_target[12]_i_4 
       (.I0(p_0_in__0[2]),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .O(\exmem_target[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \exmem_target[12]_i_5 
       (.I0(p_0_in__0[1]),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .O(\exmem_target[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \exmem_target[12]_i_6 
       (.I0(p_0_in__0[4]),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .I2(A[12]),
        .O(\exmem_target[12]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \exmem_target[12]_i_7 
       (.I0(p_0_in__0[3]),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .I2(A[11]),
        .O(\exmem_target[12]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \exmem_target[12]_i_8 
       (.I0(p_0_in__0[2]),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .I2(A[10]),
        .O(\exmem_target[12]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \exmem_target[12]_i_9 
       (.I0(p_0_in__0[1]),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .I2(A[9]),
        .O(\exmem_target[12]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \exmem_target[16]_i_2 
       (.I0(\idex_inst_reg_n_0_[14] ),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .O(\exmem_target[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \exmem_target[16]_i_3 
       (.I0(\idex_inst_reg_n_0_[13] ),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .O(\exmem_target[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \exmem_target[16]_i_4 
       (.I0(\idex_inst_reg_n_0_[12] ),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .O(\exmem_target[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \exmem_target[16]_i_5 
       (.I0(\idex_inst_reg_n_0_[11] ),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .O(\exmem_target[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \exmem_target[16]_i_6 
       (.I0(\idex_inst_reg_n_0_[14] ),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .I2(A[16]),
        .O(\exmem_target[16]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \exmem_target[16]_i_7 
       (.I0(\idex_inst_reg_n_0_[13] ),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .I2(A[15]),
        .O(\exmem_target[16]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \exmem_target[16]_i_8 
       (.I0(\idex_inst_reg_n_0_[12] ),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .I2(A[14]),
        .O(\exmem_target[16]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \exmem_target[16]_i_9 
       (.I0(\idex_inst_reg_n_0_[11] ),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .I2(A[13]),
        .O(\exmem_target[16]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \exmem_target[1]_i_1 
       (.I0(\idex_ctrl_reg_n_0_[2] ),
        .I1(resetn),
        .O(\exmem_target[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \exmem_target[20]_i_2 
       (.I0(B0),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .O(\exmem_target[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \exmem_target[20]_i_3 
       (.I0(B0),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .O(\exmem_target[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \exmem_target[20]_i_4 
       (.I0(B0),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .O(\exmem_target[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \exmem_target[20]_i_5 
       (.I0(B0),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .O(\exmem_target[20]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \exmem_target[20]_i_6 
       (.I0(B0),
        .I1(idex_rt[2]),
        .I2(\idex_ctrl_reg_n_0_[2] ),
        .I3(A[20]),
        .O(\exmem_target[20]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \exmem_target[20]_i_7 
       (.I0(B0),
        .I1(idex_rt[1]),
        .I2(\idex_ctrl_reg_n_0_[2] ),
        .I3(A[19]),
        .O(\exmem_target[20]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \exmem_target[20]_i_8 
       (.I0(B0),
        .I1(idex_rt[0]),
        .I2(\idex_ctrl_reg_n_0_[2] ),
        .I3(A[18]),
        .O(\exmem_target[20]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \exmem_target[20]_i_9 
       (.I0(B0),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .I2(A[17]),
        .O(\exmem_target[20]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \exmem_target[24]_i_2 
       (.I0(B0),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .O(\exmem_target[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \exmem_target[24]_i_3 
       (.I0(B0),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .O(\exmem_target[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \exmem_target[24]_i_4 
       (.I0(B0),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .O(\exmem_target[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \exmem_target[24]_i_5 
       (.I0(B0),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .O(\exmem_target[24]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \exmem_target[24]_i_6 
       (.I0(B0),
        .I1(idex_rs[1]),
        .I2(\idex_ctrl_reg_n_0_[2] ),
        .I3(A[24]),
        .O(\exmem_target[24]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \exmem_target[24]_i_7 
       (.I0(B0),
        .I1(idex_rs[0]),
        .I2(\idex_ctrl_reg_n_0_[2] ),
        .I3(A[23]),
        .O(\exmem_target[24]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \exmem_target[24]_i_8 
       (.I0(B0),
        .I1(idex_rt[4]),
        .I2(\idex_ctrl_reg_n_0_[2] ),
        .I3(A[22]),
        .O(\exmem_target[24]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \exmem_target[24]_i_9 
       (.I0(B0),
        .I1(idex_rt[3]),
        .I2(\idex_ctrl_reg_n_0_[2] ),
        .I3(A[21]),
        .O(\exmem_target[24]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \exmem_target[28]_i_3 
       (.I0(B0),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .O(\exmem_target[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \exmem_target[28]_i_4 
       (.I0(B0),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .O(\exmem_target[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \exmem_target[28]_i_5 
       (.I0(B0),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .O(\exmem_target[28]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \exmem_target[28]_i_6 
       (.I0(\idex_ctrl_reg_n_0_[2] ),
        .I1(B0),
        .I2(A[28]),
        .O(\exmem_target[28]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \exmem_target[28]_i_7 
       (.I0(B0),
        .I1(idex_rs[4]),
        .I2(\idex_ctrl_reg_n_0_[2] ),
        .I3(A[27]),
        .O(\exmem_target[28]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \exmem_target[28]_i_8 
       (.I0(B0),
        .I1(idex_rs[3]),
        .I2(\idex_ctrl_reg_n_0_[2] ),
        .I3(A[26]),
        .O(\exmem_target[28]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \exmem_target[28]_i_9 
       (.I0(B0),
        .I1(idex_rs[2]),
        .I2(\idex_ctrl_reg_n_0_[2] ),
        .I3(A[25]),
        .O(\exmem_target[28]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \exmem_target[31]_i_3 
       (.I0(\idex_ctrl_reg_n_0_[2] ),
        .I1(B0),
        .I2(A[31]),
        .O(\exmem_target[31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \exmem_target[31]_i_4 
       (.I0(\idex_ctrl_reg_n_0_[2] ),
        .I1(B0),
        .I2(A[30]),
        .O(\exmem_target[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \exmem_target[31]_i_5 
       (.I0(\idex_ctrl_reg_n_0_[2] ),
        .I1(B0),
        .I2(A[29]),
        .O(\exmem_target[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \exmem_target[4]_i_2 
       (.I0(\idex_inst_reg_n_0_[2] ),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .O(\exmem_target[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \exmem_target[4]_i_3 
       (.I0(\idex_inst_reg_n_0_[1] ),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .O(\exmem_target[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \exmem_target[4]_i_4 
       (.I0(\idex_inst_reg_n_0_[0] ),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .O(\exmem_target[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \exmem_target[4]_i_5 
       (.I0(\idex_inst_reg_n_0_[2] ),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .I2(A[4]),
        .O(\exmem_target[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \exmem_target[4]_i_6 
       (.I0(\idex_inst_reg_n_0_[1] ),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .I2(A[3]),
        .O(\exmem_target[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \exmem_target[4]_i_7 
       (.I0(\idex_inst_reg_n_0_[0] ),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .I2(A[2]),
        .O(\exmem_target[4]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \exmem_target[4]_i_8 
       (.I0(\idex_ctrl_reg_n_0_[2] ),
        .I1(A[1]),
        .O(\exmem_target[4]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \exmem_target[8]_i_2 
       (.I0(p_0_in__0[0]),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .O(\exmem_target[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \exmem_target[8]_i_3 
       (.I0(\idex_inst_reg_n_0_[5] ),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .O(\exmem_target[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \exmem_target[8]_i_4 
       (.I0(\idex_inst_reg_n_0_[4] ),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .O(\exmem_target[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \exmem_target[8]_i_5 
       (.I0(\idex_inst_reg_n_0_[3] ),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .O(\exmem_target[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \exmem_target[8]_i_6 
       (.I0(p_0_in__0[0]),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .I2(A[8]),
        .O(\exmem_target[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \exmem_target[8]_i_7 
       (.I0(\idex_inst_reg_n_0_[5] ),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .I2(A[7]),
        .O(\exmem_target[8]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \exmem_target[8]_i_8 
       (.I0(\idex_inst_reg_n_0_[4] ),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .I2(A[6]),
        .O(\exmem_target[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \exmem_target[8]_i_9 
       (.I0(\idex_inst_reg_n_0_[3] ),
        .I1(\idex_ctrl_reg_n_0_[2] ),
        .I2(A[5]),
        .O(\exmem_target[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target[0]_i_1_n_0 ),
        .Q(upd_target[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[12]_i_1_n_6 ),
        .Q(upd_target[10]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[12]_i_1_n_5 ),
        .Q(upd_target[11]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[12]_i_1_n_4 ),
        .Q(upd_target[12]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_target_reg[12]_i_1 
       (.CI(\exmem_target_reg[8]_i_1_n_0 ),
        .CO({\exmem_target_reg[12]_i_1_n_0 ,\exmem_target_reg[12]_i_1_n_1 ,\exmem_target_reg[12]_i_1_n_2 ,\exmem_target_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\exmem_target[12]_i_2_n_0 ,\exmem_target[12]_i_3_n_0 ,\exmem_target[12]_i_4_n_0 ,\exmem_target[12]_i_5_n_0 }),
        .O({\exmem_target_reg[12]_i_1_n_4 ,\exmem_target_reg[12]_i_1_n_5 ,\exmem_target_reg[12]_i_1_n_6 ,\exmem_target_reg[12]_i_1_n_7 }),
        .S({\exmem_target[12]_i_6_n_0 ,\exmem_target[12]_i_7_n_0 ,\exmem_target[12]_i_8_n_0 ,\exmem_target[12]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[16]_i_1_n_7 ),
        .Q(upd_target[13]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[16]_i_1_n_6 ),
        .Q(upd_target[14]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[16]_i_1_n_5 ),
        .Q(upd_target[15]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[16]_i_1_n_4 ),
        .Q(upd_target[16]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_target_reg[16]_i_1 
       (.CI(\exmem_target_reg[12]_i_1_n_0 ),
        .CO({\exmem_target_reg[16]_i_1_n_0 ,\exmem_target_reg[16]_i_1_n_1 ,\exmem_target_reg[16]_i_1_n_2 ,\exmem_target_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\exmem_target[16]_i_2_n_0 ,\exmem_target[16]_i_3_n_0 ,\exmem_target[16]_i_4_n_0 ,\exmem_target[16]_i_5_n_0 }),
        .O({\exmem_target_reg[16]_i_1_n_4 ,\exmem_target_reg[16]_i_1_n_5 ,\exmem_target_reg[16]_i_1_n_6 ,\exmem_target_reg[16]_i_1_n_7 }),
        .S({\exmem_target[16]_i_6_n_0 ,\exmem_target[16]_i_7_n_0 ,\exmem_target[16]_i_8_n_0 ,\exmem_target[16]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[20]_i_1_n_7 ),
        .Q(upd_target[17]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[20]_i_1_n_6 ),
        .Q(upd_target[18]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[20]_i_1_n_5 ),
        .Q(upd_target[19]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[4]_i_1_n_7 ),
        .Q(upd_target[1]),
        .R(\exmem_target[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[20]_i_1_n_4 ),
        .Q(upd_target[20]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_target_reg[20]_i_1 
       (.CI(\exmem_target_reg[16]_i_1_n_0 ),
        .CO({\exmem_target_reg[20]_i_1_n_0 ,\exmem_target_reg[20]_i_1_n_1 ,\exmem_target_reg[20]_i_1_n_2 ,\exmem_target_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\exmem_target[20]_i_2_n_0 ,\exmem_target[20]_i_3_n_0 ,\exmem_target[20]_i_4_n_0 ,\exmem_target[20]_i_5_n_0 }),
        .O({\exmem_target_reg[20]_i_1_n_4 ,\exmem_target_reg[20]_i_1_n_5 ,\exmem_target_reg[20]_i_1_n_6 ,\exmem_target_reg[20]_i_1_n_7 }),
        .S({\exmem_target[20]_i_6_n_0 ,\exmem_target[20]_i_7_n_0 ,\exmem_target[20]_i_8_n_0 ,\exmem_target[20]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[24]_i_1_n_7 ),
        .Q(upd_target[21]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[24]_i_1_n_6 ),
        .Q(upd_target[22]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[24]_i_1_n_5 ),
        .Q(upd_target[23]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[24]_i_1_n_4 ),
        .Q(upd_target[24]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_target_reg[24]_i_1 
       (.CI(\exmem_target_reg[20]_i_1_n_0 ),
        .CO({\exmem_target_reg[24]_i_1_n_0 ,\exmem_target_reg[24]_i_1_n_1 ,\exmem_target_reg[24]_i_1_n_2 ,\exmem_target_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\exmem_target[24]_i_2_n_0 ,\exmem_target[24]_i_3_n_0 ,\exmem_target[24]_i_4_n_0 ,\exmem_target[24]_i_5_n_0 }),
        .O({\exmem_target_reg[24]_i_1_n_4 ,\exmem_target_reg[24]_i_1_n_5 ,\exmem_target_reg[24]_i_1_n_6 ,\exmem_target_reg[24]_i_1_n_7 }),
        .S({\exmem_target[24]_i_6_n_0 ,\exmem_target[24]_i_7_n_0 ,\exmem_target[24]_i_8_n_0 ,\exmem_target[24]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[28]_i_1_n_7 ),
        .Q(upd_target[25]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[28]_i_1_n_6 ),
        .Q(upd_target[26]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[28]_i_1_n_5 ),
        .Q(upd_target[27]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[28]_i_1_n_4 ),
        .Q(upd_target[28]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_target_reg[28]_i_1 
       (.CI(\exmem_target_reg[24]_i_1_n_0 ),
        .CO({\exmem_target_reg[28]_i_1_n_0 ,\exmem_target_reg[28]_i_1_n_1 ,\exmem_target_reg[28]_i_1_n_2 ,\exmem_target_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({A[28],\exmem_target[28]_i_3_n_0 ,\exmem_target[28]_i_4_n_0 ,\exmem_target[28]_i_5_n_0 }),
        .O({\exmem_target_reg[28]_i_1_n_4 ,\exmem_target_reg[28]_i_1_n_5 ,\exmem_target_reg[28]_i_1_n_6 ,\exmem_target_reg[28]_i_1_n_7 }),
        .S({\exmem_target[28]_i_6_n_0 ,\exmem_target[28]_i_7_n_0 ,\exmem_target[28]_i_8_n_0 ,\exmem_target[28]_i_9_n_0 }));
  CARRY4 \exmem_target_reg[28]_i_2 
       (.CI(\exmem_flush_target_reg[24]_i_3_n_0 ),
        .CO({\exmem_target_reg[28]_i_2_n_0 ,\exmem_target_reg[28]_i_2_n_1 ,\exmem_target_reg[28]_i_2_n_2 ,\exmem_target_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(A[28:25]),
        .S(idex_PC[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[31]_i_1_n_7 ),
        .Q(upd_target[29]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[4]_i_1_n_6 ),
        .Q(upd_target[2]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[31]_i_1_n_6 ),
        .Q(upd_target[30]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[31]_i_1_n_5 ),
        .Q(upd_target[31]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_target_reg[31]_i_1 
       (.CI(\exmem_target_reg[28]_i_1_n_0 ),
        .CO({\NLW_exmem_target_reg[31]_i_1_CO_UNCONNECTED [3:2],\exmem_target_reg[31]_i_1_n_2 ,\exmem_target_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,A[30:29]}),
        .O({\NLW_exmem_target_reg[31]_i_1_O_UNCONNECTED [3],\exmem_target_reg[31]_i_1_n_5 ,\exmem_target_reg[31]_i_1_n_6 ,\exmem_target_reg[31]_i_1_n_7 }),
        .S({1'b0,\exmem_target[31]_i_3_n_0 ,\exmem_target[31]_i_4_n_0 ,\exmem_target[31]_i_5_n_0 }));
  CARRY4 \exmem_target_reg[31]_i_2 
       (.CI(\exmem_target_reg[28]_i_2_n_0 ),
        .CO({\NLW_exmem_target_reg[31]_i_2_CO_UNCONNECTED [3:2],\exmem_target_reg[31]_i_2_n_2 ,\exmem_target_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_exmem_target_reg[31]_i_2_O_UNCONNECTED [3],A[31:29]}),
        .S({1'b0,idex_PC[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[4]_i_1_n_5 ),
        .Q(upd_target[3]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[4]_i_1_n_4 ),
        .Q(upd_target[4]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_target_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\exmem_target_reg[4]_i_1_n_0 ,\exmem_target_reg[4]_i_1_n_1 ,\exmem_target_reg[4]_i_1_n_2 ,\exmem_target_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\exmem_target[4]_i_2_n_0 ,\exmem_target[4]_i_3_n_0 ,\exmem_target[4]_i_4_n_0 ,1'b0}),
        .O({\exmem_target_reg[4]_i_1_n_4 ,\exmem_target_reg[4]_i_1_n_5 ,\exmem_target_reg[4]_i_1_n_6 ,\exmem_target_reg[4]_i_1_n_7 }),
        .S({\exmem_target[4]_i_5_n_0 ,\exmem_target[4]_i_6_n_0 ,\exmem_target[4]_i_7_n_0 ,\exmem_target[4]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[8]_i_1_n_7 ),
        .Q(upd_target[5]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[8]_i_1_n_6 ),
        .Q(upd_target[6]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[8]_i_1_n_5 ),
        .Q(upd_target[7]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[8]_i_1_n_4 ),
        .Q(upd_target[8]),
        .R(\PC[31]_i_1_n_0 ));
  CARRY4 \exmem_target_reg[8]_i_1 
       (.CI(\exmem_target_reg[4]_i_1_n_0 ),
        .CO({\exmem_target_reg[8]_i_1_n_0 ,\exmem_target_reg[8]_i_1_n_1 ,\exmem_target_reg[8]_i_1_n_2 ,\exmem_target_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\exmem_target[8]_i_2_n_0 ,\exmem_target[8]_i_3_n_0 ,\exmem_target[8]_i_4_n_0 ,\exmem_target[8]_i_5_n_0 }),
        .O({\exmem_target_reg[8]_i_1_n_4 ,\exmem_target_reg[8]_i_1_n_5 ,\exmem_target_reg[8]_i_1_n_6 ,\exmem_target_reg[8]_i_1_n_7 }),
        .S({\exmem_target[8]_i_6_n_0 ,\exmem_target[8]_i_7_n_0 ,\exmem_target[8]_i_8_n_0 ,\exmem_target[8]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \exmem_target_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\exmem_target_reg[12]_i_1_n_7 ),
        .Q(upd_target[9]),
        .R(\PC[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    exmem_valid_i_1
       (.I0(idex_valid),
        .I1(resetn),
        .I2(flush),
        .O(exmem_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    exmem_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(exmem_valid_i_1_n_0),
        .Q(inst_commit_en),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4000FFFF40000000)) 
    exmem_wen_i_1
       (.I0(exmem_wen_i_2_n_0),
        .I1(exmem_wen_i_3_n_0),
        .I2(exmem_wen_i_4_n_0),
        .I3(exmem_wen_i_5_n_0),
        .I4(\idex_ctrl_reg_n_0_[5] ),
        .I5(\idex_ctrl_reg_n_0_[6] ),
        .O(exmem_wen_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    exmem_wen_i_2
       (.I0(\exmem_result[16]_i_4_n_0 ),
        .I1(\exmem_result[17]_i_4_n_0 ),
        .I2(\exmem_result[18]_i_4_n_0 ),
        .I3(\exmem_result[19]_i_4_n_0 ),
        .I4(exmem_wen_i_6_n_0),
        .O(exmem_wen_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    exmem_wen_i_3
       (.I0(\exmem_result[28]_i_4_n_0 ),
        .I1(\exmem_result[29]_i_4_n_0 ),
        .I2(\exmem_result[31]_i_4_n_0 ),
        .I3(\exmem_result[30]_i_4_n_0 ),
        .I4(exmem_wen_i_7_n_0),
        .O(exmem_wen_i_3_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    exmem_wen_i_4
       (.I0(\exmem_result[12]_i_4_n_0 ),
        .I1(\exmem_result[13]_i_4_n_0 ),
        .I2(\exmem_result[14]_i_4_n_0 ),
        .I3(\exmem_result[15]_i_4_n_0 ),
        .I4(exmem_wen_i_8_n_0),
        .O(exmem_wen_i_4_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    exmem_wen_i_5
       (.I0(\exmem_result[4]_i_4_n_0 ),
        .I1(\exmem_result[5]_i_4_n_0 ),
        .I2(\exmem_result[6]_i_4_n_0 ),
        .I3(\exmem_result[7]_i_4_n_0 ),
        .I4(exmem_wen_i_9_n_0),
        .O(exmem_wen_i_5_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    exmem_wen_i_6
       (.I0(\exmem_result[23]_i_4_n_0 ),
        .I1(\exmem_result[22]_i_4_n_0 ),
        .I2(\exmem_result[21]_i_4_n_0 ),
        .I3(\exmem_result[20]_i_4_n_0 ),
        .O(exmem_wen_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    exmem_wen_i_7
       (.I0(\exmem_result[25]_i_4_n_0 ),
        .I1(\exmem_result[24]_i_4_n_0 ),
        .I2(\exmem_result[27]_i_4_n_0 ),
        .I3(\exmem_result[26]_i_4_n_0 ),
        .O(exmem_wen_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    exmem_wen_i_8
       (.I0(\exmem_result[9]_i_4_n_0 ),
        .I1(\exmem_result[8]_i_4_n_0 ),
        .I2(\exmem_result[11]_i_4_n_0 ),
        .I3(\exmem_result[10]_i_4_n_0 ),
        .O(exmem_wen_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    exmem_wen_i_9
       (.I0(\exmem_result[1]_i_4_n_0 ),
        .I1(\exmem_result[0]_i_4_n_0 ),
        .I2(\exmem_result[3]_i_4_n_0 ),
        .I3(\exmem_result[2]_i_4_n_0 ),
        .O(exmem_wen_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    exmem_wen_reg
       (.C(clk),
        .CE(1'b1),
        .D(exmem_wen_i_1_n_0),
        .Q(exmem_wen),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[0]),
        .Q(idex_PC[0]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[10]),
        .Q(idex_PC[10]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[11]),
        .Q(idex_PC[11]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[12]),
        .Q(idex_PC[12]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[13]),
        .Q(idex_PC[13]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[14]),
        .Q(idex_PC[14]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[15]),
        .Q(idex_PC[15]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[16]),
        .Q(idex_PC[16]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[17]),
        .Q(idex_PC[17]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[18]),
        .Q(idex_PC[18]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[19]),
        .Q(idex_PC[19]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[1]),
        .Q(idex_PC[1]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[20]),
        .Q(idex_PC[20]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[21]),
        .Q(idex_PC[21]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[22]),
        .Q(idex_PC[22]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[23]),
        .Q(idex_PC[23]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[24]),
        .Q(idex_PC[24]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[25]),
        .Q(idex_PC[25]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[26]),
        .Q(idex_PC[26]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[27]),
        .Q(idex_PC[27]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[28]),
        .Q(idex_PC[28]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[29]),
        .Q(idex_PC[29]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[2]),
        .Q(idex_PC[2]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[30]),
        .Q(idex_PC[30]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[31]),
        .Q(idex_PC[31]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[3]),
        .Q(idex_PC[3]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[4]),
        .Q(idex_PC[4]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[5]),
        .Q(idex_PC[5]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[6]),
        .Q(idex_PC[6]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[7]),
        .Q(idex_PC[7]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[8]),
        .Q(idex_PC[8]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_PC_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_PC[9]),
        .Q(idex_PC[9]),
        .R(\PC[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \idex_aluop[0]_i_1 
       (.I0(icode_1),
        .I1(icode_2),
        .I2(icode_4),
        .O(aluop[0]));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \idex_aluop[0]_i_2 
       (.I0(icode_10),
        .I1(\idex_ctrl[0]_i_8_n_0 ),
        .I2(inst_sram_rdata[5]),
        .I3(inst_sram_rdata[1]),
        .I4(\idex_ctrl[0]_i_11_n_0 ),
        .I5(\idex_ctrl[0]_i_12_n_0 ),
        .O(icode_4));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \idex_aluop[1]_i_1 
       (.I0(icode_8),
        .I1(icode_2),
        .I2(icode_5),
        .O(aluop[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \idex_aluop[2]_i_1 
       (.I0(icode_5),
        .I1(\idex_ctrl[0]_i_6_n_0 ),
        .O(aluop[2]));
  FDRE #(
    .INIT(1'b0)) 
    \idex_aluop_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(aluop[0]),
        .Q(idex_aluop[0]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_aluop_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(aluop[1]),
        .Q(idex_aluop[1]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_aluop_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(aluop[2]),
        .Q(idex_aluop[2]),
        .R(\PC[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \idex_ctrl[0]_i_1 
       (.I0(icode_5),
        .I1(icode_8),
        .I2(icode_0),
        .I3(icode_2),
        .I4(icode_1),
        .I5(\idex_ctrl[0]_i_6_n_0 ),
        .O(p_2_in));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \idex_ctrl[0]_i_10 
       (.I0(inst_sram_rdata[7]),
        .I1(inst_sram_rdata[8]),
        .I2(inst_sram_rdata[1]),
        .I3(inst_sram_rdata[6]),
        .O(\idex_ctrl[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \idex_ctrl[0]_i_11 
       (.I0(inst_sram_rdata[4]),
        .I1(inst_sram_rdata[3]),
        .O(\idex_ctrl[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \idex_ctrl[0]_i_12 
       (.I0(inst_sram_rdata[2]),
        .I1(inst_sram_rdata[10]),
        .I2(inst_sram_rdata[9]),
        .O(\idex_ctrl[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \idex_ctrl[0]_i_13 
       (.I0(inst_sram_rdata[6]),
        .I1(inst_sram_rdata[1]),
        .I2(\idex_ctrl[5]_i_3_n_0 ),
        .I3(inst_sram_rdata[5]),
        .I4(inst_sram_rdata[2]),
        .I5(\idex_ctrl[0]_i_11_n_0 ),
        .O(\idex_ctrl[0]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \idex_ctrl[0]_i_14 
       (.I0(inst_sram_rdata[5]),
        .I1(inst_sram_rdata[1]),
        .O(\idex_ctrl[0]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \idex_ctrl[0]_i_2 
       (.I0(icode_10),
        .I1(\idex_ctrl[0]_i_7_n_0 ),
        .I2(inst_sram_rdata[3]),
        .I3(inst_sram_rdata[10]),
        .I4(inst_sram_rdata[9]),
        .O(icode_8));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \idex_ctrl[0]_i_3 
       (.I0(icode_10),
        .I1(\idex_ctrl[0]_i_8_n_0 ),
        .I2(\idex_ctrl[0]_i_9_n_0 ),
        .I3(inst_sram_rdata[5]),
        .I4(inst_sram_rdata[10]),
        .I5(inst_sram_rdata[9]),
        .O(icode_0));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \idex_ctrl[0]_i_4 
       (.I0(icode_10),
        .I1(\idex_ctrl[0]_i_10_n_0 ),
        .I2(inst_sram_rdata[5]),
        .I3(inst_sram_rdata[0]),
        .I4(\idex_ctrl[0]_i_11_n_0 ),
        .I5(\idex_ctrl[0]_i_12_n_0 ),
        .O(icode_2));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \idex_ctrl[0]_i_5 
       (.I0(icode_10),
        .I1(\idex_ctrl[0]_i_8_n_0 ),
        .I2(inst_sram_rdata[5]),
        .I3(inst_sram_rdata[2]),
        .I4(\idex_ctrl[0]_i_11_n_0 ),
        .I5(\idex_ctrl[5]_i_5_n_0 ),
        .O(icode_1));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAAAAA)) 
    \idex_ctrl[0]_i_6 
       (.I0(icode_4),
        .I1(inst_sram_rdata[9]),
        .I2(inst_sram_rdata[10]),
        .I3(inst_sram_rdata[0]),
        .I4(\idex_ctrl[0]_i_13_n_0 ),
        .I5(icode_10),
        .O(\idex_ctrl[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \idex_ctrl[0]_i_7 
       (.I0(inst_sram_rdata[6]),
        .I1(inst_sram_rdata[2]),
        .I2(\idex_ctrl[5]_i_3_n_0 ),
        .I3(\idex_ctrl[0]_i_14_n_0 ),
        .I4(inst_sram_rdata[4]),
        .I5(inst_sram_rdata[0]),
        .O(\idex_ctrl[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \idex_ctrl[0]_i_8 
       (.I0(inst_sram_rdata[7]),
        .I1(inst_sram_rdata[8]),
        .I2(inst_sram_rdata[0]),
        .I3(inst_sram_rdata[6]),
        .O(\idex_ctrl[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \idex_ctrl[0]_i_9 
       (.I0(inst_sram_rdata[3]),
        .I1(inst_sram_rdata[4]),
        .I2(inst_sram_rdata[1]),
        .I3(inst_sram_rdata[2]),
        .O(\idex_ctrl[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001002)) 
    \idex_ctrl[1]_i_1 
       (.I0(inst_sram_rdata[27]),
        .I1(inst_sram_rdata[29]),
        .I2(inst_sram_rdata[26]),
        .I3(inst_sram_rdata[28]),
        .I4(inst_sram_rdata[30]),
        .I5(inst_sram_rdata[31]),
        .O(ctrl[1]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \idex_ctrl[2]_i_1 
       (.I0(inst_sram_rdata[31]),
        .I1(inst_sram_rdata[30]),
        .I2(inst_sram_rdata[28]),
        .I3(inst_sram_rdata[26]),
        .I4(inst_sram_rdata[29]),
        .I5(inst_sram_rdata[27]),
        .O(ctrl[2]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \idex_ctrl[3]_i_1 
       (.I0(inst_sram_rdata[30]),
        .I1(inst_sram_rdata[28]),
        .I2(inst_sram_rdata[29]),
        .I3(inst_sram_rdata[31]),
        .I4(inst_sram_rdata[26]),
        .I5(inst_sram_rdata[27]),
        .O(write_rt));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \idex_ctrl[4]_i_1 
       (.I0(inst_sram_rdata[28]),
        .I1(inst_sram_rdata[30]),
        .I2(inst_sram_rdata[27]),
        .I3(inst_sram_rdata[26]),
        .I4(inst_sram_rdata[31]),
        .I5(inst_sram_rdata[29]),
        .O(ctrl[4]));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \idex_ctrl[5]_i_1 
       (.I0(icode_10),
        .I1(inst_sram_rdata[6]),
        .I2(inst_sram_rdata[5]),
        .I3(\idex_ctrl[5]_i_3_n_0 ),
        .I4(\idex_ctrl[5]_i_4_n_0 ),
        .I5(\idex_ctrl[5]_i_5_n_0 ),
        .O(icode_9));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \idex_ctrl[5]_i_2 
       (.I0(inst_sram_rdata[30]),
        .I1(inst_sram_rdata[29]),
        .I2(inst_sram_rdata[31]),
        .I3(inst_sram_rdata[26]),
        .I4(inst_sram_rdata[27]),
        .I5(inst_sram_rdata[28]),
        .O(icode_10));
  LUT2 #(
    .INIT(4'h1)) 
    \idex_ctrl[5]_i_3 
       (.I0(inst_sram_rdata[8]),
        .I1(inst_sram_rdata[7]),
        .O(\idex_ctrl[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \idex_ctrl[5]_i_4 
       (.I0(inst_sram_rdata[0]),
        .I1(inst_sram_rdata[4]),
        .I2(inst_sram_rdata[2]),
        .I3(inst_sram_rdata[3]),
        .O(\idex_ctrl[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \idex_ctrl[5]_i_5 
       (.I0(inst_sram_rdata[1]),
        .I1(inst_sram_rdata[10]),
        .I2(inst_sram_rdata[9]),
        .O(\idex_ctrl[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0EEEEFFF0E0E0)) 
    \idex_ctrl[6]_i_1 
       (.I0(icode_9),
        .I1(p_2_in),
        .I2(\idex_ctrl[6]_i_2_n_0 ),
        .I3(inst_sram_rdata[16]),
        .I4(write_rt),
        .I5(inst_sram_rdata[11]),
        .O(ctrl[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \idex_ctrl[6]_i_2 
       (.I0(inst_sram_rdata[18]),
        .I1(write_rt),
        .I2(inst_sram_rdata[13]),
        .I3(inst_sram_rdata[17]),
        .I4(inst_sram_rdata[12]),
        .I5(\idex_ctrl[6]_i_3_n_0 ),
        .O(\idex_ctrl[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \idex_ctrl[6]_i_3 
       (.I0(inst_sram_rdata[14]),
        .I1(inst_sram_rdata[19]),
        .I2(inst_sram_rdata[15]),
        .I3(write_rt),
        .I4(inst_sram_rdata[20]),
        .O(\idex_ctrl[6]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_ctrl_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_2_in),
        .Q(\idex_ctrl_reg_n_0_[0] ),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_ctrl_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(ctrl[1]),
        .Q(p_0_in),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_ctrl_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(ctrl[2]),
        .Q(\idex_ctrl_reg_n_0_[2] ),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_ctrl_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(write_rt),
        .Q(p_1_in),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_ctrl_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(ctrl[4]),
        .Q(\idex_ctrl_reg_n_0_[4] ),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_ctrl_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(icode_9),
        .Q(\idex_ctrl_reg_n_0_[5] ),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_ctrl_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(ctrl[6]),
        .Q(\idex_ctrl_reg_n_0_[6] ),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_inst_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sram_rdata[0]),
        .Q(\idex_inst_reg_n_0_[0] ),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_inst_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sram_rdata[10]),
        .Q(p_0_in__0[4]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_inst_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sram_rdata[11]),
        .Q(\idex_inst_reg_n_0_[11] ),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_inst_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sram_rdata[12]),
        .Q(\idex_inst_reg_n_0_[12] ),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_inst_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sram_rdata[13]),
        .Q(\idex_inst_reg_n_0_[13] ),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_inst_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sram_rdata[14]),
        .Q(\idex_inst_reg_n_0_[14] ),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_inst_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sram_rdata[15]),
        .Q(B0),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_inst_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sram_rdata[1]),
        .Q(\idex_inst_reg_n_0_[1] ),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_inst_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sram_rdata[2]),
        .Q(\idex_inst_reg_n_0_[2] ),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_inst_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sram_rdata[3]),
        .Q(\idex_inst_reg_n_0_[3] ),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_inst_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sram_rdata[4]),
        .Q(\idex_inst_reg_n_0_[4] ),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_inst_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sram_rdata[5]),
        .Q(\idex_inst_reg_n_0_[5] ),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_inst_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sram_rdata[6]),
        .Q(p_0_in__0[0]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_inst_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sram_rdata[7]),
        .Q(p_0_in__0[1]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_inst_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sram_rdata[8]),
        .Q(p_0_in__0[2]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_inst_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sram_rdata[9]),
        .Q(p_0_in__0[3]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[0]),
        .Q(idex_predict_PC[0]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[10]),
        .Q(idex_predict_PC[10]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[11]),
        .Q(idex_predict_PC[11]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[12]),
        .Q(idex_predict_PC[12]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[13]),
        .Q(idex_predict_PC[13]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[14]),
        .Q(idex_predict_PC[14]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[15]),
        .Q(idex_predict_PC[15]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[16]),
        .Q(idex_predict_PC[16]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[17]),
        .Q(idex_predict_PC[17]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[18]),
        .Q(idex_predict_PC[18]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[19]),
        .Q(idex_predict_PC[19]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[1]),
        .Q(idex_predict_PC[1]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[20]),
        .Q(idex_predict_PC[20]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[21]),
        .Q(idex_predict_PC[21]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[22]),
        .Q(idex_predict_PC[22]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[23]),
        .Q(idex_predict_PC[23]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[24]),
        .Q(idex_predict_PC[24]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[25]),
        .Q(idex_predict_PC[25]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[26]),
        .Q(idex_predict_PC[26]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[27]),
        .Q(idex_predict_PC[27]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[28]),
        .Q(idex_predict_PC[28]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[29]),
        .Q(idex_predict_PC[29]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[2]),
        .Q(idex_predict_PC[2]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[30]),
        .Q(idex_predict_PC[30]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[31]),
        .Q(idex_predict_PC[31]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[3]),
        .Q(idex_predict_PC[3]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[4]),
        .Q(idex_predict_PC[4]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[5]),
        .Q(idex_predict_PC[5]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[6]),
        .Q(idex_predict_PC[6]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[7]),
        .Q(idex_predict_PC[7]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[8]),
        .Q(idex_predict_PC[8]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_predict_PC_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_PC[9]),
        .Q(idex_predict_PC[9]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    idex_predict_jump_reg
       (.C(clk),
        .CE(1'b1),
        .D(ifid_predict_jump),
        .Q(idex_predict_jump),
        .R(\PC[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \idex_rd[0]_i_1 
       (.I0(inst_sram_rdata[16]),
        .I1(write_rt),
        .I2(inst_sram_rdata[11]),
        .O(rd[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \idex_rd[1]_i_1 
       (.I0(inst_sram_rdata[17]),
        .I1(write_rt),
        .I2(inst_sram_rdata[12]),
        .O(rd[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \idex_rd[2]_i_1 
       (.I0(inst_sram_rdata[18]),
        .I1(write_rt),
        .I2(inst_sram_rdata[13]),
        .O(rd[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \idex_rd[3]_i_1 
       (.I0(inst_sram_rdata[19]),
        .I1(write_rt),
        .I2(inst_sram_rdata[14]),
        .O(rd[3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \idex_rd[4]_i_1 
       (.I0(inst_sram_rdata[20]),
        .I1(write_rt),
        .I2(inst_sram_rdata[15]),
        .O(rd[4]));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rd_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(rd[0]),
        .Q(idex_rd[0]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rd_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(rd[1]),
        .Q(idex_rd[1]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rd_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(rd[2]),
        .Q(idex_rd[2]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rd_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(rd[3]),
        .Q(idex_rd[3]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rd_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(rd[4]),
        .Q(idex_rd[4]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rs_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sram_rdata[21]),
        .Q(idex_rs[0]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rs_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sram_rdata[22]),
        .Q(idex_rs[1]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rs_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sram_rdata[23]),
        .Q(idex_rs[2]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rs_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sram_rdata[24]),
        .Q(idex_rs[3]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rs_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sram_rdata[25]),
        .Q(idex_rs[4]),
        .R(\PC[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[0]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[0]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[0]),
        .I5(data_sram_rdata[0]),
        .O(\idex_rsval[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[10]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[10]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[10]),
        .I5(data_sram_rdata[10]),
        .O(\idex_rsval[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[11]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[11]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[11]),
        .I5(data_sram_rdata[11]),
        .O(\idex_rsval[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[12]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[12]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[12]),
        .I5(data_sram_rdata[12]),
        .O(\idex_rsval[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[13]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[13]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[13]),
        .I5(data_sram_rdata[13]),
        .O(\idex_rsval[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[14]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[14]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[14]),
        .I5(data_sram_rdata[14]),
        .O(\idex_rsval[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[15]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[15]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[15]),
        .I5(data_sram_rdata[15]),
        .O(\idex_rsval[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[16]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[16]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[16]),
        .I5(data_sram_rdata[16]),
        .O(\idex_rsval[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[17]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[17]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[17]),
        .I5(data_sram_rdata[17]),
        .O(\idex_rsval[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[18]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[18]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[18]),
        .I5(data_sram_rdata[18]),
        .O(\idex_rsval[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[19]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[19]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[19]),
        .I5(data_sram_rdata[19]),
        .O(\idex_rsval[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[1]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[1]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[1]),
        .I5(data_sram_rdata[1]),
        .O(\idex_rsval[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[20]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[20]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[20]),
        .I5(data_sram_rdata[20]),
        .O(\idex_rsval[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[21]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[21]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[21]),
        .I5(data_sram_rdata[21]),
        .O(\idex_rsval[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[22]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[22]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[22]),
        .I5(data_sram_rdata[22]),
        .O(\idex_rsval[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[23]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[23]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[23]),
        .I5(data_sram_rdata[23]),
        .O(\idex_rsval[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[24]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[24]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[24]),
        .I5(data_sram_rdata[24]),
        .O(\idex_rsval[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[25]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[25]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[25]),
        .I5(data_sram_rdata[25]),
        .O(\idex_rsval[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[26]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[26]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[26]),
        .I5(data_sram_rdata[26]),
        .O(\idex_rsval[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[27]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[27]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[27]),
        .I5(data_sram_rdata[27]),
        .O(\idex_rsval[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[28]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[28]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[28]),
        .I5(data_sram_rdata[28]),
        .O(\idex_rsval[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[29]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[29]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[29]),
        .I5(data_sram_rdata[29]),
        .O(\idex_rsval[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[2]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[2]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[2]),
        .I5(data_sram_rdata[2]),
        .O(\idex_rsval[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[30]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[30]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[30]),
        .I5(data_sram_rdata[30]),
        .O(\idex_rsval[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[31]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[31]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[31]),
        .I5(data_sram_rdata[31]),
        .O(\idex_rsval[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \idex_rsval[31]_i_2 
       (.I0(inst_sram_rdata[21]),
        .I1(inst_sram_rdata[24]),
        .I2(inst_sram_rdata[25]),
        .I3(inst_sram_rdata[22]),
        .I4(inst_sram_rdata[23]),
        .O(idex_rsval20_in));
  LUT6 #(
    .INIT(64'h8200000000008200)) 
    \idex_rsval[31]_i_3 
       (.I0(debug_wb_rf_wen),
        .I1(debug_wb_rf_wnum[4]),
        .I2(inst_sram_rdata[25]),
        .I3(\idex_rsval[31]_i_4_n_0 ),
        .I4(inst_sram_rdata[24]),
        .I5(debug_wb_rf_wnum[3]),
        .O(idex_rsval3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \idex_rsval[31]_i_4 
       (.I0(debug_wb_rf_wnum[0]),
        .I1(inst_sram_rdata[21]),
        .I2(inst_sram_rdata[23]),
        .I3(debug_wb_rf_wnum[2]),
        .I4(inst_sram_rdata[22]),
        .I5(debug_wb_rf_wnum[1]),
        .O(\idex_rsval[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[3]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[3]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[3]),
        .I5(data_sram_rdata[3]),
        .O(\idex_rsval[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[4]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[4]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[4]),
        .I5(data_sram_rdata[4]),
        .O(\idex_rsval[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[5]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[5]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[5]),
        .I5(data_sram_rdata[5]),
        .O(\idex_rsval[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[6]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[6]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[6]),
        .I5(data_sram_rdata[6]),
        .O(\idex_rsval[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[7]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[7]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[7]),
        .I5(data_sram_rdata[7]),
        .O(\idex_rsval[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[8]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[8]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[8]),
        .I5(data_sram_rdata[8]),
        .O(\idex_rsval[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rsval[9]_i_1 
       (.I0(idex_rsval20_in),
        .I1(idex_rsval2[9]),
        .I2(idex_rsval3),
        .I3(memwb_load),
        .I4(memwb_result[9]),
        .I5(data_sram_rdata[9]),
        .O(\idex_rsval[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[0]_i_1_n_0 ),
        .Q(idex_rsval[0]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[10]_i_1_n_0 ),
        .Q(idex_rsval[10]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[11]_i_1_n_0 ),
        .Q(idex_rsval[11]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[12]_i_1_n_0 ),
        .Q(idex_rsval[12]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[13]_i_1_n_0 ),
        .Q(idex_rsval[13]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[14]_i_1_n_0 ),
        .Q(idex_rsval[14]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[15]_i_1_n_0 ),
        .Q(idex_rsval[15]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[16]_i_1_n_0 ),
        .Q(idex_rsval[16]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[17]_i_1_n_0 ),
        .Q(idex_rsval[17]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[18]_i_1_n_0 ),
        .Q(idex_rsval[18]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[19]_i_1_n_0 ),
        .Q(idex_rsval[19]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[1]_i_1_n_0 ),
        .Q(idex_rsval[1]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[20]_i_1_n_0 ),
        .Q(idex_rsval[20]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[21]_i_1_n_0 ),
        .Q(idex_rsval[21]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[22]_i_1_n_0 ),
        .Q(idex_rsval[22]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[23]_i_1_n_0 ),
        .Q(idex_rsval[23]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[24]_i_1_n_0 ),
        .Q(idex_rsval[24]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[25]_i_1_n_0 ),
        .Q(idex_rsval[25]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[26]_i_1_n_0 ),
        .Q(idex_rsval[26]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[27]_i_1_n_0 ),
        .Q(idex_rsval[27]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[28]_i_1_n_0 ),
        .Q(idex_rsval[28]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[29]_i_1_n_0 ),
        .Q(idex_rsval[29]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[2]_i_1_n_0 ),
        .Q(idex_rsval[2]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[30]_i_1_n_0 ),
        .Q(idex_rsval[30]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[31]_i_1_n_0 ),
        .Q(idex_rsval[31]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[3]_i_1_n_0 ),
        .Q(idex_rsval[3]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[4]_i_1_n_0 ),
        .Q(idex_rsval[4]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[5]_i_1_n_0 ),
        .Q(idex_rsval[5]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[6]_i_1_n_0 ),
        .Q(idex_rsval[6]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[7]_i_1_n_0 ),
        .Q(idex_rsval[7]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[8]_i_1_n_0 ),
        .Q(idex_rsval[8]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rsval_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rsval[9]_i_1_n_0 ),
        .Q(idex_rsval[9]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sram_rdata[16]),
        .Q(idex_rt[0]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sram_rdata[17]),
        .Q(idex_rt[1]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sram_rdata[18]),
        .Q(idex_rt[2]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sram_rdata[19]),
        .Q(idex_rt[3]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sram_rdata[20]),
        .Q(idex_rt[4]),
        .R(\PC[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[0]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[0]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[0]),
        .I5(data_sram_rdata[0]),
        .O(\idex_rtval[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[10]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[10]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[10]),
        .I5(data_sram_rdata[10]),
        .O(\idex_rtval[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[11]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[11]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[11]),
        .I5(data_sram_rdata[11]),
        .O(\idex_rtval[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[12]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[12]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[12]),
        .I5(data_sram_rdata[12]),
        .O(\idex_rtval[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[13]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[13]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[13]),
        .I5(data_sram_rdata[13]),
        .O(\idex_rtval[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[14]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[14]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[14]),
        .I5(data_sram_rdata[14]),
        .O(\idex_rtval[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[15]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[15]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[15]),
        .I5(data_sram_rdata[15]),
        .O(\idex_rtval[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[16]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[16]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[16]),
        .I5(data_sram_rdata[16]),
        .O(\idex_rtval[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[17]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[17]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[17]),
        .I5(data_sram_rdata[17]),
        .O(\idex_rtval[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[18]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[18]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[18]),
        .I5(data_sram_rdata[18]),
        .O(\idex_rtval[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[19]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[19]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[19]),
        .I5(data_sram_rdata[19]),
        .O(\idex_rtval[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[1]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[1]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[1]),
        .I5(data_sram_rdata[1]),
        .O(\idex_rtval[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[20]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[20]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[20]),
        .I5(data_sram_rdata[20]),
        .O(\idex_rtval[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[21]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[21]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[21]),
        .I5(data_sram_rdata[21]),
        .O(\idex_rtval[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[22]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[22]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[22]),
        .I5(data_sram_rdata[22]),
        .O(\idex_rtval[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[23]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[23]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[23]),
        .I5(data_sram_rdata[23]),
        .O(\idex_rtval[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[24]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[24]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[24]),
        .I5(data_sram_rdata[24]),
        .O(\idex_rtval[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[25]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[25]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[25]),
        .I5(data_sram_rdata[25]),
        .O(\idex_rtval[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[26]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[26]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[26]),
        .I5(data_sram_rdata[26]),
        .O(\idex_rtval[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[27]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[27]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[27]),
        .I5(data_sram_rdata[27]),
        .O(\idex_rtval[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[28]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[28]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[28]),
        .I5(data_sram_rdata[28]),
        .O(\idex_rtval[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[29]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[29]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[29]),
        .I5(data_sram_rdata[29]),
        .O(\idex_rtval[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[2]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[2]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[2]),
        .I5(data_sram_rdata[2]),
        .O(\idex_rtval[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[30]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[30]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[30]),
        .I5(data_sram_rdata[30]),
        .O(\idex_rtval[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[31]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[31]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[31]),
        .I5(data_sram_rdata[31]),
        .O(\idex_rtval[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \idex_rtval[31]_i_2 
       (.I0(inst_sram_rdata[16]),
        .I1(inst_sram_rdata[19]),
        .I2(inst_sram_rdata[20]),
        .I3(inst_sram_rdata[17]),
        .I4(inst_sram_rdata[18]),
        .O(idex_rtval20_in));
  LUT6 #(
    .INIT(64'h8200000000008200)) 
    \idex_rtval[31]_i_3 
       (.I0(debug_wb_rf_wen),
        .I1(debug_wb_rf_wnum[4]),
        .I2(inst_sram_rdata[20]),
        .I3(\idex_rtval[31]_i_4_n_0 ),
        .I4(inst_sram_rdata[19]),
        .I5(debug_wb_rf_wnum[3]),
        .O(idex_rtval3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \idex_rtval[31]_i_4 
       (.I0(debug_wb_rf_wnum[0]),
        .I1(inst_sram_rdata[16]),
        .I2(inst_sram_rdata[18]),
        .I3(debug_wb_rf_wnum[2]),
        .I4(inst_sram_rdata[17]),
        .I5(debug_wb_rf_wnum[1]),
        .O(\idex_rtval[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[3]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[3]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[3]),
        .I5(data_sram_rdata[3]),
        .O(\idex_rtval[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[4]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[4]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[4]),
        .I5(data_sram_rdata[4]),
        .O(\idex_rtval[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[5]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[5]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[5]),
        .I5(data_sram_rdata[5]),
        .O(\idex_rtval[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[6]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[6]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[6]),
        .I5(data_sram_rdata[6]),
        .O(\idex_rtval[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[7]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[7]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[7]),
        .I5(data_sram_rdata[7]),
        .O(\idex_rtval[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[8]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[8]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[8]),
        .I5(data_sram_rdata[8]),
        .O(\idex_rtval[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A80808)) 
    \idex_rtval[9]_i_1 
       (.I0(idex_rtval20_in),
        .I1(idex_rtval2[9]),
        .I2(idex_rtval3),
        .I3(memwb_load),
        .I4(memwb_result[9]),
        .I5(data_sram_rdata[9]),
        .O(\idex_rtval[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[0]_i_1_n_0 ),
        .Q(idex_rtval[0]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[10]_i_1_n_0 ),
        .Q(idex_rtval[10]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[11]_i_1_n_0 ),
        .Q(idex_rtval[11]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[12]_i_1_n_0 ),
        .Q(idex_rtval[12]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[13]_i_1_n_0 ),
        .Q(idex_rtval[13]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[14]_i_1_n_0 ),
        .Q(idex_rtval[14]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[15]_i_1_n_0 ),
        .Q(idex_rtval[15]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[16]_i_1_n_0 ),
        .Q(idex_rtval[16]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[17]_i_1_n_0 ),
        .Q(idex_rtval[17]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[18]_i_1_n_0 ),
        .Q(idex_rtval[18]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[19]_i_1_n_0 ),
        .Q(idex_rtval[19]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[1]_i_1_n_0 ),
        .Q(idex_rtval[1]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[20]_i_1_n_0 ),
        .Q(idex_rtval[20]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[21]_i_1_n_0 ),
        .Q(idex_rtval[21]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[22]_i_1_n_0 ),
        .Q(idex_rtval[22]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[23]_i_1_n_0 ),
        .Q(idex_rtval[23]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[24]_i_1_n_0 ),
        .Q(idex_rtval[24]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[25]_i_1_n_0 ),
        .Q(idex_rtval[25]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[26]_i_1_n_0 ),
        .Q(idex_rtval[26]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[27]_i_1_n_0 ),
        .Q(idex_rtval[27]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[28]_i_1_n_0 ),
        .Q(idex_rtval[28]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[29]_i_1_n_0 ),
        .Q(idex_rtval[29]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[2]_i_1_n_0 ),
        .Q(idex_rtval[2]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[30]_i_1_n_0 ),
        .Q(idex_rtval[30]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[31]_i_1_n_0 ),
        .Q(idex_rtval[31]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[3]_i_1_n_0 ),
        .Q(idex_rtval[3]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[4]_i_1_n_0 ),
        .Q(idex_rtval[4]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[5]_i_1_n_0 ),
        .Q(idex_rtval[5]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[6]_i_1_n_0 ),
        .Q(idex_rtval[6]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[7]_i_1_n_0 ),
        .Q(idex_rtval[7]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[8]_i_1_n_0 ),
        .Q(idex_rtval[8]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idex_rtval_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\idex_rtval[9]_i_1_n_0 ),
        .Q(idex_rtval[9]),
        .R(\PC[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0000C400)) 
    idex_valid_i_1
       (.I0(idex_valid),
        .I1(ifid_valid),
        .I2(predict_en_INST_0_i_1_n_0),
        .I3(resetn),
        .I4(flush),
        .O(idex_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    idex_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(idex_valid_i_1_n_0),
        .Q(idex_valid),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF7)) 
    \ifid_PC[31]_i_1 
       (.I0(idex_valid),
        .I1(ifid_valid),
        .I2(predict_en_INST_0_i_1_n_0),
        .O(idex_valid1));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[0] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[0]),
        .Q(ifid_PC[0]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[10] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[10]),
        .Q(ifid_PC[10]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[11] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[11]),
        .Q(ifid_PC[11]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[12] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[12]),
        .Q(ifid_PC[12]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[13] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[13]),
        .Q(ifid_PC[13]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[14] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[14]),
        .Q(ifid_PC[14]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[15] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[15]),
        .Q(ifid_PC[15]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[16] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[16]),
        .Q(ifid_PC[16]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[17] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[17]),
        .Q(ifid_PC[17]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[18] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[18]),
        .Q(ifid_PC[18]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[19] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[19]),
        .Q(ifid_PC[19]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[1] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[1]),
        .Q(ifid_PC[1]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[20] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[20]),
        .Q(ifid_PC[20]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[21] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[21]),
        .Q(ifid_PC[21]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[22] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[22]),
        .Q(ifid_PC[22]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[23] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[23]),
        .Q(ifid_PC[23]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[24] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[24]),
        .Q(ifid_PC[24]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[25] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[25]),
        .Q(ifid_PC[25]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[26] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[26]),
        .Q(ifid_PC[26]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[27] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[27]),
        .Q(ifid_PC[27]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[28] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[28]),
        .Q(ifid_PC[28]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[29] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[29]),
        .Q(ifid_PC[29]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[2] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[2]),
        .Q(ifid_PC[2]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[30] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[30]),
        .Q(ifid_PC[30]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[31] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[31]),
        .Q(ifid_PC[31]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[3] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[3]),
        .Q(ifid_PC[3]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[4] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[4]),
        .Q(ifid_PC[4]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[5] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[5]),
        .Q(ifid_PC[5]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[6] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[6]),
        .Q(ifid_PC[6]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[7] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[7]),
        .Q(ifid_PC[7]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[8] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[8]),
        .Q(ifid_PC[8]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_PC_reg[9] 
       (.C(clk),
        .CE(idex_valid1),
        .D(inst_sram_addr[9]),
        .Q(ifid_PC[9]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[0] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[0]),
        .Q(ifid_predict_PC[0]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[10] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[10]),
        .Q(ifid_predict_PC[10]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[11] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[11]),
        .Q(ifid_predict_PC[11]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[12] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[12]),
        .Q(ifid_predict_PC[12]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[13] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[13]),
        .Q(ifid_predict_PC[13]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[14] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[14]),
        .Q(ifid_predict_PC[14]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[15] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[15]),
        .Q(ifid_predict_PC[15]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[16] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[16]),
        .Q(ifid_predict_PC[16]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[17] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[17]),
        .Q(ifid_predict_PC[17]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[18] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[18]),
        .Q(ifid_predict_PC[18]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[19] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[19]),
        .Q(ifid_predict_PC[19]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[1] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[1]),
        .Q(ifid_predict_PC[1]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[20] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[20]),
        .Q(ifid_predict_PC[20]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[21] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[21]),
        .Q(ifid_predict_PC[21]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[22] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[22]),
        .Q(ifid_predict_PC[22]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[23] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[23]),
        .Q(ifid_predict_PC[23]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[24] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[24]),
        .Q(ifid_predict_PC[24]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[25] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[25]),
        .Q(ifid_predict_PC[25]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[26] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[26]),
        .Q(ifid_predict_PC[26]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[27] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[27]),
        .Q(ifid_predict_PC[27]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[28] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[28]),
        .Q(ifid_predict_PC[28]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[29] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[29]),
        .Q(ifid_predict_PC[29]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[2] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[2]),
        .Q(ifid_predict_PC[2]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[30] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[30]),
        .Q(ifid_predict_PC[30]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[31] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[31]),
        .Q(ifid_predict_PC[31]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[3] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[3]),
        .Q(ifid_predict_PC[3]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[4] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[4]),
        .Q(ifid_predict_PC[4]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[5] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[5]),
        .Q(ifid_predict_PC[5]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[6] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[6]),
        .Q(ifid_predict_PC[6]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[7] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[7]),
        .Q(ifid_predict_PC[7]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[8] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[8]),
        .Q(ifid_predict_PC[8]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ifid_predict_PC_reg[9] 
       (.C(clk),
        .CE(idex_valid1),
        .D(new_PC[9]),
        .Q(ifid_predict_PC[9]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    ifid_predict_jump_reg
       (.C(clk),
        .CE(idex_valid1),
        .D(predict_jump),
        .Q(ifid_predict_jump),
        .R(\PC[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    ifid_valid_i_1
       (.I0(resetn),
        .I1(flush),
        .O(ifid_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ifid_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(ifid_valid_i_1_n_0),
        .Q(ifid_valid),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[0]),
        .Q(debug_wb_pc[0]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[10]),
        .Q(debug_wb_pc[10]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[11]),
        .Q(debug_wb_pc[11]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[12]),
        .Q(debug_wb_pc[12]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[13]),
        .Q(debug_wb_pc[13]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[14]),
        .Q(debug_wb_pc[14]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[15]),
        .Q(debug_wb_pc[15]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[16]),
        .Q(debug_wb_pc[16]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[17]),
        .Q(debug_wb_pc[17]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[18]),
        .Q(debug_wb_pc[18]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[19]),
        .Q(debug_wb_pc[19]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[1]),
        .Q(debug_wb_pc[1]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[20]),
        .Q(debug_wb_pc[20]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[21]),
        .Q(debug_wb_pc[21]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[22]),
        .Q(debug_wb_pc[22]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[23]),
        .Q(debug_wb_pc[23]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[24]),
        .Q(debug_wb_pc[24]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[25]),
        .Q(debug_wb_pc[25]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[26]),
        .Q(debug_wb_pc[26]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[27]),
        .Q(debug_wb_pc[27]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[28]),
        .Q(debug_wb_pc[28]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[29]),
        .Q(debug_wb_pc[29]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[2]),
        .Q(debug_wb_pc[2]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[30]),
        .Q(debug_wb_pc[30]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[31]),
        .Q(debug_wb_pc[31]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[3]),
        .Q(debug_wb_pc[3]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[4]),
        .Q(debug_wb_pc[4]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[5]),
        .Q(debug_wb_pc[5]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[6]),
        .Q(debug_wb_pc[6]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[7]),
        .Q(debug_wb_pc[7]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[8]),
        .Q(debug_wb_pc[8]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_PC_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(upd_addr[9]),
        .Q(debug_wb_pc[9]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    memwb_load_reg
       (.C(clk),
        .CE(1'b1),
        .D(exmem_load),
        .Q(memwb_load),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[0]),
        .Q(memwb_result[0]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[10]),
        .Q(memwb_result[10]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[11]),
        .Q(memwb_result[11]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[12]),
        .Q(memwb_result[12]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[13]),
        .Q(memwb_result[13]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[14]),
        .Q(memwb_result[14]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[15]),
        .Q(memwb_result[15]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[16]),
        .Q(memwb_result[16]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[17]),
        .Q(memwb_result[17]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[18]),
        .Q(memwb_result[18]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[19]),
        .Q(memwb_result[19]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[1]),
        .Q(memwb_result[1]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[20]),
        .Q(memwb_result[20]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[21]),
        .Q(memwb_result[21]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[22]),
        .Q(memwb_result[22]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[23]),
        .Q(memwb_result[23]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[24]),
        .Q(memwb_result[24]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[25]),
        .Q(memwb_result[25]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[26]),
        .Q(memwb_result[26]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[27]),
        .Q(memwb_result[27]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[28]),
        .Q(memwb_result[28]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[29]),
        .Q(memwb_result[29]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[2]),
        .Q(memwb_result[2]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[30]),
        .Q(memwb_result[30]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[31]),
        .Q(memwb_result[31]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[3]),
        .Q(memwb_result[3]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[4]),
        .Q(memwb_result[4]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[5]),
        .Q(memwb_result[5]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[6]),
        .Q(memwb_result[6]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[7]),
        .Q(memwb_result[7]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[8]),
        .Q(memwb_result[8]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_result_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(data_sram_wdata[9]),
        .Q(memwb_result[9]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_waddr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(exmem_rd[0]),
        .Q(debug_wb_rf_wnum[0]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_waddr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(exmem_rd[1]),
        .Q(debug_wb_rf_wnum[1]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_waddr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(exmem_rd[2]),
        .Q(debug_wb_rf_wnum[2]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_waddr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(exmem_rd[3]),
        .Q(debug_wb_rf_wnum[3]),
        .R(\PC[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memwb_waddr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(exmem_rd[4]),
        .Q(debug_wb_rf_wnum[4]),
        .R(\PC[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    memwb_wen_i_1
       (.I0(exmem_wen),
        .I1(inst_commit_en),
        .O(p_9_in));
  FDRE #(
    .INIT(1'b0)) 
    memwb_wen_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_9_in),
        .Q(debug_wb_rf_wen),
        .R(\PC[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00F7)) 
    predict_en_INST_0
       (.I0(idex_valid),
        .I1(ifid_valid),
        .I2(predict_en_INST_0_i_1_n_0),
        .I3(flush),
        .O(predict_en));
  LUT6 #(
    .INIT(64'hFDFDF0FDFFFFFFFF)) 
    predict_en_INST_0_i_1
       (.I0(ifid_wait3),
        .I1(write_rt),
        .I2(icode_7),
        .I3(ifid_wait30_out),
        .I4(icode_5),
        .I5(p_1_in),
        .O(predict_en_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    predict_en_INST_0_i_10
       (.I0(inst_sram_rdata[5]),
        .I1(inst_sram_rdata[4]),
        .I2(inst_sram_rdata[1]),
        .I3(inst_sram_rdata[0]),
        .I4(inst_sram_rdata[3]),
        .I5(inst_sram_rdata[2]),
        .O(icode_50));
  LUT5 #(
    .INIT(32'h90000090)) 
    predict_en_INST_0_i_2
       (.I0(idex_rd[3]),
        .I1(inst_sram_rdata[19]),
        .I2(predict_en_INST_0_i_6_n_0),
        .I3(inst_sram_rdata[20]),
        .I4(idex_rd[4]),
        .O(ifid_wait3));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    predict_en_INST_0_i_3
       (.I0(inst_sram_rdata[30]),
        .I1(inst_sram_rdata[29]),
        .I2(inst_sram_rdata[31]),
        .I3(inst_sram_rdata[27]),
        .I4(inst_sram_rdata[26]),
        .I5(inst_sram_rdata[28]),
        .O(icode_7));
  LUT5 #(
    .INIT(32'h90000090)) 
    predict_en_INST_0_i_4
       (.I0(idex_rd[3]),
        .I1(inst_sram_rdata[24]),
        .I2(predict_en_INST_0_i_7_n_0),
        .I3(inst_sram_rdata[25]),
        .I4(idex_rd[4]),
        .O(ifid_wait30_out));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    predict_en_INST_0_i_5
       (.I0(predict_en_INST_0_i_8_n_0),
        .I1(predict_en_INST_0_i_9_n_0),
        .I2(inst_sram_rdata[30]),
        .I3(inst_sram_rdata[29]),
        .I4(inst_sram_rdata[31]),
        .I5(icode_50),
        .O(icode_5));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    predict_en_INST_0_i_6
       (.I0(idex_rd[0]),
        .I1(inst_sram_rdata[16]),
        .I2(inst_sram_rdata[18]),
        .I3(idex_rd[2]),
        .I4(inst_sram_rdata[17]),
        .I5(idex_rd[1]),
        .O(predict_en_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    predict_en_INST_0_i_7
       (.I0(idex_rd[0]),
        .I1(inst_sram_rdata[21]),
        .I2(inst_sram_rdata[23]),
        .I3(idex_rd[2]),
        .I4(inst_sram_rdata[22]),
        .I5(idex_rd[1]),
        .O(predict_en_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    predict_en_INST_0_i_8
       (.I0(inst_sram_rdata[27]),
        .I1(inst_sram_rdata[28]),
        .I2(inst_sram_rdata[25]),
        .I3(inst_sram_rdata[26]),
        .O(predict_en_INST_0_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    predict_en_INST_0_i_9
       (.I0(inst_sram_rdata[23]),
        .I1(inst_sram_rdata[24]),
        .I2(inst_sram_rdata[21]),
        .I3(inst_sram_rdata[22]),
        .O(predict_en_INST_0_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "regfile" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    regfile_reg_r1_0_31_0_5
       (.ADDRA(inst_sram_rdata[25:21]),
        .ADDRB(inst_sram_rdata[25:21]),
        .ADDRC(inst_sram_rdata[25:21]),
        .ADDRD(debug_wb_rf_wnum),
        .DIA(debug_wb_rf_wdata[1:0]),
        .DIB(debug_wb_rf_wdata[3:2]),
        .DIC(debug_wb_rf_wdata[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(idex_rsval2[1:0]),
        .DOB(idex_rsval2[3:2]),
        .DOC(idex_rsval2[5:4]),
        .DOD(NLW_regfile_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in13_out));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    regfile_reg_r1_0_31_0_5_i_1
       (.I0(debug_wb_rf_wen),
        .I1(debug_wb_rf_wnum[2]),
        .I2(debug_wb_rf_wnum[1]),
        .I3(debug_wb_rf_wnum[4]),
        .I4(debug_wb_rf_wnum[3]),
        .I5(debug_wb_rf_wnum[0]),
        .O(p_0_in13_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "regfile" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    regfile_reg_r1_0_31_12_17
       (.ADDRA(inst_sram_rdata[25:21]),
        .ADDRB(inst_sram_rdata[25:21]),
        .ADDRC(inst_sram_rdata[25:21]),
        .ADDRD(debug_wb_rf_wnum),
        .DIA(debug_wb_rf_wdata[13:12]),
        .DIB(debug_wb_rf_wdata[15:14]),
        .DIC(debug_wb_rf_wdata[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(idex_rsval2[13:12]),
        .DOB(idex_rsval2[15:14]),
        .DOC(idex_rsval2[17:16]),
        .DOD(NLW_regfile_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in13_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "regfile" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    regfile_reg_r1_0_31_18_23
       (.ADDRA(inst_sram_rdata[25:21]),
        .ADDRB(inst_sram_rdata[25:21]),
        .ADDRC(inst_sram_rdata[25:21]),
        .ADDRD(debug_wb_rf_wnum),
        .DIA(debug_wb_rf_wdata[19:18]),
        .DIB(debug_wb_rf_wdata[21:20]),
        .DIC(debug_wb_rf_wdata[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(idex_rsval2[19:18]),
        .DOB(idex_rsval2[21:20]),
        .DOC(idex_rsval2[23:22]),
        .DOD(NLW_regfile_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in13_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "regfile" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    regfile_reg_r1_0_31_24_29
       (.ADDRA(inst_sram_rdata[25:21]),
        .ADDRB(inst_sram_rdata[25:21]),
        .ADDRC(inst_sram_rdata[25:21]),
        .ADDRD(debug_wb_rf_wnum),
        .DIA(debug_wb_rf_wdata[25:24]),
        .DIB(debug_wb_rf_wdata[27:26]),
        .DIC(debug_wb_rf_wdata[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(idex_rsval2[25:24]),
        .DOB(idex_rsval2[27:26]),
        .DOC(idex_rsval2[29:28]),
        .DOD(NLW_regfile_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in13_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "regfile" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    regfile_reg_r1_0_31_30_31
       (.ADDRA(inst_sram_rdata[25:21]),
        .ADDRB(inst_sram_rdata[25:21]),
        .ADDRC(inst_sram_rdata[25:21]),
        .ADDRD(debug_wb_rf_wnum),
        .DIA(debug_wb_rf_wdata[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(idex_rsval2[31:30]),
        .DOB(NLW_regfile_reg_r1_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_regfile_reg_r1_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_regfile_reg_r1_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in13_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "regfile" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    regfile_reg_r1_0_31_6_11
       (.ADDRA(inst_sram_rdata[25:21]),
        .ADDRB(inst_sram_rdata[25:21]),
        .ADDRC(inst_sram_rdata[25:21]),
        .ADDRD(debug_wb_rf_wnum),
        .DIA(debug_wb_rf_wdata[7:6]),
        .DIB(debug_wb_rf_wdata[9:8]),
        .DIC(debug_wb_rf_wdata[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(idex_rsval2[7:6]),
        .DOB(idex_rsval2[9:8]),
        .DOC(idex_rsval2[11:10]),
        .DOD(NLW_regfile_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in13_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "regfile" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    regfile_reg_r2_0_31_0_5
       (.ADDRA(inst_sram_rdata[20:16]),
        .ADDRB(inst_sram_rdata[20:16]),
        .ADDRC(inst_sram_rdata[20:16]),
        .ADDRD(debug_wb_rf_wnum),
        .DIA(debug_wb_rf_wdata[1:0]),
        .DIB(debug_wb_rf_wdata[3:2]),
        .DIC(debug_wb_rf_wdata[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(idex_rtval2[1:0]),
        .DOB(idex_rtval2[3:2]),
        .DOC(idex_rtval2[5:4]),
        .DOD(NLW_regfile_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in13_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "regfile" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    regfile_reg_r2_0_31_12_17
       (.ADDRA(inst_sram_rdata[20:16]),
        .ADDRB(inst_sram_rdata[20:16]),
        .ADDRC(inst_sram_rdata[20:16]),
        .ADDRD(debug_wb_rf_wnum),
        .DIA(debug_wb_rf_wdata[13:12]),
        .DIB(debug_wb_rf_wdata[15:14]),
        .DIC(debug_wb_rf_wdata[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(idex_rtval2[13:12]),
        .DOB(idex_rtval2[15:14]),
        .DOC(idex_rtval2[17:16]),
        .DOD(NLW_regfile_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in13_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "regfile" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    regfile_reg_r2_0_31_18_23
       (.ADDRA(inst_sram_rdata[20:16]),
        .ADDRB(inst_sram_rdata[20:16]),
        .ADDRC(inst_sram_rdata[20:16]),
        .ADDRD(debug_wb_rf_wnum),
        .DIA(debug_wb_rf_wdata[19:18]),
        .DIB(debug_wb_rf_wdata[21:20]),
        .DIC(debug_wb_rf_wdata[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(idex_rtval2[19:18]),
        .DOB(idex_rtval2[21:20]),
        .DOC(idex_rtval2[23:22]),
        .DOD(NLW_regfile_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in13_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "regfile" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    regfile_reg_r2_0_31_24_29
       (.ADDRA(inst_sram_rdata[20:16]),
        .ADDRB(inst_sram_rdata[20:16]),
        .ADDRC(inst_sram_rdata[20:16]),
        .ADDRD(debug_wb_rf_wnum),
        .DIA(debug_wb_rf_wdata[25:24]),
        .DIB(debug_wb_rf_wdata[27:26]),
        .DIC(debug_wb_rf_wdata[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(idex_rtval2[25:24]),
        .DOB(idex_rtval2[27:26]),
        .DOC(idex_rtval2[29:28]),
        .DOD(NLW_regfile_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in13_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "regfile" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    regfile_reg_r2_0_31_30_31
       (.ADDRA(inst_sram_rdata[20:16]),
        .ADDRB(inst_sram_rdata[20:16]),
        .ADDRC(inst_sram_rdata[20:16]),
        .ADDRD(debug_wb_rf_wnum),
        .DIA(debug_wb_rf_wdata[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(idex_rtval2[31:30]),
        .DOB(NLW_regfile_reg_r2_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_regfile_reg_r2_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_regfile_reg_r2_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in13_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "regfile" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    regfile_reg_r2_0_31_6_11
       (.ADDRA(inst_sram_rdata[20:16]),
        .ADDRB(inst_sram_rdata[20:16]),
        .ADDRC(inst_sram_rdata[20:16]),
        .ADDRD(debug_wb_rf_wnum),
        .DIA(debug_wb_rf_wdata[7:6]),
        .DIB(debug_wb_rf_wdata[9:8]),
        .DIC(debug_wb_rf_wdata[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(idex_rtval2[7:6]),
        .DOB(idex_rtval2[9:8]),
        .DOC(idex_rtval2[11:10]),
        .DOD(NLW_regfile_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in13_out));
  LUT2 #(
    .INIT(4'h8)) 
    upd_jump_INST_0
       (.I0(inst_commit_en),
        .I1(exmem_jump),
        .O(upd_jump));
  LUT2 #(
    .INIT(4'h8)) 
    upd_jumpinst_INST_0
       (.I0(inst_commit_en),
        .I1(exmem_jumpinst),
        .O(jumpinst_en));
  LUT2 #(
    .INIT(4'h8)) 
    upd_predfail_INST_0
       (.I0(inst_commit_en),
        .I1(exmem_jumpinst_fail),
        .O(jumpinst_fail_en));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
