-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sun Dec 17 13:09:52 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ final_clock_sec_generator_0_0_sim_netlist.vhdl
-- Design      : final_clock_sec_generator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sec_generator is
  port (
    sec_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \sec_0[2]\ : out STD_LOGIC;
    \sec_0[1]\ : out STD_LOGIC;
    \sec_0[0]\ : out STD_LOGIC;
    \sec_0[3]\ : out STD_LOGIC;
    rco : out STD_LOGIC;
    EN : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sec_generator;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sec_generator is
  signal \^sec_0[0]\ : STD_LOGIC;
  signal \^sec_0[1]\ : STD_LOGIC;
  signal \sec_0[1]_i_1_n_0\ : STD_LOGIC;
  signal \^sec_0[2]\ : STD_LOGIC;
  signal \sec_0[2]_i_1_n_0\ : STD_LOGIC;
  signal \^sec_0[3]\ : STD_LOGIC;
  signal \sec_0[3]_i_1_n_0\ : STD_LOGIC;
  signal \sec_0[3]_i_2_n_0\ : STD_LOGIC;
  signal sec_0_n_0 : STD_LOGIC;
  signal \^sec_1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \sec_1[1]_i_1_n_0\ : STD_LOGIC;
  signal \sec_1[2]_i_1_n_0\ : STD_LOGIC;
  signal \sec_1[3]_i_1_n_0\ : STD_LOGIC;
  signal \sec_1[3]_i_2_n_0\ : STD_LOGIC;
  signal \sec_1[3]_i_3_n_0\ : STD_LOGIC;
  signal \sec_1_inferred__0/i__n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of sec_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sec_0[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sec_0[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sec_0[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sec_1[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sec_1[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sec_1[3]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sec_1_inferred__0/i_\ : label is "soft_lutpair3";
begin
  \sec_0[0]\ <= \^sec_0[0]\;
  \sec_0[1]\ <= \^sec_0[1]\;
  \sec_0[2]\ <= \^sec_0[2]\;
  \sec_0[3]\ <= \^sec_0[3]\;
  sec_1(3 downto 0) <= \^sec_1\(3 downto 0);
\rco__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \^sec_1\(0),
      I1 => \^sec_1\(1),
      I2 => \^sec_0[0]\,
      I3 => EN,
      I4 => \^sec_1\(2),
      I5 => \^sec_0[3]\,
      O => rco
    );
sec_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sec_0[0]\,
      O => sec_0_n_0
    );
\sec_0[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^sec_0[0]\,
      I1 => \^sec_0[1]\,
      O => \sec_0[1]_i_1_n_0\
    );
\sec_0[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^sec_0[0]\,
      I1 => \^sec_0[1]\,
      I2 => \^sec_0[2]\,
      O => \sec_0[2]_i_1_n_0\
    );
\sec_0[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => EN,
      I1 => \^sec_0[2]\,
      I2 => \^sec_0[1]\,
      I3 => \^sec_0[0]\,
      I4 => \^sec_0[3]\,
      O => \sec_0[3]_i_1_n_0\
    );
\sec_0[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^sec_0[1]\,
      I1 => \^sec_0[0]\,
      I2 => \^sec_0[2]\,
      I3 => \^sec_0[3]\,
      O => \sec_0[3]_i_2_n_0\
    );
\sec_0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => EN,
      D => sec_0_n_0,
      Q => \^sec_0[0]\,
      R => \sec_0[3]_i_1_n_0\
    );
\sec_0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => EN,
      D => \sec_0[1]_i_1_n_0\,
      Q => \^sec_0[1]\,
      R => \sec_0[3]_i_1_n_0\
    );
\sec_0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => EN,
      D => \sec_0[2]_i_1_n_0\,
      Q => \^sec_0[2]\,
      R => \sec_0[3]_i_1_n_0\
    );
\sec_0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => EN,
      D => \sec_0[3]_i_2_n_0\,
      Q => \^sec_0[3]\,
      R => \sec_0[3]_i_1_n_0\
    );
\sec_1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^sec_1\(0),
      I1 => \^sec_1\(1),
      O => \sec_1[1]_i_1_n_0\
    );
\sec_1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^sec_1\(0),
      I1 => \^sec_1\(1),
      I2 => \^sec_1\(2),
      O => \sec_1[2]_i_1_n_0\
    );
\sec_1[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \sec_1[3]_i_2_n_0\,
      I1 => \^sec_1\(3),
      I2 => \^sec_1\(1),
      I3 => \^sec_1\(2),
      I4 => \^sec_1\(0),
      O => \sec_1[3]_i_1_n_0\
    );
\sec_1[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => EN,
      I1 => \^sec_0[3]\,
      I2 => \^sec_0[0]\,
      I3 => \^sec_0[2]\,
      I4 => \^sec_0[1]\,
      O => \sec_1[3]_i_2_n_0\
    );
\sec_1[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^sec_1\(1),
      I1 => \^sec_1\(0),
      I2 => \^sec_1\(2),
      I3 => \^sec_1\(3),
      O => \sec_1[3]_i_3_n_0\
    );
\sec_1_inferred__0/i_\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sec_1\(0),
      O => \sec_1_inferred__0/i__n_0\
    );
\sec_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \sec_1[3]_i_2_n_0\,
      D => \sec_1_inferred__0/i__n_0\,
      Q => \^sec_1\(0),
      R => \sec_1[3]_i_1_n_0\
    );
\sec_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \sec_1[3]_i_2_n_0\,
      D => \sec_1[1]_i_1_n_0\,
      Q => \^sec_1\(1),
      R => \sec_1[3]_i_1_n_0\
    );
\sec_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \sec_1[3]_i_2_n_0\,
      D => \sec_1[2]_i_1_n_0\,
      Q => \^sec_1\(2),
      R => \sec_1[3]_i_1_n_0\
    );
\sec_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \sec_1[3]_i_2_n_0\,
      D => \sec_1[3]_i_3_n_0\,
      Q => \^sec_1\(3),
      R => \sec_1[3]_i_1_n_0\
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
    sec_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sec_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rco : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "final_clock_sec_generator_0_0,sec_generator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "sec_generator,Vivado 2017.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sec_generator
     port map (
      CLK => CLK,
      EN => EN,
      rco => rco,
      \sec_0[0]\ => sec_0(0),
      \sec_0[1]\ => sec_0(1),
      \sec_0[2]\ => sec_0(2),
      \sec_0[3]\ => sec_0(3),
      sec_1(3 downto 0) => sec_1(3 downto 0)
    );
end STRUCTURE;
