-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Thu Nov  2 14:45:58 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/VivadoProjects/ALU/ALU.srcs/sources_1/bd/ALU/ip/ALU_mux_8_to_1_0_0/ALU_mux_8_to_1_0_0_stub.vhdl
-- Design      : ALU_mux_8_to_1_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_mux_8_to_1_0_0 is
  Port ( 
    S_n : in STD_LOGIC;
    A2 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    A0 : in STD_LOGIC;
    D7 : in STD_LOGIC;
    D6 : in STD_LOGIC;
    D5 : in STD_LOGIC;
    D4 : in STD_LOGIC;
    D3 : in STD_LOGIC;
    D2 : in STD_LOGIC;
    D1 : in STD_LOGIC;
    D0 : in STD_LOGIC;
    Q : out STD_LOGIC;
    Q_n : out STD_LOGIC
  );

end ALU_mux_8_to_1_0_0;

architecture stub of ALU_mux_8_to_1_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "S_n,A2,A1,A0,D7,D6,D5,D4,D3,D2,D1,D0,Q,Q_n";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "mux_8_to_1,Vivado 2017.2";
begin
end;
