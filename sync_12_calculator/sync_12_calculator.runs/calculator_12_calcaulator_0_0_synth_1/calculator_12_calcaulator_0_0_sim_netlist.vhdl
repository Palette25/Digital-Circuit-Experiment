-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sun Dec 10 20:10:23 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ calculator_12_calcaulator_0_0_sim_netlist.vhdl
-- Design      : calculator_12_calcaulator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_calcaulator is
  port (
    o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    sign : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_calcaulator;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_calcaulator is
  signal \^o\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \o[0]_i_1_n_0\ : STD_LOGIC;
  signal \o[1]_i_1_n_0\ : STD_LOGIC;
  signal \o[2]_i_1_n_0\ : STD_LOGIC;
  signal \o[3]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o[3]_i_1\ : label is "soft_lutpair0";
begin
  o(3 downto 0) <= \^o\(3 downto 0);
\o[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^o\(0),
      O => \o[0]_i_1_n_0\
    );
\o[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sign,
      I1 => \^o\(1),
      I2 => \^o\(0),
      O => \o[1]_i_1_n_0\
    );
\o[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BC42BD62"
    )
        port map (
      I0 => sign,
      I1 => \^o\(1),
      I2 => \^o\(0),
      I3 => \^o\(2),
      I4 => \^o\(3),
      O => \o[2]_i_1_n_0\
    );
\o[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFD4022"
    )
        port map (
      I0 => sign,
      I1 => \^o\(1),
      I2 => \^o\(0),
      I3 => \^o\(2),
      I4 => \^o\(3),
      O => \o[3]_i_1_n_0\
    );
\o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \o[0]_i_1_n_0\,
      Q => \^o\(0),
      R => '0'
    );
\o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \o[1]_i_1_n_0\,
      Q => \^o\(1),
      R => '0'
    );
\o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \o[2]_i_1_n_0\,
      Q => \^o\(2),
      R => '0'
    );
\o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \o[3]_i_1_n_0\,
      Q => \^o\(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    sign : in STD_LOGIC;
    CLK : in STD_LOGIC;
    o : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "calculator_12_calcaulator_0_0,calcaulator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "calcaulator,Vivado 2017.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_calcaulator
     port map (
      CLK => CLK,
      o(3 downto 0) => o(3 downto 0),
      sign => sign
    );
end STRUCTURE;
