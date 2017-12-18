-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sun Dec 17 13:13:45 2017
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/VivadoProjects/CLOCK/CLOCK.srcs/sources_1/bd/final_clock/ip/final_clock_data_chooser_2_0/final_clock_data_chooser_2_0_stub.vhdl
-- Design      : final_clock_data_chooser_2_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity final_clock_data_chooser_2_0 is
  Port ( 
    in0 : in STD_LOGIC;
    in1 : in STD_LOGIC;
    ar0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ar1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ar2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ar3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Y : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end final_clock_data_chooser_2_0;

architecture stub of final_clock_data_chooser_2_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "in0,in1,ar0[3:0],ar1[3:0],ar2[3:0],ar3[3:0],Y[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "data_chooser,Vivado 2017.2";
begin
end;
