// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Thu Jan  3 17:28:27 2019
// Host        : yoshiki-FMVA77JRY running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/yoshiki/xilinx/nexys4/ov7670/ov7670.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_stub.v
// Design      : design_1_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module design_1_clk_wiz_0_0(clk_vga_148_5MHz, clk_108MHz, clk_12MHz, reset, 
  locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_vga_148_5MHz,clk_108MHz,clk_12MHz,reset,locked,clk_in1" */;
  output clk_vga_148_5MHz;
  output clk_108MHz;
  output clk_12MHz;
  input reset;
  output locked;
  input clk_in1;
endmodule
