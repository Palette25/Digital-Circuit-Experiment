-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Tue Nov 21 13:32:33 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/VivadoProjects/Student_ID/Student_ID.srcs/sources_1/bd/design_1/ip/design_1_nxor_2_0/design_1_nxor_2_0_stub.vhdl
-- Design      : design_1_nxor_2_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_nxor_2_0 is
  Port ( 
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    o : out STD_LOGIC
  );

end design_1_nxor_2_0;

architecture stub of design_1_nxor_2_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a,b,o";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "nxor,Vivado 2017.2";
begin
end;
