-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sun Dec 17 13:10:46 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/VivadoProjects/CLOCK/CLOCK.srcs/sources_1/bd/final_clock/ip/final_clock_HIGH_0_0/final_clock_HIGH_0_0_sim_netlist.vhdl
-- Design      : final_clock_HIGH_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_clock_HIGH_0_0 is
  port (
    o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of final_clock_HIGH_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of final_clock_HIGH_0_0 : entity is "final_clock_HIGH_0_0,HIGH,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of final_clock_HIGH_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of final_clock_HIGH_0_0 : entity is "HIGH,Vivado 2017.2";
end final_clock_HIGH_0_0;

architecture STRUCTURE of final_clock_HIGH_0_0 is
  signal \<const1>\ : STD_LOGIC;
begin
  o <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
