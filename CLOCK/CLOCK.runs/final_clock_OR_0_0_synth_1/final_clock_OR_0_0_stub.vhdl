-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sun Dec 17 13:12:15 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ final_clock_OR_0_0_stub.vhdl
-- Design      : final_clock_OR_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    In0_0 : in STD_LOGIC;
    In0_1 : in STD_LOGIC;
    In1_0 : in STD_LOGIC;
    In1_1 : in STD_LOGIC;
    In2_0 : in STD_LOGIC;
    In2_1 : in STD_LOGIC;
    In3_0 : in STD_LOGIC;
    In3_1 : in STD_LOGIC;
    o0 : out STD_LOGIC;
    o1 : out STD_LOGIC;
    o2 : out STD_LOGIC;
    o3 : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "In0_0,In0_1,In1_0,In1_1,In2_0,In2_1,In3_0,In3_1,o0,o1,o2,o3";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "OR,Vivado 2017.2";
begin
end;
