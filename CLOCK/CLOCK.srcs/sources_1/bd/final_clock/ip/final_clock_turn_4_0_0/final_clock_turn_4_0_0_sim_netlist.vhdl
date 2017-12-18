-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sun Dec 17 13:14:29 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/VivadoProjects/CLOCK/CLOCK.srcs/sources_1/bd/final_clock/ip/final_clock_turn_4_0_0/final_clock_turn_4_0_0_sim_netlist.vhdl
-- Design      : final_clock_turn_4_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_clock_turn_4_0_0 is
  port (
    \In\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    x0 : out STD_LOGIC;
    x1 : out STD_LOGIC;
    x2 : out STD_LOGIC;
    x3 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of final_clock_turn_4_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of final_clock_turn_4_0_0 : entity is "final_clock_turn_4_0_0,turn_4,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of final_clock_turn_4_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of final_clock_turn_4_0_0 : entity is "turn_4,Vivado 2017.2";
end final_clock_turn_4_0_0;

architecture STRUCTURE of final_clock_turn_4_0_0 is
  signal \^in\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  \^in\(3 downto 0) <= \In\(3 downto 0);
  x0 <= \^in\(0);
  x1 <= \^in\(1);
  x2 <= \^in\(2);
  x3 <= \^in\(3);
end STRUCTURE;
