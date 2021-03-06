-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sun Dec 17 13:13:00 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/VivadoProjects/CLOCK/CLOCK.srcs/sources_1/bd/final_clock/ip/final_clock_steper_3_0_0/final_clock_steper_3_0_0_sim_netlist.vhdl
-- Design      : final_clock_steper_3_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_clock_steper_3_0_0_steper_3 is
  port (
    o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of final_clock_steper_3_0_0_steper_3 : entity is "steper_3";
end final_clock_steper_3_0_0_steper_3;

architecture STRUCTURE of final_clock_steper_3_0_0_steper_3 is
  signal \^o\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \o[0]_i_1_n_0\ : STD_LOGIC;
  signal \o[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o[1]_i_1\ : label is "soft_lutpair0";
begin
  o(1 downto 0) <= \^o\(1 downto 0);
\o[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^o\(1),
      I1 => \^o\(0),
      O => \o[0]_i_1_n_0\
    );
\o[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^o\(1),
      I1 => \^o\(0),
      O => \o[1]_i_1_n_0\
    );
\o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \o[0]_i_1_n_0\,
      Q => \^o\(0),
      R => '0'
    );
\o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \o[1]_i_1_n_0\,
      Q => \^o\(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_clock_steper_3_0_0 is
  port (
    clk : in STD_LOGIC;
    o : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of final_clock_steper_3_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of final_clock_steper_3_0_0 : entity is "final_clock_steper_3_0_0,steper_3,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of final_clock_steper_3_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of final_clock_steper_3_0_0 : entity is "steper_3,Vivado 2017.2";
end final_clock_steper_3_0_0;

architecture STRUCTURE of final_clock_steper_3_0_0 is
begin
inst: entity work.final_clock_steper_3_0_0_steper_3
     port map (
      clk => clk,
      o(1 downto 0) => o(1 downto 0)
    );
end STRUCTURE;
