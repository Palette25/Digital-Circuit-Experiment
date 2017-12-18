-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sun Dec 17 13:13:00 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ final_clock_select_153_0_0_stub.vhdl
-- Design      : final_clock_select_153_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    i0_0 : in STD_LOGIC;
    i0_1 : in STD_LOGIC;
    i0_2 : in STD_LOGIC;
    i0_3 : in STD_LOGIC;
    i1_0 : in STD_LOGIC;
    i1_1 : in STD_LOGIC;
    i1_2 : in STD_LOGIC;
    i1_3 : in STD_LOGIC;
    i2_0 : in STD_LOGIC;
    i2_1 : in STD_LOGIC;
    i2_2 : in STD_LOGIC;
    i2_3 : in STD_LOGIC;
    i3_0 : in STD_LOGIC;
    i3_1 : in STD_LOGIC;
    i3_2 : in STD_LOGIC;
    i3_3 : in STD_LOGIC;
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Y : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i0_0,i0_1,i0_2,i0_3,i1_0,i1_1,i1_2,i1_3,i2_0,i2_1,i2_2,i2_3,i3_0,i3_1,i3_2,i3_3,A,B,Y[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "select_153,Vivado 2017.2";
begin
end;
