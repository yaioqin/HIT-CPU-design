// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Aug 30 19:18:26 2023
// Host        : DESKTOP-FQD3QS0 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/CPU_design/lab2/add/add.sim/sim_1/synth/func/xsim/add_tb_func_synth.v
// Design      : add
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module add
   (A,
    B,
    Cin,
    F,
    Cout);
  input [31:0]A;
  input [31:0]B;
  input Cin;
  output [31:0]F;
  output Cout;

  wire [31:0]A;
  wire [31:0]A_IBUF;
  wire [31:0]B;
  wire [31:0]B_IBUF;
  wire Cin;
  wire Cin_IBUF;
  wire Cout;
  wire Cout_OBUF;
  wire [31:0]F;
  wire [31:0]F_OBUF;
  wire \F_OBUF[11]_inst_i_1_n_0 ;
  wire \F_OBUF[11]_inst_i_1_n_1 ;
  wire \F_OBUF[11]_inst_i_1_n_2 ;
  wire \F_OBUF[11]_inst_i_1_n_3 ;
  wire \F_OBUF[11]_inst_i_2_n_0 ;
  wire \F_OBUF[11]_inst_i_3_n_0 ;
  wire \F_OBUF[11]_inst_i_4_n_0 ;
  wire \F_OBUF[11]_inst_i_5_n_0 ;
  wire \F_OBUF[15]_inst_i_1_n_0 ;
  wire \F_OBUF[15]_inst_i_1_n_1 ;
  wire \F_OBUF[15]_inst_i_1_n_2 ;
  wire \F_OBUF[15]_inst_i_1_n_3 ;
  wire \F_OBUF[15]_inst_i_2_n_0 ;
  wire \F_OBUF[15]_inst_i_3_n_0 ;
  wire \F_OBUF[15]_inst_i_4_n_0 ;
  wire \F_OBUF[15]_inst_i_5_n_0 ;
  wire \F_OBUF[19]_inst_i_1_n_0 ;
  wire \F_OBUF[19]_inst_i_1_n_1 ;
  wire \F_OBUF[19]_inst_i_1_n_2 ;
  wire \F_OBUF[19]_inst_i_1_n_3 ;
  wire \F_OBUF[19]_inst_i_2_n_0 ;
  wire \F_OBUF[19]_inst_i_3_n_0 ;
  wire \F_OBUF[19]_inst_i_4_n_0 ;
  wire \F_OBUF[19]_inst_i_5_n_0 ;
  wire \F_OBUF[23]_inst_i_1_n_0 ;
  wire \F_OBUF[23]_inst_i_1_n_1 ;
  wire \F_OBUF[23]_inst_i_1_n_2 ;
  wire \F_OBUF[23]_inst_i_1_n_3 ;
  wire \F_OBUF[23]_inst_i_2_n_0 ;
  wire \F_OBUF[23]_inst_i_3_n_0 ;
  wire \F_OBUF[23]_inst_i_4_n_0 ;
  wire \F_OBUF[23]_inst_i_5_n_0 ;
  wire \F_OBUF[27]_inst_i_1_n_0 ;
  wire \F_OBUF[27]_inst_i_1_n_1 ;
  wire \F_OBUF[27]_inst_i_1_n_2 ;
  wire \F_OBUF[27]_inst_i_1_n_3 ;
  wire \F_OBUF[27]_inst_i_2_n_0 ;
  wire \F_OBUF[27]_inst_i_3_n_0 ;
  wire \F_OBUF[27]_inst_i_4_n_0 ;
  wire \F_OBUF[27]_inst_i_5_n_0 ;
  wire \F_OBUF[31]_inst_i_1_n_0 ;
  wire \F_OBUF[31]_inst_i_1_n_1 ;
  wire \F_OBUF[31]_inst_i_1_n_2 ;
  wire \F_OBUF[31]_inst_i_1_n_3 ;
  wire \F_OBUF[31]_inst_i_2_n_0 ;
  wire \F_OBUF[31]_inst_i_3_n_0 ;
  wire \F_OBUF[31]_inst_i_4_n_0 ;
  wire \F_OBUF[31]_inst_i_5_n_0 ;
  wire \F_OBUF[3]_inst_i_1_n_0 ;
  wire \F_OBUF[3]_inst_i_1_n_1 ;
  wire \F_OBUF[3]_inst_i_1_n_2 ;
  wire \F_OBUF[3]_inst_i_1_n_3 ;
  wire \F_OBUF[3]_inst_i_2_n_0 ;
  wire \F_OBUF[3]_inst_i_3_n_0 ;
  wire \F_OBUF[3]_inst_i_4_n_0 ;
  wire \F_OBUF[3]_inst_i_5_n_0 ;
  wire \F_OBUF[7]_inst_i_1_n_0 ;
  wire \F_OBUF[7]_inst_i_1_n_1 ;
  wire \F_OBUF[7]_inst_i_1_n_2 ;
  wire \F_OBUF[7]_inst_i_1_n_3 ;
  wire \F_OBUF[7]_inst_i_2_n_0 ;
  wire \F_OBUF[7]_inst_i_3_n_0 ;
  wire \F_OBUF[7]_inst_i_4_n_0 ;
  wire \F_OBUF[7]_inst_i_5_n_0 ;
  wire [3:1]NLW_Cout_OBUF_inst_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_Cout_OBUF_inst_i_1_O_UNCONNECTED;

  IBUF \A_IBUF[0]_inst 
       (.I(A[0]),
        .O(A_IBUF[0]));
  IBUF \A_IBUF[10]_inst 
       (.I(A[10]),
        .O(A_IBUF[10]));
  IBUF \A_IBUF[11]_inst 
       (.I(A[11]),
        .O(A_IBUF[11]));
  IBUF \A_IBUF[12]_inst 
       (.I(A[12]),
        .O(A_IBUF[12]));
  IBUF \A_IBUF[13]_inst 
       (.I(A[13]),
        .O(A_IBUF[13]));
  IBUF \A_IBUF[14]_inst 
       (.I(A[14]),
        .O(A_IBUF[14]));
  IBUF \A_IBUF[15]_inst 
       (.I(A[15]),
        .O(A_IBUF[15]));
  IBUF \A_IBUF[16]_inst 
       (.I(A[16]),
        .O(A_IBUF[16]));
  IBUF \A_IBUF[17]_inst 
       (.I(A[17]),
        .O(A_IBUF[17]));
  IBUF \A_IBUF[18]_inst 
       (.I(A[18]),
        .O(A_IBUF[18]));
  IBUF \A_IBUF[19]_inst 
       (.I(A[19]),
        .O(A_IBUF[19]));
  IBUF \A_IBUF[1]_inst 
       (.I(A[1]),
        .O(A_IBUF[1]));
  IBUF \A_IBUF[20]_inst 
       (.I(A[20]),
        .O(A_IBUF[20]));
  IBUF \A_IBUF[21]_inst 
       (.I(A[21]),
        .O(A_IBUF[21]));
  IBUF \A_IBUF[22]_inst 
       (.I(A[22]),
        .O(A_IBUF[22]));
  IBUF \A_IBUF[23]_inst 
       (.I(A[23]),
        .O(A_IBUF[23]));
  IBUF \A_IBUF[24]_inst 
       (.I(A[24]),
        .O(A_IBUF[24]));
  IBUF \A_IBUF[25]_inst 
       (.I(A[25]),
        .O(A_IBUF[25]));
  IBUF \A_IBUF[26]_inst 
       (.I(A[26]),
        .O(A_IBUF[26]));
  IBUF \A_IBUF[27]_inst 
       (.I(A[27]),
        .O(A_IBUF[27]));
  IBUF \A_IBUF[28]_inst 
       (.I(A[28]),
        .O(A_IBUF[28]));
  IBUF \A_IBUF[29]_inst 
       (.I(A[29]),
        .O(A_IBUF[29]));
  IBUF \A_IBUF[2]_inst 
       (.I(A[2]),
        .O(A_IBUF[2]));
  IBUF \A_IBUF[30]_inst 
       (.I(A[30]),
        .O(A_IBUF[30]));
  IBUF \A_IBUF[31]_inst 
       (.I(A[31]),
        .O(A_IBUF[31]));
  IBUF \A_IBUF[3]_inst 
       (.I(A[3]),
        .O(A_IBUF[3]));
  IBUF \A_IBUF[4]_inst 
       (.I(A[4]),
        .O(A_IBUF[4]));
  IBUF \A_IBUF[5]_inst 
       (.I(A[5]),
        .O(A_IBUF[5]));
  IBUF \A_IBUF[6]_inst 
       (.I(A[6]),
        .O(A_IBUF[6]));
  IBUF \A_IBUF[7]_inst 
       (.I(A[7]),
        .O(A_IBUF[7]));
  IBUF \A_IBUF[8]_inst 
       (.I(A[8]),
        .O(A_IBUF[8]));
  IBUF \A_IBUF[9]_inst 
       (.I(A[9]),
        .O(A_IBUF[9]));
  IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(B_IBUF[0]));
  IBUF \B_IBUF[10]_inst 
       (.I(B[10]),
        .O(B_IBUF[10]));
  IBUF \B_IBUF[11]_inst 
       (.I(B[11]),
        .O(B_IBUF[11]));
  IBUF \B_IBUF[12]_inst 
       (.I(B[12]),
        .O(B_IBUF[12]));
  IBUF \B_IBUF[13]_inst 
       (.I(B[13]),
        .O(B_IBUF[13]));
  IBUF \B_IBUF[14]_inst 
       (.I(B[14]),
        .O(B_IBUF[14]));
  IBUF \B_IBUF[15]_inst 
       (.I(B[15]),
        .O(B_IBUF[15]));
  IBUF \B_IBUF[16]_inst 
       (.I(B[16]),
        .O(B_IBUF[16]));
  IBUF \B_IBUF[17]_inst 
       (.I(B[17]),
        .O(B_IBUF[17]));
  IBUF \B_IBUF[18]_inst 
       (.I(B[18]),
        .O(B_IBUF[18]));
  IBUF \B_IBUF[19]_inst 
       (.I(B[19]),
        .O(B_IBUF[19]));
  IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
  IBUF \B_IBUF[20]_inst 
       (.I(B[20]),
        .O(B_IBUF[20]));
  IBUF \B_IBUF[21]_inst 
       (.I(B[21]),
        .O(B_IBUF[21]));
  IBUF \B_IBUF[22]_inst 
       (.I(B[22]),
        .O(B_IBUF[22]));
  IBUF \B_IBUF[23]_inst 
       (.I(B[23]),
        .O(B_IBUF[23]));
  IBUF \B_IBUF[24]_inst 
       (.I(B[24]),
        .O(B_IBUF[24]));
  IBUF \B_IBUF[25]_inst 
       (.I(B[25]),
        .O(B_IBUF[25]));
  IBUF \B_IBUF[26]_inst 
       (.I(B[26]),
        .O(B_IBUF[26]));
  IBUF \B_IBUF[27]_inst 
       (.I(B[27]),
        .O(B_IBUF[27]));
  IBUF \B_IBUF[28]_inst 
       (.I(B[28]),
        .O(B_IBUF[28]));
  IBUF \B_IBUF[29]_inst 
       (.I(B[29]),
        .O(B_IBUF[29]));
  IBUF \B_IBUF[2]_inst 
       (.I(B[2]),
        .O(B_IBUF[2]));
  IBUF \B_IBUF[30]_inst 
       (.I(B[30]),
        .O(B_IBUF[30]));
  IBUF \B_IBUF[31]_inst 
       (.I(B[31]),
        .O(B_IBUF[31]));
  IBUF \B_IBUF[3]_inst 
       (.I(B[3]),
        .O(B_IBUF[3]));
  IBUF \B_IBUF[4]_inst 
       (.I(B[4]),
        .O(B_IBUF[4]));
  IBUF \B_IBUF[5]_inst 
       (.I(B[5]),
        .O(B_IBUF[5]));
  IBUF \B_IBUF[6]_inst 
       (.I(B[6]),
        .O(B_IBUF[6]));
  IBUF \B_IBUF[7]_inst 
       (.I(B[7]),
        .O(B_IBUF[7]));
  IBUF \B_IBUF[8]_inst 
       (.I(B[8]),
        .O(B_IBUF[8]));
  IBUF \B_IBUF[9]_inst 
       (.I(B[9]),
        .O(B_IBUF[9]));
  IBUF Cin_IBUF_inst
       (.I(Cin),
        .O(Cin_IBUF));
  OBUF Cout_OBUF_inst
       (.I(Cout_OBUF),
        .O(Cout));
  CARRY4 Cout_OBUF_inst_i_1
       (.CI(\F_OBUF[31]_inst_i_1_n_0 ),
        .CO({NLW_Cout_OBUF_inst_i_1_CO_UNCONNECTED[3:1],Cout_OBUF}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_Cout_OBUF_inst_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  OBUF \F_OBUF[0]_inst 
       (.I(F_OBUF[0]),
        .O(F[0]));
  OBUF \F_OBUF[10]_inst 
       (.I(F_OBUF[10]),
        .O(F[10]));
  OBUF \F_OBUF[11]_inst 
       (.I(F_OBUF[11]),
        .O(F[11]));
  CARRY4 \F_OBUF[11]_inst_i_1 
       (.CI(\F_OBUF[7]_inst_i_1_n_0 ),
        .CO({\F_OBUF[11]_inst_i_1_n_0 ,\F_OBUF[11]_inst_i_1_n_1 ,\F_OBUF[11]_inst_i_1_n_2 ,\F_OBUF[11]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(A_IBUF[11:8]),
        .O(F_OBUF[11:8]),
        .S({\F_OBUF[11]_inst_i_2_n_0 ,\F_OBUF[11]_inst_i_3_n_0 ,\F_OBUF[11]_inst_i_4_n_0 ,\F_OBUF[11]_inst_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[11]_inst_i_2 
       (.I0(A_IBUF[11]),
        .I1(B_IBUF[11]),
        .O(\F_OBUF[11]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[11]_inst_i_3 
       (.I0(A_IBUF[10]),
        .I1(B_IBUF[10]),
        .O(\F_OBUF[11]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[11]_inst_i_4 
       (.I0(A_IBUF[9]),
        .I1(B_IBUF[9]),
        .O(\F_OBUF[11]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[11]_inst_i_5 
       (.I0(A_IBUF[8]),
        .I1(B_IBUF[8]),
        .O(\F_OBUF[11]_inst_i_5_n_0 ));
  OBUF \F_OBUF[12]_inst 
       (.I(F_OBUF[12]),
        .O(F[12]));
  OBUF \F_OBUF[13]_inst 
       (.I(F_OBUF[13]),
        .O(F[13]));
  OBUF \F_OBUF[14]_inst 
       (.I(F_OBUF[14]),
        .O(F[14]));
  OBUF \F_OBUF[15]_inst 
       (.I(F_OBUF[15]),
        .O(F[15]));
  CARRY4 \F_OBUF[15]_inst_i_1 
       (.CI(\F_OBUF[11]_inst_i_1_n_0 ),
        .CO({\F_OBUF[15]_inst_i_1_n_0 ,\F_OBUF[15]_inst_i_1_n_1 ,\F_OBUF[15]_inst_i_1_n_2 ,\F_OBUF[15]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(A_IBUF[15:12]),
        .O(F_OBUF[15:12]),
        .S({\F_OBUF[15]_inst_i_2_n_0 ,\F_OBUF[15]_inst_i_3_n_0 ,\F_OBUF[15]_inst_i_4_n_0 ,\F_OBUF[15]_inst_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[15]_inst_i_2 
       (.I0(A_IBUF[15]),
        .I1(B_IBUF[15]),
        .O(\F_OBUF[15]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[15]_inst_i_3 
       (.I0(A_IBUF[14]),
        .I1(B_IBUF[14]),
        .O(\F_OBUF[15]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[15]_inst_i_4 
       (.I0(A_IBUF[13]),
        .I1(B_IBUF[13]),
        .O(\F_OBUF[15]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[15]_inst_i_5 
       (.I0(A_IBUF[12]),
        .I1(B_IBUF[12]),
        .O(\F_OBUF[15]_inst_i_5_n_0 ));
  OBUF \F_OBUF[16]_inst 
       (.I(F_OBUF[16]),
        .O(F[16]));
  OBUF \F_OBUF[17]_inst 
       (.I(F_OBUF[17]),
        .O(F[17]));
  OBUF \F_OBUF[18]_inst 
       (.I(F_OBUF[18]),
        .O(F[18]));
  OBUF \F_OBUF[19]_inst 
       (.I(F_OBUF[19]),
        .O(F[19]));
  CARRY4 \F_OBUF[19]_inst_i_1 
       (.CI(\F_OBUF[15]_inst_i_1_n_0 ),
        .CO({\F_OBUF[19]_inst_i_1_n_0 ,\F_OBUF[19]_inst_i_1_n_1 ,\F_OBUF[19]_inst_i_1_n_2 ,\F_OBUF[19]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(A_IBUF[19:16]),
        .O(F_OBUF[19:16]),
        .S({\F_OBUF[19]_inst_i_2_n_0 ,\F_OBUF[19]_inst_i_3_n_0 ,\F_OBUF[19]_inst_i_4_n_0 ,\F_OBUF[19]_inst_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[19]_inst_i_2 
       (.I0(A_IBUF[19]),
        .I1(B_IBUF[19]),
        .O(\F_OBUF[19]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[19]_inst_i_3 
       (.I0(A_IBUF[18]),
        .I1(B_IBUF[18]),
        .O(\F_OBUF[19]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[19]_inst_i_4 
       (.I0(A_IBUF[17]),
        .I1(B_IBUF[17]),
        .O(\F_OBUF[19]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[19]_inst_i_5 
       (.I0(A_IBUF[16]),
        .I1(B_IBUF[16]),
        .O(\F_OBUF[19]_inst_i_5_n_0 ));
  OBUF \F_OBUF[1]_inst 
       (.I(F_OBUF[1]),
        .O(F[1]));
  OBUF \F_OBUF[20]_inst 
       (.I(F_OBUF[20]),
        .O(F[20]));
  OBUF \F_OBUF[21]_inst 
       (.I(F_OBUF[21]),
        .O(F[21]));
  OBUF \F_OBUF[22]_inst 
       (.I(F_OBUF[22]),
        .O(F[22]));
  OBUF \F_OBUF[23]_inst 
       (.I(F_OBUF[23]),
        .O(F[23]));
  CARRY4 \F_OBUF[23]_inst_i_1 
       (.CI(\F_OBUF[19]_inst_i_1_n_0 ),
        .CO({\F_OBUF[23]_inst_i_1_n_0 ,\F_OBUF[23]_inst_i_1_n_1 ,\F_OBUF[23]_inst_i_1_n_2 ,\F_OBUF[23]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(A_IBUF[23:20]),
        .O(F_OBUF[23:20]),
        .S({\F_OBUF[23]_inst_i_2_n_0 ,\F_OBUF[23]_inst_i_3_n_0 ,\F_OBUF[23]_inst_i_4_n_0 ,\F_OBUF[23]_inst_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[23]_inst_i_2 
       (.I0(A_IBUF[23]),
        .I1(B_IBUF[23]),
        .O(\F_OBUF[23]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[23]_inst_i_3 
       (.I0(A_IBUF[22]),
        .I1(B_IBUF[22]),
        .O(\F_OBUF[23]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[23]_inst_i_4 
       (.I0(A_IBUF[21]),
        .I1(B_IBUF[21]),
        .O(\F_OBUF[23]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[23]_inst_i_5 
       (.I0(A_IBUF[20]),
        .I1(B_IBUF[20]),
        .O(\F_OBUF[23]_inst_i_5_n_0 ));
  OBUF \F_OBUF[24]_inst 
       (.I(F_OBUF[24]),
        .O(F[24]));
  OBUF \F_OBUF[25]_inst 
       (.I(F_OBUF[25]),
        .O(F[25]));
  OBUF \F_OBUF[26]_inst 
       (.I(F_OBUF[26]),
        .O(F[26]));
  OBUF \F_OBUF[27]_inst 
       (.I(F_OBUF[27]),
        .O(F[27]));
  CARRY4 \F_OBUF[27]_inst_i_1 
       (.CI(\F_OBUF[23]_inst_i_1_n_0 ),
        .CO({\F_OBUF[27]_inst_i_1_n_0 ,\F_OBUF[27]_inst_i_1_n_1 ,\F_OBUF[27]_inst_i_1_n_2 ,\F_OBUF[27]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(A_IBUF[27:24]),
        .O(F_OBUF[27:24]),
        .S({\F_OBUF[27]_inst_i_2_n_0 ,\F_OBUF[27]_inst_i_3_n_0 ,\F_OBUF[27]_inst_i_4_n_0 ,\F_OBUF[27]_inst_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[27]_inst_i_2 
       (.I0(A_IBUF[27]),
        .I1(B_IBUF[27]),
        .O(\F_OBUF[27]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[27]_inst_i_3 
       (.I0(A_IBUF[26]),
        .I1(B_IBUF[26]),
        .O(\F_OBUF[27]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[27]_inst_i_4 
       (.I0(A_IBUF[25]),
        .I1(B_IBUF[25]),
        .O(\F_OBUF[27]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[27]_inst_i_5 
       (.I0(A_IBUF[24]),
        .I1(B_IBUF[24]),
        .O(\F_OBUF[27]_inst_i_5_n_0 ));
  OBUF \F_OBUF[28]_inst 
       (.I(F_OBUF[28]),
        .O(F[28]));
  OBUF \F_OBUF[29]_inst 
       (.I(F_OBUF[29]),
        .O(F[29]));
  OBUF \F_OBUF[2]_inst 
       (.I(F_OBUF[2]),
        .O(F[2]));
  OBUF \F_OBUF[30]_inst 
       (.I(F_OBUF[30]),
        .O(F[30]));
  OBUF \F_OBUF[31]_inst 
       (.I(F_OBUF[31]),
        .O(F[31]));
  CARRY4 \F_OBUF[31]_inst_i_1 
       (.CI(\F_OBUF[27]_inst_i_1_n_0 ),
        .CO({\F_OBUF[31]_inst_i_1_n_0 ,\F_OBUF[31]_inst_i_1_n_1 ,\F_OBUF[31]_inst_i_1_n_2 ,\F_OBUF[31]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(A_IBUF[31:28]),
        .O(F_OBUF[31:28]),
        .S({\F_OBUF[31]_inst_i_2_n_0 ,\F_OBUF[31]_inst_i_3_n_0 ,\F_OBUF[31]_inst_i_4_n_0 ,\F_OBUF[31]_inst_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[31]_inst_i_2 
       (.I0(A_IBUF[31]),
        .I1(B_IBUF[31]),
        .O(\F_OBUF[31]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[31]_inst_i_3 
       (.I0(A_IBUF[30]),
        .I1(B_IBUF[30]),
        .O(\F_OBUF[31]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[31]_inst_i_4 
       (.I0(A_IBUF[29]),
        .I1(B_IBUF[29]),
        .O(\F_OBUF[31]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[31]_inst_i_5 
       (.I0(A_IBUF[28]),
        .I1(B_IBUF[28]),
        .O(\F_OBUF[31]_inst_i_5_n_0 ));
  OBUF \F_OBUF[3]_inst 
       (.I(F_OBUF[3]),
        .O(F[3]));
  CARRY4 \F_OBUF[3]_inst_i_1 
       (.CI(1'b0),
        .CO({\F_OBUF[3]_inst_i_1_n_0 ,\F_OBUF[3]_inst_i_1_n_1 ,\F_OBUF[3]_inst_i_1_n_2 ,\F_OBUF[3]_inst_i_1_n_3 }),
        .CYINIT(B_IBUF[0]),
        .DI(A_IBUF[3:0]),
        .O(F_OBUF[3:0]),
        .S({\F_OBUF[3]_inst_i_2_n_0 ,\F_OBUF[3]_inst_i_3_n_0 ,\F_OBUF[3]_inst_i_4_n_0 ,\F_OBUF[3]_inst_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[3]_inst_i_2 
       (.I0(A_IBUF[3]),
        .I1(B_IBUF[3]),
        .O(\F_OBUF[3]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[3]_inst_i_3 
       (.I0(A_IBUF[2]),
        .I1(B_IBUF[2]),
        .O(\F_OBUF[3]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[3]_inst_i_4 
       (.I0(A_IBUF[1]),
        .I1(B_IBUF[1]),
        .O(\F_OBUF[3]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[3]_inst_i_5 
       (.I0(A_IBUF[0]),
        .I1(Cin_IBUF),
        .O(\F_OBUF[3]_inst_i_5_n_0 ));
  OBUF \F_OBUF[4]_inst 
       (.I(F_OBUF[4]),
        .O(F[4]));
  OBUF \F_OBUF[5]_inst 
       (.I(F_OBUF[5]),
        .O(F[5]));
  OBUF \F_OBUF[6]_inst 
       (.I(F_OBUF[6]),
        .O(F[6]));
  OBUF \F_OBUF[7]_inst 
       (.I(F_OBUF[7]),
        .O(F[7]));
  CARRY4 \F_OBUF[7]_inst_i_1 
       (.CI(\F_OBUF[3]_inst_i_1_n_0 ),
        .CO({\F_OBUF[7]_inst_i_1_n_0 ,\F_OBUF[7]_inst_i_1_n_1 ,\F_OBUF[7]_inst_i_1_n_2 ,\F_OBUF[7]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(A_IBUF[7:4]),
        .O(F_OBUF[7:4]),
        .S({\F_OBUF[7]_inst_i_2_n_0 ,\F_OBUF[7]_inst_i_3_n_0 ,\F_OBUF[7]_inst_i_4_n_0 ,\F_OBUF[7]_inst_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[7]_inst_i_2 
       (.I0(A_IBUF[7]),
        .I1(B_IBUF[7]),
        .O(\F_OBUF[7]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[7]_inst_i_3 
       (.I0(A_IBUF[6]),
        .I1(B_IBUF[6]),
        .O(\F_OBUF[7]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[7]_inst_i_4 
       (.I0(A_IBUF[5]),
        .I1(B_IBUF[5]),
        .O(\F_OBUF[7]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \F_OBUF[7]_inst_i_5 
       (.I0(A_IBUF[4]),
        .I1(B_IBUF[4]),
        .O(\F_OBUF[7]_inst_i_5_n_0 ));
  OBUF \F_OBUF[8]_inst 
       (.I(F_OBUF[8]),
        .O(F[8]));
  OBUF \F_OBUF[9]_inst 
       (.I(F_OBUF[9]),
        .O(F[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
