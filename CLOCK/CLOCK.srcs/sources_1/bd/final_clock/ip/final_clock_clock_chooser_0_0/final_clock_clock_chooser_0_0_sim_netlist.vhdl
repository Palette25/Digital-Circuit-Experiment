-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sun Dec 17 13:15:19 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/VivadoProjects/CLOCK/CLOCK.srcs/sources_1/bd/final_clock/ip/final_clock_clock_chooser_0_0/final_clock_clock_chooser_0_0_sim_netlist.vhdl
-- Design      : final_clock_clock_chooser_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_clock_clock_chooser_0_0_clock_chooser is
  port (
    sec_clk : out STD_LOGIC;
    min_clk : out STD_LOGIC;
    hour_clk : out STD_LOGIC;
    day_clk : out STD_LOGIC;
    mon_clk : out STD_LOGIC;
    year_clk : out STD_LOGIC;
    CLK : in STD_LOGIC;
    mo_0 : in STD_LOGIC;
    mo_1 : in STD_LOGIC;
    click : in STD_LOGIC;
    Y0 : in STD_LOGIC;
    Y1 : in STD_LOGIC;
    Y2 : in STD_LOGIC;
    Y3 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of final_clock_clock_chooser_0_0_clock_chooser : entity is "clock_chooser";
end final_clock_clock_chooser_0_0_clock_chooser;

architecture STRUCTURE of final_clock_clock_chooser_0_0_clock_chooser is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \day_clk__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \mon_clk__0\ : label is "soft_lutpair0";
begin
\day_clk__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020E02"
    )
        port map (
      I0 => CLK,
      I1 => mo_0,
      I2 => mo_1,
      I3 => click,
      I4 => Y2,
      O => day_clk
    );
\hour_clk__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020E02"
    )
        port map (
      I0 => CLK,
      I1 => mo_1,
      I2 => mo_0,
      I3 => click,
      I4 => Y1,
      O => hour_clk
    );
\min_clk__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003000AA0030F0AA"
    )
        port map (
      I0 => CLK,
      I1 => Y1,
      I2 => click,
      I3 => mo_1,
      I4 => mo_0,
      I5 => Y0,
      O => min_clk
    );
\mon_clk__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020E02"
    )
        port map (
      I0 => CLK,
      I1 => mo_1,
      I2 => mo_0,
      I3 => click,
      I4 => Y2,
      O => mon_clk
    );
\sec_clk__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020E02"
    )
        port map (
      I0 => CLK,
      I1 => mo_0,
      I2 => mo_1,
      I3 => click,
      I4 => Y0,
      O => sec_clk
    );
\year_clk__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02023E02"
    )
        port map (
      I0 => CLK,
      I1 => mo_1,
      I2 => mo_0,
      I3 => click,
      I4 => Y3,
      O => year_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_clock_clock_chooser_0_0 is
  port (
    click : in STD_LOGIC;
    mo_0 : in STD_LOGIC;
    mo_1 : in STD_LOGIC;
    CLK : in STD_LOGIC;
    Y0 : in STD_LOGIC;
    Y1 : in STD_LOGIC;
    Y2 : in STD_LOGIC;
    Y3 : in STD_LOGIC;
    sec_clk : out STD_LOGIC;
    min_clk : out STD_LOGIC;
    hour_clk : out STD_LOGIC;
    day_clk : out STD_LOGIC;
    mon_clk : out STD_LOGIC;
    year_clk : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of final_clock_clock_chooser_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of final_clock_clock_chooser_0_0 : entity is "final_clock_clock_chooser_0_0,clock_chooser,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of final_clock_clock_chooser_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of final_clock_clock_chooser_0_0 : entity is "clock_chooser,Vivado 2017.2";
end final_clock_clock_chooser_0_0;

architecture STRUCTURE of final_clock_clock_chooser_0_0 is
begin
inst: entity work.final_clock_clock_chooser_0_0_clock_chooser
     port map (
      CLK => CLK,
      Y0 => Y0,
      Y1 => Y1,
      Y2 => Y2,
      Y3 => Y3,
      click => click,
      day_clk => day_clk,
      hour_clk => hour_clk,
      min_clk => min_clk,
      mo_0 => mo_0,
      mo_1 => mo_1,
      mon_clk => mon_clk,
      sec_clk => sec_clk,
      year_clk => year_clk
    );
end STRUCTURE;
