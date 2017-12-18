-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sun Dec 17 13:10:47 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/VivadoProjects/CLOCK/CLOCK.srcs/sources_1/bd/final_clock/ip/final_clock_mon_generator_0_0/final_clock_mon_generator_0_0_sim_netlist.vhdl
-- Design      : final_clock_mon_generator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_clock_mon_generator_0_0_mon_generator is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \mon_0[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rco : out STD_LOGIC;
    CLK : in STD_LOGIC;
    EN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of final_clock_mon_generator_0_0_mon_generator : entity is "mon_generator";
end final_clock_mon_generator_0_0_mon_generator;

architecture STRUCTURE of final_clock_mon_generator_0_0_mon_generator is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mon_0[0]_i_1_n_0\ : STD_LOGIC;
  signal \mon_0[1]_i_1_n_0\ : STD_LOGIC;
  signal \mon_0[1]_i_2_n_0\ : STD_LOGIC;
  signal \mon_0[2]_i_1_n_0\ : STD_LOGIC;
  signal \^mon_0[3]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mon_0[3]_i_1_n_0\ : STD_LOGIC;
  signal \mon_0[3]_i_2_n_0\ : STD_LOGIC;
  signal \mon_0[3]_i_3_n_0\ : STD_LOGIC;
  signal \mon_1[0]_i_1_n_0\ : STD_LOGIC;
  signal \mon_1[1]_i_1_n_0\ : STD_LOGIC;
  signal \mon_1[2]_i_1_n_0\ : STD_LOGIC;
  signal \mon_1[3]_i_1_n_0\ : STD_LOGIC;
  signal \mon_1[3]_i_2_n_0\ : STD_LOGIC;
  signal \mon_1[3]_i_3_n_0\ : STD_LOGIC;
  signal \mon_1[3]_i_4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mon_0[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \mon_0[1]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \mon_0[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \mon_0[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \mon_0[3]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \mon_1[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \mon_1[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \mon_1[3]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \mon_1[3]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of rco_INST_0 : label is "soft_lutpair1";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \mon_0[3]\(3 downto 0) <= \^mon_0[3]\(3 downto 0);
\mon_0[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^mon_0[3]\(0),
      O => \mon_0[0]_i_1_n_0\
    );
\mon_0[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AAFF0000AAF300"
    )
        port map (
      I0 => \mon_0[1]_i_2_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^mon_0[3]\(1),
      I4 => \^mon_0[3]\(0),
      I5 => \mon_0[3]_i_3_n_0\,
      O => \mon_0[1]_i_1_n_0\
    );
\mon_0[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^mon_0[3]\(2),
      I1 => \^mon_0[3]\(3),
      O => \mon_0[1]_i_2_n_0\
    );
\mon_0[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^mon_0[3]\(1),
      I1 => \^mon_0[3]\(0),
      I2 => \^mon_0[3]\(2),
      O => \mon_0[2]_i_1_n_0\
    );
\mon_0[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^mon_0[3]\(0),
      I1 => \^mon_0[3]\(1),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => EN,
      I5 => \mon_0[3]_i_3_n_0\,
      O => \mon_0[3]_i_1_n_0\
    );
\mon_0[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"68AA"
    )
        port map (
      I0 => \^mon_0[3]\(3),
      I1 => \^mon_0[3]\(2),
      I2 => \^mon_0[3]\(1),
      I3 => \^mon_0[3]\(0),
      O => \mon_0[3]_i_2_n_0\
    );
\mon_0[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^mon_0[3]\(3),
      I3 => \^mon_0[3]\(2),
      O => \mon_0[3]_i_3_n_0\
    );
\mon_0_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => EN,
      D => \mon_0[0]_i_1_n_0\,
      Q => \^mon_0[3]\(0),
      S => \mon_0[3]_i_1_n_0\
    );
\mon_0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => EN,
      D => \mon_0[1]_i_1_n_0\,
      Q => \^mon_0[3]\(1),
      R => \mon_0[3]_i_1_n_0\
    );
\mon_0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => EN,
      D => \mon_0[2]_i_1_n_0\,
      Q => \^mon_0[3]\(2),
      R => \mon_0[3]_i_1_n_0\
    );
\mon_0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => EN,
      D => \mon_0[3]_i_2_n_0\,
      Q => \^mon_0[3]\(3),
      R => \mon_0[3]_i_1_n_0\
    );
\mon_1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => \^mon_0[3]\(2),
      I1 => \^mon_0[3]\(3),
      I2 => \^mon_0[3]\(1),
      I3 => \^mon_0[3]\(0),
      I4 => EN,
      I5 => \^q\(0),
      O => \mon_1[0]_i_1_n_0\
    );
\mon_1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \mon_1[3]_i_4_n_0\,
      O => \mon_1[1]_i_1_n_0\
    );
\mon_1[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \mon_1[3]_i_4_n_0\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \mon_1[2]_i_1_n_0\
    );
\mon_1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF08030000"
    )
        port map (
      I0 => EN,
      I1 => \^q\(0),
      I2 => \^mon_0[3]\(0),
      I3 => \^mon_0[3]\(1),
      I4 => \mon_1[3]_i_3_n_0\,
      I5 => \mon_1[3]_i_4_n_0\,
      O => \mon_1[3]_i_1_n_0\
    );
\mon_1[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \mon_1[3]_i_4_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      O => \mon_1[3]_i_2_n_0\
    );
\mon_1[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^mon_0[3]\(2),
      I1 => \^mon_0[3]\(3),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(1),
      O => \mon_1[3]_i_3_n_0\
    );
\mon_1[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => EN,
      I1 => \^mon_0[3]\(0),
      I2 => \^mon_0[3]\(1),
      I3 => \^mon_0[3]\(3),
      I4 => \^mon_0[3]\(2),
      O => \mon_1[3]_i_4_n_0\
    );
\mon_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \mon_1[3]_i_1_n_0\,
      D => \mon_1[0]_i_1_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\mon_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \mon_1[3]_i_1_n_0\,
      D => \mon_1[1]_i_1_n_0\,
      Q => \^q\(1),
      R => '0'
    );
\mon_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \mon_1[3]_i_1_n_0\,
      D => \mon_1[2]_i_1_n_0\,
      Q => \^q\(2),
      R => '0'
    );
\mon_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \mon_1[3]_i_1_n_0\,
      D => \mon_1[3]_i_2_n_0\,
      Q => \^q\(3),
      R => '0'
    );
rco_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => EN,
      I1 => \^mon_0[3]\(1),
      I2 => \^mon_0[3]\(0),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => rco
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_clock_mon_generator_0_0 is
  port (
    CLK : in STD_LOGIC;
    EN : in STD_LOGIC;
    mon_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mon_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rco : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of final_clock_mon_generator_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of final_clock_mon_generator_0_0 : entity is "final_clock_mon_generator_0_0,mon_generator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of final_clock_mon_generator_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of final_clock_mon_generator_0_0 : entity is "mon_generator,Vivado 2017.2";
end final_clock_mon_generator_0_0;

architecture STRUCTURE of final_clock_mon_generator_0_0 is
begin
inst: entity work.final_clock_mon_generator_0_0_mon_generator
     port map (
      CLK => CLK,
      EN => EN,
      Q(3 downto 0) => mon_1(3 downto 0),
      \mon_0[3]\(3 downto 0) => mon_0(3 downto 0),
      rco => rco
    );
end STRUCTURE;
