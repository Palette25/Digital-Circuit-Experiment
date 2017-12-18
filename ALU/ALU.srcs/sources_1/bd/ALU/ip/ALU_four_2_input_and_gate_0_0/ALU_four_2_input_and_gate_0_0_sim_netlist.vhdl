-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Thu Nov  2 14:47:26 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/VivadoProjects/ALU/ALU.srcs/sources_1/bd/ALU/ip/ALU_four_2_input_and_gate_0_0/ALU_four_2_input_and_gate_0_0_sim_netlist.vhdl
-- Design      : ALU_four_2_input_and_gate_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ALU_four_2_input_and_gate_0_0 is
  port (
    A1 : in STD_LOGIC;
    B1 : in STD_LOGIC;
    A2 : in STD_LOGIC;
    B2 : in STD_LOGIC;
    A3 : in STD_LOGIC;
    B3 : in STD_LOGIC;
    A4 : in STD_LOGIC;
    B4 : in STD_LOGIC;
    Y1 : out STD_LOGIC;
    Y2 : out STD_LOGIC;
    Y3 : out STD_LOGIC;
    Y4 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ALU_four_2_input_and_gate_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ALU_four_2_input_and_gate_0_0 : entity is "ALU_four_2_input_and_gate_0_0,four_2_input_and_gate,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ALU_four_2_input_and_gate_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ALU_four_2_input_and_gate_0_0 : entity is "four_2_input_and_gate,Vivado 2017.2";
end ALU_four_2_input_and_gate_0_0;

architecture STRUCTURE of ALU_four_2_input_and_gate_0_0 is
begin
Y1_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A1,
      I1 => B1,
      O => Y1
    );
Y2_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A2,
      I1 => B2,
      O => Y2
    );
Y3_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A3,
      I1 => B3,
      O => Y3
    );
Y4_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A4,
      I1 => B4,
      O => Y4
    );
end STRUCTURE;
