--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: FSM_synthesis.vhd
-- /___/   /\     Timestamp: Thu Jun 27 17:46:24 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm FSM -w -dir netgen/synthesis -ofmt vhdl -sim FSM.ngc FSM_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: FSM.ngc
-- Output file	: Y:\xilinx\traffic_lights\semaforo\netgen\synthesis\FSM_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: FSM
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity FSM is
  port (
    i_sensor : in STD_LOGIC := 'X'; 
    o_led_clk : out STD_LOGIC; 
    i_reset : in STD_LOGIC := 'X'; 
    i_button : in STD_LOGIC := 'X'; 
    i_clk : in STD_LOGIC := 'X'; 
    o_ped_light : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    o_main_light : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    o_side_light : out STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end FSM;

architecture Structure of FSM is
  signal Mcount_s_count_cy_10_rt_2 : STD_LOGIC; 
  signal Mcount_s_count_cy_11_rt_4 : STD_LOGIC; 
  signal Mcount_s_count_cy_12_rt_6 : STD_LOGIC; 
  signal Mcount_s_count_cy_13_rt_8 : STD_LOGIC; 
  signal Mcount_s_count_cy_14_rt_10 : STD_LOGIC; 
  signal Mcount_s_count_cy_15_rt_12 : STD_LOGIC; 
  signal Mcount_s_count_cy_16_rt_14 : STD_LOGIC; 
  signal Mcount_s_count_cy_17_rt_16 : STD_LOGIC; 
  signal Mcount_s_count_cy_18_rt_18 : STD_LOGIC; 
  signal Mcount_s_count_cy_19_rt_20 : STD_LOGIC; 
  signal Mcount_s_count_cy_1_rt_22 : STD_LOGIC; 
  signal Mcount_s_count_cy_20_rt_24 : STD_LOGIC; 
  signal Mcount_s_count_cy_21_rt_26 : STD_LOGIC; 
  signal Mcount_s_count_cy_22_rt_28 : STD_LOGIC; 
  signal Mcount_s_count_cy_23_rt_30 : STD_LOGIC; 
  signal Mcount_s_count_cy_24_rt_32 : STD_LOGIC; 
  signal Mcount_s_count_cy_25_rt_34 : STD_LOGIC; 
  signal Mcount_s_count_cy_26_rt_36 : STD_LOGIC; 
  signal Mcount_s_count_cy_27_rt_38 : STD_LOGIC; 
  signal Mcount_s_count_cy_28_rt_40 : STD_LOGIC; 
  signal Mcount_s_count_cy_29_rt_42 : STD_LOGIC; 
  signal Mcount_s_count_cy_2_rt_44 : STD_LOGIC; 
  signal Mcount_s_count_cy_30_rt_46 : STD_LOGIC; 
  signal Mcount_s_count_cy_3_rt_48 : STD_LOGIC; 
  signal Mcount_s_count_cy_4_rt_50 : STD_LOGIC; 
  signal Mcount_s_count_cy_5_rt_52 : STD_LOGIC; 
  signal Mcount_s_count_cy_6_rt_54 : STD_LOGIC; 
  signal Mcount_s_count_cy_7_rt_56 : STD_LOGIC; 
  signal Mcount_s_count_cy_8_rt_58 : STD_LOGIC; 
  signal Mcount_s_count_cy_9_rt_60 : STD_LOGIC; 
  signal Mcount_s_count_xor_31_rt_62 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal current_state_2_1_121 : STD_LOGIC; 
  signal current_state_4_1_124 : STD_LOGIC; 
  signal current_state_5_1_126 : STD_LOGIC; 
  signal current_state_6_1_128 : STD_LOGIC; 
  signal i_button_BUFGP_130 : STD_LOGIC; 
  signal i_clk_BUFGP_132 : STD_LOGIC; 
  signal i_reset_IBUF_134 : STD_LOGIC; 
  signal i_sensor_IBUF_136 : STD_LOGIC; 
  signal next_state_mux0004_0_1_158 : STD_LOGIC; 
  signal next_state_mux0004_1_Q_159 : STD_LOGIC; 
  signal next_state_mux0004_2_12_160 : STD_LOGIC; 
  signal next_state_mux0004_2_36 : STD_LOGIC; 
  signal next_state_mux0004_3_Q_162 : STD_LOGIC; 
  signal next_state_mux0004_4_0_163 : STD_LOGIC; 
  signal next_state_mux0004_4_14_164 : STD_LOGIC; 
  signal next_state_mux0004_4_23_165 : STD_LOGIC; 
  signal next_state_mux0004_4_35 : STD_LOGIC; 
  signal next_state_mux0004_5_Q_167 : STD_LOGIC; 
  signal next_state_mux0004_6_Q : STD_LOGIC; 
  signal o_led_clk_OBUF_170 : STD_LOGIC; 
  signal o_main_light_0_OBUF_174 : STD_LOGIC; 
  signal o_main_light_2_OBUF_175 : STD_LOGIC; 
  signal o_ped_light_0_OBUF_179 : STD_LOGIC; 
  signal o_ped_light_1_OBUF_180 : STD_LOGIC; 
  signal o_side_light_0_OBUF_184 : STD_LOGIC; 
  signal port_map_Mcount_s_count : STD_LOGIC; 
  signal port_map_Mcount_s_count1 : STD_LOGIC; 
  signal port_map_Mcount_s_count2 : STD_LOGIC; 
  signal port_map_Mcount_s_count3 : STD_LOGIC; 
  signal port_map_s_count_cmp_eq0000 : STD_LOGIC; 
  signal port_map_s_oclk_194 : STD_LOGIC; 
  signal port_map_s_oclk_not0001 : STD_LOGIC; 
  signal s_button_register_196 : STD_LOGIC; 
  signal s_reset_count : STD_LOGIC; 
  signal s_reset_count103_230 : STD_LOGIC; 
  signal s_reset_count104_231 : STD_LOGIC; 
  signal s_reset_count76_232 : STD_LOGIC; 
  signal Mcount_s_count_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Mcount_s_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal current_state : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal next_state : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal next_state_cmp_eq00001_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal next_state_cmp_eq00001_wg_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal port_map_s_count : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal s_count : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal s_side_light : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => o_ped_light_1_OBUF_180
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  next_state_0 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => o_led_clk_OBUF_170,
      D => next_state_mux0004_6_Q,
      Q => next_state(0)
    );
  next_state_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      D => next_state_mux0004_5_Q_167,
      Q => next_state(1)
    );
  next_state_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      D => next_state_mux0004_3_Q_162,
      Q => next_state(3)
    );
  next_state_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      D => next_state_mux0004_1_Q_159,
      Q => next_state(5)
    );
  s_button_register : LDC
    generic map(
      INIT => '0'
    )
    port map (
      CLR => current_state(6),
      D => N1,
      G => i_button_BUFGP_130,
      Q => s_button_register_196
    );
  current_state_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_132,
      CLR => i_reset_IBUF_134,
      D => next_state(5),
      Q => current_state(5)
    );
  current_state_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_132,
      CLR => i_reset_IBUF_134,
      D => next_state(4),
      Q => current_state(4)
    );
  current_state_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_132,
      CLR => i_reset_IBUF_134,
      D => next_state(6),
      Q => current_state(6)
    );
  current_state_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_132,
      CLR => i_reset_IBUF_134,
      D => next_state(3),
      Q => current_state(3)
    );
  current_state_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_132,
      CLR => i_reset_IBUF_134,
      D => next_state(2),
      Q => current_state(2)
    );
  current_state_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_132,
      CLR => i_reset_IBUF_134,
      D => next_state(1),
      Q => current_state(1)
    );
  current_state_0 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => i_clk_BUFGP_132,
      D => next_state(0),
      PRE => i_reset_IBUF_134,
      Q => current_state(0)
    );
  port_map_s_oclk : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_132,
      CE => port_map_s_count_cmp_eq0000,
      D => port_map_s_oclk_not0001,
      PRE => i_reset_IBUF_134,
      Q => port_map_s_oclk_194
    );
  port_map_s_count_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_132,
      CLR => i_reset_IBUF_134,
      D => port_map_Mcount_s_count,
      Q => port_map_s_count(0)
    );
  port_map_s_count_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_132,
      CLR => i_reset_IBUF_134,
      D => port_map_Mcount_s_count1,
      Q => port_map_s_count(1)
    );
  port_map_s_count_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_132,
      CLR => i_reset_IBUF_134,
      D => port_map_Mcount_s_count2,
      Q => port_map_s_count(2)
    );
  port_map_s_count_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_132,
      CLR => i_reset_IBUF_134,
      D => port_map_Mcount_s_count3,
      Q => port_map_s_count(3)
    );
  s_count_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(0),
      Q => s_count(0)
    );
  s_count_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(1),
      Q => s_count(1)
    );
  s_count_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(2),
      Q => s_count(2)
    );
  s_count_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(3),
      Q => s_count(3)
    );
  s_count_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(4),
      Q => s_count(4)
    );
  s_count_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(5),
      Q => s_count(5)
    );
  s_count_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(6),
      Q => s_count(6)
    );
  s_count_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(7),
      Q => s_count(7)
    );
  s_count_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(8),
      Q => s_count(8)
    );
  s_count_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(9),
      Q => s_count(9)
    );
  s_count_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(10),
      Q => s_count(10)
    );
  s_count_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(11),
      Q => s_count(11)
    );
  s_count_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(12),
      Q => s_count(12)
    );
  s_count_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(13),
      Q => s_count(13)
    );
  s_count_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(14),
      Q => s_count(14)
    );
  s_count_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(15),
      Q => s_count(15)
    );
  s_count_16 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(16),
      Q => s_count(16)
    );
  s_count_17 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(17),
      Q => s_count(17)
    );
  s_count_18 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(18),
      Q => s_count(18)
    );
  s_count_19 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(19),
      Q => s_count(19)
    );
  s_count_20 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(20),
      Q => s_count(20)
    );
  s_count_21 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(21),
      Q => s_count(21)
    );
  s_count_22 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(22),
      Q => s_count(22)
    );
  s_count_23 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(23),
      Q => s_count(23)
    );
  s_count_24 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(24),
      Q => s_count(24)
    );
  s_count_25 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(25),
      Q => s_count(25)
    );
  s_count_26 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(26),
      Q => s_count(26)
    );
  s_count_27 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(27),
      Q => s_count(27)
    );
  s_count_28 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(28),
      Q => s_count(28)
    );
  s_count_29 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(29),
      Q => s_count(29)
    );
  s_count_30 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(30),
      Q => s_count(30)
    );
  s_count_31 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      CLR => s_reset_count,
      D => Result(31),
      Q => s_count(31)
    );
  Mcount_s_count_cy_0_Q : MUXCY
    port map (
      CI => o_ped_light_1_OBUF_180,
      DI => N1,
      S => Mcount_s_count_lut(0),
      O => Mcount_s_count_cy(0)
    );
  Mcount_s_count_xor_0_Q : XORCY
    port map (
      CI => o_ped_light_1_OBUF_180,
      LI => Mcount_s_count_lut(0),
      O => Result(0)
    );
  Mcount_s_count_cy_1_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(0),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_1_rt_22,
      O => Mcount_s_count_cy(1)
    );
  Mcount_s_count_xor_1_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(0),
      LI => Mcount_s_count_cy_1_rt_22,
      O => Result(1)
    );
  Mcount_s_count_cy_2_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(1),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_2_rt_44,
      O => Mcount_s_count_cy(2)
    );
  Mcount_s_count_xor_2_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(1),
      LI => Mcount_s_count_cy_2_rt_44,
      O => Result(2)
    );
  Mcount_s_count_cy_3_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(2),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_3_rt_48,
      O => Mcount_s_count_cy(3)
    );
  Mcount_s_count_xor_3_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(2),
      LI => Mcount_s_count_cy_3_rt_48,
      O => Result(3)
    );
  Mcount_s_count_cy_4_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(3),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_4_rt_50,
      O => Mcount_s_count_cy(4)
    );
  Mcount_s_count_xor_4_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(3),
      LI => Mcount_s_count_cy_4_rt_50,
      O => Result(4)
    );
  Mcount_s_count_cy_5_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(4),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_5_rt_52,
      O => Mcount_s_count_cy(5)
    );
  Mcount_s_count_xor_5_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(4),
      LI => Mcount_s_count_cy_5_rt_52,
      O => Result(5)
    );
  Mcount_s_count_cy_6_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(5),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_6_rt_54,
      O => Mcount_s_count_cy(6)
    );
  Mcount_s_count_xor_6_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(5),
      LI => Mcount_s_count_cy_6_rt_54,
      O => Result(6)
    );
  Mcount_s_count_cy_7_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(6),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_7_rt_56,
      O => Mcount_s_count_cy(7)
    );
  Mcount_s_count_xor_7_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(6),
      LI => Mcount_s_count_cy_7_rt_56,
      O => Result(7)
    );
  Mcount_s_count_cy_8_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(7),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_8_rt_58,
      O => Mcount_s_count_cy(8)
    );
  Mcount_s_count_xor_8_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(7),
      LI => Mcount_s_count_cy_8_rt_58,
      O => Result(8)
    );
  Mcount_s_count_cy_9_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(8),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_9_rt_60,
      O => Mcount_s_count_cy(9)
    );
  Mcount_s_count_xor_9_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(8),
      LI => Mcount_s_count_cy_9_rt_60,
      O => Result(9)
    );
  Mcount_s_count_cy_10_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(9),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_10_rt_2,
      O => Mcount_s_count_cy(10)
    );
  Mcount_s_count_xor_10_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(9),
      LI => Mcount_s_count_cy_10_rt_2,
      O => Result(10)
    );
  Mcount_s_count_cy_11_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(10),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_11_rt_4,
      O => Mcount_s_count_cy(11)
    );
  Mcount_s_count_xor_11_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(10),
      LI => Mcount_s_count_cy_11_rt_4,
      O => Result(11)
    );
  Mcount_s_count_cy_12_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(11),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_12_rt_6,
      O => Mcount_s_count_cy(12)
    );
  Mcount_s_count_xor_12_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(11),
      LI => Mcount_s_count_cy_12_rt_6,
      O => Result(12)
    );
  Mcount_s_count_cy_13_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(12),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_13_rt_8,
      O => Mcount_s_count_cy(13)
    );
  Mcount_s_count_xor_13_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(12),
      LI => Mcount_s_count_cy_13_rt_8,
      O => Result(13)
    );
  Mcount_s_count_cy_14_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(13),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_14_rt_10,
      O => Mcount_s_count_cy(14)
    );
  Mcount_s_count_xor_14_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(13),
      LI => Mcount_s_count_cy_14_rt_10,
      O => Result(14)
    );
  Mcount_s_count_cy_15_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(14),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_15_rt_12,
      O => Mcount_s_count_cy(15)
    );
  Mcount_s_count_xor_15_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(14),
      LI => Mcount_s_count_cy_15_rt_12,
      O => Result(15)
    );
  Mcount_s_count_cy_16_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(15),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_16_rt_14,
      O => Mcount_s_count_cy(16)
    );
  Mcount_s_count_xor_16_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(15),
      LI => Mcount_s_count_cy_16_rt_14,
      O => Result(16)
    );
  Mcount_s_count_cy_17_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(16),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_17_rt_16,
      O => Mcount_s_count_cy(17)
    );
  Mcount_s_count_xor_17_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(16),
      LI => Mcount_s_count_cy_17_rt_16,
      O => Result(17)
    );
  Mcount_s_count_cy_18_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(17),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_18_rt_18,
      O => Mcount_s_count_cy(18)
    );
  Mcount_s_count_xor_18_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(17),
      LI => Mcount_s_count_cy_18_rt_18,
      O => Result(18)
    );
  Mcount_s_count_cy_19_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(18),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_19_rt_20,
      O => Mcount_s_count_cy(19)
    );
  Mcount_s_count_xor_19_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(18),
      LI => Mcount_s_count_cy_19_rt_20,
      O => Result(19)
    );
  Mcount_s_count_cy_20_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(19),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_20_rt_24,
      O => Mcount_s_count_cy(20)
    );
  Mcount_s_count_xor_20_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(19),
      LI => Mcount_s_count_cy_20_rt_24,
      O => Result(20)
    );
  Mcount_s_count_cy_21_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(20),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_21_rt_26,
      O => Mcount_s_count_cy(21)
    );
  Mcount_s_count_xor_21_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(20),
      LI => Mcount_s_count_cy_21_rt_26,
      O => Result(21)
    );
  Mcount_s_count_cy_22_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(21),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_22_rt_28,
      O => Mcount_s_count_cy(22)
    );
  Mcount_s_count_xor_22_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(21),
      LI => Mcount_s_count_cy_22_rt_28,
      O => Result(22)
    );
  Mcount_s_count_cy_23_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(22),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_23_rt_30,
      O => Mcount_s_count_cy(23)
    );
  Mcount_s_count_xor_23_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(22),
      LI => Mcount_s_count_cy_23_rt_30,
      O => Result(23)
    );
  Mcount_s_count_cy_24_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(23),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_24_rt_32,
      O => Mcount_s_count_cy(24)
    );
  Mcount_s_count_xor_24_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(23),
      LI => Mcount_s_count_cy_24_rt_32,
      O => Result(24)
    );
  Mcount_s_count_cy_25_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(24),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_25_rt_34,
      O => Mcount_s_count_cy(25)
    );
  Mcount_s_count_xor_25_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(24),
      LI => Mcount_s_count_cy_25_rt_34,
      O => Result(25)
    );
  Mcount_s_count_cy_26_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(25),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_26_rt_36,
      O => Mcount_s_count_cy(26)
    );
  Mcount_s_count_xor_26_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(25),
      LI => Mcount_s_count_cy_26_rt_36,
      O => Result(26)
    );
  Mcount_s_count_cy_27_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(26),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_27_rt_38,
      O => Mcount_s_count_cy(27)
    );
  Mcount_s_count_xor_27_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(26),
      LI => Mcount_s_count_cy_27_rt_38,
      O => Result(27)
    );
  Mcount_s_count_cy_28_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(27),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_28_rt_40,
      O => Mcount_s_count_cy(28)
    );
  Mcount_s_count_xor_28_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(27),
      LI => Mcount_s_count_cy_28_rt_40,
      O => Result(28)
    );
  Mcount_s_count_cy_29_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(28),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_29_rt_42,
      O => Mcount_s_count_cy(29)
    );
  Mcount_s_count_xor_29_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(28),
      LI => Mcount_s_count_cy_29_rt_42,
      O => Result(29)
    );
  Mcount_s_count_cy_30_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(29),
      DI => o_ped_light_1_OBUF_180,
      S => Mcount_s_count_cy_30_rt_46,
      O => Mcount_s_count_cy(30)
    );
  Mcount_s_count_xor_30_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(29),
      LI => Mcount_s_count_cy_30_rt_46,
      O => Result(30)
    );
  Mcount_s_count_xor_31_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(30),
      LI => Mcount_s_count_xor_31_rt_62,
      O => Result(31)
    );
  port_map_clk_buffer : BUFG
    port map (
      I => port_map_s_oclk_194,
      O => o_led_clk_OBUF_170
    );
  next_state_cmp_eq00001_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => s_count(23),
      I1 => s_count(22),
      I2 => s_count(25),
      I3 => s_count(21),
      O => next_state_cmp_eq00001_wg_lut(0)
    );
  next_state_cmp_eq00001_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => o_ped_light_1_OBUF_180,
      S => next_state_cmp_eq00001_wg_lut(0),
      O => next_state_cmp_eq00001_wg_cy(0)
    );
  next_state_cmp_eq00001_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => s_count(20),
      I1 => s_count(17),
      I2 => s_count(26),
      I3 => s_count(19),
      O => next_state_cmp_eq00001_wg_lut(1)
    );
  next_state_cmp_eq00001_wg_cy_1_Q : MUXCY
    port map (
      CI => next_state_cmp_eq00001_wg_cy(0),
      DI => o_ped_light_1_OBUF_180,
      S => next_state_cmp_eq00001_wg_lut(1),
      O => next_state_cmp_eq00001_wg_cy(1)
    );
  next_state_cmp_eq00001_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => s_count(18),
      I1 => s_count(16),
      I2 => s_count(24),
      I3 => s_count(15),
      O => next_state_cmp_eq00001_wg_lut(2)
    );
  next_state_cmp_eq00001_wg_cy_2_Q : MUXCY
    port map (
      CI => next_state_cmp_eq00001_wg_cy(1),
      DI => o_ped_light_1_OBUF_180,
      S => next_state_cmp_eq00001_wg_lut(2),
      O => next_state_cmp_eq00001_wg_cy(2)
    );
  next_state_cmp_eq00001_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => s_count(14),
      I1 => s_count(12),
      I2 => s_count(27),
      I3 => s_count(10),
      O => next_state_cmp_eq00001_wg_lut(3)
    );
  next_state_cmp_eq00001_wg_cy_3_Q : MUXCY
    port map (
      CI => next_state_cmp_eq00001_wg_cy(2),
      DI => o_ped_light_1_OBUF_180,
      S => next_state_cmp_eq00001_wg_lut(3),
      O => next_state_cmp_eq00001_wg_cy(3)
    );
  next_state_cmp_eq00001_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => s_count(13),
      I1 => s_count(11),
      I2 => s_count(28),
      I3 => s_count(9),
      O => next_state_cmp_eq00001_wg_lut(4)
    );
  next_state_cmp_eq00001_wg_cy_4_Q : MUXCY
    port map (
      CI => next_state_cmp_eq00001_wg_cy(3),
      DI => o_ped_light_1_OBUF_180,
      S => next_state_cmp_eq00001_wg_lut(4),
      O => next_state_cmp_eq00001_wg_cy(4)
    );
  next_state_cmp_eq00001_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => s_count(8),
      I1 => s_count(7),
      I2 => s_count(29),
      I3 => s_count(6),
      O => next_state_cmp_eq00001_wg_lut(5)
    );
  next_state_cmp_eq00001_wg_cy_5_Q : MUXCY
    port map (
      CI => next_state_cmp_eq00001_wg_cy(4),
      DI => o_ped_light_1_OBUF_180,
      S => next_state_cmp_eq00001_wg_lut(5),
      O => next_state_cmp_eq00001_wg_cy(5)
    );
  next_state_cmp_eq00001_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => s_count(31),
      I1 => s_count(5),
      I2 => s_count(30),
      I3 => s_count(4),
      O => next_state_cmp_eq00001_wg_lut(6)
    );
  next_state_cmp_eq00001_wg_cy_6_Q : MUXCY
    port map (
      CI => next_state_cmp_eq00001_wg_cy(5),
      DI => o_ped_light_1_OBUF_180,
      S => next_state_cmp_eq00001_wg_lut(6),
      O => next_state_cmp_eq00001_wg_cy(6)
    );
  s_reset_count76 : LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => next_state(2),
      I1 => current_state(2),
      I2 => current_state(0),
      I3 => next_state(0),
      O => s_reset_count76_232
    );
  s_reset_count103 : LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => current_state(6),
      I1 => next_state(6),
      I2 => current_state(5),
      I3 => next_state(5),
      O => s_reset_count103_230
    );
  s_reset_count104 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => s_reset_count76_232,
      I1 => s_reset_count103_230,
      O => s_reset_count104_231
    );
  s_main_light_2_1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => current_state(1),
      I1 => current_state(3),
      O => o_main_light_2_OBUF_175
    );
  s_main_light_0_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => current_state(6),
      I1 => current_state(5),
      I2 => current_state(4),
      I3 => current_state(0),
      O => o_main_light_0_OBUF_174
    );
  port_map_Mcount_s_count_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => port_map_s_count(0),
      I1 => port_map_s_count(1),
      O => port_map_Mcount_s_count1
    );
  port_map_Mcount_s_count_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => port_map_s_count(2),
      I1 => port_map_s_count(1),
      I2 => port_map_s_count(0),
      O => port_map_Mcount_s_count2
    );
  port_map_Mcount_s_count_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => port_map_s_count(3),
      I1 => port_map_s_count(1),
      I2 => port_map_s_count(0),
      I3 => port_map_s_count(2),
      O => port_map_Mcount_s_count3
    );
  s_ped_light_0_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => current_state(0),
      O => N2
    );
  s_ped_light_0_Q : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => current_state(4),
      I1 => current_state(5),
      I2 => current_state(2),
      I3 => N2,
      O => o_ped_light_0_OBUF_179
    );
  port_map_s_count_cmp_eq00001 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => port_map_s_count(0),
      I1 => port_map_s_count(3),
      I2 => port_map_s_count(2),
      I3 => port_map_s_count(1),
      O => port_map_s_count_cmp_eq0000
    );
  next_state_mux0004_4_14 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => current_state(1),
      I1 => i_sensor_IBUF_136,
      I2 => s_count(0),
      I3 => s_count(3),
      O => next_state_mux0004_4_14_164
    );
  i_sensor_IBUF : IBUF
    port map (
      I => i_sensor,
      O => i_sensor_IBUF_136
    );
  i_reset_IBUF : IBUF
    port map (
      I => i_reset,
      O => i_reset_IBUF_134
    );
  o_led_clk_OBUF : OBUF
    port map (
      I => o_led_clk_OBUF_170,
      O => o_led_clk
    );
  o_ped_light_2_OBUF : OBUF
    port map (
      I => current_state_6_1_128,
      O => o_ped_light(2)
    );
  o_ped_light_1_OBUF : OBUF
    port map (
      I => o_ped_light_1_OBUF_180,
      O => o_ped_light(1)
    );
  o_ped_light_0_OBUF : OBUF
    port map (
      I => o_ped_light_0_OBUF_179,
      O => o_ped_light(0)
    );
  o_main_light_2_OBUF : OBUF
    port map (
      I => o_main_light_2_OBUF_175,
      O => o_main_light(2)
    );
  o_main_light_1_OBUF : OBUF
    port map (
      I => current_state_2_1_121,
      O => o_main_light(1)
    );
  o_main_light_0_OBUF : OBUF
    port map (
      I => o_main_light_0_OBUF_174,
      O => o_main_light(0)
    );
  o_side_light_2_OBUF : OBUF
    port map (
      I => current_state_4_1_124,
      O => o_side_light(2)
    );
  o_side_light_1_OBUF : OBUF
    port map (
      I => current_state_5_1_126,
      O => o_side_light(1)
    );
  o_side_light_0_OBUF : OBUF
    port map (
      I => o_side_light_0_OBUF_184,
      O => o_side_light(0)
    );
  next_state_2 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      D => next_state_mux0004_4_35,
      S => next_state_mux0004_4_23_165,
      Q => next_state(2)
    );
  next_state_4 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      D => next_state_mux0004_2_36,
      S => next_state_mux0004_2_12_160,
      Q => next_state(4)
    );
  next_state_6 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => o_led_clk_OBUF_170,
      D => next_state_mux0004_0_1_158,
      S => N12,
      Q => next_state(6)
    );
  Mcount_s_count_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(1),
      O => Mcount_s_count_cy_1_rt_22
    );
  Mcount_s_count_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(2),
      O => Mcount_s_count_cy_2_rt_44
    );
  Mcount_s_count_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(3),
      O => Mcount_s_count_cy_3_rt_48
    );
  Mcount_s_count_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(4),
      O => Mcount_s_count_cy_4_rt_50
    );
  Mcount_s_count_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(5),
      O => Mcount_s_count_cy_5_rt_52
    );
  Mcount_s_count_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(6),
      O => Mcount_s_count_cy_6_rt_54
    );
  Mcount_s_count_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(7),
      O => Mcount_s_count_cy_7_rt_56
    );
  Mcount_s_count_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(8),
      O => Mcount_s_count_cy_8_rt_58
    );
  Mcount_s_count_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(9),
      O => Mcount_s_count_cy_9_rt_60
    );
  Mcount_s_count_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(10),
      O => Mcount_s_count_cy_10_rt_2
    );
  Mcount_s_count_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(11),
      O => Mcount_s_count_cy_11_rt_4
    );
  Mcount_s_count_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(12),
      O => Mcount_s_count_cy_12_rt_6
    );
  Mcount_s_count_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(13),
      O => Mcount_s_count_cy_13_rt_8
    );
  Mcount_s_count_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(14),
      O => Mcount_s_count_cy_14_rt_10
    );
  Mcount_s_count_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(15),
      O => Mcount_s_count_cy_15_rt_12
    );
  Mcount_s_count_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(16),
      O => Mcount_s_count_cy_16_rt_14
    );
  Mcount_s_count_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(17),
      O => Mcount_s_count_cy_17_rt_16
    );
  Mcount_s_count_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(18),
      O => Mcount_s_count_cy_18_rt_18
    );
  Mcount_s_count_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(19),
      O => Mcount_s_count_cy_19_rt_20
    );
  Mcount_s_count_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(20),
      O => Mcount_s_count_cy_20_rt_24
    );
  Mcount_s_count_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(21),
      O => Mcount_s_count_cy_21_rt_26
    );
  Mcount_s_count_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(22),
      O => Mcount_s_count_cy_22_rt_28
    );
  Mcount_s_count_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(23),
      O => Mcount_s_count_cy_23_rt_30
    );
  Mcount_s_count_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(24),
      O => Mcount_s_count_cy_24_rt_32
    );
  Mcount_s_count_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(25),
      O => Mcount_s_count_cy_25_rt_34
    );
  Mcount_s_count_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(26),
      O => Mcount_s_count_cy_26_rt_36
    );
  Mcount_s_count_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(27),
      O => Mcount_s_count_cy_27_rt_38
    );
  Mcount_s_count_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(28),
      O => Mcount_s_count_cy_28_rt_40
    );
  Mcount_s_count_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(29),
      O => Mcount_s_count_cy_29_rt_42
    );
  Mcount_s_count_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(30),
      O => Mcount_s_count_cy_30_rt_46
    );
  Mcount_s_count_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(31),
      O => Mcount_s_count_xor_31_rt_62
    );
  next_state_mux0004_1_SW1 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => current_state(5),
      I1 => s_count(3),
      I2 => current_state(4),
      O => N14
    );
  next_state_mux0004_2_12 : LUT4
    generic map(
      INIT => X"A8AA"
    )
    port map (
      I0 => current_state(4),
      I1 => s_count(0),
      I2 => N22,
      I3 => next_state_cmp_eq00001_wg_cy(6),
      O => next_state_mux0004_2_12_160
    );
  next_state_mux0004_0_SW0 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => s_count(0),
      I1 => N24,
      I2 => s_count(1),
      I3 => next_state_cmp_eq00001_wg_cy(6),
      O => N12
    );
  next_state_mux0004_4_23_SW1 : LUT4
    generic map(
      INIT => X"D9DD"
    )
    port map (
      I0 => s_count(1),
      I1 => s_count(2),
      I2 => s_count(3),
      I3 => N51,
      O => N27
    );
  next_state_mux0004_4_23 : LUT4
    generic map(
      INIT => X"082A"
    )
    port map (
      I0 => next_state_cmp_eq00001_wg_cy(6),
      I1 => next_state_mux0004_4_14_164,
      I2 => N27,
      I3 => N26,
      O => next_state_mux0004_4_23_165
    );
  next_state_mux0004_2_361_SW2 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => s_count(2),
      I1 => s_count(0),
      I2 => N29,
      O => N32
    );
  next_state_mux0004_2_361 : LUT4
    generic map(
      INIT => X"10B0"
    )
    port map (
      I0 => s_count(1),
      I1 => N31,
      I2 => next_state_cmp_eq00001_wg_cy(6),
      I3 => N32,
      O => next_state_mux0004_2_36
    );
  next_state_mux0004_0_1 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => current_state(6),
      I1 => s_count(0),
      I2 => next_state_cmp_eq00001_wg_cy(6),
      I3 => N34,
      O => next_state_mux0004_0_1_158
    );
  next_state_mux0004_3_SW0 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => s_count(1),
      I1 => s_count(2),
      I2 => N81,
      O => N36
    );
  next_state_mux0004_3_Q : LUT4
    generic map(
      INIT => X"DA8A"
    )
    port map (
      I0 => current_state(3),
      I1 => N37,
      I2 => next_state_cmp_eq00001_wg_cy(6),
      I3 => N36,
      O => next_state_mux0004_3_Q_162
    );
  next_state_mux0004_6_1 : LUT4
    generic map(
      INIT => X"AA2A"
    )
    port map (
      I0 => current_state(0),
      I1 => next_state_cmp_eq00001_wg_cy(6),
      I2 => s_count(0),
      I3 => N52,
      O => next_state_mux0004_6_Q
    );
  next_state_mux0004_5_Q : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => next_state_cmp_eq00001_wg_cy(6),
      I1 => current_state(1),
      I2 => s_count(1),
      I3 => N41,
      O => next_state_mux0004_5_Q_167
    );
  next_state_mux0004_4_351 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => current_state(2),
      I1 => s_count(0),
      I2 => next_state_cmp_eq00001_wg_cy(6),
      I3 => N39,
      O => next_state_mux0004_4_35
    );
  next_state_mux0004_1_Q : LUT4
    generic map(
      INIT => X"FD20"
    )
    port map (
      I0 => next_state_cmp_eq00001_wg_cy(6),
      I1 => N45,
      I2 => N14,
      I3 => current_state(5),
      O => next_state_mux0004_1_Q_159
    );
  s_reset_count118_SW0 : LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => next_state(4),
      I1 => current_state(4),
      I2 => next_state(3),
      I3 => current_state(3),
      O => N47
    );
  s_reset_count118 : LUT4
    generic map(
      INIT => X"FFF6"
    )
    port map (
      I0 => current_state(1),
      I1 => next_state(1),
      I2 => s_reset_count104_231,
      I3 => N47,
      O => s_reset_count
    );
  next_state_cmp_eq000021_SW4 : MUXF5
    port map (
      I0 => N49,
      I1 => N50,
      S => s_count(0),
      O => N41
    );
  next_state_cmp_eq000021_SW4_F : LUT4
    generic map(
      INIT => X"F504"
    )
    port map (
      I0 => s_count(3),
      I1 => current_state(5),
      I2 => s_count(2),
      I3 => current_state(1),
      O => N49
    );
  next_state_cmp_eq000021_SW4_G : LUT4
    generic map(
      INIT => X"FF04"
    )
    port map (
      I0 => s_count(3),
      I1 => current_state(0),
      I2 => s_count(2),
      I3 => current_state(1),
      O => N50
    );
  i_clk_BUFGP : BUFGP
    port map (
      I => i_clk,
      O => i_clk_BUFGP_132
    );
  i_button_BUFGP : BUFGP
    port map (
      I => i_button,
      O => i_button_BUFGP_130
    );
  Mcount_s_count_lut_0_INV_0 : INV
    port map (
      I => s_count(0),
      O => Mcount_s_count_lut(0)
    );
  port_map_s_oclk_not00011_INV_0 : INV
    port map (
      I => port_map_s_oclk_194,
      O => port_map_s_oclk_not0001
    );
  port_map_Mcount_s_count_xor_0_11_INV_0 : INV
    port map (
      I => port_map_s_count(0),
      O => port_map_Mcount_s_count
    );
  s_side_light_0_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => current_state(2),
      I1 => current_state(3),
      I2 => current_state(1),
      I3 => current_state(0),
      O => s_side_light(0)
    );
  s_side_light_0_f5 : MUXF5
    port map (
      I0 => s_side_light(0),
      I1 => N1,
      S => current_state(6),
      O => o_side_light_0_OBUF_184
    );
  next_state_mux0004_3_SW1 : LUT4_L
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => i_sensor_IBUF_136,
      I1 => current_state(1),
      I2 => s_count(0),
      I3 => s_count(3),
      LO => N81
    );
  next_state_mux0004_4_0 : LUT2_D
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => current_state(3),
      I1 => s_count(0),
      LO => N51,
      O => next_state_mux0004_4_0_163
    );
  next_state_cmp_eq000021_SW0 : LUT3_L
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => s_count(1),
      I1 => s_count(3),
      I2 => s_count(2),
      LO => N22
    );
  next_state_mux0004_4_23_SW0 : LUT4_L
    generic map(
      INIT => X"FBFF"
    )
    port map (
      I0 => s_count(1),
      I1 => s_count(2),
      I2 => s_count(3),
      I3 => next_state_mux0004_4_0_163,
      LO => N26
    );
  next_state_cmp_eq000021_SW2 : LUT3_L
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => s_button_register_196,
      I1 => current_state(2),
      I2 => s_count(3),
      LO => N29
    );
  next_state_mux0004_2_361_SW1 : LUT4_L
    generic map(
      INIT => X"EFFF"
    )
    port map (
      I0 => s_count(3),
      I1 => s_count(0),
      I2 => s_count(2),
      I3 => current_state(6),
      LO => N31
    );
  next_state_cmp_eq000211_SW0 : LUT3_L
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => s_count(1),
      I1 => s_count(2),
      I2 => s_count(3),
      LO => N34
    );
  next_state_mux0004_3_SW3 : LUT4_L
    generic map(
      INIT => X"EFFF"
    )
    port map (
      I0 => s_count(1),
      I1 => s_count(3),
      I2 => s_count(0),
      I3 => s_count(2),
      LO => N37
    );
  next_state_cmp_eq000021_SW3 : LUT3_D
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => s_count(2),
      I1 => s_count(1),
      I2 => s_count(3),
      LO => N52,
      O => N39
    );
  next_state_cmp_eq000021_SW6 : LUT3_L
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => s_count(0),
      I1 => s_count(1),
      I2 => s_count(2),
      LO => N45
    );
  next_state_cmp_eq000021_SW1 : LUT4_L
    generic map(
      INIT => X"FFF7"
    )
    port map (
      I0 => current_state(2),
      I1 => s_button_register_196,
      I2 => s_count(2),
      I3 => s_count(3),
      LO => N24
    );
  current_state_6_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_132,
      CLR => i_reset_IBUF_134,
      D => next_state(6),
      Q => current_state_6_1_128
    );
  current_state_2_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_132,
      CLR => i_reset_IBUF_134,
      D => next_state(2),
      Q => current_state_2_1_121
    );
  current_state_4_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_132,
      CLR => i_reset_IBUF_134,
      D => next_state(4),
      Q => current_state_4_1_124
    );
  current_state_5_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_132,
      CLR => i_reset_IBUF_134,
      D => next_state(5),
      Q => current_state_5_1_126
    );

end Structure;

