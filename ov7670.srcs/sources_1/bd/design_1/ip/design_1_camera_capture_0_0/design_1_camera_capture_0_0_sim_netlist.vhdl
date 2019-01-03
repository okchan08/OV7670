-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Thu Jan  3 22:39:38 2019
-- Host        : yoshiki-FMVA77JRY running 64-bit Ubuntu 18.04.1 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/yoshiki/xilinx/nexys4/ov7670/ov7670.srcs/sources_1/bd/design_1/ip/design_1_camera_capture_0_0/design_1_camera_capture_0_0_sim_netlist.vhdl
-- Design      : design_1_camera_capture_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_camera_capture_0_0_camera_capture is
  port (
    addr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_en : out STD_LOGIC;
    camera_v_sync : in STD_LOGIC;
    camera_h_ref : in STD_LOGIC;
    pclk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_camera_capture_0_0_camera_capture : entity is "camera_capture";
end design_1_camera_capture_0_0_camera_capture;

architecture STRUCTURE of design_1_camera_capture_0_0_camera_capture is
  signal \^addr\ : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \address[11]_i_2_n_0\ : STD_LOGIC;
  signal \address[11]_i_3_n_0\ : STD_LOGIC;
  signal \address[11]_i_4_n_0\ : STD_LOGIC;
  signal \address[11]_i_5_n_0\ : STD_LOGIC;
  signal \address[15]_i_2_n_0\ : STD_LOGIC;
  signal \address[15]_i_3_n_0\ : STD_LOGIC;
  signal \address[15]_i_4_n_0\ : STD_LOGIC;
  signal \address[15]_i_5_n_0\ : STD_LOGIC;
  signal \address[18]_i_2_n_0\ : STD_LOGIC;
  signal \address[18]_i_3_n_0\ : STD_LOGIC;
  signal \address[18]_i_4_n_0\ : STD_LOGIC;
  signal \address[3]_i_2_n_0\ : STD_LOGIC;
  signal \address[3]_i_3_n_0\ : STD_LOGIC;
  signal \address[3]_i_4_n_0\ : STD_LOGIC;
  signal \address[3]_i_5_n_0\ : STD_LOGIC;
  signal \address[7]_i_2_n_0\ : STD_LOGIC;
  signal \address[7]_i_3_n_0\ : STD_LOGIC;
  signal \address[7]_i_4_n_0\ : STD_LOGIC;
  signal \address[7]_i_5_n_0\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[18]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[18]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[18]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[18]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[18]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal latced_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal write_state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \write_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_address_reg[18]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_address_reg[18]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \write_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \write_state[1]_i_1\ : label is "soft_lutpair0";
begin
  addr(18 downto 0) <= \^addr\(18 downto 0);
\address[11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr\(11),
      O => \address[11]_i_2_n_0\
    );
\address[11]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr\(10),
      O => \address[11]_i_3_n_0\
    );
\address[11]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr\(9),
      O => \address[11]_i_4_n_0\
    );
\address[11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr\(8),
      O => \address[11]_i_5_n_0\
    );
\address[15]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr\(15),
      O => \address[15]_i_2_n_0\
    );
\address[15]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr\(14),
      O => \address[15]_i_3_n_0\
    );
\address[15]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr\(13),
      O => \address[15]_i_4_n_0\
    );
\address[15]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr\(12),
      O => \address[15]_i_5_n_0\
    );
\address[18]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr\(18),
      O => \address[18]_i_2_n_0\
    );
\address[18]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr\(17),
      O => \address[18]_i_3_n_0\
    );
\address[18]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr\(16),
      O => \address[18]_i_4_n_0\
    );
\address[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr\(3),
      O => \address[3]_i_2_n_0\
    );
\address[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr\(2),
      O => \address[3]_i_3_n_0\
    );
\address[3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr\(1),
      O => \address[3]_i_4_n_0\
    );
\address[3]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^addr\(0),
      O => \address[3]_i_5_n_0\
    );
\address[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr\(7),
      O => \address[7]_i_2_n_0\
    );
\address[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr\(6),
      O => \address[7]_i_3_n_0\
    );
\address[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr\(5),
      O => \address[7]_i_4_n_0\
    );
\address[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr\(4),
      O => \address[7]_i_5_n_0\
    );
\address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_1_in,
      D => \address_reg[3]_i_1_n_7\,
      Q => \^addr\(0),
      R => camera_v_sync
    );
\address_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_1_in,
      D => \address_reg[11]_i_1_n_5\,
      Q => \^addr\(10),
      R => camera_v_sync
    );
\address_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_1_in,
      D => \address_reg[11]_i_1_n_4\,
      Q => \^addr\(11),
      R => camera_v_sync
    );
\address_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[7]_i_1_n_0\,
      CO(3) => \address_reg[11]_i_1_n_0\,
      CO(2) => \address_reg[11]_i_1_n_1\,
      CO(1) => \address_reg[11]_i_1_n_2\,
      CO(0) => \address_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[11]_i_1_n_4\,
      O(2) => \address_reg[11]_i_1_n_5\,
      O(1) => \address_reg[11]_i_1_n_6\,
      O(0) => \address_reg[11]_i_1_n_7\,
      S(3) => \address[11]_i_2_n_0\,
      S(2) => \address[11]_i_3_n_0\,
      S(1) => \address[11]_i_4_n_0\,
      S(0) => \address[11]_i_5_n_0\
    );
\address_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_1_in,
      D => \address_reg[15]_i_1_n_7\,
      Q => \^addr\(12),
      R => camera_v_sync
    );
\address_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_1_in,
      D => \address_reg[15]_i_1_n_6\,
      Q => \^addr\(13),
      R => camera_v_sync
    );
\address_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_1_in,
      D => \address_reg[15]_i_1_n_5\,
      Q => \^addr\(14),
      R => camera_v_sync
    );
\address_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_1_in,
      D => \address_reg[15]_i_1_n_4\,
      Q => \^addr\(15),
      R => camera_v_sync
    );
\address_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[11]_i_1_n_0\,
      CO(3) => \address_reg[15]_i_1_n_0\,
      CO(2) => \address_reg[15]_i_1_n_1\,
      CO(1) => \address_reg[15]_i_1_n_2\,
      CO(0) => \address_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[15]_i_1_n_4\,
      O(2) => \address_reg[15]_i_1_n_5\,
      O(1) => \address_reg[15]_i_1_n_6\,
      O(0) => \address_reg[15]_i_1_n_7\,
      S(3) => \address[15]_i_2_n_0\,
      S(2) => \address[15]_i_3_n_0\,
      S(1) => \address[15]_i_4_n_0\,
      S(0) => \address[15]_i_5_n_0\
    );
\address_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_1_in,
      D => \address_reg[18]_i_1_n_7\,
      Q => \^addr\(16),
      R => camera_v_sync
    );
\address_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_1_in,
      D => \address_reg[18]_i_1_n_6\,
      Q => \^addr\(17),
      R => camera_v_sync
    );
\address_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_1_in,
      D => \address_reg[18]_i_1_n_5\,
      Q => \^addr\(18),
      R => camera_v_sync
    );
\address_reg[18]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[15]_i_1_n_0\,
      CO(3 downto 2) => \NLW_address_reg[18]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \address_reg[18]_i_1_n_2\,
      CO(0) => \address_reg[18]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_address_reg[18]_i_1_O_UNCONNECTED\(3),
      O(2) => \address_reg[18]_i_1_n_5\,
      O(1) => \address_reg[18]_i_1_n_6\,
      O(0) => \address_reg[18]_i_1_n_7\,
      S(3) => '0',
      S(2) => \address[18]_i_2_n_0\,
      S(1) => \address[18]_i_3_n_0\,
      S(0) => \address[18]_i_4_n_0\
    );
\address_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_1_in,
      D => \address_reg[3]_i_1_n_6\,
      Q => \^addr\(1),
      R => camera_v_sync
    );
\address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_1_in,
      D => \address_reg[3]_i_1_n_5\,
      Q => \^addr\(2),
      R => camera_v_sync
    );
\address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_1_in,
      D => \address_reg[3]_i_1_n_4\,
      Q => \^addr\(3),
      R => camera_v_sync
    );
\address_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \address_reg[3]_i_1_n_0\,
      CO(2) => \address_reg[3]_i_1_n_1\,
      CO(1) => \address_reg[3]_i_1_n_2\,
      CO(0) => \address_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \address_reg[3]_i_1_n_4\,
      O(2) => \address_reg[3]_i_1_n_5\,
      O(1) => \address_reg[3]_i_1_n_6\,
      O(0) => \address_reg[3]_i_1_n_7\,
      S(3) => \address[3]_i_2_n_0\,
      S(2) => \address[3]_i_3_n_0\,
      S(1) => \address[3]_i_4_n_0\,
      S(0) => \address[3]_i_5_n_0\
    );
\address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_1_in,
      D => \address_reg[7]_i_1_n_7\,
      Q => \^addr\(4),
      R => camera_v_sync
    );
\address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_1_in,
      D => \address_reg[7]_i_1_n_6\,
      Q => \^addr\(5),
      R => camera_v_sync
    );
\address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_1_in,
      D => \address_reg[7]_i_1_n_5\,
      Q => \^addr\(6),
      R => camera_v_sync
    );
\address_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_1_in,
      D => \address_reg[7]_i_1_n_4\,
      Q => \^addr\(7),
      R => camera_v_sync
    );
\address_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[3]_i_1_n_0\,
      CO(3) => \address_reg[7]_i_1_n_0\,
      CO(2) => \address_reg[7]_i_1_n_1\,
      CO(1) => \address_reg[7]_i_1_n_2\,
      CO(0) => \address_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[7]_i_1_n_4\,
      O(2) => \address_reg[7]_i_1_n_5\,
      O(1) => \address_reg[7]_i_1_n_6\,
      O(0) => \address_reg[7]_i_1_n_7\,
      S(3) => \address[7]_i_2_n_0\,
      S(2) => \address[7]_i_3_n_0\,
      S(1) => \address[7]_i_4_n_0\,
      S(0) => \address[7]_i_5_n_0\
    );
\address_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_1_in,
      D => \address_reg[11]_i_1_n_7\,
      Q => \^addr\(8),
      R => camera_v_sync
    );
\address_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_1_in,
      D => \address_reg[11]_i_1_n_6\,
      Q => \^addr\(9),
      R => camera_v_sync
    );
\dout[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => camera_v_sync,
      O => p_0_in
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => p_0_in,
      D => latced_data(1),
      Q => dout(0),
      R => '0'
    );
\dout_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => p_0_in,
      D => latced_data(14),
      Q => dout(10),
      R => '0'
    );
\dout_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => p_0_in,
      D => latced_data(15),
      Q => dout(11),
      R => '0'
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => p_0_in,
      D => latced_data(2),
      Q => dout(1),
      R => '0'
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => p_0_in,
      D => latced_data(3),
      Q => dout(2),
      R => '0'
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => p_0_in,
      D => latced_data(4),
      Q => dout(3),
      R => '0'
    );
\dout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => p_0_in,
      D => latced_data(7),
      Q => dout(4),
      R => '0'
    );
\dout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => p_0_in,
      D => latced_data(8),
      Q => dout(5),
      R => '0'
    );
\dout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => p_0_in,
      D => latced_data(9),
      Q => dout(6),
      R => '0'
    );
\dout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => p_0_in,
      D => latced_data(10),
      Q => dout(7),
      R => '0'
    );
\dout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => p_0_in,
      D => latced_data(12),
      Q => dout(8),
      R => '0'
    );
\dout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => p_0_in,
      D => latced_data(13),
      Q => dout(9),
      R => '0'
    );
\latced_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in,
      D => din(0),
      Q => latced_data(0),
      R => '0'
    );
\latced_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in,
      D => latced_data(2),
      Q => latced_data(10),
      R => '0'
    );
\latced_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in,
      D => latced_data(4),
      Q => latced_data(12),
      R => '0'
    );
\latced_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in,
      D => latced_data(5),
      Q => latced_data(13),
      R => '0'
    );
\latced_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in,
      D => latced_data(6),
      Q => latced_data(14),
      R => '0'
    );
\latced_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in,
      D => latced_data(7),
      Q => latced_data(15),
      R => '0'
    );
\latced_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in,
      D => din(1),
      Q => latced_data(1),
      R => '0'
    );
\latced_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in,
      D => din(2),
      Q => latced_data(2),
      R => '0'
    );
\latced_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in,
      D => din(3),
      Q => latced_data(3),
      R => '0'
    );
\latced_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in,
      D => din(4),
      Q => latced_data(4),
      R => '0'
    );
\latced_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in,
      D => din(5),
      Q => latced_data(5),
      R => '0'
    );
\latced_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in,
      D => din(6),
      Q => latced_data(6),
      R => '0'
    );
\latced_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in,
      D => din(7),
      Q => latced_data(7),
      R => '0'
    );
\latced_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in,
      D => latced_data(0),
      Q => latced_data(8),
      R => '0'
    );
\latced_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in,
      D => latced_data(1),
      Q => latced_data(9),
      R => '0'
    );
wr_en_reg: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => p_0_in,
      D => p_1_in,
      Q => wr_en,
      R => '0'
    );
\write_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => write_state(0),
      I1 => camera_h_ref,
      I2 => camera_v_sync,
      O => \write_state[0]_i_1_n_0\
    );
\write_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_state(0),
      I1 => camera_v_sync,
      O => \write_state[1]_i_1_n_0\
    );
\write_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => \write_state[0]_i_1_n_0\,
      Q => write_state(0),
      R => '0'
    );
\write_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => \write_state[1]_i_1_n_0\,
      Q => p_1_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_camera_capture_0_0 is
  port (
    pclk : in STD_LOGIC;
    camera_v_sync : in STD_LOGIC;
    camera_h_ref : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_en : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_camera_capture_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_camera_capture_0_0 : entity is "design_1_camera_capture_0_0,camera_capture,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_camera_capture_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_camera_capture_0_0 : entity is "camera_capture,Vivado 2017.2";
end design_1_camera_capture_0_0;

architecture STRUCTURE of design_1_camera_capture_0_0 is
begin
inst: entity work.design_1_camera_capture_0_0_camera_capture
     port map (
      addr(18 downto 0) => addr(18 downto 0),
      camera_h_ref => camera_h_ref,
      camera_v_sync => camera_v_sync,
      din(7 downto 0) => din(7 downto 0),
      dout(11 downto 0) => dout(11 downto 0),
      pclk => pclk,
      wr_en => wr_en
    );
end STRUCTURE;
