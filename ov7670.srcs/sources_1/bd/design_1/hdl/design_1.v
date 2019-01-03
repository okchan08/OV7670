//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Thu Jan  3 22:38:47 2019
//Host        : yoshiki-FMVA77JRY running 64-bit Ubuntu 18.04.1 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=5,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,da_board_cnt=3,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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

  wire Net;
  wire [3:0]VGA_0_VGA_BLUE;
  wire [3:0]VGA_0_VGA_GREEN;
  wire VGA_0_VGA_H_SYNC;
  wire [3:0]VGA_0_VGA_RED;
  wire VGA_0_VGA_V_SYNC;
  wire [18:0]VGA_0_frame_addr;
  wire [11:0]blk_mem_gen_0_doutb;
  wire button_0_cntl_out;
  wire button_0_resend_out;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [18:0]camera_capture_0_addr;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [11:0]camera_capture_0_dout;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire camera_capture_0_wr_en;
  wire camera_controller_0_config_done;
  wire camera_controller_0_power_down;
  wire camera_controller_0_reset;
  wire camera_controller_0_sioc;
  wire camera_controller_0_xclk;
  wire camera_h_ref_1;
  wire camera_v_sync_1;
  wire clk_in1_1;
  wire clk_wiz_0_clk_12MHz;
  wire clk_wiz_0_clk_out1;
  wire cntl_in_1;
  wire [12:0]counter_0_cnt_out;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire counter_0_p_out;
  wire [7:0]din_1;
  wire pclk_1;
  wire resend_in_1;
  wire [0:0]xlconstant_1_dout;

  assign VGA_BLUE[3:0] = VGA_0_VGA_BLUE;
  assign VGA_GREEN[3:0] = VGA_0_VGA_GREEN;
  assign VGA_H_SYNC = VGA_0_VGA_H_SYNC;
  assign VGA_RED[3:0] = VGA_0_VGA_RED;
  assign VGA_V_SYNC = VGA_0_VGA_V_SYNC;
  assign camera_h_ref_1 = camera_h_ref;
  assign camera_v_sync_1 = camera_v_sync;
  assign clk_in1_1 = clk_in1;
  assign cnt_out[12:0] = counter_0_cnt_out;
  assign cntl_in_1 = cntl_in;
  assign config_done = camera_controller_0_config_done;
  assign din_1 = din[7:0];
  assign pclk_1 = pclk;
  assign pclk_out = counter_0_p_out;
  assign power_down = camera_controller_0_power_down;
  assign resend_in_1 = resend_in;
  assign reset = camera_controller_0_reset;
  assign sioc = camera_controller_0_sioc;
  assign xclk = camera_controller_0_xclk;
  design_1_VGA_0_0 VGA_0
       (.VGA_BLUE(VGA_0_VGA_BLUE),
        .VGA_GREEN(VGA_0_VGA_GREEN),
        .VGA_H_SYNC(VGA_0_VGA_H_SYNC),
        .VGA_RED(VGA_0_VGA_RED),
        .VGA_V_SYNC(VGA_0_VGA_V_SYNC),
        .cntl(button_0_cntl_out),
        .frame_addr(VGA_0_frame_addr),
        .frame_pix(blk_mem_gen_0_doutb),
        .pix_clk(clk_wiz_0_clk_out1));
  design_1_blk_mem_gen_0_1 blk_mem_gen_0
       (.addra(camera_capture_0_addr),
        .addrb(VGA_0_frame_addr),
        .clka(pclk_1),
        .clkb(clk_wiz_0_clk_out1),
        .dina(camera_capture_0_dout),
        .doutb(blk_mem_gen_0_doutb),
        .wea(camera_capture_0_wr_en));
  design_1_button_0_0 button_0
       (.clk(clk_wiz_0_clk_out1),
        .cntl_in(cntl_in_1),
        .cntl_out(button_0_cntl_out),
        .resend_in(resend_in_1),
        .resend_out(button_0_resend_out),
        .reset_in(1'b0));
  design_1_camera_capture_0_0 camera_capture_0
       (.addr(camera_capture_0_addr),
        .camera_h_ref(camera_h_ref_1),
        .camera_v_sync(camera_v_sync_1),
        .din(din_1),
        .dout(camera_capture_0_dout),
        .pclk(pclk_1),
        .wr_en(camera_capture_0_wr_en));
  design_1_camera_controller_0_0 camera_controller_0
       (.clk(clk_wiz_0_clk_12MHz),
        .config_done(camera_controller_0_config_done),
        .power_down(camera_controller_0_power_down),
        .resend(button_0_resend_out),
        .reset(camera_controller_0_reset),
        .sioc(camera_controller_0_sioc),
        .siod(siod),
        .xclk(camera_controller_0_xclk));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_12MHz(clk_wiz_0_clk_12MHz),
        .clk_in1(clk_in1_1),
        .clk_vga_148_5MHz(clk_wiz_0_clk_out1),
        .reset(xlconstant_1_dout));
  design_1_counter_0_0 counter_0
       (.cnt_out(counter_0_cnt_out),
        .p_out(counter_0_p_out),
        .pclk(pclk_1));
  design_1_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule
