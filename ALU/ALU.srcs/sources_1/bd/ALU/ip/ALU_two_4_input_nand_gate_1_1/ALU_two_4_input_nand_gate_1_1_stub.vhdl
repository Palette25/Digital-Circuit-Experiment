-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Thu Nov  2 14:46:49 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/VivadoProjects/ALU/ALU.srcs/sources_1/bd/ALU/ip/ALU_two_4_input_nand_gate_1_1/ALU_two_4_input_nand_gate_1_1_stub.vhdl
-- Design      : ALU_two_4_input_nand_gate_1_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_two_4_input_nand_gate_1_1 is
  Port ( 
    A1 : in STD_LOGIC;
    B1 : in STD_LOGIC;
    C1 : in STD_LOGIC;
    D1 : in STD_LOGIC;
    A2 : in STD_LOGIC;
    B2 : in STD_LOGIC;
    C2 : in STD_LOGIC;
    D2 : in STD_LOGIC;
    Y1 : out STD_LOGIC;
    Y2 : out STD_LOGIC
  );

end ALU_two_4_input_nand_gate_1_1;

architecture stub of ALU_two_4_input_nand_gate_1_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A1,B1,C1,D1,A2,B2,C2,D2,Y1,Y2";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "two_4_input_nand_gate,Vivado 2017.2";
begin
end;
