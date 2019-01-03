//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Thu Jan  3 19:46:21 2019
//Host        : yoshiki-FMVA77JRY running 64-bit Ubuntu 18.04.1 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (VGA_BLUE,
    VGA_GREEN,
    VGA_H_SYNC,
    VGA_RED,
    VGA_V_SYNC,
    camera_h_ref,
    camera_v_sync,
    clk_in1,
    cnt_out,
    cntl_in,
    config_done,
    din,
    pclk,
    pclk_out,
    power_down,
    resend_in,
    reset,
    sioc,
    siod,
    xclk);
  output [3:0]VGA_BLUE;
  output [3:0]VGA_GREEN;
  output VGA_H_SYNC;
  output [3:0]VGA_RED;
  output VGA_V_SYNC;
  input camera_h_ref;
  input camera_v_sync;
  input clk_in1;
  output [12:0]cnt_out;
  input cntl_in;
  output config_done;
  input [7:0]din;
  input pclk;
  output pclk_out;
  output power_down;
  input resend_in;
  output reset;
  output sioc;
  inout siod;
  output xclk;

  wire [3:0]VGA_BLUE;
  wire [3:0]VGA_GREEN;
  wire VGA_H_SYNC;
  wire [3:0]VGA_RED;
  wire VGA_V_SYNC;
  wire camera_h_ref;
  wire camera_v_sync;
  wire clk_in1;
  wire [12:0]cnt_out;
  wire cntl_in;
  wire config_done;
  wire [7:0]din;
  wire pclk;
  wire pclk_out;
  wire power_down;
  wire resend_in;
  wire reset;
  wire sioc;
  wire siod;
  wire xclk;

  design_1 design_1_i
       (.VGA_BLUE(VGA_BLUE),
        .VGA_GREEN(VGA_GREEN),
        .VGA_H_SYNC(VGA_H_SYNC),
        .VGA_RED(VGA_RED),
        .VGA_V_SYNC(VGA_V_SYNC),
        .camera_h_ref(camera_h_ref),
        .camera_v_sync(camera_v_sync),
        .clk_in1(clk_in1),
        .cnt_out(cnt_out),
        .cntl_in(cntl_in),
        .config_done(config_done),
        .din(din),
        .pclk(pclk),
        .pclk_out(pclk_out),
        .power_down(power_down),
        .resend_in(resend_in),
        .reset(reset),
        .sioc(sioc),
        .siod(siod),
        .xclk(xclk));
endmodule
