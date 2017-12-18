-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sun Dec 10 20:12:53 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ calculator_12_decimal_counter_0_0_sim_netlist.vhdl
-- Design      : calculator_12_decimal_counter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_decimal_counter is
  port (
    Qc : out STD_LOGIC;
    Qb : out STD_LOGIC;
    Qa : out STD_LOGIC;
    Qd : out STD_LOGIC;
    CP1_n : in STD_LOGIC;
    CP2_n : in STD_LOGIC;
    R0_2 : in STD_LOGIC;
    R0_1 : in STD_LOGIC;
    R9_2 : in STD_LOGIC;
    R9_1 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_decimal_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_decimal_counter is
  signal \^qb\ : STD_LOGIC;
  signal \^qc\ : STD_LOGIC;
  signal a00_out : STD_LOGIC;
  signal a_C_i_1_n_0 : STD_LOGIC;
  signal a_reg_C_n_0 : STD_LOGIC;
  signal a_reg_LDC_i_2_n_0 : STD_LOGIC;
  signal a_reg_LDC_n_0 : STD_LOGIC;
  signal a_reg_P_n_0 : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[0]_i_2_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_C_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[2]_C_n_0\ : STD_LOGIC;
  signal \count_reg[2]_LDC_n_0\ : STD_LOGIC;
  signal \count_reg[2]_P_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Qa_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of Qd_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of a_C_i_1 : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of a_reg_LDC : label is "LDC";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[2]_C_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \count_reg[2]_LDC\ : label is "LDC";
begin
  Qb <= \^qb\;
  Qc <= \^qc\;
Qa_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_reg_P_n_0,
      I1 => a_reg_LDC_n_0,
      I2 => a_reg_C_n_0,
      O => Qa
    );
Qd_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_reg[2]_P_n_0\,
      I1 => \count_reg[2]_LDC_n_0\,
      I2 => \count_reg[2]_C_n_0\,
      O => Qd
    );
a_C_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => a_reg_C_n_0,
      I1 => a_reg_LDC_n_0,
      I2 => a_reg_P_n_0,
      O => a_C_i_1_n_0
    );
a_reg_C: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CP1_n,
      CE => '1',
      CLR => a_reg_LDC_i_2_n_0,
      D => a_C_i_1_n_0,
      Q => a_reg_C_n_0
    );
a_reg_LDC: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => a_reg_LDC_i_2_n_0,
      D => '1',
      G => a00_out,
      GE => '1',
      Q => a_reg_LDC_n_0
    );
a_reg_LDC_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => R9_1,
      I1 => R9_2,
      O => a00_out
    );
a_reg_LDC_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => R0_2,
      I1 => R0_1,
      I2 => R9_2,
      I3 => R9_1,
      O => a_reg_LDC_i_2_n_0
    );
a_reg_P: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CP1_n,
      CE => '1',
      D => a_C_i_1_n_0,
      PRE => a00_out,
      Q => a_reg_P_n_0
    );
\count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"001D"
    )
        port map (
      I0 => \count_reg[2]_C_n_0\,
      I1 => \count_reg[2]_LDC_n_0\,
      I2 => \count_reg[2]_P_n_0\,
      I3 => \^qb\,
      O => \count[0]_i_1_n_0\
    );
\count[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => R0_2,
      I1 => R0_1,
      I2 => R9_2,
      I3 => R9_1,
      O => \count[0]_i_2_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00066606"
    )
        port map (
      I0 => \^qc\,
      I1 => \^qb\,
      I2 => \count_reg[2]_C_n_0\,
      I3 => \count_reg[2]_LDC_n_0\,
      I4 => \count_reg[2]_P_n_0\,
      O => \count[1]_i_1_n_0\
    );
\count[2]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00088808"
    )
        port map (
      I0 => \^qc\,
      I1 => \^qb\,
      I2 => \count_reg[2]_C_n_0\,
      I3 => \count_reg[2]_LDC_n_0\,
      I4 => \count_reg[2]_P_n_0\,
      O => \count[2]_C_i_1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CP2_n,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count[0]_i_1_n_0\,
      Q => \^qb\
    );
\count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CP2_n,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count[1]_i_1_n_0\,
      Q => \^qc\
    );
\count_reg[2]_C\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CP2_n,
      CE => '1',
      CLR => a_reg_LDC_i_2_n_0,
      D => \count[2]_C_i_1_n_0\,
      Q => \count_reg[2]_C_n_0\
    );
\count_reg[2]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => a_reg_LDC_i_2_n_0,
      D => '1',
      G => a00_out,
      GE => '1',
      Q => \count_reg[2]_LDC_n_0\
    );
\count_reg[2]_P\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CP2_n,
      CE => '1',
      D => \count[2]_C_i_1_n_0\,
      PRE => a00_out,
      Q => \count_reg[2]_P_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    CP1_n : in STD_LOGIC;
    CP2_n : in STD_LOGIC;
    R0_1 : in STD_LOGIC;
    R0_2 : in STD_LOGIC;
    R9_1 : in STD_LOGIC;
    R9_2 : in STD_LOGIC;
    Qa : out STD_LOGIC;
    Qb : out STD_LOGIC;
    Qc : out STD_LOGIC;
    Qd : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "calculator_12_decimal_counter_0_0,decimal_counter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "decimal_counter,Vivado 2017.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_decimal_counter
     port map (
      CP1_n => CP1_n,
      CP2_n => CP2_n,
      Qa => Qa,
      Qb => Qb,
      Qc => Qc,
      Qd => Qd,
      R0_1 => R0_1,
      R0_2 => R0_2,
      R9_1 => R9_1,
      R9_2 => R9_2
    );
end STRUCTURE;
