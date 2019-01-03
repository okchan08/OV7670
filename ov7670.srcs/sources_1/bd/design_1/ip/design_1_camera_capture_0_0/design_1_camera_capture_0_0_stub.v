// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Thu Jan  3 18:30:43 2019
// Host        : yoshiki-FMVA77JRY running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/yoshiki/xilinx/nexys4/ov7670/ov7670.srcs/sources_1/bd/design_1/ip/design_1_camera_capture_0_0/design_1_camera_capture_0_0_stub.v
// Design      : design_1_camera_capture_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "camera_capture,Vivado 2017.2" *)
module design_1_camera_capture_0_0(pclk, camera_v_sync, camera_h_ref, din, addr, dout, 
  wr_en)
/* synthesis syn_black_box black_box_pad_pin="pclk,camera_v_sync,camera_h_ref,din[7:0],addr[18:0],dout[11:0],wr_en" */;
  input pclk;
  input camera_v_sync;
  input camera_h_ref;
  input [7:0]din;
  output [18:0]addr;
  output [11:0]dout;
  output wr_en;
endmodule
