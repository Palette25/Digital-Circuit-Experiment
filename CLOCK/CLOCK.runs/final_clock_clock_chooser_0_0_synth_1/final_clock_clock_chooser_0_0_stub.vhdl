-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sun Dec 17 13:15:18 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ final_clock_clock_chooser_0_0_stub.vhdl
-- Design      : final_clock_clock_chooser_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    click : in STD_LOGIC;
    mo_0 : in STD_LOGIC;
    mo_1 : in STD_LOGIC;
    CLK : in STD_LOGIC;
    Y0 : in STD_LOGIC;
    Y1 : in STD_LOGIC;
    Y2 : in STD_LOGIC;
    Y3 : in STD_LOGIC;
    sec_clk : out STD_LOGIC;
    min_clk : out STD_LOGIC;
    hour_clk : out STD_LOGIC;
    day_clk : out STD_LOGIC;
    mon_clk : out STD_LOGIC;
    year_clk : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "click,mo_0,mo_1,CLK,Y0,Y1,Y2,Y3,sec_clk,min_clk,hour_clk,day_clk,mon_clk,year_clk";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "clock_chooser,Vivado 2017.2";
begin
end;
