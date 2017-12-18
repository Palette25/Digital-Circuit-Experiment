-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Tue Nov 21 13:33:26 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_bcd_change_0_2_sim_netlist.vhdl
-- Design      : design_1_bcd_change_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcd_change is
  port (
    a : out STD_LOGIC;
    f : out STD_LOGIC;
    C1 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    B1 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcd_change;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcd_change is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \a__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \f__0\ : label is "soft_lutpair0";
begin
\a__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => C1,
      I1 => A1,
      I2 => B1,
      O => a
    );
\f__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2E"
    )
        port map (
      I0 => C1,
      I1 => B1,
      I2 => A1,
      O => f
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    A1 : in STD_LOGIC;
    B1 : in STD_LOGIC;
    C1 : in STD_LOGIC;
    a : out STD_LOGIC;
    b : out STD_LOGIC;
    c : out STD_LOGIC;
    d : out STD_LOGIC;
    e : out STD_LOGIC;
    f : out STD_LOGIC;
    g : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_bcd_change_0_2,bcd_change,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bcd_change,Vivado 2017.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
b_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => C1,
      I1 => A1,
      I2 => B1,
      O => b
    );
c_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => A1,
      I1 => B1,
      I2 => C1,
      O => c
    );
d_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"86"
    )
        port map (
      I0 => C1,
      I1 => A1,
      I2 => B1,
      O => d
    );
e_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => C1,
      I1 => A1,
      I2 => B1,
      O => e
    );
g_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"83"
    )
        port map (
      I0 => C1,
      I1 => A1,
      I2 => B1,
      O => g
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcd_change
     port map (
      A1 => A1,
      B1 => B1,
      C1 => C1,
      a => a,
      f => f
    );
end STRUCTURE;
