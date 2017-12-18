
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
# Ground, Ground, bcd_change, nxor, nxor, nxor, nxor

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
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
  set CLK [ create_bd_port -dir I CLK ]
  set a [ create_bd_port -dir O a ]
  set b [ create_bd_port -dir O b ]
  set c [ create_bd_port -dir O c ]
  set d [ create_bd_port -dir O d ]
  set e [ create_bd_port -dir O e ]
  set f [ create_bd_port -dir O f ]
  set g [ create_bd_port -dir O g ]
  set o1 [ create_bd_port -dir O o1 ]
  set o2 [ create_bd_port -dir O o2 ]
  set o3 [ create_bd_port -dir O o3 ]
  set o4 [ create_bd_port -dir O o4 ]
  set switch [ create_bd_port -dir I switch ]

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
  
  # Create instance: Ground_1, and set properties
  set block_name Ground
  set block_cell_name Ground_1
  if { [catch {set Ground_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Ground_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: bcd_change_0, and set properties
  set block_name bcd_change
  set block_cell_name bcd_change_0
  if { [catch {set bcd_change_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $bcd_change_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: clk_div_0, and set properties
  set clk_div_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:clk_div:1.0 clk_div_0 ]
  set_property -dict [ list \
CONFIG.N {99999} \
 ] $clk_div_0

  # Create instance: decimal_counter_0, and set properties
  set decimal_counter_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:decimal_counter:1.0 decimal_counter_0 ]

  # Create instance: decode138_0, and set properties
  set decode138_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:decode138:1.0 decode138_0 ]

  # Create instance: decode138_1, and set properties
  set decode138_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:decode138:1.0 decode138_1 ]

  # Create instance: nxor_0, and set properties
  set block_name nxor
  set block_cell_name nxor_0
  if { [catch {set nxor_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $nxor_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: nxor_1, and set properties
  set block_name nxor
  set block_cell_name nxor_1
  if { [catch {set nxor_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $nxor_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: nxor_2, and set properties
  set block_name nxor
  set block_cell_name nxor_2
  if { [catch {set nxor_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $nxor_2 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: nxor_3, and set properties
  set block_name nxor
  set block_cell_name nxor_3
  if { [catch {set nxor_3 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $nxor_3 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: six_not_gate_0, and set properties
  set six_not_gate_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:six_not_gate:1.0 six_not_gate_0 ]

  # Create port connections
  connect_bd_net -net Ground_0_o [get_bd_pins Ground_0/o] [get_bd_pins decimal_counter_0/R9_1] [get_bd_pins decimal_counter_0/R9_2]
  connect_bd_net -net Ground_1_o [get_bd_pins Ground_1/o] [get_bd_pins decode138_0/E2_n] [get_bd_pins decode138_0/E3_n] [get_bd_pins decode138_1/E2_n] [get_bd_pins decode138_1/E3_n]
  connect_bd_net -net bcd_change_0_a [get_bd_ports a] [get_bd_pins bcd_change_0/a]
  connect_bd_net -net bcd_change_0_b [get_bd_ports b] [get_bd_pins bcd_change_0/b]
  connect_bd_net -net bcd_change_0_c [get_bd_ports c] [get_bd_pins bcd_change_0/c]
  connect_bd_net -net bcd_change_0_d [get_bd_ports d] [get_bd_pins bcd_change_0/d]
  connect_bd_net -net bcd_change_0_e [get_bd_ports e] [get_bd_pins bcd_change_0/e]
  connect_bd_net -net bcd_change_0_f [get_bd_ports f] [get_bd_pins bcd_change_0/f]
  connect_bd_net -net bcd_change_0_g [get_bd_ports g] [get_bd_pins bcd_change_0/g]
  connect_bd_net -net clk_div_0_clk_out [get_bd_pins clk_div_0/clk_out] [get_bd_pins decimal_counter_0/CP1_n]
  connect_bd_net -net clk_in_1 [get_bd_ports CLK] [get_bd_pins clk_div_0/clk_in]
  connect_bd_net -net decimal_counter_0_Qa [get_bd_pins bcd_change_0/C1] [get_bd_pins decimal_counter_0/CP2_n] [get_bd_pins decimal_counter_0/Qa] [get_bd_pins decode138_0/A0] [get_bd_pins decode138_1/A0]
  connect_bd_net -net decimal_counter_0_Qb [get_bd_pins bcd_change_0/B1] [get_bd_pins decimal_counter_0/Qb] [get_bd_pins decode138_0/A1] [get_bd_pins decode138_1/A1]
  connect_bd_net -net decimal_counter_0_Qc [get_bd_pins bcd_change_0/A1] [get_bd_pins decimal_counter_0/Qc] [get_bd_pins decode138_0/A2] [get_bd_pins decode138_1/A2]
  connect_bd_net -net decimal_counter_0_Qd [get_bd_pins decimal_counter_0/Qd] [get_bd_pins decimal_counter_0/R0_1] [get_bd_pins decimal_counter_0/R0_2]
  connect_bd_net -net decode138_0_Y1_n [get_bd_pins decode138_0/Y1_n] [get_bd_pins nxor_0/a]
  connect_bd_net -net decode138_0_Y3_n [get_bd_pins decode138_0/Y3_n] [get_bd_pins nxor_2/a]
  connect_bd_net -net decode138_0_Y4_n [get_bd_pins decode138_0/Y4_n] [get_bd_pins nxor_3/a]
  connect_bd_net -net decode138_0_Y6_n [get_bd_pins decode138_0/Y6_n] [get_bd_pins nxor_1/a]
  connect_bd_net -net decode138_1_Y0_n [get_bd_pins decode138_1/Y0_n] [get_bd_pins nxor_0/b] [get_bd_pins nxor_1/b]
  connect_bd_net -net decode138_1_Y2_n [get_bd_pins decode138_1/Y2_n] [get_bd_pins nxor_2/b]
  connect_bd_net -net decode138_1_Y3_n [get_bd_pins decode138_1/Y3_n] [get_bd_pins nxor_3/b]
  connect_bd_net -net nxor_0_o [get_bd_ports o1] [get_bd_pins nxor_0/o]
  connect_bd_net -net nxor_1_o [get_bd_ports o2] [get_bd_pins nxor_1/o]
  connect_bd_net -net nxor_2_o [get_bd_ports o3] [get_bd_pins nxor_2/o]
  connect_bd_net -net nxor_3_o [get_bd_ports o4] [get_bd_pins nxor_3/o]
  connect_bd_net -net six_not_gate_0_Y1 [get_bd_pins decode138_1/E1] [get_bd_pins six_not_gate_0/Y1]
  connect_bd_net -net switch_1 [get_bd_ports switch] [get_bd_pins decode138_0/E1] [get_bd_pins six_not_gate_0/A1]

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


