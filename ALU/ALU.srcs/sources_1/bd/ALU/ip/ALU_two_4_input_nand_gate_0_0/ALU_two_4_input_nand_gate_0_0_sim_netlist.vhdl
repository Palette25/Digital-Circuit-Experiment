-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Thu Nov  2 14:46:49 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/VivadoProjects/ALU/ALU.srcs/sources_1/bd/ALU/ip/ALU_two_4_input_nand_gate_0_0/ALU_two_4_input_nand_gate_0_0_sim_netlist.vhdl
-- Design      : ALU_two_4_input_nand_gate_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ALU_two_4_input_nand_gate_0_0_two_4_input_nand_gate is
  port (
    Y1 : out STD_LOGIC;
    Y2 : out STD_LOGIC;
    B1 : in STD_LOGIC;
    C1 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    D1 : in STD_LOGIC;
    B2 : in STD_LOGIC;
    C2 : in STD_LOGIC;
    A2 : in STD_LOGIC;
    D2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ALU_two_4_input_nand_gate_0_0_two_4_input_nand_gate : entity is "two_4_input_nand_gate";
end ALU_two_4_input_nand_gate_0_0_two_4_input_nand_gate;

architecture STRUCTURE of ALU_two_4_input_nand_gate_0_0_two_4_input_nand_gate is
begin
\Y1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => B1,
      I1 => C1,
      I2 => A1,
      I3 => D1,
      O => Y1
    );
\Y2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => B2,
      I1 => C2,
      I2 => A2,
      I3 => D2,
      O => Y2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ALU_two_4_input_nand_gate_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ALU_two_4_input_nand_gate_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ALU_two_4_input_nand_gate_0_0 : entity is "ALU_two_4_input_nand_gate_0_0,two_4_input_nand_gate,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ALU_two_4_input_nand_gate_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ALU_two_4_input_nand_gate_0_0 : entity is "two_4_input_nand_gate,Vivado 2017.2";
end ALU_two_4_input_nand_gate_0_0;

architecture STRUCTURE of ALU_two_4_input_nand_gate_0_0 is
begin
inst: entity work.ALU_two_4_input_nand_gate_0_0_two_4_input_nand_gate
     port map (
      A1 => A1,
      A2 => A2,
      B1 => B1,
      B2 => B2,
      C1 => C1,
      C2 => C2,
      D1 => D1,
      D2 => D2,
      Y1 => Y1,
      Y2 => Y2
    );
end STRUCTURE;
