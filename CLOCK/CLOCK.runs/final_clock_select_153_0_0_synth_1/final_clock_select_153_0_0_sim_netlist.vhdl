-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sun Dec 17 13:13:00 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ final_clock_select_153_0_0_sim_netlist.vhdl
-- Design      : final_clock_select_153_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    i0_0 : in STD_LOGIC;
    i0_1 : in STD_LOGIC;
    i0_2 : in STD_LOGIC;
    i0_3 : in STD_LOGIC;
    i1_0 : in STD_LOGIC;
    i1_1 : in STD_LOGIC;
    i1_2 : in STD_LOGIC;
    i1_3 : in STD_LOGIC;
    i2_0 : in STD_LOGIC;
    i2_1 : in STD_LOGIC;
    i2_2 : in STD_LOGIC;
    i2_3 : in STD_LOGIC;
    i3_0 : in STD_LOGIC;
    i3_1 : in STD_LOGIC;
    i3_2 : in STD_LOGIC;
    i3_3 : in STD_LOGIC;
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Y : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "final_clock_select_153_0_0,select_153,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "select_153,Vivado 2017.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
\Y[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i0_3,
      I1 => i0_2,
      I2 => A,
      I3 => i0_1,
      I4 => B,
      I5 => i0_0,
      O => Y(0)
    );
\Y[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i1_3,
      I1 => i1_2,
      I2 => A,
      I3 => i1_1,
      I4 => B,
      I5 => i1_0,
      O => Y(1)
    );
\Y[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i2_3,
      I1 => i2_2,
      I2 => A,
      I3 => i2_1,
      I4 => B,
      I5 => i2_0,
      O => Y(2)
    );
\Y[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i3_3,
      I1 => i3_2,
      I2 => A,
      I3 => i3_1,
      I4 => B,
      I5 => i3_0,
      O => Y(3)
    );
end STRUCTURE;
