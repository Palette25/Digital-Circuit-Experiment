-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sun Dec 10 20:10:23 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top calculator_12_mux_8_to_1_1_1 -prefix
--               calculator_12_mux_8_to_1_1_1_ calculator_12_mux_8_to_1_1_0_sim_netlist.vhdl
-- Design      : calculator_12_mux_8_to_1_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calculator_12_mux_8_to_1_1_1 is
  port (
    S_n : in STD_LOGIC;
    A2 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    A0 : in STD_LOGIC;
    D7 : in STD_LOGIC;
    D6 : in STD_LOGIC;
    D5 : in STD_LOGIC;
    D4 : in STD_LOGIC;
    D3 : in STD_LOGIC;
    D2 : in STD_LOGIC;
    D1 : in STD_LOGIC;
    D0 : in STD_LOGIC;
    Q : out STD_LOGIC;
    Q_n : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of calculator_12_mux_8_to_1_1_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of calculator_12_mux_8_to_1_1_1 : entity is "calculator_12_mux_8_to_1_1_0,mux_8_to_1,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of calculator_12_mux_8_to_1_1_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of calculator_12_mux_8_to_1_1_1 : entity is "mux_8_to_1,Vivado 2017.2";
end calculator_12_mux_8_to_1_1_1;

architecture STRUCTURE of calculator_12_mux_8_to_1_1_1 is
  signal Q_INST_0_i_1_n_0 : STD_LOGIC;
  signal Q_INST_0_i_2_n_0 : STD_LOGIC;
begin
Q_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => Q_INST_0_i_1_n_0,
      I1 => A2,
      I2 => Q_INST_0_i_2_n_0,
      I3 => S_n,
      O => Q
    );
Q_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D3,
      I1 => D2,
      I2 => A1,
      I3 => D1,
      I4 => A0,
      I5 => D0,
      O => Q_INST_0_i_1_n_0
    );
Q_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D7,
      I1 => D6,
      I2 => A1,
      I3 => D5,
      I4 => A0,
      I5 => D4,
      O => Q_INST_0_i_2_n_0
    );
Q_n_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BABF"
    )
        port map (
      I0 => S_n,
      I1 => Q_INST_0_i_2_n_0,
      I2 => A2,
      I3 => Q_INST_0_i_1_n_0,
      O => Q_n
    );
end STRUCTURE;
