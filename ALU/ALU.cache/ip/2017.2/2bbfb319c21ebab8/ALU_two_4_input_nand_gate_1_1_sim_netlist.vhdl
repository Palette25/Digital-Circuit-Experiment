-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Thu Nov  2 14:46:49 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ALU_two_4_input_nand_gate_1_1_sim_netlist.vhdl
-- Design      : ALU_two_4_input_nand_gate_1_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_4_input_nand_gate is
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_4_input_nand_gate;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_4_input_nand_gate is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ALU_two_4_input_nand_gate_1_1,two_4_input_nand_gate,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "two_4_input_nand_gate,Vivado 2017.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_4_input_nand_gate
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
