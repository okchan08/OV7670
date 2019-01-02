// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Wed Jan  2 23:45:19 2019
// Host        : yoshiki-FMVA77JRY running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/yoshiki/xilinx/nexys4/ov7670/ov7670.srcs/sources_1/bd/design_1/ip/design_1_counter_0_0/design_1_counter_0_0_sim_netlist.v
// Design      : design_1_counter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_counter_0_0,counter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "counter,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module design_1_counter_0_0
   (pclk,
    p_out,
    cnt_out);
  input pclk;
  output p_out;
  output [13:0]cnt_out;

  wire [13:0]cnt_out;
  wire pclk;

  assign p_out = pclk;
  design_1_counter_0_0_counter inst
       (.cnt_out(cnt_out),
        .pclk(pclk));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module design_1_counter_0_0_counter
   (cnt_out,
    pclk);
  output [13:0]cnt_out;
  input pclk;

  wire [13:0]cnt_out;
  wire [14:14]counter;
  wire counter0_carry__0_i_1_n_0;
  wire counter0_carry__0_i_2_n_0;
  wire counter0_carry__0_i_3_n_0;
  wire counter0_carry__0_i_4_n_0;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_i_1_n_0;
  wire counter0_carry__1_i_2_n_0;
  wire counter0_carry__1_i_3_n_0;
  wire counter0_carry__1_i_4_n_0;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_i_1_n_0;
  wire counter0_carry__2_i_2_n_0;
  wire counter0_carry__2_n_3;
  wire counter0_carry_i_1_n_0;
  wire counter0_carry_i_2_n_0;
  wire counter0_carry_i_3_n_0;
  wire counter0_carry_i_4_n_0;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire \counter[13]_i_1_n_0 ;
  wire \counter[13]_i_2_n_0 ;
  wire \counter[13]_i_3_n_0 ;
  wire \counter[13]_i_4_n_0 ;
  wire [14:1]data0;
  wire [0:0]data0__0;
  wire pclk;
  wire [3:1]NLW_counter0_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_counter0_carry__2_O_UNCONNECTED;

  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(cnt_out[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({counter0_carry_i_1_n_0,counter0_carry_i_2_n_0,counter0_carry_i_3_n_0,counter0_carry_i_4_n_0}));
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({counter0_carry__0_i_1_n_0,counter0_carry__0_i_2_n_0,counter0_carry__0_i_3_n_0,counter0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__0_i_1
       (.I0(cnt_out[8]),
        .O(counter0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__0_i_2
       (.I0(cnt_out[7]),
        .O(counter0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__0_i_3
       (.I0(cnt_out[6]),
        .O(counter0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__0_i_4
       (.I0(cnt_out[5]),
        .O(counter0_carry__0_i_4_n_0));
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({counter0_carry__1_i_1_n_0,counter0_carry__1_i_2_n_0,counter0_carry__1_i_3_n_0,counter0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__1_i_1
       (.I0(cnt_out[12]),
        .O(counter0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__1_i_2
       (.I0(cnt_out[11]),
        .O(counter0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__1_i_3
       (.I0(cnt_out[10]),
        .O(counter0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__1_i_4
       (.I0(cnt_out[9]),
        .O(counter0_carry__1_i_4_n_0));
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({NLW_counter0_carry__2_CO_UNCONNECTED[3:1],counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__2_O_UNCONNECTED[3:2],data0[14:13]}),
        .S({1'b0,1'b0,counter0_carry__2_i_1_n_0,counter0_carry__2_i_2_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__2_i_1
       (.I0(counter),
        .O(counter0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__2_i_2
       (.I0(cnt_out[13]),
        .O(counter0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry_i_1
       (.I0(cnt_out[4]),
        .O(counter0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry_i_2
       (.I0(cnt_out[3]),
        .O(counter0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry_i_3
       (.I0(cnt_out[2]),
        .O(counter0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry_i_4
       (.I0(cnt_out[1]),
        .O(counter0_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(cnt_out[0]),
        .O(data0__0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \counter[13]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(counter),
        .I2(cnt_out[0]),
        .I3(cnt_out[1]),
        .I4(\counter[13]_i_3_n_0 ),
        .I5(\counter[13]_i_4_n_0 ),
        .O(\counter[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter[13]_i_2 
       (.I0(cnt_out[11]),
        .I1(cnt_out[12]),
        .I2(cnt_out[9]),
        .I3(cnt_out[10]),
        .O(\counter[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \counter[13]_i_3 
       (.I0(cnt_out[3]),
        .I1(cnt_out[4]),
        .I2(cnt_out[2]),
        .I3(cnt_out[13]),
        .O(\counter[13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter[13]_i_4 
       (.I0(cnt_out[7]),
        .I1(cnt_out[8]),
        .I2(cnt_out[5]),
        .I3(cnt_out[6]),
        .O(\counter[13]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0__0),
        .Q(cnt_out[0]),
        .R(\counter[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[10]),
        .Q(cnt_out[10]),
        .R(\counter[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[11]),
        .Q(cnt_out[11]),
        .R(\counter[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[12]),
        .Q(cnt_out[12]),
        .R(\counter[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[13]),
        .Q(cnt_out[13]),
        .R(\counter[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[14]),
        .Q(counter),
        .R(\counter[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[1]),
        .Q(cnt_out[1]),
        .R(\counter[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[2]),
        .Q(cnt_out[2]),
        .R(\counter[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[3]),
        .Q(cnt_out[3]),
        .R(\counter[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[4]),
        .Q(cnt_out[4]),
        .R(\counter[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[5]),
        .Q(cnt_out[5]),
        .R(\counter[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[6]),
        .Q(cnt_out[6]),
        .R(\counter[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[7]),
        .Q(cnt_out[7]),
        .R(\counter[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[8]),
        .Q(cnt_out[8]),
        .R(\counter[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .D(data0[9]),
        .Q(cnt_out[9]),
        .R(\counter[13]_i_1_n_0 ));
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
