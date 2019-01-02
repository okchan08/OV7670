// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Fri Jul  6 22:54:40 2018
// Host        : yoshiki-FMVA77JRY running 64-bit Ubuntu 18.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/yoshiki/xilinx/nexys4/ov7670/ov7670.srcs/sources_1/bd/design_1/ip/design_1_camera_capture_0_0/design_1_camera_capture_0_0_sim_netlist.v
// Design      : design_1_camera_capture_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_camera_capture_0_0,camera_capture,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "camera_capture,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module design_1_camera_capture_0_0
   (pclk,
    camera_v_sync,
    camera_h_ref,
    din,
    addr,
    dout,
    wr_en);
  input pclk;
  input camera_v_sync;
  input camera_h_ref;
  input [7:0]din;
  output [17:0]addr;
  output [11:0]dout;
  output wr_en;

  wire [17:0]addr;
  wire camera_h_ref;
  wire camera_v_sync;
  wire [7:0]din;
  wire [11:0]dout;
  wire pclk;
  wire wr_en;

  design_1_camera_capture_0_0_camera_capture inst
       (.addr(addr),
        .camera_h_ref(camera_h_ref),
        .camera_v_sync(camera_v_sync),
        .din(din),
        .dout(dout),
        .pclk(pclk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "camera_capture" *) 
module design_1_camera_capture_0_0_camera_capture
   (addr,
    dout,
    wr_en,
    camera_h_ref,
    camera_v_sync,
    pclk,
    din);
  output [17:0]addr;
  output [11:0]dout;
  output wr_en;
  input camera_h_ref;
  input camera_v_sync;
  input pclk;
  input [7:0]din;

  wire [17:0]addr;
  wire \address_next[0]_i_2_n_0 ;
  wire \address_next[0]_i_3_n_0 ;
  wire \address_next[0]_i_4_n_0 ;
  wire \address_next[0]_i_5_n_0 ;
  wire \address_next[12]_i_2_n_0 ;
  wire \address_next[12]_i_3_n_0 ;
  wire \address_next[12]_i_4_n_0 ;
  wire \address_next[12]_i_5_n_0 ;
  wire \address_next[16]_i_2_n_0 ;
  wire \address_next[16]_i_3_n_0 ;
  wire \address_next[16]_i_4_n_0 ;
  wire \address_next[4]_i_2_n_0 ;
  wire \address_next[4]_i_3_n_0 ;
  wire \address_next[4]_i_4_n_0 ;
  wire \address_next[4]_i_5_n_0 ;
  wire \address_next[8]_i_2_n_0 ;
  wire \address_next[8]_i_3_n_0 ;
  wire \address_next[8]_i_4_n_0 ;
  wire \address_next[8]_i_5_n_0 ;
  wire [18:1]address_next_reg;
  wire \address_next_reg[0]_i_1_n_0 ;
  wire \address_next_reg[0]_i_1_n_1 ;
  wire \address_next_reg[0]_i_1_n_2 ;
  wire \address_next_reg[0]_i_1_n_3 ;
  wire \address_next_reg[0]_i_1_n_4 ;
  wire \address_next_reg[0]_i_1_n_5 ;
  wire \address_next_reg[0]_i_1_n_6 ;
  wire \address_next_reg[0]_i_1_n_7 ;
  wire \address_next_reg[12]_i_1_n_0 ;
  wire \address_next_reg[12]_i_1_n_1 ;
  wire \address_next_reg[12]_i_1_n_2 ;
  wire \address_next_reg[12]_i_1_n_3 ;
  wire \address_next_reg[12]_i_1_n_4 ;
  wire \address_next_reg[12]_i_1_n_5 ;
  wire \address_next_reg[12]_i_1_n_6 ;
  wire \address_next_reg[12]_i_1_n_7 ;
  wire \address_next_reg[16]_i_1_n_2 ;
  wire \address_next_reg[16]_i_1_n_3 ;
  wire \address_next_reg[16]_i_1_n_5 ;
  wire \address_next_reg[16]_i_1_n_6 ;
  wire \address_next_reg[16]_i_1_n_7 ;
  wire \address_next_reg[4]_i_1_n_0 ;
  wire \address_next_reg[4]_i_1_n_1 ;
  wire \address_next_reg[4]_i_1_n_2 ;
  wire \address_next_reg[4]_i_1_n_3 ;
  wire \address_next_reg[4]_i_1_n_4 ;
  wire \address_next_reg[4]_i_1_n_5 ;
  wire \address_next_reg[4]_i_1_n_6 ;
  wire \address_next_reg[4]_i_1_n_7 ;
  wire \address_next_reg[8]_i_1_n_0 ;
  wire \address_next_reg[8]_i_1_n_1 ;
  wire \address_next_reg[8]_i_1_n_2 ;
  wire \address_next_reg[8]_i_1_n_3 ;
  wire \address_next_reg[8]_i_1_n_4 ;
  wire \address_next_reg[8]_i_1_n_5 ;
  wire \address_next_reg[8]_i_1_n_6 ;
  wire \address_next_reg[8]_i_1_n_7 ;
  wire \address_next_reg_n_0_[0] ;
  wire camera_h_ref;
  wire camera_v_sync;
  wire [7:0]din;
  wire [11:0]dout;
  wire [15:0]latced_data;
  wire p_0_in;
  wire p_1_in;
  wire pclk;
  wire wr_en;
  wire [0:0]write_state;
  wire \write_state[0]_i_1_n_0 ;
  wire [3:2]\NLW_address_next_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_address_next_reg[16]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h2)) 
    \address_next[0]_i_2 
       (.I0(address_next_reg[3]),
        .O(\address_next[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \address_next[0]_i_3 
       (.I0(address_next_reg[2]),
        .O(\address_next[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \address_next[0]_i_4 
       (.I0(address_next_reg[1]),
        .O(\address_next[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \address_next[0]_i_5 
       (.I0(\address_next_reg_n_0_[0] ),
        .O(\address_next[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \address_next[12]_i_2 
       (.I0(address_next_reg[15]),
        .O(\address_next[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \address_next[12]_i_3 
       (.I0(address_next_reg[14]),
        .O(\address_next[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \address_next[12]_i_4 
       (.I0(address_next_reg[13]),
        .O(\address_next[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \address_next[12]_i_5 
       (.I0(address_next_reg[12]),
        .O(\address_next[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \address_next[16]_i_2 
       (.I0(address_next_reg[18]),
        .O(\address_next[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \address_next[16]_i_3 
       (.I0(address_next_reg[17]),
        .O(\address_next[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \address_next[16]_i_4 
       (.I0(address_next_reg[16]),
        .O(\address_next[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \address_next[4]_i_2 
       (.I0(address_next_reg[7]),
        .O(\address_next[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \address_next[4]_i_3 
       (.I0(address_next_reg[6]),
        .O(\address_next[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \address_next[4]_i_4 
       (.I0(address_next_reg[5]),
        .O(\address_next[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \address_next[4]_i_5 
       (.I0(address_next_reg[4]),
        .O(\address_next[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \address_next[8]_i_2 
       (.I0(address_next_reg[11]),
        .O(\address_next[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \address_next[8]_i_3 
       (.I0(address_next_reg[10]),
        .O(\address_next[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \address_next[8]_i_4 
       (.I0(address_next_reg[9]),
        .O(\address_next[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \address_next[8]_i_5 
       (.I0(address_next_reg[8]),
        .O(\address_next[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[0] 
       (.C(pclk),
        .CE(p_1_in),
        .D(\address_next_reg[0]_i_1_n_7 ),
        .Q(\address_next_reg_n_0_[0] ),
        .R(camera_v_sync));
  CARRY4 \address_next_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\address_next_reg[0]_i_1_n_0 ,\address_next_reg[0]_i_1_n_1 ,\address_next_reg[0]_i_1_n_2 ,\address_next_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\address_next_reg[0]_i_1_n_4 ,\address_next_reg[0]_i_1_n_5 ,\address_next_reg[0]_i_1_n_6 ,\address_next_reg[0]_i_1_n_7 }),
        .S({\address_next[0]_i_2_n_0 ,\address_next[0]_i_3_n_0 ,\address_next[0]_i_4_n_0 ,\address_next[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[10] 
       (.C(pclk),
        .CE(p_1_in),
        .D(\address_next_reg[8]_i_1_n_5 ),
        .Q(address_next_reg[10]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[11] 
       (.C(pclk),
        .CE(p_1_in),
        .D(\address_next_reg[8]_i_1_n_4 ),
        .Q(address_next_reg[11]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[12] 
       (.C(pclk),
        .CE(p_1_in),
        .D(\address_next_reg[12]_i_1_n_7 ),
        .Q(address_next_reg[12]),
        .R(camera_v_sync));
  CARRY4 \address_next_reg[12]_i_1 
       (.CI(\address_next_reg[8]_i_1_n_0 ),
        .CO({\address_next_reg[12]_i_1_n_0 ,\address_next_reg[12]_i_1_n_1 ,\address_next_reg[12]_i_1_n_2 ,\address_next_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_next_reg[12]_i_1_n_4 ,\address_next_reg[12]_i_1_n_5 ,\address_next_reg[12]_i_1_n_6 ,\address_next_reg[12]_i_1_n_7 }),
        .S({\address_next[12]_i_2_n_0 ,\address_next[12]_i_3_n_0 ,\address_next[12]_i_4_n_0 ,\address_next[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[13] 
       (.C(pclk),
        .CE(p_1_in),
        .D(\address_next_reg[12]_i_1_n_6 ),
        .Q(address_next_reg[13]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[14] 
       (.C(pclk),
        .CE(p_1_in),
        .D(\address_next_reg[12]_i_1_n_5 ),
        .Q(address_next_reg[14]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[15] 
       (.C(pclk),
        .CE(p_1_in),
        .D(\address_next_reg[12]_i_1_n_4 ),
        .Q(address_next_reg[15]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[16] 
       (.C(pclk),
        .CE(p_1_in),
        .D(\address_next_reg[16]_i_1_n_7 ),
        .Q(address_next_reg[16]),
        .R(camera_v_sync));
  CARRY4 \address_next_reg[16]_i_1 
       (.CI(\address_next_reg[12]_i_1_n_0 ),
        .CO({\NLW_address_next_reg[16]_i_1_CO_UNCONNECTED [3:2],\address_next_reg[16]_i_1_n_2 ,\address_next_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_address_next_reg[16]_i_1_O_UNCONNECTED [3],\address_next_reg[16]_i_1_n_5 ,\address_next_reg[16]_i_1_n_6 ,\address_next_reg[16]_i_1_n_7 }),
        .S({1'b0,\address_next[16]_i_2_n_0 ,\address_next[16]_i_3_n_0 ,\address_next[16]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[17] 
       (.C(pclk),
        .CE(p_1_in),
        .D(\address_next_reg[16]_i_1_n_6 ),
        .Q(address_next_reg[17]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[18] 
       (.C(pclk),
        .CE(p_1_in),
        .D(\address_next_reg[16]_i_1_n_5 ),
        .Q(address_next_reg[18]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[1] 
       (.C(pclk),
        .CE(p_1_in),
        .D(\address_next_reg[0]_i_1_n_6 ),
        .Q(address_next_reg[1]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[2] 
       (.C(pclk),
        .CE(p_1_in),
        .D(\address_next_reg[0]_i_1_n_5 ),
        .Q(address_next_reg[2]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[3] 
       (.C(pclk),
        .CE(p_1_in),
        .D(\address_next_reg[0]_i_1_n_4 ),
        .Q(address_next_reg[3]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[4] 
       (.C(pclk),
        .CE(p_1_in),
        .D(\address_next_reg[4]_i_1_n_7 ),
        .Q(address_next_reg[4]),
        .R(camera_v_sync));
  CARRY4 \address_next_reg[4]_i_1 
       (.CI(\address_next_reg[0]_i_1_n_0 ),
        .CO({\address_next_reg[4]_i_1_n_0 ,\address_next_reg[4]_i_1_n_1 ,\address_next_reg[4]_i_1_n_2 ,\address_next_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_next_reg[4]_i_1_n_4 ,\address_next_reg[4]_i_1_n_5 ,\address_next_reg[4]_i_1_n_6 ,\address_next_reg[4]_i_1_n_7 }),
        .S({\address_next[4]_i_2_n_0 ,\address_next[4]_i_3_n_0 ,\address_next[4]_i_4_n_0 ,\address_next[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[5] 
       (.C(pclk),
        .CE(p_1_in),
        .D(\address_next_reg[4]_i_1_n_6 ),
        .Q(address_next_reg[5]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[6] 
       (.C(pclk),
        .CE(p_1_in),
        .D(\address_next_reg[4]_i_1_n_5 ),
        .Q(address_next_reg[6]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[7] 
       (.C(pclk),
        .CE(p_1_in),
        .D(\address_next_reg[4]_i_1_n_4 ),
        .Q(address_next_reg[7]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[8] 
       (.C(pclk),
        .CE(p_1_in),
        .D(\address_next_reg[8]_i_1_n_7 ),
        .Q(address_next_reg[8]),
        .R(camera_v_sync));
  CARRY4 \address_next_reg[8]_i_1 
       (.CI(\address_next_reg[4]_i_1_n_0 ),
        .CO({\address_next_reg[8]_i_1_n_0 ,\address_next_reg[8]_i_1_n_1 ,\address_next_reg[8]_i_1_n_2 ,\address_next_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_next_reg[8]_i_1_n_4 ,\address_next_reg[8]_i_1_n_5 ,\address_next_reg[8]_i_1_n_6 ,\address_next_reg[8]_i_1_n_7 }),
        .S({\address_next[8]_i_2_n_0 ,\address_next[8]_i_3_n_0 ,\address_next[8]_i_4_n_0 ,\address_next[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[9] 
       (.C(pclk),
        .CE(p_1_in),
        .D(\address_next_reg[8]_i_1_n_6 ),
        .Q(address_next_reg[9]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[10]),
        .Q(addr[9]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[11] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[11]),
        .Q(addr[10]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[12] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[12]),
        .Q(addr[11]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[13] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[13]),
        .Q(addr[12]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[14] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[14]),
        .Q(addr[13]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[15] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[15]),
        .Q(addr[14]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[16] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[16]),
        .Q(addr[15]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[17] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[17]),
        .Q(addr[16]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[18] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[18]),
        .Q(addr[17]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[1]),
        .Q(addr[0]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[2]),
        .Q(addr[1]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[3]),
        .Q(addr[2]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[4]),
        .Q(addr[3]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[5]),
        .Q(addr[4]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[6]),
        .Q(addr[5]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[7]),
        .Q(addr[6]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[8]),
        .Q(addr[7]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[9]),
        .Q(addr[8]),
        .R(camera_v_sync));
  LUT1 #(
    .INIT(2'h1)) 
    \dout[11]_i_1 
       (.I0(camera_v_sync),
        .O(p_0_in));
  FDRE \dout_reg[0] 
       (.C(pclk),
        .CE(p_0_in),
        .D(latced_data[1]),
        .Q(dout[0]),
        .R(1'b0));
  FDRE \dout_reg[10] 
       (.C(pclk),
        .CE(p_0_in),
        .D(latced_data[14]),
        .Q(dout[10]),
        .R(1'b0));
  FDRE \dout_reg[11] 
       (.C(pclk),
        .CE(p_0_in),
        .D(latced_data[15]),
        .Q(dout[11]),
        .R(1'b0));
  FDRE \dout_reg[1] 
       (.C(pclk),
        .CE(p_0_in),
        .D(latced_data[2]),
        .Q(dout[1]),
        .R(1'b0));
  FDRE \dout_reg[2] 
       (.C(pclk),
        .CE(p_0_in),
        .D(latced_data[3]),
        .Q(dout[2]),
        .R(1'b0));
  FDRE \dout_reg[3] 
       (.C(pclk),
        .CE(p_0_in),
        .D(latced_data[4]),
        .Q(dout[3]),
        .R(1'b0));
  FDRE \dout_reg[4] 
       (.C(pclk),
        .CE(p_0_in),
        .D(latced_data[7]),
        .Q(dout[4]),
        .R(1'b0));
  FDRE \dout_reg[5] 
       (.C(pclk),
        .CE(p_0_in),
        .D(latced_data[8]),
        .Q(dout[5]),
        .R(1'b0));
  FDRE \dout_reg[6] 
       (.C(pclk),
        .CE(p_0_in),
        .D(latced_data[9]),
        .Q(dout[6]),
        .R(1'b0));
  FDRE \dout_reg[7] 
       (.C(pclk),
        .CE(p_0_in),
        .D(latced_data[10]),
        .Q(dout[7]),
        .R(1'b0));
  FDRE \dout_reg[8] 
       (.C(pclk),
        .CE(p_0_in),
        .D(latced_data[12]),
        .Q(dout[8]),
        .R(1'b0));
  FDRE \dout_reg[9] 
       (.C(pclk),
        .CE(p_0_in),
        .D(latced_data[13]),
        .Q(dout[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[0] 
       (.C(pclk),
        .CE(p_0_in),
        .D(din[0]),
        .Q(latced_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[10] 
       (.C(pclk),
        .CE(p_0_in),
        .D(latced_data[2]),
        .Q(latced_data[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[12] 
       (.C(pclk),
        .CE(p_0_in),
        .D(latced_data[4]),
        .Q(latced_data[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[13] 
       (.C(pclk),
        .CE(p_0_in),
        .D(latced_data[5]),
        .Q(latced_data[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[14] 
       (.C(pclk),
        .CE(p_0_in),
        .D(latced_data[6]),
        .Q(latced_data[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[15] 
       (.C(pclk),
        .CE(p_0_in),
        .D(latced_data[7]),
        .Q(latced_data[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[1] 
       (.C(pclk),
        .CE(p_0_in),
        .D(din[1]),
        .Q(latced_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[2] 
       (.C(pclk),
        .CE(p_0_in),
        .D(din[2]),
        .Q(latced_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[3] 
       (.C(pclk),
        .CE(p_0_in),
        .D(din[3]),
        .Q(latced_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[4] 
       (.C(pclk),
        .CE(p_0_in),
        .D(din[4]),
        .Q(latced_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[5] 
       (.C(pclk),
        .CE(p_0_in),
        .D(din[5]),
        .Q(latced_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[6] 
       (.C(pclk),
        .CE(p_0_in),
        .D(din[6]),
        .Q(latced_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[7] 
       (.C(pclk),
        .CE(p_0_in),
        .D(din[7]),
        .Q(latced_data[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[8] 
       (.C(pclk),
        .CE(p_0_in),
        .D(latced_data[0]),
        .Q(latced_data[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latced_data_reg[9] 
       (.C(pclk),
        .CE(p_0_in),
        .D(latced_data[1]),
        .Q(latced_data[9]),
        .R(1'b0));
  FDRE wr_en_reg
       (.C(pclk),
        .CE(p_0_in),
        .D(p_1_in),
        .Q(wr_en),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \write_state[0]_i_1 
       (.I0(camera_h_ref),
        .I1(write_state),
        .O(\write_state[0]_i_1_n_0 ));
  FDRE \write_state_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .D(\write_state[0]_i_1_n_0 ),
        .Q(write_state),
        .R(camera_v_sync));
  FDRE \write_state_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .D(write_state),
        .Q(p_1_in),
        .R(camera_v_sync));
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
