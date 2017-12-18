-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sun Dec 10 20:12:11 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/VivadoProjects/sync_12_calculator/sync_12_calculator.srcs/sources_1/bd/calculator_12/ip/calculator_12_three_and_0_0/calculator_12_three_and_0_0_sim_netlist.vhdl
-- Design      : calculator_12_three_and_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calculator_12_three_and_0_0_three_and is
  port (
    \out\ : out STD_LOGIC;
    k3 : in STD_LOGIC;
    k1 : in STD_LOGIC;
    k2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of calculator_12_three_and_0_0_three_and : entity is "three_and";
end calculator_12_three_and_0_0_three_and;

architecture STRUCTURE of calculator_12_three_and_0_0_three_and is
begin
\out__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k3,
      I1 => k1,
      I2 => k2,
      O => \out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calculator_12_three_and_0_0 is
  port (
    k1 : in STD_LOGIC;
    k2 : in STD_LOGIC;
    k3 : in STD_LOGIC;
    \out\ : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of calculator_12_three_and_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of calculator_12_three_and_0_0 : entity is "calculator_12_three_and_0_0,three_and,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of calculator_12_three_and_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of calculator_12_three_and_0_0 : entity is "three_and,Vivado 2017.2";
end calculator_12_three_and_0_0;

architecture STRUCTURE of calculator_12_three_and_0_0 is
begin
inst: entity work.calculator_12_three_and_0_0_three_and
     port map (
      k1 => k1,
      k2 => k2,
      k3 => k3,
      \out\ => \out\
    );
end STRUCTURE;
