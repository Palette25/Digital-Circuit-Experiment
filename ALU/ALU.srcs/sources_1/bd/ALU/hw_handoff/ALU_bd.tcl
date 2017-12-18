
################################################################
# This is a generated script based on design: ALU
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
# source ALU_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# GROUND, HIGH, XOR

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
}


# CHANGE DESIGN NAME HERE
set design_name ALU

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
  set A [ create_bd_port -dir I A ]
  set B [ create_bd_port -dir I B ]
  set C [ create_bd_port -dir I C ]
  set Q0 [ create_bd_port -dir O Q0 ]
  set Q1 [ create_bd_port -dir O Q1 ]
  set S0 [ create_bd_port -dir I S0 ]
  set S1 [ create_bd_port -dir I S1 ]
  set S2 [ create_bd_port -dir I S2 ]

  # Create instance: GROUND_0, and set properties
  set block_name GROUND
  set block_cell_name GROUND_0
  if { [catch {set GROUND_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $GROUND_0 eq "" } {
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
  
  # Create instance: XOR_0, and set properties
  set block_name XOR
  set block_cell_name XOR_0
  if { [catch {set XOR_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $XOR_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: decode138_0, and set properties
  set decode138_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:decode138:1.0 decode138_0 ]

  # Create instance: decode138_1, and set properties
  set decode138_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:decode138:1.0 decode138_1 ]

  # Create instance: four_2_input_and_gate_0, and set properties
  set four_2_input_and_gate_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:four_2_input_and_gate:1.0 four_2_input_and_gate_0 ]

  # Create instance: four_2_input_nand_gate_0, and set properties
  set four_2_input_nand_gate_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:four_2_input_nand_gate:1.0 four_2_input_nand_gate_0 ]

  # Create instance: four_2_input_nand_gate_1, and set properties
  set four_2_input_nand_gate_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:four_2_input_nand_gate:1.0 four_2_input_nand_gate_1 ]

  # Create instance: four_2_input_or_gate_0, and set properties
  set four_2_input_or_gate_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:four_2_input_or_gate:1.0 four_2_input_or_gate_0 ]

  # Create instance: mux_8_to_1_0, and set properties
  set mux_8_to_1_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:mux_8_to_1:1.0 mux_8_to_1_0 ]

  # Create instance: mux_8_to_1_1, and set properties
  set mux_8_to_1_1 [ create_bd_cell -type ip -vlnv xilinx.com:xup:mux_8_to_1:1.0 mux_8_to_1_1 ]

  # Create instance: two_4_input_nand_gate_0, and set properties
  set two_4_input_nand_gate_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:two_4_input_nand_gate:1.0 two_4_input_nand_gate_0 ]

  # Create instance: two_4_input_nand_gate_1, and set properties
  set two_4_input_nand_gate_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:two_4_input_nand_gate:1.0 two_4_input_nand_gate_1 ]

  # Create port connections
  connect_bd_net -net A_1 [get_bd_ports A] [get_bd_pins XOR_0/In1] [get_bd_pins decode138_0/A2] [get_bd_pins decode138_1/A2] [get_bd_pins four_2_input_and_gate_0/A1] [get_bd_pins four_2_input_nand_gate_0/A1] [get_bd_pins four_2_input_nand_gate_0/B1] [get_bd_pins four_2_input_or_gate_0/A1]
  connect_bd_net -net B_1 [get_bd_ports B] [get_bd_pins XOR_0/In2] [get_bd_pins decode138_0/A1] [get_bd_pins decode138_1/A1] [get_bd_pins four_2_input_and_gate_0/B1] [get_bd_pins four_2_input_nand_gate_0/A2] [get_bd_pins four_2_input_nand_gate_0/B2] [get_bd_pins four_2_input_or_gate_0/B1]
  connect_bd_net -net C_1 [get_bd_ports C] [get_bd_pins decode138_0/A0] [get_bd_pins decode138_1/A0]
  connect_bd_net -net GROUND_0_o [get_bd_pins GROUND_0/o] [get_bd_pins decode138_0/E2_n] [get_bd_pins decode138_0/E3_n] [get_bd_pins decode138_1/E2_n] [get_bd_pins decode138_1/E3_n] [get_bd_pins mux_8_to_1_0/D7] [get_bd_pins mux_8_to_1_0/S_n] [get_bd_pins mux_8_to_1_1/D7] [get_bd_pins mux_8_to_1_1/S_n]
  connect_bd_net -net HIGH_0_o [get_bd_pins HIGH_0/o] [get_bd_pins decode138_0/E1] [get_bd_pins decode138_1/E1]
  connect_bd_net -net Q0 [get_bd_ports Q0] [get_bd_pins four_2_input_nand_gate_1/A1] [get_bd_pins four_2_input_nand_gate_1/B1] [get_bd_pins mux_8_to_1_1/Q]
  connect_bd_net -net Q1 [get_bd_ports Q1] [get_bd_pins mux_8_to_1_0/Q]
  connect_bd_net -net S0 [get_bd_ports S0] [get_bd_pins mux_8_to_1_0/A0] [get_bd_pins mux_8_to_1_1/A0]
  connect_bd_net -net S1 [get_bd_ports S1] [get_bd_pins mux_8_to_1_0/A1] [get_bd_pins mux_8_to_1_1/A1]
  connect_bd_net -net S2 [get_bd_ports S2] [get_bd_pins mux_8_to_1_0/A2] [get_bd_pins mux_8_to_1_1/A2]
  connect_bd_net -net XOR_0_o [get_bd_pins XOR_0/o] [get_bd_pins mux_8_to_1_1/D4]
  connect_bd_net -net decode138_0_Y1_n [get_bd_pins decode138_0/Y1_n] [get_bd_pins two_4_input_nand_gate_1/A1] [get_bd_pins two_4_input_nand_gate_1/A2]
  connect_bd_net -net decode138_0_Y2_n [get_bd_pins decode138_0/Y2_n] [get_bd_pins two_4_input_nand_gate_1/B1] [get_bd_pins two_4_input_nand_gate_1/B2]
  connect_bd_net -net decode138_0_Y3_n [get_bd_pins decode138_0/Y3_n] [get_bd_pins two_4_input_nand_gate_1/C2]
  connect_bd_net -net decode138_0_Y4_n [get_bd_pins decode138_0/Y4_n] [get_bd_pins two_4_input_nand_gate_1/C1]
  connect_bd_net -net decode138_0_Y7_n [get_bd_pins decode138_0/Y7_n] [get_bd_pins two_4_input_nand_gate_1/D1] [get_bd_pins two_4_input_nand_gate_1/D2]
  connect_bd_net -net decode138_1_Y1_n [get_bd_pins decode138_1/Y1_n] [get_bd_pins two_4_input_nand_gate_0/A1]
  connect_bd_net -net decode138_1_Y2_n [get_bd_pins decode138_1/Y2_n] [get_bd_pins two_4_input_nand_gate_0/B1]
  connect_bd_net -net decode138_1_Y3_n [get_bd_pins decode138_1/Y3_n] [get_bd_pins two_4_input_nand_gate_0/A2]
  connect_bd_net -net decode138_1_Y4_n [get_bd_pins decode138_1/Y4_n] [get_bd_pins two_4_input_nand_gate_0/C1]
  connect_bd_net -net decode138_1_Y5_n [get_bd_pins decode138_1/Y5_n] [get_bd_pins two_4_input_nand_gate_0/B2]
  connect_bd_net -net decode138_1_Y6_n [get_bd_pins decode138_1/Y6_n] [get_bd_pins two_4_input_nand_gate_0/C2]
  connect_bd_net -net decode138_1_Y7_n [get_bd_pins decode138_1/Y7_n] [get_bd_pins two_4_input_nand_gate_0/D1] [get_bd_pins two_4_input_nand_gate_0/D2]
  connect_bd_net -net four_2_input_and_gate_0_Y1 [get_bd_pins four_2_input_and_gate_0/Y1] [get_bd_pins mux_8_to_1_1/D0]
  connect_bd_net -net four_2_input_nand_gate_0_Y1 [get_bd_pins four_2_input_nand_gate_0/Y1] [get_bd_pins mux_8_to_1_1/D2]
  connect_bd_net -net four_2_input_nand_gate_0_Y2 [get_bd_pins four_2_input_nand_gate_0/Y2] [get_bd_pins mux_8_to_1_1/D3]
  connect_bd_net -net four_2_input_nand_gate_1_Y1 [get_bd_pins four_2_input_nand_gate_1/Y1] [get_bd_pins mux_8_to_1_0/D0] [get_bd_pins mux_8_to_1_0/D1] [get_bd_pins mux_8_to_1_0/D2] [get_bd_pins mux_8_to_1_0/D3] [get_bd_pins mux_8_to_1_0/D4]
  connect_bd_net -net four_2_input_or_gate_0_Y1 [get_bd_pins four_2_input_or_gate_0/Y1] [get_bd_pins mux_8_to_1_1/D1]
  connect_bd_net -net two_4_input_nand_gate_0_Y1 [get_bd_pins mux_8_to_1_1/D5] [get_bd_pins two_4_input_nand_gate_0/Y1]
  connect_bd_net -net two_4_input_nand_gate_0_Y2 [get_bd_pins mux_8_to_1_0/D5] [get_bd_pins two_4_input_nand_gate_0/Y2]
  connect_bd_net -net two_4_input_nand_gate_1_Y1 [get_bd_pins mux_8_to_1_1/D6] [get_bd_pins two_4_input_nand_gate_1/Y1]
  connect_bd_net -net two_4_input_nand_gate_1_Y2 [get_bd_pins mux_8_to_1_0/D6] [get_bd_pins two_4_input_nand_gate_1/Y2]

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


