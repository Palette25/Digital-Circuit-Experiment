-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Mon Nov 20 23:00:50 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_decimal_counter_0_0_stub.vhdl
-- Design      : design_1_decimal_counter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    CP1_n : in STD_LOGIC;
    CP2_n : in STD_LOGIC;
    R0_1 : in STD_LOGIC;
    R0_2 : in STD_LOGIC;
    R9_1 : in STD_LOGIC;
    R9_2 : in STD_LOGIC;
    Qa : out STD_LOGIC;
    Qb : out STD_LOGIC;
    Qc : out STD_LOGIC;
    Qd : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CP1_n,CP2_n,R0_1,R0_2,R9_1,R9_2,Qa,Qb,Qc,Qd";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "decimal_counter,Vivado 2017.2";
begin
end;
