-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sun Dec 17 13:14:30 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/VivadoProjects/CLOCK/CLOCK.srcs/sources_1/bd/final_clock/ip/final_clock_five_or_0_0/final_clock_five_or_0_0_sim_netlist.vhdl
-- Design      : final_clock_five_or_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_clock_five_or_0_0 is
  port (
    i0_0 : in STD_LOGIC;
    i0_1 : in STD_LOGIC;
    i1_0 : in STD_LOGIC;
    i1_1 : in STD_LOGIC;
    i2_0 : in STD_LOGIC;
    i2_1 : in STD_LOGIC;
    i3_0 : in STD_LOGIC;
    i3_1 : in STD_LOGIC;
    i4_0 : in STD_LOGIC;
    i4_1 : in STD_LOGIC;
    Y0 : out STD_LOGIC;
    Y1 : out STD_LOGIC;
    Y2 : out STD_LOGIC;
    Y3 : out STD_LOGIC;
    Y4 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of final_clock_five_or_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of final_clock_five_or_0_0 : entity is "final_clock_five_or_0_0,five_or,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of final_clock_five_or_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of final_clock_five_or_0_0 : entity is "five_or,Vivado 2017.2";
end final_clock_five_or_0_0;

architecture STRUCTURE of final_clock_five_or_0_0 is
begin
Y0_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i0_0,
      I1 => i0_1,
      O => Y0
    );
Y1_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i1_0,
      I1 => i1_1,
      O => Y1
    );
Y2_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i2_0,
      I1 => i2_1,
      O => Y2
    );
Y3_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i3_0,
      I1 => i3_1,
      O => Y3
    );
Y4_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i4_0,
      I1 => i4_1,
      O => Y4
    );
end STRUCTURE;
