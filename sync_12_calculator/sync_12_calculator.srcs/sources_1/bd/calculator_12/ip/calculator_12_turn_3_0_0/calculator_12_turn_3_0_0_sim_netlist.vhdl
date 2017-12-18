-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sun Dec 10 20:11:25 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/VivadoProjects/sync_12_calculator/sync_12_calculator.srcs/sources_1/bd/calculator_12/ip/calculator_12_turn_3_0_0/calculator_12_turn_3_0_0_sim_netlist.vhdl
-- Design      : calculator_12_turn_3_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calculator_12_turn_3_0_0 is
  port (
    \in\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    o0 : out STD_LOGIC;
    o1 : out STD_LOGIC;
    o2 : out STD_LOGIC;
    o3 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of calculator_12_turn_3_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of calculator_12_turn_3_0_0 : entity is "calculator_12_turn_3_0_0,turn_3,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of calculator_12_turn_3_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of calculator_12_turn_3_0_0 : entity is "turn_3,Vivado 2017.2";
end calculator_12_turn_3_0_0;

architecture STRUCTURE of calculator_12_turn_3_0_0 is
  signal \^in\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  \^in\(3 downto 0) <= \in\(3 downto 0);
  o0 <= \^in\(0);
  o1 <= \^in\(1);
  o2 <= \^in\(2);
  o3 <= \^in\(3);
end STRUCTURE;
