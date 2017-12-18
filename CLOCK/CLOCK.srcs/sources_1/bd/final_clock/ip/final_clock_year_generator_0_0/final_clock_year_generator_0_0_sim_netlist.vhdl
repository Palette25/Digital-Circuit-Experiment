-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sun Dec 17 13:10:47 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/VivadoProjects/CLOCK/CLOCK.srcs/sources_1/bd/final_clock/ip/final_clock_year_generator_0_0/final_clock_year_generator_0_0_sim_netlist.vhdl
-- Design      : final_clock_year_generator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_clock_year_generator_0_0_year_generator is
  port (
    \year_0[3]\ : out STD_LOGIC;
    \year_0[2]\ : out STD_LOGIC;
    \year_0[1]\ : out STD_LOGIC;
    \year_0[0]\ : out STD_LOGIC;
    \year_1[3]\ : out STD_LOGIC;
    \year_1[2]\ : out STD_LOGIC;
    \year_1[1]\ : out STD_LOGIC;
    \year_1[0]\ : out STD_LOGIC;
    year_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    year_3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    EN : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of final_clock_year_generator_0_0_year_generator : entity is "year_generator";
end final_clock_year_generator_0_0_year_generator;

architecture STRUCTURE of final_clock_year_generator_0_0_year_generator is
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^year_0[0]\ : STD_LOGIC;
  signal \year_0[0]_i_1_n_0\ : STD_LOGIC;
  signal \^year_0[1]\ : STD_LOGIC;
  signal \year_0[1]_i_1_n_0\ : STD_LOGIC;
  signal \^year_0[2]\ : STD_LOGIC;
  signal \year_0[2]_i_1_n_0\ : STD_LOGIC;
  signal \^year_0[3]\ : STD_LOGIC;
  signal \year_0[3]_i_1_n_0\ : STD_LOGIC;
  signal \year_0[3]_i_2_n_0\ : STD_LOGIC;
  signal \^year_1[0]\ : STD_LOGIC;
  signal \year_1[0]_i_1_n_0\ : STD_LOGIC;
  signal \^year_1[1]\ : STD_LOGIC;
  signal \year_1[1]_i_1_n_0\ : STD_LOGIC;
  signal \^year_1[2]\ : STD_LOGIC;
  signal \year_1[2]_i_1_n_0\ : STD_LOGIC;
  signal \^year_1[3]\ : STD_LOGIC;
  signal \year_1[3]_i_1_n_0\ : STD_LOGIC;
  signal \year_1[3]_i_2_n_0\ : STD_LOGIC;
  signal \year_1[3]_i_3_n_0\ : STD_LOGIC;
  signal \^year_2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \year_2[0]_i_1_n_0\ : STD_LOGIC;
  signal \year_2[1]_i_1_n_0\ : STD_LOGIC;
  signal \year_2[2]_i_1_n_0\ : STD_LOGIC;
  signal \year_2[3]_i_1_n_0\ : STD_LOGIC;
  signal \year_2[3]_i_2_n_0\ : STD_LOGIC;
  signal \year_2[3]_i_3_n_0\ : STD_LOGIC;
  signal \year_2[3]_i_4_n_0\ : STD_LOGIC;
  signal \year_2[3]_i_5_n_0\ : STD_LOGIC;
  signal \year_2[3]_i_6_n_0\ : STD_LOGIC;
  signal \^year_3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \year_3[3]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \year_0[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \year_0[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \year_0[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \year_1[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \year_1[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \year_1[3]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \year_2[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \year_2[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \year_2[3]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \year_2[3]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \year_2[3]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \year_2[3]_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \year_3[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \year_3[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \year_3[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \year_3[3]_i_2\ : label is "soft_lutpair2";
begin
  \year_0[0]\ <= \^year_0[0]\;
  \year_0[1]\ <= \^year_0[1]\;
  \year_0[2]\ <= \^year_0[2]\;
  \year_0[3]\ <= \^year_0[3]\;
  \year_1[0]\ <= \^year_1[0]\;
  \year_1[1]\ <= \^year_1[1]\;
  \year_1[2]\ <= \^year_1[2]\;
  \year_1[3]\ <= \^year_1[3]\;
  year_2(3 downto 0) <= \^year_2\(3 downto 0);
  year_3(3 downto 0) <= \^year_3\(3 downto 0);
\year_0[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^year_0[0]\,
      O => \year_0[0]_i_1_n_0\
    );
\year_0[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^year_0[0]\,
      I1 => \^year_0[1]\,
      O => \year_0[1]_i_1_n_0\
    );
\year_0[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^year_0[0]\,
      I1 => \^year_0[1]\,
      I2 => \^year_0[2]\,
      O => \year_0[2]_i_1_n_0\
    );
\year_0[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \^year_0[0]\,
      I1 => \^year_0[3]\,
      I2 => \^year_0[1]\,
      I3 => \^year_0[2]\,
      I4 => EN,
      O => \year_0[3]_i_1_n_0\
    );
\year_0[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^year_0[1]\,
      I1 => \^year_0[0]\,
      I2 => \^year_0[2]\,
      I3 => \^year_0[3]\,
      O => \year_0[3]_i_2_n_0\
    );
\year_0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => EN,
      D => \year_0[0]_i_1_n_0\,
      Q => \^year_0[0]\,
      R => \year_0[3]_i_1_n_0\
    );
\year_0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => EN,
      D => \year_0[1]_i_1_n_0\,
      Q => \^year_0[1]\,
      R => \year_0[3]_i_1_n_0\
    );
\year_0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => EN,
      D => \year_0[2]_i_1_n_0\,
      Q => \^year_0[2]\,
      R => \year_0[3]_i_1_n_0\
    );
\year_0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => EN,
      D => \year_0[3]_i_2_n_0\,
      Q => \^year_0[3]\,
      R => \year_0[3]_i_1_n_0\
    );
\year_1[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^year_1[0]\,
      O => \year_1[0]_i_1_n_0\
    );
\year_1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^year_1[0]\,
      I1 => \^year_1[1]\,
      O => \year_1[1]_i_1_n_0\
    );
\year_1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^year_1[0]\,
      I1 => \^year_1[1]\,
      I2 => \^year_1[2]\,
      O => \year_1[2]_i_1_n_0\
    );
\year_1[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \^year_1[0]\,
      I1 => \^year_1[3]\,
      I2 => \^year_1[1]\,
      I3 => \^year_1[2]\,
      I4 => \year_1[3]_i_2_n_0\,
      O => \year_1[3]_i_1_n_0\
    );
\year_1[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => EN,
      I1 => \^year_0[0]\,
      I2 => \^year_0[3]\,
      I3 => \^year_0[1]\,
      I4 => \^year_0[2]\,
      O => \year_1[3]_i_2_n_0\
    );
\year_1[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^year_1[1]\,
      I1 => \^year_1[0]\,
      I2 => \^year_1[2]\,
      I3 => \^year_1[3]\,
      O => \year_1[3]_i_3_n_0\
    );
\year_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \year_1[3]_i_2_n_0\,
      D => \year_1[0]_i_1_n_0\,
      Q => \^year_1[0]\,
      R => \year_1[3]_i_1_n_0\
    );
\year_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \year_1[3]_i_2_n_0\,
      D => \year_1[1]_i_1_n_0\,
      Q => \^year_1[1]\,
      R => \year_1[3]_i_1_n_0\
    );
\year_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \year_1[3]_i_2_n_0\,
      D => \year_1[2]_i_1_n_0\,
      Q => \^year_1[2]\,
      R => \year_1[3]_i_1_n_0\
    );
\year_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \year_1[3]_i_2_n_0\,
      D => \year_1[3]_i_3_n_0\,
      Q => \^year_1[3]\,
      R => \year_1[3]_i_1_n_0\
    );
\year_2[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^year_2\(0),
      O => \year_2[0]_i_1_n_0\
    );
\year_2[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^year_2\(0),
      I1 => \^year_2\(1),
      O => \year_2[1]_i_1_n_0\
    );
\year_2[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^year_2\(0),
      I1 => \^year_2\(1),
      I2 => \^year_2\(2),
      O => \year_2[2]_i_1_n_0\
    );
\year_2[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \year_2[3]_i_4_n_0\,
      I1 => \year_2[3]_i_5_n_0\,
      I2 => \year_2[3]_i_6_n_0\,
      I3 => EN,
      O => \year_2[3]_i_1_n_0\
    );
\year_2[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => EN,
      I1 => \^year_1[2]\,
      I2 => \^year_1[1]\,
      I3 => \^year_1[3]\,
      I4 => \^year_1[0]\,
      I5 => \year_2[3]_i_5_n_0\,
      O => \year_2[3]_i_2_n_0\
    );
\year_2[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^year_2\(1),
      I1 => \^year_2\(0),
      I2 => \^year_2\(2),
      I3 => \^year_2\(3),
      O => \year_2[3]_i_3_n_0\
    );
\year_2[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^year_2\(2),
      I1 => \^year_2\(1),
      I2 => \^year_2\(3),
      I3 => \^year_2\(0),
      O => \year_2[3]_i_4_n_0\
    );
\year_2[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^year_0[2]\,
      I1 => \^year_0[1]\,
      I2 => \^year_0[3]\,
      I3 => \^year_0[0]\,
      O => \year_2[3]_i_5_n_0\
    );
\year_2[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^year_1[2]\,
      I1 => \^year_1[1]\,
      I2 => \^year_1[3]\,
      I3 => \^year_1[0]\,
      O => \year_2[3]_i_6_n_0\
    );
\year_2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \year_2[3]_i_2_n_0\,
      D => \year_2[0]_i_1_n_0\,
      Q => \^year_2\(0),
      R => \year_2[3]_i_1_n_0\
    );
\year_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \year_2[3]_i_2_n_0\,
      D => \year_2[1]_i_1_n_0\,
      Q => \^year_2\(1),
      R => \year_2[3]_i_1_n_0\
    );
\year_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \year_2[3]_i_2_n_0\,
      D => \year_2[2]_i_1_n_0\,
      Q => \^year_2\(2),
      R => \year_2[3]_i_1_n_0\
    );
\year_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \year_2[3]_i_2_n_0\,
      D => \year_2[3]_i_3_n_0\,
      Q => \^year_2\(3),
      R => \year_2[3]_i_1_n_0\
    );
\year_3[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^year_3\(0),
      O => p_0_in(0)
    );
\year_3[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^year_3\(0),
      I1 => \^year_3\(1),
      O => p_0_in(1)
    );
\year_3[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^year_3\(0),
      I1 => \^year_3\(1),
      I2 => \^year_3\(2),
      O => p_0_in(2)
    );
\year_3[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => EN,
      I1 => \year_2[3]_i_6_n_0\,
      I2 => \year_2[3]_i_4_n_0\,
      I3 => \year_2[3]_i_5_n_0\,
      O => \year_3[3]_i_1_n_0\
    );
\year_3[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^year_3\(1),
      I1 => \^year_3\(0),
      I2 => \^year_3\(2),
      I3 => \^year_3\(3),
      O => p_0_in(3)
    );
\year_3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \year_3[3]_i_1_n_0\,
      D => p_0_in(0),
      Q => \^year_3\(0),
      R => '0'
    );
\year_3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \year_3[3]_i_1_n_0\,
      D => p_0_in(1),
      Q => \^year_3\(1),
      R => '0'
    );
\year_3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \year_3[3]_i_1_n_0\,
      D => p_0_in(2),
      Q => \^year_3\(2),
      R => '0'
    );
\year_3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \year_3[3]_i_1_n_0\,
      D => p_0_in(3),
      Q => \^year_3\(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_clock_year_generator_0_0 is
  port (
    CLK : in STD_LOGIC;
    EN : in STD_LOGIC;
    year_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    year_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    year_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    year_3 : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of final_clock_year_generator_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of final_clock_year_generator_0_0 : entity is "final_clock_year_generator_0_0,year_generator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of final_clock_year_generator_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of final_clock_year_generator_0_0 : entity is "year_generator,Vivado 2017.2";
end final_clock_year_generator_0_0;

architecture STRUCTURE of final_clock_year_generator_0_0 is
begin
inst: entity work.final_clock_year_generator_0_0_year_generator
     port map (
      CLK => CLK,
      EN => EN,
      \year_0[0]\ => year_0(0),
      \year_0[1]\ => year_0(1),
      \year_0[2]\ => year_0(2),
      \year_0[3]\ => year_0(3),
      \year_1[0]\ => year_1(0),
      \year_1[1]\ => year_1(1),
      \year_1[2]\ => year_1(2),
      \year_1[3]\ => year_1(3),
      year_2(3 downto 0) => year_2(3 downto 0),
      year_3(3 downto 0) => year_3(3 downto 0)
    );
end STRUCTURE;
