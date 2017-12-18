
################################################################
# This is a generated script based on design: final_clock
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
# source final_clock_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# Ground, Ground, Ground, HIGH, HIGH, OR, alink, bcdTo7seg, clock_chooser, data_chooser, data_chooser, data_chooser, data_chooser, data_chooser, day_generator, five_or, hour_generator, min_generator, mon_generator, one_or, sec_generator, select_153, steper, steper, steper_3, tran_2, tran_2, tran_2, turn_3, turn_4, two_clk, year_generator

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
}


# CHANGE DESIGN NAME HERE
set design_name final_clock

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
  set AN0 [ create_bd_port -dir O AN0 ]
  set AN1 [ create_bd_port -dir O AN1 ]
  set AN2 [ create_bd_port -dir O AN2 ]
  set AN3 [ create_bd_port -dir O AN3 ]
  set CLK [ create_bd_port -dir I -type clk CLK ]
  set Q1 [ create_bd_port -dir O Q1 ]
  set Q2 [ create_bd_port -dir O Q2 ]
  set S1 [ create_bd_port -dir O S1 ]
  set S2 [ create_bd_port -dir O S2 ]
  set State [ create_bd_port -dir I State ]
  set a [ create_bd_port -dir O a ]
  set b [ create_bd_port -dir O b ]
  set c [ create_bd_port -dir O c ]
  set click [ create_bd_port -dir I click ]
  set d [ create_bd_port -dir O d ]
  set e [ create_bd_port -dir O e ]
  set f [ create_bd_port -dir O f ]
  set g [ create_bd_port -dir O g ]
  set mode [ create_bd_port -dir I -type clk mode ]
  set sign [ create_bd_port -dir I sign ]

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
  
  # Create instance: Ground_2, and set properties
  set block_name Ground
  set block_cell_name Ground_2
  if { [catch {set Ground_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Ground_2 eq "" } {
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
  
  # Create instance: alink_0, and set properties
  set block_name alink
  set block_cell_name alink_0
  if { [catch {set alink_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $alink_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: bcdTo7seg_0, and set properties
  set block_name bcdTo7seg
  set block_cell_name bcdTo7seg_0
  if { [catch {set bcdTo7seg_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $bcdTo7seg_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: clk_div_0, and set properties
  set clk_div_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:clk_div:1.0 clk_div_0 ]
  set_property -dict [ list \
CONFIG.N {10000} \
 ] $clk_div_0

  # Create instance: clk_div_1, and set properties
  set clk_div_1 [ create_bd_cell -type ip -vlnv xilinx.com:xup:clk_div:1.0 clk_div_1 ]

  # Create instance: clk_div_2, and set properties
  set clk_div_2 [ create_bd_cell -type ip -vlnv xilinx.com:xup:clk_div:1.0 clk_div_2 ]
  set_property -dict [ list \
CONFIG.N {10000} \
 ] $clk_div_2

  # Create instance: clk_div_3, and set properties
  set clk_div_3 [ create_bd_cell -type ip -vlnv xilinx.com:xup:clk_div:1.0 clk_div_3 ]
  set_property -dict [ list \
CONFIG.N {20000000} \
 ] $clk_div_3

  # Create instance: clock_chooser_0, and set properties
  set block_name clock_chooser
  set block_cell_name clock_chooser_0
  if { [catch {set clock_chooser_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $clock_chooser_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: data_chooser_0, and set properties
  set block_name data_chooser
  set block_cell_name data_chooser_0
  if { [catch {set data_chooser_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $data_chooser_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: data_chooser_1, and set properties
  set block_name data_chooser
  set block_cell_name data_chooser_1
  if { [catch {set data_chooser_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $data_chooser_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: data_chooser_2, and set properties
  set block_name data_chooser
  set block_cell_name data_chooser_2
  if { [catch {set data_chooser_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $data_chooser_2 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: data_chooser_3, and set properties
  set block_name data_chooser
  set block_cell_name data_chooser_3
  if { [catch {set data_chooser_3 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $data_chooser_3 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: data_chooser_4, and set properties
  set block_name data_chooser
  set block_cell_name data_chooser_4
  if { [catch {set data_chooser_4 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $data_chooser_4 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: day_generator_0, and set properties
  set block_name day_generator
  set block_cell_name day_generator_0
  if { [catch {set day_generator_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $day_generator_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: decode138_0, and set properties
  set decode138_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:decode138:1.0 decode138_0 ]

  # Create instance: decode138_1, and set properties
  set decode138_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:decode138:1.0 decode138_1 ]

  # Create instance: five_or_0, and set properties
  set block_name five_or
  set block_cell_name five_or_0
  if { [catch {set five_or_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $five_or_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: hour_generator_0, and set properties
  set block_name hour_generator
  set block_cell_name hour_generator_0
  if { [catch {set hour_generator_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $hour_generator_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: min_generator_0, and set properties
  set block_name min_generator
  set block_cell_name min_generator_0
  if { [catch {set min_generator_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $min_generator_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mon_generator_0, and set properties
  set block_name mon_generator
  set block_cell_name mon_generator_0
  if { [catch {set mon_generator_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mon_generator_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: one_or_0, and set properties
  set block_name one_or
  set block_cell_name one_or_0
  if { [catch {set one_or_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $one_or_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: sec_generator_0, and set properties
  set block_name sec_generator
  set block_cell_name sec_generator_0
  if { [catch {set sec_generator_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sec_generator_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: select_153_0, and set properties
  set block_name select_153
  set block_cell_name select_153_0
  if { [catch {set select_153_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $select_153_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: steper_0, and set properties
  set block_name steper
  set block_cell_name steper_0
  if { [catch {set steper_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $steper_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: steper_1, and set properties
  set block_name steper
  set block_cell_name steper_1
  if { [catch {set steper_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $steper_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: steper_3_0, and set properties
  set block_name steper_3
  set block_cell_name steper_3_0
  if { [catch {set steper_3_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $steper_3_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: tran_2_0, and set properties
  set block_name tran_2
  set block_cell_name tran_2_0
  if { [catch {set tran_2_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $tran_2_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: tran_2_1, and set properties
  set block_name tran_2
  set block_cell_name tran_2_1
  if { [catch {set tran_2_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $tran_2_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: tran_2_2, and set properties
  set block_name tran_2
  set block_cell_name tran_2_2
  if { [catch {set tran_2_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $tran_2_2 eq "" } {
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
  
  # Create instance: turn_4_0, and set properties
  set block_name turn_4
  set block_cell_name turn_4_0
  if { [catch {set turn_4_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $turn_4_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: two_clk_0, and set properties
  set block_name two_clk
  set block_cell_name two_clk_0
  if { [catch {set two_clk_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $two_clk_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: year_generator_0, and set properties
  set block_name year_generator
  set block_cell_name year_generator_0
  if { [catch {set year_generator_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $year_generator_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net CLK_1 [get_bd_ports CLK] [get_bd_pins clk_div_0/clk_in] [get_bd_pins clk_div_1/clk_in] [get_bd_pins clk_div_2/clk_in] [get_bd_pins clk_div_3/clk_in]
  connect_bd_net -net Ground_0_o [get_bd_pins Ground_0/o] [get_bd_pins decode138_0/A2] [get_bd_pins decode138_0/E2_n] [get_bd_pins decode138_0/E3_n]
  connect_bd_net -net Ground_1_o [get_bd_pins Ground_1/o] [get_bd_pins select_153_0/i0_0] [get_bd_pins select_153_0/i0_2] [get_bd_pins select_153_0/i1_0] [get_bd_pins select_153_0/i1_1]
  connect_bd_net -net Ground_2_o [get_bd_pins Ground_2/o] [get_bd_pins decode138_1/A2] [get_bd_pins decode138_1/E2_n] [get_bd_pins decode138_1/E3_n]
  connect_bd_net -net HIGH_0_o [get_bd_pins HIGH_0/o] [get_bd_pins decode138_1/E1] [get_bd_pins sec_generator_0/EN]
  connect_bd_net -net HIGH_1_o [get_bd_pins HIGH_1/o] [get_bd_pins decode138_0/E1]
  connect_bd_net -net OR_0_o0 [get_bd_ports AN0] [get_bd_pins OR_0/o0]
  connect_bd_net -net OR_0_o1 [get_bd_ports AN1] [get_bd_pins OR_0/o1]
  connect_bd_net -net OR_0_o2 [get_bd_ports AN2] [get_bd_pins OR_0/o2]
  connect_bd_net -net OR_0_o3 [get_bd_ports AN3] [get_bd_pins OR_0/o3]
  connect_bd_net -net State_1 [get_bd_ports State] [get_bd_pins steper_1/clk]
  connect_bd_net -net alink_0_state [get_bd_pins alink_0/state] [get_bd_pins select_153_0/i0_1] [get_bd_pins select_153_0/i1_2]
  connect_bd_net -net bcdTo7seg_0_a [get_bd_ports a] [get_bd_pins bcdTo7seg_0/a]
  connect_bd_net -net bcdTo7seg_0_b [get_bd_ports b] [get_bd_pins bcdTo7seg_0/b]
  connect_bd_net -net bcdTo7seg_0_c [get_bd_ports c] [get_bd_pins bcdTo7seg_0/c]
  connect_bd_net -net bcdTo7seg_0_d [get_bd_ports d] [get_bd_pins bcdTo7seg_0/d]
  connect_bd_net -net bcdTo7seg_0_e [get_bd_ports e] [get_bd_pins bcdTo7seg_0/e]
  connect_bd_net -net bcdTo7seg_0_f [get_bd_ports f] [get_bd_pins bcdTo7seg_0/f]
  connect_bd_net -net bcdTo7seg_0_g [get_bd_ports g] [get_bd_pins bcdTo7seg_0/g]
  connect_bd_net -net click_1 [get_bd_ports click] [get_bd_pins clock_chooser_0/click]
  connect_bd_net -net clk_div_0_clk_out [get_bd_pins clk_div_0/clk_out] [get_bd_pins two_clk_0/clk1]
  connect_bd_net -net clk_div_1_clk_out [get_bd_pins clk_div_1/clk_out] [get_bd_pins two_clk_0/clk2]
  connect_bd_net -net clk_div_2_clk_out [get_bd_pins clk_div_2/clk_out] [get_bd_pins steper_0/clk]
  connect_bd_net -net clk_div_3_clk_out [get_bd_pins alink_0/CLK] [get_bd_pins clk_div_3/clk_out]
  connect_bd_net -net clock_chooser_0_day_clk [get_bd_pins clock_chooser_0/day_clk] [get_bd_pins day_generator_0/CLK]
  connect_bd_net -net clock_chooser_0_hour_clk [get_bd_pins clock_chooser_0/hour_clk] [get_bd_pins hour_generator_0/CLK]
  connect_bd_net -net clock_chooser_0_min_clk [get_bd_pins clock_chooser_0/min_clk] [get_bd_pins min_generator_0/CLK]
  connect_bd_net -net clock_chooser_0_mon_clk [get_bd_pins clock_chooser_0/mon_clk] [get_bd_pins mon_generator_0/CLK]
  connect_bd_net -net clock_chooser_0_sec_clk [get_bd_pins clock_chooser_0/sec_clk] [get_bd_pins sec_generator_0/CLK]
  connect_bd_net -net clock_chooser_0_year_clk [get_bd_pins clock_chooser_0/year_clk] [get_bd_pins year_generator_0/CLK]
  connect_bd_net -net data_chooser_0_Y [get_bd_pins data_chooser_0/Y] [get_bd_pins data_chooser_4/ar0]
  connect_bd_net -net data_chooser_1_Y [get_bd_pins data_chooser_1/Y] [get_bd_pins data_chooser_4/ar1]
  connect_bd_net -net data_chooser_2_Y [get_bd_pins data_chooser_2/Y] [get_bd_pins data_chooser_4/ar2]
  connect_bd_net -net data_chooser_3_Y [get_bd_pins data_chooser_3/Y] [get_bd_pins data_chooser_4/ar3]
  connect_bd_net -net data_chooser_4_Y [get_bd_pins data_chooser_4/Y] [get_bd_pins turn_4_0/In]
  connect_bd_net -net day_generator_0_day_0 [get_bd_pins data_chooser_0/ar2] [get_bd_pins day_generator_0/day_0]
  connect_bd_net -net day_generator_0_day_1 [get_bd_pins data_chooser_1/ar2] [get_bd_pins day_generator_0/day_1]
  connect_bd_net -net day_generator_0_rco [get_bd_pins day_generator_0/rco] [get_bd_pins five_or_0/i3_1]
  connect_bd_net -net decode138_0_Y0_n [get_bd_pins OR_0/In0_0] [get_bd_pins decode138_0/Y0_n]
  connect_bd_net -net decode138_0_Y1_n [get_bd_pins OR_0/In1_0] [get_bd_pins decode138_0/Y1_n]
  connect_bd_net -net decode138_0_Y2_n [get_bd_pins OR_0/In2_0] [get_bd_pins decode138_0/Y2_n]
  connect_bd_net -net decode138_0_Y3_n [get_bd_pins OR_0/In3_0] [get_bd_pins decode138_0/Y3_n]
  connect_bd_net -net decode138_1_Y0_n [get_bd_pins clock_chooser_0/Y0] [get_bd_pins decode138_1/Y0_n]
  connect_bd_net -net decode138_1_Y1_n [get_bd_pins clock_chooser_0/Y1] [get_bd_pins decode138_1/Y1_n]
  connect_bd_net -net decode138_1_Y2_n [get_bd_pins clock_chooser_0/Y2] [get_bd_pins decode138_1/Y2_n]
  connect_bd_net -net decode138_1_Y3_n [get_bd_pins clock_chooser_0/Y3] [get_bd_pins decode138_1/Y3_n]
  connect_bd_net -net five_or_0_Y0 [get_bd_pins five_or_0/Y0] [get_bd_pins min_generator_0/EN]
  connect_bd_net -net five_or_0_Y1 [get_bd_pins five_or_0/Y1] [get_bd_pins hour_generator_0/EN]
  connect_bd_net -net five_or_0_Y2 [get_bd_pins day_generator_0/EN] [get_bd_pins five_or_0/Y2]
  connect_bd_net -net five_or_0_Y3 [get_bd_pins five_or_0/Y3] [get_bd_pins mon_generator_0/EN]
  connect_bd_net -net five_or_0_Y4 [get_bd_pins five_or_0/Y4] [get_bd_pins year_generator_0/EN]
  connect_bd_net -net hour_generator_0_hour_0 [get_bd_pins data_chooser_2/ar1] [get_bd_pins hour_generator_0/hour_0]
  connect_bd_net -net hour_generator_0_hour_1 [get_bd_pins data_chooser_3/ar1] [get_bd_pins hour_generator_0/hour_1]
  connect_bd_net -net hour_generator_0_rco [get_bd_pins five_or_0/i2_1] [get_bd_pins hour_generator_0/rco]
  connect_bd_net -net min_generator_0_min_0 [get_bd_pins data_chooser_0/ar1] [get_bd_pins data_chooser_2/ar0] [get_bd_pins min_generator_0/min_0]
  connect_bd_net -net min_generator_0_min_1 [get_bd_pins data_chooser_1/ar1] [get_bd_pins data_chooser_3/ar0] [get_bd_pins min_generator_0/min_1]
  connect_bd_net -net min_generator_0_rco [get_bd_pins five_or_0/i1_1] [get_bd_pins min_generator_0/rco]
  connect_bd_net -net mode_1 [get_bd_ports mode] [get_bd_pins steper_3_0/clk]
  connect_bd_net -net mon_generator_0_mon_0 [get_bd_pins data_chooser_2/ar2] [get_bd_pins mon_generator_0/mon_0]
  connect_bd_net -net mon_generator_0_mon_1 [get_bd_pins data_chooser_3/ar2] [get_bd_pins mon_generator_0/mon_1]
  connect_bd_net -net mon_generator_0_rco [get_bd_pins five_or_0/i4_1] [get_bd_pins mon_generator_0/rco]
  connect_bd_net -net one_or_0_o [get_bd_pins five_or_0/i0_0] [get_bd_pins five_or_0/i1_0] [get_bd_pins five_or_0/i3_0] [get_bd_pins five_or_0/i4_0] [get_bd_pins one_or_0/o]
  connect_bd_net -net one_or_0_spc [get_bd_pins five_or_0/i2_0] [get_bd_pins one_or_0/spc]
  connect_bd_net -net sec_generator_0_rco [get_bd_pins five_or_0/i0_1] [get_bd_pins sec_generator_0/rco]
  connect_bd_net -net sec_generator_0_sec_0 [get_bd_pins data_chooser_0/ar0] [get_bd_pins sec_generator_0/sec_0]
  connect_bd_net -net sec_generator_0_sec_1 [get_bd_pins data_chooser_1/ar0] [get_bd_pins sec_generator_0/sec_1]
  connect_bd_net -net select_153_0_Y [get_bd_pins select_153_0/Y] [get_bd_pins turn_3_0/in]
  connect_bd_net -net sign_1 [get_bd_ports sign] [get_bd_pins two_clk_0/sign]
  connect_bd_net -net steper_0_Q [get_bd_pins steper_0/Q] [get_bd_pins tran_2_0/in]
  connect_bd_net -net steper_1_Q [get_bd_pins steper_1/Q] [get_bd_pins tran_2_2/in]
  connect_bd_net -net steper_3_0_o [get_bd_pins steper_3_0/o] [get_bd_pins tran_2_1/in]
  connect_bd_net -net tran_2_0_Q1 [get_bd_pins data_chooser_4/in0] [get_bd_pins decode138_0/A0] [get_bd_pins tran_2_0/Q1]
  connect_bd_net -net tran_2_0_Q2 [get_bd_pins data_chooser_4/in1] [get_bd_pins decode138_0/A1] [get_bd_pins tran_2_0/Q2]
  connect_bd_net -net tran_2_1_Q1 [get_bd_ports Q1] [get_bd_pins clock_chooser_0/mo_0] [get_bd_pins one_or_0/i0] [get_bd_pins select_153_0/A] [get_bd_pins tran_2_1/Q1]
  connect_bd_net -net tran_2_1_Q2 [get_bd_ports Q2] [get_bd_pins clock_chooser_0/mo_1] [get_bd_pins one_or_0/i1] [get_bd_pins select_153_0/B] [get_bd_pins tran_2_1/Q2]
  connect_bd_net -net tran_2_2_Q1 [get_bd_ports S1] [get_bd_pins data_chooser_0/in0] [get_bd_pins data_chooser_1/in0] [get_bd_pins data_chooser_2/in0] [get_bd_pins data_chooser_3/in0] [get_bd_pins decode138_1/A0] [get_bd_pins tran_2_2/Q1]
  connect_bd_net -net tran_2_2_Q2 [get_bd_ports S2] [get_bd_pins data_chooser_0/in1] [get_bd_pins data_chooser_1/in1] [get_bd_pins data_chooser_2/in1] [get_bd_pins data_chooser_3/in1] [get_bd_pins decode138_1/A1] [get_bd_pins tran_2_2/Q2]
  connect_bd_net -net turn_3_0_o0 [get_bd_pins OR_0/In2_1] [get_bd_pins OR_0/In3_1] [get_bd_pins turn_3_0/o0]
  connect_bd_net -net turn_3_0_o1 [get_bd_pins OR_0/In0_1] [get_bd_pins OR_0/In1_1] [get_bd_pins turn_3_0/o1]
  connect_bd_net -net turn_4_0_x0 [get_bd_pins bcdTo7seg_0/t0] [get_bd_pins turn_4_0/x0]
  connect_bd_net -net turn_4_0_x1 [get_bd_pins bcdTo7seg_0/t1] [get_bd_pins turn_4_0/x1]
  connect_bd_net -net turn_4_0_x2 [get_bd_pins bcdTo7seg_0/t2] [get_bd_pins turn_4_0/x2]
  connect_bd_net -net turn_4_0_x3 [get_bd_pins bcdTo7seg_0/t3] [get_bd_pins turn_4_0/x3]
  connect_bd_net -net two_clk_0_clk [get_bd_pins clock_chooser_0/CLK] [get_bd_pins two_clk_0/clk]
  connect_bd_net -net year_generator_0_year_0 [get_bd_pins data_chooser_0/ar3] [get_bd_pins year_generator_0/year_0]
  connect_bd_net -net year_generator_0_year_1 [get_bd_pins data_chooser_1/ar3] [get_bd_pins year_generator_0/year_1]
  connect_bd_net -net year_generator_0_year_2 [get_bd_pins data_chooser_2/ar3] [get_bd_pins year_generator_0/year_2]
  connect_bd_net -net year_generator_0_year_3 [get_bd_pins data_chooser_3/ar3] [get_bd_pins year_generator_0/year_3]

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


