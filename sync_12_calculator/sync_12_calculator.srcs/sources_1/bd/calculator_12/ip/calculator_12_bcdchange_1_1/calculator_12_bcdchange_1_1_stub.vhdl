-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sun Dec 10 20:12:11 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/VivadoProjects/sync_12_calculator/sync_12_calculator.srcs/sources_1/bd/calculator_12/ip/calculator_12_bcdchange_1_1/calculator_12_bcdchange_1_1_stub.vhdl
-- Design      : calculator_12_bcdchange_1_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity calculator_12_bcdchange_1_1 is
  Port ( 
    t0 : in STD_LOGIC;
    t1 : in STD_LOGIC;
    t2 : in STD_LOGIC;
    t3 : in STD_LOGIC;
    a : out STD_LOGIC;
    b : out STD_LOGIC;
    c : out STD_LOGIC;
    d : out STD_LOGIC;
    e : out STD_LOGIC;
    f : out STD_LOGIC;
    g : out STD_LOGIC
  );

end calculator_12_bcdchange_1_1;

architecture stub of calculator_12_bcdchange_1_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "t0,t1,t2,t3,a,b,c,d,e,f,g";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bcdchange,Vivado 2017.2";
begin
end;
