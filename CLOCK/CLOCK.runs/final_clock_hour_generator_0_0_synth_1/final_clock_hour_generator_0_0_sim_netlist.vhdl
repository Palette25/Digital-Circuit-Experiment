-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sun Dec 17 13:09:52 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ final_clock_hour_generator_0_0_sim_netlist.vhdl
-- Design      : final_clock_hour_generator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hour_generator is
  port (
    hour_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rco : out STD_LOGIC;
    CLK : in STD_LOGIC;
    EN : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hour_generator;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hour_generator is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \hour_0[0]_i_1_n_0\ : STD_LOGIC;
  signal \hour_0[1]_i_1_n_0\ : STD_LOGIC;
  signal \hour_0[2]_i_1_n_0\ : STD_LOGIC;
  signal \hour_0[2]_i_2_n_0\ : STD_LOGIC;
  signal \hour_0[3]_i_1_n_0\ : STD_LOGIC;
  signal \^hour_1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \hour_1[0]_i_1_n_0\ : STD_LOGIC;
  signal \hour_1[1]_i_1_n_0\ : STD_LOGIC;
  signal \hour_1[2]_i_1_n_0\ : STD_LOGIC;
  signal \hour_1[3]_i_1_n_0\ : STD_LOGIC;
  signal \hour_1[3]_i_2_n_0\ : STD_LOGIC;
  signal \hour_1[3]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \hour_0[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \hour_0[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \hour_0[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \hour_1[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \hour_1[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \hour_1[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \hour_1[3]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of rco_INST_0 : label is "soft_lutpair0";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  hour_1(3 downto 0) <= \^hour_1\(3 downto 0);
\hour_0[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \hour_0[0]_i_1_n_0\
    );
\hour_0[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FB0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \hour_0[1]_i_1_n_0\
    );
\hour_0[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A2A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \hour_0[2]_i_2_n_0\,
      O => \hour_0[2]_i_1_n_0\
    );
\hour_0[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \^hour_1\(2),
      I1 => \^hour_1\(0),
      I2 => \^hour_1\(1),
      I3 => \^q\(3),
      I4 => \^hour_1\(3),
      O => \hour_0[2]_i_2_n_0\
    );
\hour_0[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"68CC"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(0),
      O => \hour_0[3]_i_1_n_0\
    );
\hour_0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => EN,
      D => \hour_0[0]_i_1_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\hour_0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => EN,
      D => \hour_0[1]_i_1_n_0\,
      Q => \^q\(1),
      R => '0'
    );
\hour_0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => EN,
      D => \hour_0[2]_i_1_n_0\,
      Q => \^q\(2),
      R => '0'
    );
\hour_0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => EN,
      D => \hour_0[3]_i_1_n_0\,
      Q => \^q\(3),
      R => '0'
    );
\hour_1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^hour_1\(0),
      O => \hour_1[0]_i_1_n_0\
    );
\hour_1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040004000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^hour_1\(0),
      I5 => \^hour_1\(1),
      O => \hour_1[1]_i_1_n_0\
    );
\hour_1[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \hour_1[3]_i_3_n_0\,
      I1 => \^hour_1\(1),
      I2 => \^hour_1\(0),
      I3 => \^hour_1\(2),
      O => \hour_1[2]_i_1_n_0\
    );
\hour_1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00003A0000000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \hour_0[2]_i_2_n_0\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => EN,
      O => \hour_1[3]_i_1_n_0\
    );
\hour_1[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \^hour_1\(1),
      I1 => \^hour_1\(0),
      I2 => \^hour_1\(2),
      I3 => \hour_1[3]_i_3_n_0\,
      I4 => \^hour_1\(3),
      O => \hour_1[3]_i_2_n_0\
    );
\hour_1[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(0),
      O => \hour_1[3]_i_3_n_0\
    );
\hour_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \hour_1[3]_i_1_n_0\,
      D => \hour_1[0]_i_1_n_0\,
      Q => \^hour_1\(0),
      R => '0'
    );
\hour_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \hour_1[3]_i_1_n_0\,
      D => \hour_1[1]_i_1_n_0\,
      Q => \^hour_1\(1),
      R => '0'
    );
\hour_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \hour_1[3]_i_1_n_0\,
      D => \hour_1[2]_i_1_n_0\,
      Q => \^hour_1\(2),
      R => '0'
    );
\hour_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \hour_1[3]_i_1_n_0\,
      D => \hour_1[3]_i_2_n_0\,
      Q => \^hour_1\(3),
      R => '0'
    );
rco_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \^hour_1\(0),
      I1 => \^hour_1\(1),
      I2 => EN,
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => rco
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    CLK : in STD_LOGIC;
    EN : in STD_LOGIC;
    hour_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hour_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rco : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "final_clock_hour_generator_0_0,hour_generator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "hour_generator,Vivado 2017.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hour_generator
     port map (
      CLK => CLK,
      EN => EN,
      Q(3 downto 0) => hour_0(3 downto 0),
      hour_1(3 downto 0) => hour_1(3 downto 0),
      rco => rco
    );
end STRUCTURE;
