
################################################################
# This is a generated script based on design: calculator_12
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
# source calculator_12_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# Ground, HIGH, HIGH, NOT, NOT, NOT, NOT, OR, OR, bcdchange, calcaulator, three_and, turn_3

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
}


# CHANGE DESIGN NAME HERE
set design_name calculator_12

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
  set CLK [ create_bd_port -dir I -type clk CLK ]
  set a [ create_bd_port -dir O a ]
  set b [ create_bd_port -dir O b ]
  set c [ create_bd_port -dir O c ]
  set d [ create_bd_port -dir O d ]
  set e [ create_bd_port -dir O e ]
  set f [ create_bd_port -dir O f ]
  set g [ create_bd_port -dir O g ]
  set k4 [ create_bd_port -dir O k4 ]
  set sign [ create_bd_port -dir I sign ]
  set u2 [ create_bd_port -dir O u2 ]
  set u4 [ create_bd_port -dir O u4 ]
  set w4 [ create_bd_port -dir O w4 ]

  # Create instance: Ground_0, and set properties
  set block_name Ground
  set block_cell_name Ground_0
  if { [catch {set Ground_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Ground_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: HIGH_0, and set properties
  set block_name HIGH
  set block_cell_name HIGH_0
  if { [catch {set HIGH_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $HIGH_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: HIGH_1, and set properties
  set block_name HIGH
  set block_cell_name HIGH_1
  if { [catch {set HIGH_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $HIGH_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: NOT_0, and set properties
  set block_name NOT
  set block_cell_name NOT_0
  if { [catch {set NOT_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $NOT_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: NOT_1, and set properties
  set block_name NOT
  set block_cell_name NOT_1
  if { [catch {set NOT_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $NOT_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: NOT_2, and set properties
  set block_name NOT
  set block_cell_name NOT_2
  if { [catch {set NOT_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $NOT_2 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: NOT_3, and set properties
  set block_name NOT
  set block_cell_name NOT_3
  if { [catch {set NOT_3 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $NOT_3 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: OR_0, and set properties
  set block_name OR
  set block_cell_name OR_0
  if { [catch {set OR_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $OR_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: OR_1, and set properties
  set block_name OR
  set block_cell_name OR_1
  if { [catch {set OR_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $OR_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: bcdchange_1, and set properties
  set block_name bcdchange
  set block_cell_name bcdchange_1
  if { [catch {set bcdchange_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $bcdchange_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: calcaulator_0, and set properties
  set block_name calcaulator
  set block_cell_name calcaulator_0
  if { [catch {set calcaulator_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $calcaulator_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: clk_div_0, and set properties
  set clk_div_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:clk_div:1.0 clk_div_0 ]
  set_property -dict [ list \
CONFIG.N {100000000} \
 ] $clk_div_0

  # Create instance: clk_div_1, and set properties
  set clk_div_1 [ create_bd_cell -type ip -vlnv xilinx.com:xup:clk_div:1.0 clk_div_1 ]
  set_property -dict [ list \
CONFIG.N {999999} \
 ] $clk_div_1

  # Create instance: decimal_counter_0, and set properties
  set decimal_counter_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:decimal_counter:1.0 decimal_counter_0 ]

  # Create instance: four_2_input_and_gate_0, and set properties
  set four_2_input_and_gate_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:four_2_input_and_gate:1.0 four_2_input_and_gate_0 ]

  # Create instance: mux_8_to_1_0, and set properties
  set mux_8_to_1_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:mux_8_to_1:1.0 mux_8_to_1_0 ]

  # Create instance: mux_8_to_1_1, and set properties
  set mux_8_to_1_1 [ create_bd_cell -type ip -vlnv xilinx.com:xup:mux_8_to_1:1.0 mux_8_to_1_1 ]

  # Create instance: mux_8_to_1_2, and set properties
  set mux_8_to_1_2 [ create_bd_cell -type ip -vlnv xilinx.com:xup:mux_8_to_1:1.0 mux_8_to_1_2 ]

  # Create instance: mux_8_to_1_3, and set properties
  set mux_8_to_1_3 [ create_bd_cell -type ip -vlnv xilinx.com:xup:mux_8_to_1:1.0 mux_8_to_1_3 ]

  # Create instance: three_and_0, and set properties
  set block_name three_and
  set block_cell_name three_and_0
  if { [catch {set three_and_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $three_and_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: turn_3_0, and set properties
  set block_name turn_3
  set block_cell_name turn_3_0
  if { [catch {set turn_3_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $turn_3_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net CLK_1 [get_bd_ports CLK] [get_bd_pins clk_div_0/clk_in] [get_bd_pins clk_div_1/clk_in]
  connect_bd_net -net Ground_0_o [get_bd_pins Ground_0/o] [get_bd_pins mux_8_to_1_0/D1] [get_bd_pins mux_8_to_1_1/D1] [get_bd_pins mux_8_to_1_2/D1]
  connect_bd_net -net HIGH_0_h [get_bd_ports u2] [get_bd_pins HIGH_0/h]
  connect_bd_net -net HIGH_1_h [get_bd_ports u4] [get_bd_pins HIGH_1/h]
  connect_bd_net -net NOT_0_a_f [get_bd_pins NOT_0/a_f] [get_bd_pins four_2_input_and_gate_0/A3] [get_bd_pins four_2_input_and_gate_0/A4]
  connect_bd_net -net NOT_1_a_f [get_bd_pins NOT_1/a_f] [get_bd_pins three_and_0/k2]
  connect_bd_net -net NOT_2_a_f [get_bd_pins NOT_2/a_f] [get_bd_pins three_and_0/k3]
  connect_bd_net -net NOT_3_a_f [get_bd_ports w4] [get_bd_pins NOT_3/a_f]
  connect_bd_net -net OR_0_re [get_bd_pins OR_0/re] [get_bd_pins mux_8_to_1_2/D0]
  connect_bd_net -net OR_1_re [get_bd_pins OR_1/re] [get_bd_pins mux_8_to_1_3/D1]
  connect_bd_net -net bcdchange_1_a [get_bd_ports a] [get_bd_pins bcdchange_1/a]
  connect_bd_net -net bcdchange_1_b [get_bd_ports b] [get_bd_pins bcdchange_1/b]
  connect_bd_net -net bcdchange_1_c [get_bd_ports c] [get_bd_pins bcdchange_1/c]
  connect_bd_net -net bcdchange_1_d [get_bd_ports d] [get_bd_pins bcdchange_1/d]
  connect_bd_net -net bcdchange_1_e [get_bd_ports e] [get_bd_pins bcdchange_1/e]
  connect_bd_net -net bcdchange_1_f [get_bd_ports f] [get_bd_pins bcdchange_1/f]
  connect_bd_net -net bcdchange_1_g [get_bd_ports g] [get_bd_pins bcdchange_1/g]
  connect_bd_net -net calcaulator_0_o [get_bd_pins calcaulator_0/o] [get_bd_pins turn_3_0/in]
  connect_bd_net -net clk_div_0_clk_out [get_bd_pins calcaulator_0/CLK] [get_bd_pins clk_div_0/clk_out]
  connect_bd_net -net clk_div_1_clk_out [get_bd_pins clk_div_1/clk_out] [get_bd_pins decimal_counter_0/CP1_n]
  connect_bd_net -net decimal_counter_0_Qa [get_bd_ports k4] [get_bd_pins NOT_3/a] [get_bd_pins decimal_counter_0/Qa] [get_bd_pins mux_8_to_1_0/A0] [get_bd_pins mux_8_to_1_1/A0] [get_bd_pins mux_8_to_1_2/A0] [get_bd_pins mux_8_to_1_3/A0]
  connect_bd_net -net four_2_input_and_gate_0_Y1 [get_bd_pins OR_0/x1] [get_bd_pins OR_1/x1] [get_bd_pins four_2_input_and_gate_0/Y1]
  connect_bd_net -net four_2_input_and_gate_0_Y2 [get_bd_pins OR_1/x2] [get_bd_pins four_2_input_and_gate_0/Y2]
  connect_bd_net -net four_2_input_and_gate_0_Y3 [get_bd_pins OR_0/x2] [get_bd_pins four_2_input_and_gate_0/Y3]
  connect_bd_net -net four_2_input_and_gate_0_Y4 [get_bd_pins four_2_input_and_gate_0/Y4] [get_bd_pins mux_8_to_1_1/D0]
  connect_bd_net -net mux_8_to_1_0_Q [get_bd_pins bcdchange_1/t3] [get_bd_pins mux_8_to_1_0/Q]
  connect_bd_net -net mux_8_to_1_1_Q [get_bd_pins bcdchange_1/t2] [get_bd_pins mux_8_to_1_1/Q]
  connect_bd_net -net mux_8_to_1_2_Q [get_bd_pins bcdchange_1/t1] [get_bd_pins mux_8_to_1_2/Q]
  connect_bd_net -net mux_8_to_1_3_Q [get_bd_pins bcdchange_1/t0] [get_bd_pins mux_8_to_1_3/Q]
  connect_bd_net -net sign_1 [get_bd_ports sign] [get_bd_pins calcaulator_0/sign]
  connect_bd_net -net three_and_0_out [get_bd_pins mux_8_to_1_0/D0] [get_bd_pins three_and_0/out]
  connect_bd_net -net turn_3_0_o0 [get_bd_pins mux_8_to_1_3/D0] [get_bd_pins turn_3_0/o0]
  connect_bd_net -net turn_3_0_o1 [get_bd_pins NOT_1/a] [get_bd_pins four_2_input_and_gate_0/B2] [get_bd_pins four_2_input_and_gate_0/B3] [get_bd_pins turn_3_0/o1]
  connect_bd_net -net turn_3_0_o2 [get_bd_pins NOT_2/a] [get_bd_pins four_2_input_and_gate_0/B1] [get_bd_pins four_2_input_and_gate_0/B4] [get_bd_pins turn_3_0/o2]
  connect_bd_net -net turn_3_0_o3 [get_bd_pins NOT_0/a] [get_bd_pins four_2_input_and_gate_0/A1] [get_bd_pins four_2_input_and_gate_0/A2] [get_bd_pins three_and_0/k1] [get_bd_pins turn_3_0/o3]

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


