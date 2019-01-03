
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# VGA, button, camera_capture, camera_controller, counter

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-1
}


# CHANGE DESIGN NAME HERE
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set VGA_BLUE [ create_bd_port -dir O -from 3 -to 0 VGA_BLUE ]
  set VGA_GREEN [ create_bd_port -dir O -from 3 -to 0 VGA_GREEN ]
  set VGA_H_SYNC [ create_bd_port -dir O VGA_H_SYNC ]
  set VGA_RED [ create_bd_port -dir O -from 3 -to 0 VGA_RED ]
  set VGA_V_SYNC [ create_bd_port -dir O VGA_V_SYNC ]
  set camera_h_ref [ create_bd_port -dir I camera_h_ref ]
  set camera_v_sync [ create_bd_port -dir I camera_v_sync ]
  set clk_in1 [ create_bd_port -dir I -type clk clk_in1 ]
  set cnt_out [ create_bd_port -dir O -from 12 -to 0 cnt_out ]
  set cntl_in [ create_bd_port -dir I cntl_in ]
  set config_done [ create_bd_port -dir O config_done ]
  set din [ create_bd_port -dir I -from 7 -to 0 din ]
  set pclk [ create_bd_port -dir I pclk ]
  set pclk_out [ create_bd_port -dir O pclk_out ]
  set power_down [ create_bd_port -dir O power_down ]
  set resend_in [ create_bd_port -dir I resend_in ]
  set reset [ create_bd_port -dir O -type rst reset ]
  set sioc [ create_bd_port -dir O sioc ]
  set siod [ create_bd_port -dir IO siod ]
  set xclk [ create_bd_port -dir O xclk ]

  # Create instance: VGA_0, and set properties
  set block_name VGA
  set block_cell_name VGA_0
  if { [catch {set VGA_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $VGA_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_0 ]
  set_property -dict [ list \
CONFIG.Byte_Size {9} \
CONFIG.Coe_File {test.coe} \
CONFIG.Enable_32bit_Address {false} \
CONFIG.Enable_A {Always_Enabled} \
CONFIG.Enable_B {Always_Enabled} \
CONFIG.Load_Init_File {true} \
CONFIG.Memory_Type {Simple_Dual_Port_RAM} \
CONFIG.Operating_Mode_A {WRITE_FIRST} \
CONFIG.Port_B_Clock {100} \
CONFIG.Port_B_Enable_Rate {100} \
CONFIG.Port_B_Write_Rate {0} \
CONFIG.Read_Width_A {12} \
CONFIG.Read_Width_B {12} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
CONFIG.Use_Byte_Write_Enable {false} \
CONFIG.Use_RSTA_Pin {false} \
CONFIG.Write_Depth_A {307200} \
CONFIG.Write_Width_A {12} \
CONFIG.Write_Width_B {12} \
CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create instance: button_0, and set properties
  set block_name button
  set block_cell_name button_0
  if { [catch {set button_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $button_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: camera_capture_0, and set properties
  set block_name camera_capture
  set block_cell_name camera_capture_0
  if { [catch {set camera_capture_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $camera_capture_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: camera_controller_0, and set properties
  set block_name camera_controller
  set block_cell_name camera_controller_0
  if { [catch {set camera_controller_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $camera_controller_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.4 clk_wiz_0 ]
  set_property -dict [ list \
CONFIG.CLKOUT1_JITTER {108.254} \
CONFIG.CLKOUT1_PHASE_ERROR {87.466} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {148.500} \
CONFIG.CLKOUT2_JITTER {114.767} \
CONFIG.CLKOUT2_PHASE_ERROR {87.466} \
CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {108} \
CONFIG.CLKOUT2_USED {true} \
CONFIG.CLKOUT3_JITTER {182.550} \
CONFIG.CLKOUT3_PHASE_ERROR {87.466} \
CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {12} \
CONFIG.CLKOUT3_USED {true} \
CONFIG.CLK_OUT1_PORT {clk_vga_148_5MHz} \
CONFIG.CLK_OUT2_PORT {clk_108MHz} \
CONFIG.CLK_OUT3_PORT {clk_12MHz} \
CONFIG.MMCM_CLKFBOUT_MULT_F {11.875} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {8.000} \
CONFIG.MMCM_CLKOUT1_DIVIDE {11} \
CONFIG.MMCM_CLKOUT2_DIVIDE {99} \
CONFIG.MMCM_DIVCLK_DIVIDE {1} \
CONFIG.NUM_OUT_CLKS {3} \
 ] $clk_wiz_0

  # Create instance: counter_0, and set properties
  set block_name counter
  set block_cell_name counter_0
  if { [catch {set counter_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $counter_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $xlconstant_1

  # Create port connections
  connect_bd_net -net Net [get_bd_ports siod] [get_bd_pins camera_controller_0/siod]
  connect_bd_net -net VGA_0_VGA_BLUE [get_bd_ports VGA_BLUE] [get_bd_pins VGA_0/VGA_BLUE]
  connect_bd_net -net VGA_0_VGA_GREEN [get_bd_ports VGA_GREEN] [get_bd_pins VGA_0/VGA_GREEN]
  connect_bd_net -net VGA_0_VGA_H_SYNC [get_bd_ports VGA_H_SYNC] [get_bd_pins VGA_0/VGA_H_SYNC]
  connect_bd_net -net VGA_0_VGA_RED [get_bd_ports VGA_RED] [get_bd_pins VGA_0/VGA_RED]
  connect_bd_net -net VGA_0_VGA_V_SYNC [get_bd_ports VGA_V_SYNC] [get_bd_pins VGA_0/VGA_V_SYNC]
  connect_bd_net -net VGA_0_frame_addr [get_bd_pins VGA_0/frame_addr] [get_bd_pins blk_mem_gen_0/addrb]
  connect_bd_net -net blk_mem_gen_0_doutb [get_bd_pins VGA_0/frame_pix] [get_bd_pins blk_mem_gen_0/doutb]
  connect_bd_net -net button_0_cntl_out [get_bd_pins VGA_0/cntl] [get_bd_pins button_0/cntl_out]
  connect_bd_net -net button_0_resend_out [get_bd_pins button_0/resend_out] [get_bd_pins camera_controller_0/resend]
  connect_bd_net -net camera_capture_0_addr [get_bd_pins blk_mem_gen_0/addra] [get_bd_pins camera_capture_0/addr]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets camera_capture_0_addr]
  connect_bd_net -net camera_capture_0_dout [get_bd_pins blk_mem_gen_0/dina] [get_bd_pins camera_capture_0/dout]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets camera_capture_0_dout]
  connect_bd_net -net camera_capture_0_wr_en [get_bd_pins blk_mem_gen_0/wea] [get_bd_pins camera_capture_0/wr_en]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets camera_capture_0_wr_en]
  connect_bd_net -net camera_controller_0_config_done [get_bd_ports config_done] [get_bd_pins camera_controller_0/config_done]
  connect_bd_net -net camera_controller_0_power_down [get_bd_ports power_down] [get_bd_pins camera_controller_0/power_down]
  connect_bd_net -net camera_controller_0_reset [get_bd_ports reset] [get_bd_pins camera_controller_0/reset]
  connect_bd_net -net camera_controller_0_sioc [get_bd_ports sioc] [get_bd_pins camera_controller_0/sioc]
  connect_bd_net -net camera_controller_0_xclk [get_bd_ports xclk] [get_bd_pins camera_controller_0/xclk]
  connect_bd_net -net camera_h_ref_1 [get_bd_ports camera_h_ref] [get_bd_pins camera_capture_0/camera_h_ref]
  connect_bd_net -net camera_v_sync_1 [get_bd_ports camera_v_sync] [get_bd_pins camera_capture_0/camera_v_sync]
  connect_bd_net -net clk_in1_1 [get_bd_ports clk_in1] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net clk_wiz_0_clk_12MHz [get_bd_pins camera_controller_0/clk] [get_bd_pins clk_wiz_0/clk_12MHz]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins VGA_0/pix_clk] [get_bd_pins blk_mem_gen_0/clkb] [get_bd_pins button_0/clk] [get_bd_pins clk_wiz_0/clk_vga_148_5MHz]
  connect_bd_net -net cntl_in_1 [get_bd_ports cntl_in] [get_bd_pins button_0/cntl_in]
  connect_bd_net -net counter_0_cnt_out [get_bd_ports cnt_out] [get_bd_pins counter_0/cnt_out]
  connect_bd_net -net counter_0_p_out [get_bd_ports pclk_out] [get_bd_pins counter_0/p_out]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets counter_0_p_out]
  connect_bd_net -net din_1 [get_bd_ports din] [get_bd_pins camera_capture_0/din]
  connect_bd_net -net pclk_1 [get_bd_ports pclk] [get_bd_pins blk_mem_gen_0/clka] [get_bd_pins camera_capture_0/pclk] [get_bd_pins counter_0/pclk]
  connect_bd_net -net resend_in_1 [get_bd_ports resend_in] [get_bd_pins button_0/resend_in]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins clk_wiz_0/reset] [get_bd_pins xlconstant_1/dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


