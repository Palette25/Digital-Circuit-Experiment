-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sun Dec 17 13:13:45 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/VivadoProjects/CLOCK/CLOCK.srcs/sources_1/bd/final_clock/ip/final_clock_data_chooser_3_0/final_clock_data_chooser_3_0_sim_netlist.vhdl
-- Design      : final_clock_data_chooser_3_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_clock_data_chooser_3_0 is
  port (
    in0 : in STD_LOGIC;
    in1 : in STD_LOGIC;
    ar0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ar1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ar2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ar3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Y : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of final_clock_data_chooser_3_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of final_clock_data_chooser_3_0 : entity is "final_clock_data_chooser_3_0,data_chooser,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of final_clock_data_chooser_3_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of final_clock_data_chooser_3_0 : entity is "data_chooser,Vivado 2017.2";
end final_clock_data_chooser_3_0;

architecture STRUCTURE of final_clock_data_chooser_3_0 is
begin
\Y[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ar3(0),
      I1 => ar1(0),
      I2 => in0,
      I3 => ar2(0),
      I4 => in1,
      I5 => ar0(0),
      O => Y(0)
    );
\Y[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ar3(1),
      I1 => ar1(1),
      I2 => in0,
      I3 => ar2(1),
      I4 => in1,
      I5 => ar0(1),
      O => Y(1)
    );
\Y[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ar3(2),
      I1 => ar1(2),
      I2 => in0,
      I3 => ar2(2),
      I4 => in1,
      I5 => ar0(2),
      O => Y(2)
    );
\Y[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ar3(3),
      I1 => ar1(3),
      I2 => in0,
      I3 => ar2(3),
      I4 => in1,
      I5 => ar0(3),
      O => Y(3)
    );
end STRUCTURE;
