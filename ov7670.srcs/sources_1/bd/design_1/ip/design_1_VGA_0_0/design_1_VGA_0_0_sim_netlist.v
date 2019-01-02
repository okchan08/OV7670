// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Fri Jul  6 23:54:08 2018
// Host        : yoshiki-FMVA77JRY running 64-bit Ubuntu 18.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/yoshiki/xilinx/nexys4/ov7670/ov7670.srcs/sources_1/bd/design_1/ip/design_1_VGA_0_0/design_1_VGA_0_0_sim_netlist.v
// Design      : design_1_VGA_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_VGA_0_0,VGA,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "VGA,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module design_1_VGA_0_0
   (pix_clk,
    frame_pix,
    VGA_H_SYNC,
    VGA_V_SYNC,
    VGA_RED,
    VGA_BLUE,
    VGA_GREEN,
    frame_addr);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pix_clk CLK" *) input pix_clk;
  input [11:0]frame_pix;
  output VGA_H_SYNC;
  output VGA_V_SYNC;
  output [3:0]VGA_RED;
  output [3:0]VGA_BLUE;
  output [3:0]VGA_GREEN;
  output [17:0]frame_addr;

  wire [3:0]VGA_BLUE;
  wire [3:0]VGA_GREEN;
  wire VGA_H_SYNC;
  wire [3:0]VGA_RED;
  wire VGA_V_SYNC;
  wire [17:0]frame_addr;
  wire [11:0]frame_pix;
  wire pix_clk;

  design_1_VGA_0_0_VGA inst
       (.VGA_BLUE(VGA_BLUE),
        .VGA_GREEN(VGA_GREEN),
        .VGA_H_SYNC(VGA_H_SYNC),
        .VGA_RED(VGA_RED),
        .VGA_V_SYNC(VGA_V_SYNC),
        .frame_addr(frame_addr),
        .frame_pix(frame_pix),
        .pix_clk(pix_clk));
endmodule

(* ORIG_REF_NAME = "VGA" *) 
module design_1_VGA_0_0_VGA
   (VGA_H_SYNC,
    VGA_V_SYNC,
    frame_addr,
    VGA_RED,
    VGA_BLUE,
    VGA_GREEN,
    pix_clk,
    frame_pix);
  output VGA_H_SYNC;
  output VGA_V_SYNC;
  output [17:0]frame_addr;
  output [3:0]VGA_RED;
  output [3:0]VGA_BLUE;
  output [3:0]VGA_GREEN;
  input pix_clk;
  input [11:0]frame_pix;

  wire [3:0]VGA_BLUE;
  wire [3:0]VGA_GREEN;
  wire VGA_H_SYNC;
  wire [3:0]VGA_RED;
  wire VGA_V_SYNC;
  wire [3:0]bg_blue;
  wire [3:0]bg_blue_d;
  wire [3:0]bg_green;
  wire [3:0]bg_red;
  wire [3:0]bg_red_d;
  wire blank;
  wire blank_i_1_n_0;
  wire blank_i_2_n_0;
  wire blank_i_3_n_0;
  wire clear;
  wire [11:1]data0;
  wire [17:0]frame_addr;
  wire \frame_addr[11]_i_2_n_0 ;
  wire \frame_addr[11]_i_3_n_0 ;
  wire \frame_addr[11]_i_4_n_0 ;
  wire \frame_addr[11]_i_5_n_0 ;
  wire \frame_addr[15]_i_2_n_0 ;
  wire \frame_addr[15]_i_3_n_0 ;
  wire \frame_addr[15]_i_4_n_0 ;
  wire \frame_addr[15]_i_5_n_0 ;
  wire \frame_addr[17]_i_4_n_0 ;
  wire \frame_addr[17]_i_5_n_0 ;
  wire \frame_addr[17]_i_6_n_0 ;
  wire \frame_addr[3]_i_2_n_0 ;
  wire \frame_addr[3]_i_3_n_0 ;
  wire \frame_addr[3]_i_4_n_0 ;
  wire \frame_addr[3]_i_5_n_0 ;
  wire \frame_addr[7]_i_2_n_0 ;
  wire \frame_addr[7]_i_3_n_0 ;
  wire \frame_addr[7]_i_4_n_0 ;
  wire \frame_addr[7]_i_5_n_0 ;
  wire \frame_addr_reg[11]_i_1_n_0 ;
  wire \frame_addr_reg[11]_i_1_n_1 ;
  wire \frame_addr_reg[11]_i_1_n_2 ;
  wire \frame_addr_reg[11]_i_1_n_3 ;
  wire \frame_addr_reg[11]_i_1_n_4 ;
  wire \frame_addr_reg[11]_i_1_n_5 ;
  wire \frame_addr_reg[11]_i_1_n_6 ;
  wire \frame_addr_reg[11]_i_1_n_7 ;
  wire \frame_addr_reg[15]_i_1_n_0 ;
  wire \frame_addr_reg[15]_i_1_n_1 ;
  wire \frame_addr_reg[15]_i_1_n_2 ;
  wire \frame_addr_reg[15]_i_1_n_3 ;
  wire \frame_addr_reg[15]_i_1_n_4 ;
  wire \frame_addr_reg[15]_i_1_n_5 ;
  wire \frame_addr_reg[15]_i_1_n_6 ;
  wire \frame_addr_reg[15]_i_1_n_7 ;
  wire \frame_addr_reg[17]_i_3_n_3 ;
  wire \frame_addr_reg[17]_i_3_n_6 ;
  wire \frame_addr_reg[17]_i_3_n_7 ;
  wire \frame_addr_reg[3]_i_1_n_0 ;
  wire \frame_addr_reg[3]_i_1_n_1 ;
  wire \frame_addr_reg[3]_i_1_n_2 ;
  wire \frame_addr_reg[3]_i_1_n_3 ;
  wire \frame_addr_reg[3]_i_1_n_4 ;
  wire \frame_addr_reg[3]_i_1_n_5 ;
  wire \frame_addr_reg[3]_i_1_n_6 ;
  wire \frame_addr_reg[3]_i_1_n_7 ;
  wire \frame_addr_reg[7]_i_1_n_0 ;
  wire \frame_addr_reg[7]_i_1_n_1 ;
  wire \frame_addr_reg[7]_i_1_n_2 ;
  wire \frame_addr_reg[7]_i_1_n_3 ;
  wire \frame_addr_reg[7]_i_1_n_4 ;
  wire \frame_addr_reg[7]_i_1_n_5 ;
  wire \frame_addr_reg[7]_i_1_n_6 ;
  wire \frame_addr_reg[7]_i_1_n_7 ;
  wire [11:0]frame_pix;
  wire [0:0]h_cnt;
  wire \h_cnt[11]_i_3_n_0 ;
  wire \h_cnt[11]_i_4_n_0 ;
  wire \h_cnt[11]_i_5_n_0 ;
  wire \h_cnt[11]_i_6_n_0 ;
  wire \h_cnt[11]_i_7_n_0 ;
  wire \h_cnt[4]_i_2_n_0 ;
  wire \h_cnt[4]_i_3_n_0 ;
  wire \h_cnt[4]_i_4_n_0 ;
  wire \h_cnt[4]_i_5_n_0 ;
  wire \h_cnt[8]_i_2_n_0 ;
  wire \h_cnt[8]_i_3_n_0 ;
  wire \h_cnt[8]_i_4_n_0 ;
  wire \h_cnt[8]_i_5_n_0 ;
  wire \h_cnt_reg[11]_i_2_n_2 ;
  wire \h_cnt_reg[11]_i_2_n_3 ;
  wire \h_cnt_reg[4]_i_1_n_0 ;
  wire \h_cnt_reg[4]_i_1_n_1 ;
  wire \h_cnt_reg[4]_i_1_n_2 ;
  wire \h_cnt_reg[4]_i_1_n_3 ;
  wire \h_cnt_reg[8]_i_1_n_0 ;
  wire \h_cnt_reg[8]_i_1_n_1 ;
  wire \h_cnt_reg[8]_i_1_n_2 ;
  wire \h_cnt_reg[8]_i_1_n_3 ;
  wire \h_cnt_reg_n_0_[0] ;
  wire \h_cnt_reg_n_0_[10] ;
  wire \h_cnt_reg_n_0_[11] ;
  wire \h_cnt_reg_n_0_[1] ;
  wire \h_cnt_reg_n_0_[2] ;
  wire \h_cnt_reg_n_0_[3] ;
  wire \h_cnt_reg_n_0_[4] ;
  wire \h_cnt_reg_n_0_[5] ;
  wire \h_cnt_reg_n_0_[6] ;
  wire \h_cnt_reg_n_0_[7] ;
  wire \h_cnt_reg_n_0_[8] ;
  wire \h_cnt_reg_n_0_[9] ;
  wire h_sync0;
  wire h_sync_d_reg_srl2_i_2_n_0;
  wire h_sync_d_reg_srl2_i_3_n_0;
  wire h_sync_d_reg_srl2_i_4_n_0;
  wire h_sync_d_reg_srl2_i_5_n_0;
  wire h_sync_d_reg_srl2_n_0;
  wire pix_clk;
  wire sel;
  wire v_cnt;
  wire v_cnt0;
  wire \v_cnt[0]_i_3_n_0 ;
  wire \v_cnt[0]_i_4_n_0 ;
  wire \v_cnt[0]_i_5_n_0 ;
  wire \v_cnt[0]_i_6_n_0 ;
  wire \v_cnt[0]_i_7_n_0 ;
  wire \v_cnt[0]_i_8_n_0 ;
  wire \v_cnt[0]_i_9_n_0 ;
  wire \v_cnt[4]_i_2_n_0 ;
  wire \v_cnt[4]_i_3_n_0 ;
  wire \v_cnt[4]_i_4_n_0 ;
  wire \v_cnt[4]_i_5_n_0 ;
  wire \v_cnt[8]_i_2_n_0 ;
  wire \v_cnt[8]_i_3_n_0 ;
  wire \v_cnt[8]_i_4_n_0 ;
  wire \v_cnt[8]_i_5_n_0 ;
  wire [11:0]v_cnt_reg;
  wire \v_cnt_reg[0]_i_2_n_0 ;
  wire \v_cnt_reg[0]_i_2_n_1 ;
  wire \v_cnt_reg[0]_i_2_n_2 ;
  wire \v_cnt_reg[0]_i_2_n_3 ;
  wire \v_cnt_reg[0]_i_2_n_4 ;
  wire \v_cnt_reg[0]_i_2_n_5 ;
  wire \v_cnt_reg[0]_i_2_n_6 ;
  wire \v_cnt_reg[0]_i_2_n_7 ;
  wire \v_cnt_reg[4]_i_1_n_0 ;
  wire \v_cnt_reg[4]_i_1_n_1 ;
  wire \v_cnt_reg[4]_i_1_n_2 ;
  wire \v_cnt_reg[4]_i_1_n_3 ;
  wire \v_cnt_reg[4]_i_1_n_4 ;
  wire \v_cnt_reg[4]_i_1_n_5 ;
  wire \v_cnt_reg[4]_i_1_n_6 ;
  wire \v_cnt_reg[4]_i_1_n_7 ;
  wire \v_cnt_reg[8]_i_1_n_1 ;
  wire \v_cnt_reg[8]_i_1_n_2 ;
  wire \v_cnt_reg[8]_i_1_n_3 ;
  wire \v_cnt_reg[8]_i_1_n_4 ;
  wire \v_cnt_reg[8]_i_1_n_5 ;
  wire \v_cnt_reg[8]_i_1_n_6 ;
  wire \v_cnt_reg[8]_i_1_n_7 ;
  wire v_sync0;
  wire v_sync_d_reg_srl2_i_2_n_0;
  wire v_sync_d_reg_srl2_n_0;
  wire [3:1]\NLW_frame_addr_reg[17]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_frame_addr_reg[17]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_h_cnt_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_h_cnt_reg[11]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_v_cnt_reg[8]_i_1_CO_UNCONNECTED ;

  FDRE \VGA_BLUE_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(bg_blue_d[0]),
        .Q(VGA_BLUE[0]),
        .R(1'b0));
  FDRE \VGA_BLUE_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(bg_blue_d[1]),
        .Q(VGA_BLUE[1]),
        .R(1'b0));
  FDRE \VGA_BLUE_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(bg_blue_d[2]),
        .Q(VGA_BLUE[2]),
        .R(1'b0));
  FDRE \VGA_BLUE_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(bg_blue_d[3]),
        .Q(VGA_BLUE[3]),
        .R(1'b0));
  FDRE \VGA_GREEN_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(bg_green[0]),
        .Q(VGA_GREEN[0]),
        .R(1'b0));
  FDRE \VGA_GREEN_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(bg_green[1]),
        .Q(VGA_GREEN[1]),
        .R(1'b0));
  FDRE \VGA_GREEN_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(bg_green[2]),
        .Q(VGA_GREEN[2]),
        .R(1'b0));
  FDRE \VGA_GREEN_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(bg_green[3]),
        .Q(VGA_GREEN[3]),
        .R(1'b0));
  FDRE VGA_H_SYNC_reg
       (.C(pix_clk),
        .CE(1'b1),
        .D(h_sync_d_reg_srl2_n_0),
        .Q(VGA_H_SYNC),
        .R(1'b0));
  FDRE \VGA_RED_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(bg_red_d[0]),
        .Q(VGA_RED[0]),
        .R(1'b0));
  FDRE \VGA_RED_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(bg_red_d[1]),
        .Q(VGA_RED[1]),
        .R(1'b0));
  FDRE \VGA_RED_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(bg_red_d[2]),
        .Q(VGA_RED[2]),
        .R(1'b0));
  FDRE \VGA_RED_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(bg_red_d[3]),
        .Q(VGA_RED[3]),
        .R(1'b0));
  FDRE VGA_V_SYNC_reg
       (.C(pix_clk),
        .CE(1'b1),
        .D(v_sync_d_reg_srl2_n_0),
        .Q(VGA_V_SYNC),
        .R(1'b0));
  FDRE \bg_blue_d_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(bg_blue[0]),
        .Q(bg_blue_d[0]),
        .R(1'b0));
  FDRE \bg_blue_d_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(bg_blue[1]),
        .Q(bg_blue_d[1]),
        .R(1'b0));
  FDRE \bg_blue_d_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(bg_blue[2]),
        .Q(bg_blue_d[2]),
        .R(1'b0));
  FDRE \bg_blue_d_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(bg_blue[3]),
        .Q(bg_blue_d[3]),
        .R(1'b0));
  FDSE \bg_blue_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(frame_pix[0]),
        .Q(bg_blue[0]),
        .S(blank));
  FDSE \bg_blue_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(frame_pix[1]),
        .Q(bg_blue[1]),
        .S(blank));
  FDSE \bg_blue_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(frame_pix[2]),
        .Q(bg_blue[2]),
        .S(blank));
  FDSE \bg_blue_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(frame_pix[3]),
        .Q(bg_blue[3]),
        .S(blank));
  FDSE \bg_green_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(frame_pix[4]),
        .Q(bg_green[0]),
        .S(blank));
  FDSE \bg_green_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(frame_pix[5]),
        .Q(bg_green[1]),
        .S(blank));
  FDSE \bg_green_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(frame_pix[6]),
        .Q(bg_green[2]),
        .S(blank));
  FDSE \bg_green_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(frame_pix[7]),
        .Q(bg_green[3]),
        .S(blank));
  FDRE \bg_red_d_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(bg_red[0]),
        .Q(bg_red_d[0]),
        .R(1'b0));
  FDRE \bg_red_d_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(bg_red[1]),
        .Q(bg_red_d[1]),
        .R(1'b0));
  FDRE \bg_red_d_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(bg_red[2]),
        .Q(bg_red_d[2]),
        .R(1'b0));
  FDRE \bg_red_d_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(bg_red[3]),
        .Q(bg_red_d[3]),
        .R(1'b0));
  FDSE \bg_red_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(frame_pix[8]),
        .Q(bg_red[0]),
        .S(blank));
  FDSE \bg_red_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(frame_pix[9]),
        .Q(bg_red[1]),
        .S(blank));
  FDSE \bg_red_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(frame_pix[10]),
        .Q(bg_red[2]),
        .S(blank));
  FDSE \bg_red_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(frame_pix[11]),
        .Q(bg_red[3]),
        .S(blank));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    blank_i_1
       (.I0(blank_i_2_n_0),
        .I1(blank_i_3_n_0),
        .I2(v_cnt_reg[10]),
        .I3(v_cnt_reg[11]),
        .I4(v_cnt_reg[9]),
        .O(blank_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFA8)) 
    blank_i_2
       (.I0(\h_cnt_reg_n_0_[9] ),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt_reg_n_0_[8] ),
        .I3(\h_cnt_reg_n_0_[10] ),
        .I4(\h_cnt_reg_n_0_[11] ),
        .O(blank_i_2_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    blank_i_3
       (.I0(v_cnt_reg[6]),
        .I1(v_cnt_reg[5]),
        .I2(v_cnt_reg[8]),
        .I3(v_cnt_reg[7]),
        .O(blank_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    blank_reg
       (.C(pix_clk),
        .CE(1'b1),
        .D(blank_i_1_n_0),
        .Q(blank),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_addr[11]_i_2 
       (.I0(frame_addr[11]),
        .O(\frame_addr[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_addr[11]_i_3 
       (.I0(frame_addr[10]),
        .O(\frame_addr[11]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_addr[11]_i_4 
       (.I0(frame_addr[9]),
        .O(\frame_addr[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_addr[11]_i_5 
       (.I0(frame_addr[8]),
        .O(\frame_addr[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_addr[15]_i_2 
       (.I0(frame_addr[15]),
        .O(\frame_addr[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_addr[15]_i_3 
       (.I0(frame_addr[14]),
        .O(\frame_addr[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_addr[15]_i_4 
       (.I0(frame_addr[13]),
        .O(\frame_addr[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_addr[15]_i_5 
       (.I0(frame_addr[12]),
        .O(\frame_addr[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \frame_addr[17]_i_1 
       (.I0(\frame_addr[17]_i_4_n_0 ),
        .I1(v_cnt_reg[10]),
        .I2(v_cnt_reg[7]),
        .I3(v_cnt_reg[8]),
        .I4(v_cnt_reg[5]),
        .I5(v_cnt_reg[6]),
        .O(clear));
  LUT5 #(
    .INIT(32'h0000010F)) 
    \frame_addr[17]_i_2 
       (.I0(\h_cnt_reg_n_0_[7] ),
        .I1(\h_cnt_reg_n_0_[8] ),
        .I2(\h_cnt_reg_n_0_[11] ),
        .I3(\h_cnt_reg_n_0_[9] ),
        .I4(\h_cnt_reg_n_0_[10] ),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \frame_addr[17]_i_4 
       (.I0(v_cnt_reg[9]),
        .I1(v_cnt_reg[11]),
        .O(\frame_addr[17]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_addr[17]_i_5 
       (.I0(frame_addr[17]),
        .O(\frame_addr[17]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_addr[17]_i_6 
       (.I0(frame_addr[16]),
        .O(\frame_addr[17]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_addr[3]_i_2 
       (.I0(frame_addr[3]),
        .O(\frame_addr[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_addr[3]_i_3 
       (.I0(frame_addr[2]),
        .O(\frame_addr[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_addr[3]_i_4 
       (.I0(frame_addr[1]),
        .O(\frame_addr[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \frame_addr[3]_i_5 
       (.I0(frame_addr[0]),
        .O(\frame_addr[3]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_addr[7]_i_2 
       (.I0(frame_addr[7]),
        .O(\frame_addr[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_addr[7]_i_3 
       (.I0(frame_addr[6]),
        .O(\frame_addr[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_addr[7]_i_4 
       (.I0(frame_addr[5]),
        .O(\frame_addr[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_addr[7]_i_5 
       (.I0(frame_addr[4]),
        .O(\frame_addr[7]_i_5_n_0 ));
  FDRE \frame_addr_reg[0] 
       (.C(pix_clk),
        .CE(sel),
        .D(\frame_addr_reg[3]_i_1_n_7 ),
        .Q(frame_addr[0]),
        .R(clear));
  FDRE \frame_addr_reg[10] 
       (.C(pix_clk),
        .CE(sel),
        .D(\frame_addr_reg[11]_i_1_n_5 ),
        .Q(frame_addr[10]),
        .R(clear));
  FDRE \frame_addr_reg[11] 
       (.C(pix_clk),
        .CE(sel),
        .D(\frame_addr_reg[11]_i_1_n_4 ),
        .Q(frame_addr[11]),
        .R(clear));
  CARRY4 \frame_addr_reg[11]_i_1 
       (.CI(\frame_addr_reg[7]_i_1_n_0 ),
        .CO({\frame_addr_reg[11]_i_1_n_0 ,\frame_addr_reg[11]_i_1_n_1 ,\frame_addr_reg[11]_i_1_n_2 ,\frame_addr_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_addr_reg[11]_i_1_n_4 ,\frame_addr_reg[11]_i_1_n_5 ,\frame_addr_reg[11]_i_1_n_6 ,\frame_addr_reg[11]_i_1_n_7 }),
        .S({\frame_addr[11]_i_2_n_0 ,\frame_addr[11]_i_3_n_0 ,\frame_addr[11]_i_4_n_0 ,\frame_addr[11]_i_5_n_0 }));
  FDRE \frame_addr_reg[12] 
       (.C(pix_clk),
        .CE(sel),
        .D(\frame_addr_reg[15]_i_1_n_7 ),
        .Q(frame_addr[12]),
        .R(clear));
  FDRE \frame_addr_reg[13] 
       (.C(pix_clk),
        .CE(sel),
        .D(\frame_addr_reg[15]_i_1_n_6 ),
        .Q(frame_addr[13]),
        .R(clear));
  FDRE \frame_addr_reg[14] 
       (.C(pix_clk),
        .CE(sel),
        .D(\frame_addr_reg[15]_i_1_n_5 ),
        .Q(frame_addr[14]),
        .R(clear));
  FDRE \frame_addr_reg[15] 
       (.C(pix_clk),
        .CE(sel),
        .D(\frame_addr_reg[15]_i_1_n_4 ),
        .Q(frame_addr[15]),
        .R(clear));
  CARRY4 \frame_addr_reg[15]_i_1 
       (.CI(\frame_addr_reg[11]_i_1_n_0 ),
        .CO({\frame_addr_reg[15]_i_1_n_0 ,\frame_addr_reg[15]_i_1_n_1 ,\frame_addr_reg[15]_i_1_n_2 ,\frame_addr_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_addr_reg[15]_i_1_n_4 ,\frame_addr_reg[15]_i_1_n_5 ,\frame_addr_reg[15]_i_1_n_6 ,\frame_addr_reg[15]_i_1_n_7 }),
        .S({\frame_addr[15]_i_2_n_0 ,\frame_addr[15]_i_3_n_0 ,\frame_addr[15]_i_4_n_0 ,\frame_addr[15]_i_5_n_0 }));
  FDRE \frame_addr_reg[16] 
       (.C(pix_clk),
        .CE(sel),
        .D(\frame_addr_reg[17]_i_3_n_7 ),
        .Q(frame_addr[16]),
        .R(clear));
  FDRE \frame_addr_reg[17] 
       (.C(pix_clk),
        .CE(sel),
        .D(\frame_addr_reg[17]_i_3_n_6 ),
        .Q(frame_addr[17]),
        .R(clear));
  CARRY4 \frame_addr_reg[17]_i_3 
       (.CI(\frame_addr_reg[15]_i_1_n_0 ),
        .CO({\NLW_frame_addr_reg[17]_i_3_CO_UNCONNECTED [3:1],\frame_addr_reg[17]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_frame_addr_reg[17]_i_3_O_UNCONNECTED [3:2],\frame_addr_reg[17]_i_3_n_6 ,\frame_addr_reg[17]_i_3_n_7 }),
        .S({1'b0,1'b0,\frame_addr[17]_i_5_n_0 ,\frame_addr[17]_i_6_n_0 }));
  FDRE \frame_addr_reg[1] 
       (.C(pix_clk),
        .CE(sel),
        .D(\frame_addr_reg[3]_i_1_n_6 ),
        .Q(frame_addr[1]),
        .R(clear));
  FDRE \frame_addr_reg[2] 
       (.C(pix_clk),
        .CE(sel),
        .D(\frame_addr_reg[3]_i_1_n_5 ),
        .Q(frame_addr[2]),
        .R(clear));
  FDRE \frame_addr_reg[3] 
       (.C(pix_clk),
        .CE(sel),
        .D(\frame_addr_reg[3]_i_1_n_4 ),
        .Q(frame_addr[3]),
        .R(clear));
  CARRY4 \frame_addr_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\frame_addr_reg[3]_i_1_n_0 ,\frame_addr_reg[3]_i_1_n_1 ,\frame_addr_reg[3]_i_1_n_2 ,\frame_addr_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\frame_addr_reg[3]_i_1_n_4 ,\frame_addr_reg[3]_i_1_n_5 ,\frame_addr_reg[3]_i_1_n_6 ,\frame_addr_reg[3]_i_1_n_7 }),
        .S({\frame_addr[3]_i_2_n_0 ,\frame_addr[3]_i_3_n_0 ,\frame_addr[3]_i_4_n_0 ,\frame_addr[3]_i_5_n_0 }));
  FDRE \frame_addr_reg[4] 
       (.C(pix_clk),
        .CE(sel),
        .D(\frame_addr_reg[7]_i_1_n_7 ),
        .Q(frame_addr[4]),
        .R(clear));
  FDRE \frame_addr_reg[5] 
       (.C(pix_clk),
        .CE(sel),
        .D(\frame_addr_reg[7]_i_1_n_6 ),
        .Q(frame_addr[5]),
        .R(clear));
  FDRE \frame_addr_reg[6] 
       (.C(pix_clk),
        .CE(sel),
        .D(\frame_addr_reg[7]_i_1_n_5 ),
        .Q(frame_addr[6]),
        .R(clear));
  FDRE \frame_addr_reg[7] 
       (.C(pix_clk),
        .CE(sel),
        .D(\frame_addr_reg[7]_i_1_n_4 ),
        .Q(frame_addr[7]),
        .R(clear));
  CARRY4 \frame_addr_reg[7]_i_1 
       (.CI(\frame_addr_reg[3]_i_1_n_0 ),
        .CO({\frame_addr_reg[7]_i_1_n_0 ,\frame_addr_reg[7]_i_1_n_1 ,\frame_addr_reg[7]_i_1_n_2 ,\frame_addr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_addr_reg[7]_i_1_n_4 ,\frame_addr_reg[7]_i_1_n_5 ,\frame_addr_reg[7]_i_1_n_6 ,\frame_addr_reg[7]_i_1_n_7 }),
        .S({\frame_addr[7]_i_2_n_0 ,\frame_addr[7]_i_3_n_0 ,\frame_addr[7]_i_4_n_0 ,\frame_addr[7]_i_5_n_0 }));
  FDRE \frame_addr_reg[8] 
       (.C(pix_clk),
        .CE(sel),
        .D(\frame_addr_reg[11]_i_1_n_7 ),
        .Q(frame_addr[8]),
        .R(clear));
  FDRE \frame_addr_reg[9] 
       (.C(pix_clk),
        .CE(sel),
        .D(\frame_addr_reg[11]_i_1_n_6 ),
        .Q(frame_addr[9]),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \h_cnt[0]_i_1 
       (.I0(\h_cnt_reg_n_0_[0] ),
        .O(h_cnt));
  LUT5 #(
    .INIT(32'h00000001)) 
    \h_cnt[11]_i_1 
       (.I0(\h_cnt[11]_i_3_n_0 ),
        .I1(\h_cnt[11]_i_4_n_0 ),
        .I2(\h_cnt_reg_n_0_[3] ),
        .I3(\h_cnt_reg_n_0_[9] ),
        .I4(\h_cnt_reg_n_0_[10] ),
        .O(v_cnt));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \h_cnt[11]_i_3 
       (.I0(\h_cnt_reg_n_0_[2] ),
        .I1(\h_cnt_reg_n_0_[0] ),
        .I2(\h_cnt_reg_n_0_[1] ),
        .I3(\h_cnt_reg_n_0_[7] ),
        .I4(\h_cnt_reg_n_0_[4] ),
        .O(\h_cnt[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \h_cnt[11]_i_4 
       (.I0(\h_cnt_reg_n_0_[6] ),
        .I1(\h_cnt_reg_n_0_[5] ),
        .I2(\h_cnt_reg_n_0_[11] ),
        .I3(\h_cnt_reg_n_0_[8] ),
        .O(\h_cnt[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_cnt[11]_i_5 
       (.I0(\h_cnt_reg_n_0_[11] ),
        .O(\h_cnt[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_cnt[11]_i_6 
       (.I0(\h_cnt_reg_n_0_[10] ),
        .O(\h_cnt[11]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_cnt[11]_i_7 
       (.I0(\h_cnt_reg_n_0_[9] ),
        .O(\h_cnt[11]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_cnt[4]_i_2 
       (.I0(\h_cnt_reg_n_0_[4] ),
        .O(\h_cnt[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_cnt[4]_i_3 
       (.I0(\h_cnt_reg_n_0_[3] ),
        .O(\h_cnt[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_cnt[4]_i_4 
       (.I0(\h_cnt_reg_n_0_[2] ),
        .O(\h_cnt[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_cnt[4]_i_5 
       (.I0(\h_cnt_reg_n_0_[1] ),
        .O(\h_cnt[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_cnt[8]_i_2 
       (.I0(\h_cnt_reg_n_0_[8] ),
        .O(\h_cnt[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_cnt[8]_i_3 
       (.I0(\h_cnt_reg_n_0_[7] ),
        .O(\h_cnt[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_cnt[8]_i_4 
       (.I0(\h_cnt_reg_n_0_[6] ),
        .O(\h_cnt[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \h_cnt[8]_i_5 
       (.I0(\h_cnt_reg_n_0_[5] ),
        .O(\h_cnt[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(h_cnt),
        .Q(\h_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[10] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data0[10]),
        .Q(\h_cnt_reg_n_0_[10] ),
        .R(v_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[11] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data0[11]),
        .Q(\h_cnt_reg_n_0_[11] ),
        .R(v_cnt));
  CARRY4 \h_cnt_reg[11]_i_2 
       (.CI(\h_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_h_cnt_reg[11]_i_2_CO_UNCONNECTED [3:2],\h_cnt_reg[11]_i_2_n_2 ,\h_cnt_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_h_cnt_reg[11]_i_2_O_UNCONNECTED [3],data0[11:9]}),
        .S({1'b0,\h_cnt[11]_i_5_n_0 ,\h_cnt[11]_i_6_n_0 ,\h_cnt[11]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data0[1]),
        .Q(\h_cnt_reg_n_0_[1] ),
        .R(v_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data0[2]),
        .Q(\h_cnt_reg_n_0_[2] ),
        .R(v_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data0[3]),
        .Q(\h_cnt_reg_n_0_[3] ),
        .R(v_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data0[4]),
        .Q(\h_cnt_reg_n_0_[4] ),
        .R(v_cnt));
  CARRY4 \h_cnt_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\h_cnt_reg[4]_i_1_n_0 ,\h_cnt_reg[4]_i_1_n_1 ,\h_cnt_reg[4]_i_1_n_2 ,\h_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(\h_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\h_cnt[4]_i_2_n_0 ,\h_cnt[4]_i_3_n_0 ,\h_cnt[4]_i_4_n_0 ,\h_cnt[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[5] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data0[5]),
        .Q(\h_cnt_reg_n_0_[5] ),
        .R(v_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[6] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data0[6]),
        .Q(\h_cnt_reg_n_0_[6] ),
        .R(v_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[7] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data0[7]),
        .Q(\h_cnt_reg_n_0_[7] ),
        .R(v_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[8] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data0[8]),
        .Q(\h_cnt_reg_n_0_[8] ),
        .R(v_cnt));
  CARRY4 \h_cnt_reg[8]_i_1 
       (.CI(\h_cnt_reg[4]_i_1_n_0 ),
        .CO({\h_cnt_reg[8]_i_1_n_0 ,\h_cnt_reg[8]_i_1_n_1 ,\h_cnt_reg[8]_i_1_n_2 ,\h_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\h_cnt[8]_i_2_n_0 ,\h_cnt[8]_i_3_n_0 ,\h_cnt[8]_i_4_n_0 ,\h_cnt[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[9] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data0[9]),
        .Q(\h_cnt_reg_n_0_[9] ),
        .R(v_cnt));
  (* srl_name = "\inst/h_sync_d_reg_srl2 " *) 
  SRL16E h_sync_d_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(h_sync0),
        .Q(h_sync_d_reg_srl2_n_0));
  LUT6 #(
    .INIT(64'hFF10FFFF10101010)) 
    h_sync_d_reg_srl2_i_1
       (.I0(\h_cnt[11]_i_4_n_0 ),
        .I1(h_sync_d_reg_srl2_i_2_n_0),
        .I2(h_sync_d_reg_srl2_i_3_n_0),
        .I3(h_sync_d_reg_srl2_i_4_n_0),
        .I4(\h_cnt[11]_i_3_n_0 ),
        .I5(h_sync_d_reg_srl2_i_5_n_0),
        .O(h_sync0));
  LUT3 #(
    .INIT(8'hFE)) 
    h_sync_d_reg_srl2_i_2
       (.I0(\h_cnt_reg_n_0_[10] ),
        .I1(\h_cnt_reg_n_0_[9] ),
        .I2(\h_cnt_reg_n_0_[3] ),
        .O(h_sync_d_reg_srl2_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00010101)) 
    h_sync_d_reg_srl2_i_3
       (.I0(\h_cnt_reg_n_0_[2] ),
        .I1(\h_cnt_reg_n_0_[4] ),
        .I2(\h_cnt_reg_n_0_[7] ),
        .I3(\h_cnt_reg_n_0_[1] ),
        .I4(\h_cnt_reg_n_0_[0] ),
        .O(h_sync_d_reg_srl2_i_3_n_0));
  LUT4 #(
    .INIT(16'hF080)) 
    h_sync_d_reg_srl2_i_4
       (.I0(\h_cnt_reg_n_0_[4] ),
        .I1(\h_cnt_reg_n_0_[3] ),
        .I2(\h_cnt_reg_n_0_[7] ),
        .I3(\h_cnt_reg_n_0_[5] ),
        .O(h_sync_d_reg_srl2_i_4_n_0));
  LUT5 #(
    .INIT(32'h00800000)) 
    h_sync_d_reg_srl2_i_5
       (.I0(\h_cnt_reg_n_0_[6] ),
        .I1(\h_cnt_reg_n_0_[8] ),
        .I2(\h_cnt_reg_n_0_[9] ),
        .I3(\h_cnt_reg_n_0_[11] ),
        .I4(\h_cnt_reg_n_0_[10] ),
        .O(h_sync_d_reg_srl2_i_5_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \v_cnt[0]_i_1 
       (.I0(\v_cnt[0]_i_3_n_0 ),
        .I1(\h_cnt_reg_n_0_[3] ),
        .I2(\h_cnt[11]_i_4_n_0 ),
        .I3(\h_cnt[11]_i_3_n_0 ),
        .I4(\v_cnt[0]_i_4_n_0 ),
        .I5(\v_cnt[0]_i_5_n_0 ),
        .O(v_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \v_cnt[0]_i_3 
       (.I0(\h_cnt_reg_n_0_[9] ),
        .I1(\h_cnt_reg_n_0_[10] ),
        .O(\v_cnt[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \v_cnt[0]_i_4 
       (.I0(v_cnt_reg[2]),
        .I1(v_cnt_reg[3]),
        .I2(v_cnt_reg[0]),
        .I3(v_cnt_reg[1]),
        .I4(v_cnt_reg[11]),
        .I5(v_cnt_reg[9]),
        .O(\v_cnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \v_cnt[0]_i_5 
       (.I0(v_cnt_reg[6]),
        .I1(v_cnt_reg[7]),
        .I2(v_cnt_reg[5]),
        .I3(v_cnt_reg[4]),
        .I4(v_cnt_reg[8]),
        .I5(v_cnt_reg[10]),
        .O(\v_cnt[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_cnt[0]_i_6 
       (.I0(v_cnt_reg[3]),
        .O(\v_cnt[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_cnt[0]_i_7 
       (.I0(v_cnt_reg[2]),
        .O(\v_cnt[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_cnt[0]_i_8 
       (.I0(v_cnt_reg[1]),
        .O(\v_cnt[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v_cnt[0]_i_9 
       (.I0(v_cnt_reg[0]),
        .O(\v_cnt[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_cnt[4]_i_2 
       (.I0(v_cnt_reg[7]),
        .O(\v_cnt[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_cnt[4]_i_3 
       (.I0(v_cnt_reg[6]),
        .O(\v_cnt[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_cnt[4]_i_4 
       (.I0(v_cnt_reg[5]),
        .O(\v_cnt[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_cnt[4]_i_5 
       (.I0(v_cnt_reg[4]),
        .O(\v_cnt[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_cnt[8]_i_2 
       (.I0(v_cnt_reg[11]),
        .O(\v_cnt[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_cnt[8]_i_3 
       (.I0(v_cnt_reg[10]),
        .O(\v_cnt[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_cnt[8]_i_4 
       (.I0(v_cnt_reg[9]),
        .O(\v_cnt[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_cnt[8]_i_5 
       (.I0(v_cnt_reg[8]),
        .O(\v_cnt[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[0] 
       (.C(pix_clk),
        .CE(v_cnt),
        .D(\v_cnt_reg[0]_i_2_n_7 ),
        .Q(v_cnt_reg[0]),
        .R(v_cnt0));
  CARRY4 \v_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\v_cnt_reg[0]_i_2_n_0 ,\v_cnt_reg[0]_i_2_n_1 ,\v_cnt_reg[0]_i_2_n_2 ,\v_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\v_cnt_reg[0]_i_2_n_4 ,\v_cnt_reg[0]_i_2_n_5 ,\v_cnt_reg[0]_i_2_n_6 ,\v_cnt_reg[0]_i_2_n_7 }),
        .S({\v_cnt[0]_i_6_n_0 ,\v_cnt[0]_i_7_n_0 ,\v_cnt[0]_i_8_n_0 ,\v_cnt[0]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[10] 
       (.C(pix_clk),
        .CE(v_cnt),
        .D(\v_cnt_reg[8]_i_1_n_5 ),
        .Q(v_cnt_reg[10]),
        .R(v_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[11] 
       (.C(pix_clk),
        .CE(v_cnt),
        .D(\v_cnt_reg[8]_i_1_n_4 ),
        .Q(v_cnt_reg[11]),
        .R(v_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[1] 
       (.C(pix_clk),
        .CE(v_cnt),
        .D(\v_cnt_reg[0]_i_2_n_6 ),
        .Q(v_cnt_reg[1]),
        .R(v_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[2] 
       (.C(pix_clk),
        .CE(v_cnt),
        .D(\v_cnt_reg[0]_i_2_n_5 ),
        .Q(v_cnt_reg[2]),
        .R(v_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[3] 
       (.C(pix_clk),
        .CE(v_cnt),
        .D(\v_cnt_reg[0]_i_2_n_4 ),
        .Q(v_cnt_reg[3]),
        .R(v_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[4] 
       (.C(pix_clk),
        .CE(v_cnt),
        .D(\v_cnt_reg[4]_i_1_n_7 ),
        .Q(v_cnt_reg[4]),
        .R(v_cnt0));
  CARRY4 \v_cnt_reg[4]_i_1 
       (.CI(\v_cnt_reg[0]_i_2_n_0 ),
        .CO({\v_cnt_reg[4]_i_1_n_0 ,\v_cnt_reg[4]_i_1_n_1 ,\v_cnt_reg[4]_i_1_n_2 ,\v_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\v_cnt_reg[4]_i_1_n_4 ,\v_cnt_reg[4]_i_1_n_5 ,\v_cnt_reg[4]_i_1_n_6 ,\v_cnt_reg[4]_i_1_n_7 }),
        .S({\v_cnt[4]_i_2_n_0 ,\v_cnt[4]_i_3_n_0 ,\v_cnt[4]_i_4_n_0 ,\v_cnt[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[5] 
       (.C(pix_clk),
        .CE(v_cnt),
        .D(\v_cnt_reg[4]_i_1_n_6 ),
        .Q(v_cnt_reg[5]),
        .R(v_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[6] 
       (.C(pix_clk),
        .CE(v_cnt),
        .D(\v_cnt_reg[4]_i_1_n_5 ),
        .Q(v_cnt_reg[6]),
        .R(v_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[7] 
       (.C(pix_clk),
        .CE(v_cnt),
        .D(\v_cnt_reg[4]_i_1_n_4 ),
        .Q(v_cnt_reg[7]),
        .R(v_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[8] 
       (.C(pix_clk),
        .CE(v_cnt),
        .D(\v_cnt_reg[8]_i_1_n_7 ),
        .Q(v_cnt_reg[8]),
        .R(v_cnt0));
  CARRY4 \v_cnt_reg[8]_i_1 
       (.CI(\v_cnt_reg[4]_i_1_n_0 ),
        .CO({\NLW_v_cnt_reg[8]_i_1_CO_UNCONNECTED [3],\v_cnt_reg[8]_i_1_n_1 ,\v_cnt_reg[8]_i_1_n_2 ,\v_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\v_cnt_reg[8]_i_1_n_4 ,\v_cnt_reg[8]_i_1_n_5 ,\v_cnt_reg[8]_i_1_n_6 ,\v_cnt_reg[8]_i_1_n_7 }),
        .S({\v_cnt[8]_i_2_n_0 ,\v_cnt[8]_i_3_n_0 ,\v_cnt[8]_i_4_n_0 ,\v_cnt[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[9] 
       (.C(pix_clk),
        .CE(v_cnt),
        .D(\v_cnt_reg[8]_i_1_n_6 ),
        .Q(v_cnt_reg[9]),
        .R(v_cnt0));
  (* srl_name = "\inst/v_sync_d_reg_srl2 " *) 
  SRL16E v_sync_d_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(v_sync0),
        .Q(v_sync_d_reg_srl2_n_0));
  LUT6 #(
    .INIT(64'h0000F80000000000)) 
    v_sync_d_reg_srl2_i_1
       (.I0(v_cnt_reg[1]),
        .I1(v_cnt_reg[0]),
        .I2(v_cnt_reg[2]),
        .I3(v_cnt_reg[3]),
        .I4(\frame_addr[17]_i_4_n_0 ),
        .I5(v_sync_d_reg_srl2_i_2_n_0),
        .O(v_sync0));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    v_sync_d_reg_srl2_i_2
       (.I0(v_cnt_reg[6]),
        .I1(v_cnt_reg[7]),
        .I2(v_cnt_reg[4]),
        .I3(v_cnt_reg[5]),
        .I4(v_cnt_reg[8]),
        .I5(v_cnt_reg[10]),
        .O(v_sync_d_reg_srl2_i_2_n_0));
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
