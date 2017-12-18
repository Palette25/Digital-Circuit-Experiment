-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Thu Nov  2 14:45:55 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ALU_decode138_1_0_stub.vhdl
-- Design      : ALU_decode138_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    A0 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    A2 : in STD_LOGIC;
    E1 : in STD_LOGIC;
    E2_n : in STD_LOGIC;
    E3_n : in STD_LOGIC;
    Y0_n : out STD_LOGIC;
    Y1_n : out STD_LOGIC;
    Y2_n : out STD_LOGIC;
    Y3_n : out STD_LOGIC;
    Y4_n : out STD_LOGIC;
    Y5_n : out STD_LOGIC;
    Y6_n : out STD_LOGIC;
    Y7_n : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A0,A1,A2,E1,E2_n,E3_n,Y0_n,Y1_n,Y2_n,Y3_n,Y4_n,Y5_n,Y6_n,Y7_n";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "decode138,Vivado 2017.2";
begin
end;
