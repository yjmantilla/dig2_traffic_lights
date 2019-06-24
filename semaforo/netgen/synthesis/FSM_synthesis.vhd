--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: FSM_synthesis.vhd
-- /___/   /\     Timestamp: Sun Jun 23 23:38:13 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm FSM -w -dir netgen/synthesis -ofmt vhdl -sim FSM.ngc FSM_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: FSM.ngc
-- Output file	: Y:\xilinx\semaforo\netgen\synthesis\FSM_synthesis.vhd
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
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_10_1 : STD_LOGIC; 
  signal Result_11_1 : STD_LOGIC; 
  signal Result_12_1 : STD_LOGIC; 
  signal Result_13_1 : STD_LOGIC; 
  signal Result_14_1 : STD_LOGIC; 
  signal Result_15_1 : STD_LOGIC; 
  signal Result_16_1 : STD_LOGIC; 
  signal Result_17_1 : STD_LOGIC; 
  signal Result_18_1 : STD_LOGIC; 
  signal Result_19_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_20_1 : STD_LOGIC; 
  signal Result_21_1 : STD_LOGIC; 
  signal Result_22_1 : STD_LOGIC; 
  signal Result_23_1 : STD_LOGIC; 
  signal Result_24_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_4_1 : STD_LOGIC; 
  signal Result_5_1 : STD_LOGIC; 
  signal Result_6_1 : STD_LOGIC; 
  signal Result_7_1 : STD_LOGIC; 
  signal Result_8_1 : STD_LOGIC; 
  signal Result_9_1 : STD_LOGIC; 
  signal current_state_FSM_FFd1_135 : STD_LOGIC; 
  signal current_state_FSM_FFd1_In : STD_LOGIC; 
  signal current_state_FSM_FFd2_137 : STD_LOGIC; 
  signal current_state_FSM_FFd2_In : STD_LOGIC; 
  signal current_state_FSM_FFd2_In17_139 : STD_LOGIC; 
  signal current_state_FSM_FFd2_In42_140 : STD_LOGIC; 
  signal current_state_FSM_FFd2_In51_141 : STD_LOGIC; 
  signal current_state_FSM_FFd2_In9_142 : STD_LOGIC; 
  signal current_state_FSM_FFd3_143 : STD_LOGIC; 
  signal current_state_FSM_FFd3_In : STD_LOGIC; 
  signal current_state_FSM_FFd3_In10_145 : STD_LOGIC; 
  signal current_state_FSM_FFd3_In13_146 : STD_LOGIC; 
  signal current_state_FSM_FFd3_In28_147 : STD_LOGIC; 
  signal current_state_FSM_FFd3_In87_148 : STD_LOGIC; 
  signal current_state_FSM_FFd3_In88_149 : STD_LOGIC; 
  signal i_button_BUFGP_165 : STD_LOGIC; 
  signal i_clk_BUFGP_167 : STD_LOGIC; 
  signal i_reset_IBUF_169 : STD_LOGIC; 
  signal i_sensor_IBUF_171 : STD_LOGIC; 
  signal o_main_light_0_OBUF_175 : STD_LOGIC; 
  signal o_main_light_1_OBUF_176 : STD_LOGIC; 
  signal o_main_light_2_OBUF_177 : STD_LOGIC; 
  signal o_ped_light_0_OBUF_181 : STD_LOGIC; 
  signal o_ped_light_2_OBUF_182 : STD_LOGIC; 
  signal o_side_light_0_OBUF_186 : STD_LOGIC; 
  signal o_side_light_1_OBUF_187 : STD_LOGIC; 
  signal o_side_light_2_OBUF_188 : STD_LOGIC; 
  signal port_map_Mcount_s_count_cy_10_rt_191 : STD_LOGIC; 
  signal port_map_Mcount_s_count_cy_11_rt_193 : STD_LOGIC; 
  signal port_map_Mcount_s_count_cy_12_rt_195 : STD_LOGIC; 
  signal port_map_Mcount_s_count_cy_13_rt_197 : STD_LOGIC; 
  signal port_map_Mcount_s_count_cy_14_rt_199 : STD_LOGIC; 
  signal port_map_Mcount_s_count_cy_15_rt_201 : STD_LOGIC; 
  signal port_map_Mcount_s_count_cy_16_rt_203 : STD_LOGIC; 
  signal port_map_Mcount_s_count_cy_17_rt_205 : STD_LOGIC; 
  signal port_map_Mcount_s_count_cy_18_rt_207 : STD_LOGIC; 
  signal port_map_Mcount_s_count_cy_19_rt_209 : STD_LOGIC; 
  signal port_map_Mcount_s_count_cy_1_rt_211 : STD_LOGIC; 
  signal port_map_Mcount_s_count_cy_20_rt_213 : STD_LOGIC; 
  signal port_map_Mcount_s_count_cy_21_rt_215 : STD_LOGIC; 
  signal port_map_Mcount_s_count_cy_22_rt_217 : STD_LOGIC; 
  signal port_map_Mcount_s_count_cy_23_rt_219 : STD_LOGIC; 
  signal port_map_Mcount_s_count_cy_2_rt_221 : STD_LOGIC; 
  signal port_map_Mcount_s_count_cy_3_rt_223 : STD_LOGIC; 
  signal port_map_Mcount_s_count_cy_4_rt_225 : STD_LOGIC; 
  signal port_map_Mcount_s_count_cy_5_rt_227 : STD_LOGIC; 
  signal port_map_Mcount_s_count_cy_6_rt_229 : STD_LOGIC; 
  signal port_map_Mcount_s_count_cy_7_rt_231 : STD_LOGIC; 
  signal port_map_Mcount_s_count_cy_8_rt_233 : STD_LOGIC; 
  signal port_map_Mcount_s_count_cy_9_rt_235 : STD_LOGIC; 
  signal port_map_Mcount_s_count_eqn_0 : STD_LOGIC; 
  signal port_map_Mcount_s_count_eqn_1 : STD_LOGIC; 
  signal port_map_Mcount_s_count_eqn_10 : STD_LOGIC; 
  signal port_map_Mcount_s_count_eqn_11 : STD_LOGIC; 
  signal port_map_Mcount_s_count_eqn_12 : STD_LOGIC; 
  signal port_map_Mcount_s_count_eqn_13 : STD_LOGIC; 
  signal port_map_Mcount_s_count_eqn_14 : STD_LOGIC; 
  signal port_map_Mcount_s_count_eqn_15 : STD_LOGIC; 
  signal port_map_Mcount_s_count_eqn_16 : STD_LOGIC; 
  signal port_map_Mcount_s_count_eqn_17 : STD_LOGIC; 
  signal port_map_Mcount_s_count_eqn_18 : STD_LOGIC; 
  signal port_map_Mcount_s_count_eqn_19 : STD_LOGIC; 
  signal port_map_Mcount_s_count_eqn_2 : STD_LOGIC; 
  signal port_map_Mcount_s_count_eqn_20 : STD_LOGIC; 
  signal port_map_Mcount_s_count_eqn_21 : STD_LOGIC; 
  signal port_map_Mcount_s_count_eqn_22 : STD_LOGIC; 
  signal port_map_Mcount_s_count_eqn_23 : STD_LOGIC; 
  signal port_map_Mcount_s_count_eqn_24 : STD_LOGIC; 
  signal port_map_Mcount_s_count_eqn_3 : STD_LOGIC; 
  signal port_map_Mcount_s_count_eqn_4 : STD_LOGIC; 
  signal port_map_Mcount_s_count_eqn_5 : STD_LOGIC; 
  signal port_map_Mcount_s_count_eqn_6 : STD_LOGIC; 
  signal port_map_Mcount_s_count_eqn_7 : STD_LOGIC; 
  signal port_map_Mcount_s_count_eqn_8 : STD_LOGIC; 
  signal port_map_Mcount_s_count_eqn_9 : STD_LOGIC; 
  signal port_map_Mcount_s_count_xor_24_rt_262 : STD_LOGIC; 
  signal port_map_s_count_cmp_eq0000 : STD_LOGIC; 
  signal port_map_s_count_cmp_eq0000_wg_cy_0_rt_290 : STD_LOGIC; 
  signal port_map_s_oclk_302 : STD_LOGIC; 
  signal port_map_s_oclk_not0001 : STD_LOGIC; 
  signal s_button_register_304 : STD_LOGIC; 
  signal s_clk1hz : STD_LOGIC; 
  signal s_reset_count : STD_LOGIC; 
  signal s_reset_count101_339 : STD_LOGIC; 
  signal Mcount_s_count_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Mcount_s_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal current_state_cmp_eq00001_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal current_state_cmp_eq00001_wg_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal port_map_Mcount_s_count_cy : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal port_map_Mcount_s_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal port_map_s_count : STD_LOGIC_VECTOR ( 24 downto 0 ); 
  signal port_map_s_count_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal port_map_s_count_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 6 downto 1 ); 
  signal s_count : STD_LOGIC_VECTOR ( 31 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  s_button_register : LDC
    generic map(
      INIT => '0'
    )
    port map (
      CLR => o_ped_light_2_OBUF_182,
      D => N1,
      G => i_button_BUFGP_165,
      Q => s_button_register_304
    );
  port_map_s_oclk : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_167,
      CE => port_map_s_count_cmp_eq0000,
      CLR => i_reset_IBUF_169,
      D => port_map_s_oclk_not0001,
      Q => port_map_s_oclk_302
    );
  port_map_s_count_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_167,
      CLR => i_reset_IBUF_169,
      D => port_map_Mcount_s_count_eqn_0,
      Q => port_map_s_count(0)
    );
  port_map_s_count_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_167,
      CLR => i_reset_IBUF_169,
      D => port_map_Mcount_s_count_eqn_1,
      Q => port_map_s_count(1)
    );
  port_map_s_count_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_167,
      CLR => i_reset_IBUF_169,
      D => port_map_Mcount_s_count_eqn_2,
      Q => port_map_s_count(2)
    );
  port_map_s_count_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_167,
      CLR => i_reset_IBUF_169,
      D => port_map_Mcount_s_count_eqn_3,
      Q => port_map_s_count(3)
    );
  port_map_s_count_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_167,
      CLR => i_reset_IBUF_169,
      D => port_map_Mcount_s_count_eqn_4,
      Q => port_map_s_count(4)
    );
  port_map_s_count_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_167,
      CLR => i_reset_IBUF_169,
      D => port_map_Mcount_s_count_eqn_5,
      Q => port_map_s_count(5)
    );
  port_map_s_count_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_167,
      CLR => i_reset_IBUF_169,
      D => port_map_Mcount_s_count_eqn_6,
      Q => port_map_s_count(6)
    );
  port_map_s_count_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_167,
      CLR => i_reset_IBUF_169,
      D => port_map_Mcount_s_count_eqn_7,
      Q => port_map_s_count(7)
    );
  port_map_s_count_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_167,
      CLR => i_reset_IBUF_169,
      D => port_map_Mcount_s_count_eqn_8,
      Q => port_map_s_count(8)
    );
  port_map_s_count_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_167,
      CLR => i_reset_IBUF_169,
      D => port_map_Mcount_s_count_eqn_9,
      Q => port_map_s_count(9)
    );
  port_map_s_count_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_167,
      CLR => i_reset_IBUF_169,
      D => port_map_Mcount_s_count_eqn_10,
      Q => port_map_s_count(10)
    );
  port_map_s_count_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_167,
      CLR => i_reset_IBUF_169,
      D => port_map_Mcount_s_count_eqn_11,
      Q => port_map_s_count(11)
    );
  port_map_s_count_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_167,
      CLR => i_reset_IBUF_169,
      D => port_map_Mcount_s_count_eqn_12,
      Q => port_map_s_count(12)
    );
  port_map_s_count_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_167,
      CLR => i_reset_IBUF_169,
      D => port_map_Mcount_s_count_eqn_13,
      Q => port_map_s_count(13)
    );
  port_map_s_count_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_167,
      CLR => i_reset_IBUF_169,
      D => port_map_Mcount_s_count_eqn_14,
      Q => port_map_s_count(14)
    );
  port_map_s_count_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_167,
      CLR => i_reset_IBUF_169,
      D => port_map_Mcount_s_count_eqn_15,
      Q => port_map_s_count(15)
    );
  port_map_s_count_16 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_167,
      CLR => i_reset_IBUF_169,
      D => port_map_Mcount_s_count_eqn_16,
      Q => port_map_s_count(16)
    );
  port_map_s_count_17 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_167,
      CLR => i_reset_IBUF_169,
      D => port_map_Mcount_s_count_eqn_17,
      Q => port_map_s_count(17)
    );
  port_map_s_count_18 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_167,
      CLR => i_reset_IBUF_169,
      D => port_map_Mcount_s_count_eqn_18,
      Q => port_map_s_count(18)
    );
  port_map_s_count_19 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_167,
      CLR => i_reset_IBUF_169,
      D => port_map_Mcount_s_count_eqn_19,
      Q => port_map_s_count(19)
    );
  port_map_s_count_20 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_167,
      CLR => i_reset_IBUF_169,
      D => port_map_Mcount_s_count_eqn_20,
      Q => port_map_s_count(20)
    );
  port_map_s_count_21 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_167,
      CLR => i_reset_IBUF_169,
      D => port_map_Mcount_s_count_eqn_21,
      Q => port_map_s_count(21)
    );
  port_map_s_count_22 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_167,
      CLR => i_reset_IBUF_169,
      D => port_map_Mcount_s_count_eqn_22,
      Q => port_map_s_count(22)
    );
  port_map_s_count_23 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_167,
      CLR => i_reset_IBUF_169,
      D => port_map_Mcount_s_count_eqn_23,
      Q => port_map_s_count(23)
    );
  port_map_s_count_24 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_167,
      CLR => i_reset_IBUF_169,
      D => port_map_Mcount_s_count_eqn_24,
      Q => port_map_s_count(24)
    );
  s_count_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result_0_1,
      Q => s_count(0)
    );
  s_count_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result_1_1,
      Q => s_count(1)
    );
  s_count_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result_2_1,
      Q => s_count(2)
    );
  s_count_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result_3_1,
      Q => s_count(3)
    );
  s_count_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result_4_1,
      Q => s_count(4)
    );
  s_count_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result_5_1,
      Q => s_count(5)
    );
  s_count_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result_6_1,
      Q => s_count(6)
    );
  s_count_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result_7_1,
      Q => s_count(7)
    );
  s_count_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result_8_1,
      Q => s_count(8)
    );
  s_count_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result_9_1,
      Q => s_count(9)
    );
  s_count_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result_10_1,
      Q => s_count(10)
    );
  s_count_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result_11_1,
      Q => s_count(11)
    );
  s_count_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result_12_1,
      Q => s_count(12)
    );
  s_count_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result_13_1,
      Q => s_count(13)
    );
  s_count_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result_14_1,
      Q => s_count(14)
    );
  s_count_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result_15_1,
      Q => s_count(15)
    );
  s_count_16 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result_16_1,
      Q => s_count(16)
    );
  s_count_17 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result_17_1,
      Q => s_count(17)
    );
  s_count_18 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result_18_1,
      Q => s_count(18)
    );
  s_count_19 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result_19_1,
      Q => s_count(19)
    );
  s_count_20 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result_20_1,
      Q => s_count(20)
    );
  s_count_21 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result_21_1,
      Q => s_count(21)
    );
  s_count_22 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result_22_1,
      Q => s_count(22)
    );
  s_count_23 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result_23_1,
      Q => s_count(23)
    );
  s_count_24 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result_24_1,
      Q => s_count(24)
    );
  s_count_25 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result(25),
      Q => s_count(25)
    );
  s_count_26 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result(26),
      Q => s_count(26)
    );
  s_count_27 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result(27),
      Q => s_count(27)
    );
  s_count_28 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result(28),
      Q => s_count(28)
    );
  s_count_29 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result(29),
      Q => s_count(29)
    );
  s_count_30 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result(30),
      Q => s_count(30)
    );
  s_count_31 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => s_reset_count,
      D => Result(31),
      Q => s_count(31)
    );
  port_map_Mcount_s_count_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => port_map_Mcount_s_count_lut(0),
      O => port_map_Mcount_s_count_cy(0)
    );
  port_map_Mcount_s_count_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => port_map_Mcount_s_count_lut(0),
      O => Result(0)
    );
  port_map_Mcount_s_count_cy_1_Q : MUXCY
    port map (
      CI => port_map_Mcount_s_count_cy(0),
      DI => N0,
      S => port_map_Mcount_s_count_cy_1_rt_211,
      O => port_map_Mcount_s_count_cy(1)
    );
  port_map_Mcount_s_count_xor_1_Q : XORCY
    port map (
      CI => port_map_Mcount_s_count_cy(0),
      LI => port_map_Mcount_s_count_cy_1_rt_211,
      O => Result(1)
    );
  port_map_Mcount_s_count_cy_2_Q : MUXCY
    port map (
      CI => port_map_Mcount_s_count_cy(1),
      DI => N0,
      S => port_map_Mcount_s_count_cy_2_rt_221,
      O => port_map_Mcount_s_count_cy(2)
    );
  port_map_Mcount_s_count_xor_2_Q : XORCY
    port map (
      CI => port_map_Mcount_s_count_cy(1),
      LI => port_map_Mcount_s_count_cy_2_rt_221,
      O => Result(2)
    );
  port_map_Mcount_s_count_cy_3_Q : MUXCY
    port map (
      CI => port_map_Mcount_s_count_cy(2),
      DI => N0,
      S => port_map_Mcount_s_count_cy_3_rt_223,
      O => port_map_Mcount_s_count_cy(3)
    );
  port_map_Mcount_s_count_xor_3_Q : XORCY
    port map (
      CI => port_map_Mcount_s_count_cy(2),
      LI => port_map_Mcount_s_count_cy_3_rt_223,
      O => Result(3)
    );
  port_map_Mcount_s_count_cy_4_Q : MUXCY
    port map (
      CI => port_map_Mcount_s_count_cy(3),
      DI => N0,
      S => port_map_Mcount_s_count_cy_4_rt_225,
      O => port_map_Mcount_s_count_cy(4)
    );
  port_map_Mcount_s_count_xor_4_Q : XORCY
    port map (
      CI => port_map_Mcount_s_count_cy(3),
      LI => port_map_Mcount_s_count_cy_4_rt_225,
      O => Result(4)
    );
  port_map_Mcount_s_count_cy_5_Q : MUXCY
    port map (
      CI => port_map_Mcount_s_count_cy(4),
      DI => N0,
      S => port_map_Mcount_s_count_cy_5_rt_227,
      O => port_map_Mcount_s_count_cy(5)
    );
  port_map_Mcount_s_count_xor_5_Q : XORCY
    port map (
      CI => port_map_Mcount_s_count_cy(4),
      LI => port_map_Mcount_s_count_cy_5_rt_227,
      O => Result(5)
    );
  port_map_Mcount_s_count_cy_6_Q : MUXCY
    port map (
      CI => port_map_Mcount_s_count_cy(5),
      DI => N0,
      S => port_map_Mcount_s_count_cy_6_rt_229,
      O => port_map_Mcount_s_count_cy(6)
    );
  port_map_Mcount_s_count_xor_6_Q : XORCY
    port map (
      CI => port_map_Mcount_s_count_cy(5),
      LI => port_map_Mcount_s_count_cy_6_rt_229,
      O => Result(6)
    );
  port_map_Mcount_s_count_cy_7_Q : MUXCY
    port map (
      CI => port_map_Mcount_s_count_cy(6),
      DI => N0,
      S => port_map_Mcount_s_count_cy_7_rt_231,
      O => port_map_Mcount_s_count_cy(7)
    );
  port_map_Mcount_s_count_xor_7_Q : XORCY
    port map (
      CI => port_map_Mcount_s_count_cy(6),
      LI => port_map_Mcount_s_count_cy_7_rt_231,
      O => Result(7)
    );
  port_map_Mcount_s_count_cy_8_Q : MUXCY
    port map (
      CI => port_map_Mcount_s_count_cy(7),
      DI => N0,
      S => port_map_Mcount_s_count_cy_8_rt_233,
      O => port_map_Mcount_s_count_cy(8)
    );
  port_map_Mcount_s_count_xor_8_Q : XORCY
    port map (
      CI => port_map_Mcount_s_count_cy(7),
      LI => port_map_Mcount_s_count_cy_8_rt_233,
      O => Result(8)
    );
  port_map_Mcount_s_count_cy_9_Q : MUXCY
    port map (
      CI => port_map_Mcount_s_count_cy(8),
      DI => N0,
      S => port_map_Mcount_s_count_cy_9_rt_235,
      O => port_map_Mcount_s_count_cy(9)
    );
  port_map_Mcount_s_count_xor_9_Q : XORCY
    port map (
      CI => port_map_Mcount_s_count_cy(8),
      LI => port_map_Mcount_s_count_cy_9_rt_235,
      O => Result(9)
    );
  port_map_Mcount_s_count_cy_10_Q : MUXCY
    port map (
      CI => port_map_Mcount_s_count_cy(9),
      DI => N0,
      S => port_map_Mcount_s_count_cy_10_rt_191,
      O => port_map_Mcount_s_count_cy(10)
    );
  port_map_Mcount_s_count_xor_10_Q : XORCY
    port map (
      CI => port_map_Mcount_s_count_cy(9),
      LI => port_map_Mcount_s_count_cy_10_rt_191,
      O => Result(10)
    );
  port_map_Mcount_s_count_cy_11_Q : MUXCY
    port map (
      CI => port_map_Mcount_s_count_cy(10),
      DI => N0,
      S => port_map_Mcount_s_count_cy_11_rt_193,
      O => port_map_Mcount_s_count_cy(11)
    );
  port_map_Mcount_s_count_xor_11_Q : XORCY
    port map (
      CI => port_map_Mcount_s_count_cy(10),
      LI => port_map_Mcount_s_count_cy_11_rt_193,
      O => Result(11)
    );
  port_map_Mcount_s_count_cy_12_Q : MUXCY
    port map (
      CI => port_map_Mcount_s_count_cy(11),
      DI => N0,
      S => port_map_Mcount_s_count_cy_12_rt_195,
      O => port_map_Mcount_s_count_cy(12)
    );
  port_map_Mcount_s_count_xor_12_Q : XORCY
    port map (
      CI => port_map_Mcount_s_count_cy(11),
      LI => port_map_Mcount_s_count_cy_12_rt_195,
      O => Result(12)
    );
  port_map_Mcount_s_count_cy_13_Q : MUXCY
    port map (
      CI => port_map_Mcount_s_count_cy(12),
      DI => N0,
      S => port_map_Mcount_s_count_cy_13_rt_197,
      O => port_map_Mcount_s_count_cy(13)
    );
  port_map_Mcount_s_count_xor_13_Q : XORCY
    port map (
      CI => port_map_Mcount_s_count_cy(12),
      LI => port_map_Mcount_s_count_cy_13_rt_197,
      O => Result(13)
    );
  port_map_Mcount_s_count_cy_14_Q : MUXCY
    port map (
      CI => port_map_Mcount_s_count_cy(13),
      DI => N0,
      S => port_map_Mcount_s_count_cy_14_rt_199,
      O => port_map_Mcount_s_count_cy(14)
    );
  port_map_Mcount_s_count_xor_14_Q : XORCY
    port map (
      CI => port_map_Mcount_s_count_cy(13),
      LI => port_map_Mcount_s_count_cy_14_rt_199,
      O => Result(14)
    );
  port_map_Mcount_s_count_cy_15_Q : MUXCY
    port map (
      CI => port_map_Mcount_s_count_cy(14),
      DI => N0,
      S => port_map_Mcount_s_count_cy_15_rt_201,
      O => port_map_Mcount_s_count_cy(15)
    );
  port_map_Mcount_s_count_xor_15_Q : XORCY
    port map (
      CI => port_map_Mcount_s_count_cy(14),
      LI => port_map_Mcount_s_count_cy_15_rt_201,
      O => Result(15)
    );
  port_map_Mcount_s_count_cy_16_Q : MUXCY
    port map (
      CI => port_map_Mcount_s_count_cy(15),
      DI => N0,
      S => port_map_Mcount_s_count_cy_16_rt_203,
      O => port_map_Mcount_s_count_cy(16)
    );
  port_map_Mcount_s_count_xor_16_Q : XORCY
    port map (
      CI => port_map_Mcount_s_count_cy(15),
      LI => port_map_Mcount_s_count_cy_16_rt_203,
      O => Result(16)
    );
  port_map_Mcount_s_count_cy_17_Q : MUXCY
    port map (
      CI => port_map_Mcount_s_count_cy(16),
      DI => N0,
      S => port_map_Mcount_s_count_cy_17_rt_205,
      O => port_map_Mcount_s_count_cy(17)
    );
  port_map_Mcount_s_count_xor_17_Q : XORCY
    port map (
      CI => port_map_Mcount_s_count_cy(16),
      LI => port_map_Mcount_s_count_cy_17_rt_205,
      O => Result(17)
    );
  port_map_Mcount_s_count_cy_18_Q : MUXCY
    port map (
      CI => port_map_Mcount_s_count_cy(17),
      DI => N0,
      S => port_map_Mcount_s_count_cy_18_rt_207,
      O => port_map_Mcount_s_count_cy(18)
    );
  port_map_Mcount_s_count_xor_18_Q : XORCY
    port map (
      CI => port_map_Mcount_s_count_cy(17),
      LI => port_map_Mcount_s_count_cy_18_rt_207,
      O => Result(18)
    );
  port_map_Mcount_s_count_cy_19_Q : MUXCY
    port map (
      CI => port_map_Mcount_s_count_cy(18),
      DI => N0,
      S => port_map_Mcount_s_count_cy_19_rt_209,
      O => port_map_Mcount_s_count_cy(19)
    );
  port_map_Mcount_s_count_xor_19_Q : XORCY
    port map (
      CI => port_map_Mcount_s_count_cy(18),
      LI => port_map_Mcount_s_count_cy_19_rt_209,
      O => Result(19)
    );
  port_map_Mcount_s_count_cy_20_Q : MUXCY
    port map (
      CI => port_map_Mcount_s_count_cy(19),
      DI => N0,
      S => port_map_Mcount_s_count_cy_20_rt_213,
      O => port_map_Mcount_s_count_cy(20)
    );
  port_map_Mcount_s_count_xor_20_Q : XORCY
    port map (
      CI => port_map_Mcount_s_count_cy(19),
      LI => port_map_Mcount_s_count_cy_20_rt_213,
      O => Result(20)
    );
  port_map_Mcount_s_count_cy_21_Q : MUXCY
    port map (
      CI => port_map_Mcount_s_count_cy(20),
      DI => N0,
      S => port_map_Mcount_s_count_cy_21_rt_215,
      O => port_map_Mcount_s_count_cy(21)
    );
  port_map_Mcount_s_count_xor_21_Q : XORCY
    port map (
      CI => port_map_Mcount_s_count_cy(20),
      LI => port_map_Mcount_s_count_cy_21_rt_215,
      O => Result(21)
    );
  port_map_Mcount_s_count_cy_22_Q : MUXCY
    port map (
      CI => port_map_Mcount_s_count_cy(21),
      DI => N0,
      S => port_map_Mcount_s_count_cy_22_rt_217,
      O => port_map_Mcount_s_count_cy(22)
    );
  port_map_Mcount_s_count_xor_22_Q : XORCY
    port map (
      CI => port_map_Mcount_s_count_cy(21),
      LI => port_map_Mcount_s_count_cy_22_rt_217,
      O => Result(22)
    );
  port_map_Mcount_s_count_cy_23_Q : MUXCY
    port map (
      CI => port_map_Mcount_s_count_cy(22),
      DI => N0,
      S => port_map_Mcount_s_count_cy_23_rt_219,
      O => port_map_Mcount_s_count_cy(23)
    );
  port_map_Mcount_s_count_xor_23_Q : XORCY
    port map (
      CI => port_map_Mcount_s_count_cy(22),
      LI => port_map_Mcount_s_count_cy_23_rt_219,
      O => Result(23)
    );
  port_map_Mcount_s_count_xor_24_Q : XORCY
    port map (
      CI => port_map_Mcount_s_count_cy(23),
      LI => port_map_Mcount_s_count_xor_24_rt_262,
      O => Result(24)
    );
  Mcount_s_count_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => Mcount_s_count_lut(0),
      O => Mcount_s_count_cy(0)
    );
  Mcount_s_count_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Mcount_s_count_lut(0),
      O => Result_0_1
    );
  Mcount_s_count_cy_1_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(0),
      DI => N0,
      S => Mcount_s_count_cy_1_rt_22,
      O => Mcount_s_count_cy(1)
    );
  Mcount_s_count_xor_1_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(0),
      LI => Mcount_s_count_cy_1_rt_22,
      O => Result_1_1
    );
  Mcount_s_count_cy_2_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(1),
      DI => N0,
      S => Mcount_s_count_cy_2_rt_44,
      O => Mcount_s_count_cy(2)
    );
  Mcount_s_count_xor_2_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(1),
      LI => Mcount_s_count_cy_2_rt_44,
      O => Result_2_1
    );
  Mcount_s_count_cy_3_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(2),
      DI => N0,
      S => Mcount_s_count_cy_3_rt_48,
      O => Mcount_s_count_cy(3)
    );
  Mcount_s_count_xor_3_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(2),
      LI => Mcount_s_count_cy_3_rt_48,
      O => Result_3_1
    );
  Mcount_s_count_cy_4_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(3),
      DI => N0,
      S => Mcount_s_count_cy_4_rt_50,
      O => Mcount_s_count_cy(4)
    );
  Mcount_s_count_xor_4_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(3),
      LI => Mcount_s_count_cy_4_rt_50,
      O => Result_4_1
    );
  Mcount_s_count_cy_5_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(4),
      DI => N0,
      S => Mcount_s_count_cy_5_rt_52,
      O => Mcount_s_count_cy(5)
    );
  Mcount_s_count_xor_5_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(4),
      LI => Mcount_s_count_cy_5_rt_52,
      O => Result_5_1
    );
  Mcount_s_count_cy_6_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(5),
      DI => N0,
      S => Mcount_s_count_cy_6_rt_54,
      O => Mcount_s_count_cy(6)
    );
  Mcount_s_count_xor_6_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(5),
      LI => Mcount_s_count_cy_6_rt_54,
      O => Result_6_1
    );
  Mcount_s_count_cy_7_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(6),
      DI => N0,
      S => Mcount_s_count_cy_7_rt_56,
      O => Mcount_s_count_cy(7)
    );
  Mcount_s_count_xor_7_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(6),
      LI => Mcount_s_count_cy_7_rt_56,
      O => Result_7_1
    );
  Mcount_s_count_cy_8_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(7),
      DI => N0,
      S => Mcount_s_count_cy_8_rt_58,
      O => Mcount_s_count_cy(8)
    );
  Mcount_s_count_xor_8_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(7),
      LI => Mcount_s_count_cy_8_rt_58,
      O => Result_8_1
    );
  Mcount_s_count_cy_9_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(8),
      DI => N0,
      S => Mcount_s_count_cy_9_rt_60,
      O => Mcount_s_count_cy(9)
    );
  Mcount_s_count_xor_9_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(8),
      LI => Mcount_s_count_cy_9_rt_60,
      O => Result_9_1
    );
  Mcount_s_count_cy_10_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(9),
      DI => N0,
      S => Mcount_s_count_cy_10_rt_2,
      O => Mcount_s_count_cy(10)
    );
  Mcount_s_count_xor_10_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(9),
      LI => Mcount_s_count_cy_10_rt_2,
      O => Result_10_1
    );
  Mcount_s_count_cy_11_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(10),
      DI => N0,
      S => Mcount_s_count_cy_11_rt_4,
      O => Mcount_s_count_cy(11)
    );
  Mcount_s_count_xor_11_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(10),
      LI => Mcount_s_count_cy_11_rt_4,
      O => Result_11_1
    );
  Mcount_s_count_cy_12_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(11),
      DI => N0,
      S => Mcount_s_count_cy_12_rt_6,
      O => Mcount_s_count_cy(12)
    );
  Mcount_s_count_xor_12_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(11),
      LI => Mcount_s_count_cy_12_rt_6,
      O => Result_12_1
    );
  Mcount_s_count_cy_13_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(12),
      DI => N0,
      S => Mcount_s_count_cy_13_rt_8,
      O => Mcount_s_count_cy(13)
    );
  Mcount_s_count_xor_13_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(12),
      LI => Mcount_s_count_cy_13_rt_8,
      O => Result_13_1
    );
  Mcount_s_count_cy_14_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(13),
      DI => N0,
      S => Mcount_s_count_cy_14_rt_10,
      O => Mcount_s_count_cy(14)
    );
  Mcount_s_count_xor_14_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(13),
      LI => Mcount_s_count_cy_14_rt_10,
      O => Result_14_1
    );
  Mcount_s_count_cy_15_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(14),
      DI => N0,
      S => Mcount_s_count_cy_15_rt_12,
      O => Mcount_s_count_cy(15)
    );
  Mcount_s_count_xor_15_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(14),
      LI => Mcount_s_count_cy_15_rt_12,
      O => Result_15_1
    );
  Mcount_s_count_cy_16_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(15),
      DI => N0,
      S => Mcount_s_count_cy_16_rt_14,
      O => Mcount_s_count_cy(16)
    );
  Mcount_s_count_xor_16_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(15),
      LI => Mcount_s_count_cy_16_rt_14,
      O => Result_16_1
    );
  Mcount_s_count_cy_17_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(16),
      DI => N0,
      S => Mcount_s_count_cy_17_rt_16,
      O => Mcount_s_count_cy(17)
    );
  Mcount_s_count_xor_17_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(16),
      LI => Mcount_s_count_cy_17_rt_16,
      O => Result_17_1
    );
  Mcount_s_count_cy_18_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(17),
      DI => N0,
      S => Mcount_s_count_cy_18_rt_18,
      O => Mcount_s_count_cy(18)
    );
  Mcount_s_count_xor_18_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(17),
      LI => Mcount_s_count_cy_18_rt_18,
      O => Result_18_1
    );
  Mcount_s_count_cy_19_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(18),
      DI => N0,
      S => Mcount_s_count_cy_19_rt_20,
      O => Mcount_s_count_cy(19)
    );
  Mcount_s_count_xor_19_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(18),
      LI => Mcount_s_count_cy_19_rt_20,
      O => Result_19_1
    );
  Mcount_s_count_cy_20_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(19),
      DI => N0,
      S => Mcount_s_count_cy_20_rt_24,
      O => Mcount_s_count_cy(20)
    );
  Mcount_s_count_xor_20_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(19),
      LI => Mcount_s_count_cy_20_rt_24,
      O => Result_20_1
    );
  Mcount_s_count_cy_21_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(20),
      DI => N0,
      S => Mcount_s_count_cy_21_rt_26,
      O => Mcount_s_count_cy(21)
    );
  Mcount_s_count_xor_21_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(20),
      LI => Mcount_s_count_cy_21_rt_26,
      O => Result_21_1
    );
  Mcount_s_count_cy_22_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(21),
      DI => N0,
      S => Mcount_s_count_cy_22_rt_28,
      O => Mcount_s_count_cy(22)
    );
  Mcount_s_count_xor_22_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(21),
      LI => Mcount_s_count_cy_22_rt_28,
      O => Result_22_1
    );
  Mcount_s_count_cy_23_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(22),
      DI => N0,
      S => Mcount_s_count_cy_23_rt_30,
      O => Mcount_s_count_cy(23)
    );
  Mcount_s_count_xor_23_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(22),
      LI => Mcount_s_count_cy_23_rt_30,
      O => Result_23_1
    );
  Mcount_s_count_cy_24_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(23),
      DI => N0,
      S => Mcount_s_count_cy_24_rt_32,
      O => Mcount_s_count_cy(24)
    );
  Mcount_s_count_xor_24_Q : XORCY
    port map (
      CI => Mcount_s_count_cy(23),
      LI => Mcount_s_count_cy_24_rt_32,
      O => Result_24_1
    );
  Mcount_s_count_cy_25_Q : MUXCY
    port map (
      CI => Mcount_s_count_cy(24),
      DI => N0,
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
      DI => N0,
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
      DI => N0,
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
      DI => N0,
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
      DI => N0,
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
      DI => N0,
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
      I => port_map_s_oclk_302,
      O => s_clk1hz
    );
  current_state_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => i_reset_IBUF_169,
      D => current_state_FSM_FFd3_In,
      Q => current_state_FSM_FFd3_143
    );
  current_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => i_reset_IBUF_169,
      D => current_state_FSM_FFd1_In,
      Q => current_state_FSM_FFd1_135
    );
  current_state_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => s_clk1hz,
      CLR => i_reset_IBUF_169,
      D => current_state_FSM_FFd2_In,
      Q => current_state_FSM_FFd2_137
    );
  port_map_s_count_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => port_map_s_count_cmp_eq0000_wg_cy_0_rt_290,
      O => port_map_s_count_cmp_eq0000_wg_cy(0)
    );
  port_map_s_count_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => port_map_s_count(9),
      I1 => port_map_s_count(7),
      I2 => port_map_s_count(4),
      I3 => port_map_s_count(8),
      O => port_map_s_count_cmp_eq0000_wg_lut(1)
    );
  port_map_s_count_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => port_map_s_count_cmp_eq0000_wg_cy(0),
      DI => N0,
      S => port_map_s_count_cmp_eq0000_wg_lut(1),
      O => port_map_s_count_cmp_eq0000_wg_cy(1)
    );
  port_map_s_count_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => port_map_s_count(12),
      I1 => port_map_s_count(10),
      I2 => port_map_s_count(6),
      I3 => port_map_s_count(11),
      O => port_map_s_count_cmp_eq0000_wg_lut(2)
    );
  port_map_s_count_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => port_map_s_count_cmp_eq0000_wg_cy(1),
      DI => N0,
      S => port_map_s_count_cmp_eq0000_wg_lut(2),
      O => port_map_s_count_cmp_eq0000_wg_cy(2)
    );
  port_map_s_count_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => port_map_s_count(15),
      I1 => port_map_s_count(13),
      I2 => port_map_s_count(3),
      I3 => port_map_s_count(14),
      O => port_map_s_count_cmp_eq0000_wg_lut(3)
    );
  port_map_s_count_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => port_map_s_count_cmp_eq0000_wg_cy(2),
      DI => N0,
      S => port_map_s_count_cmp_eq0000_wg_lut(3),
      O => port_map_s_count_cmp_eq0000_wg_cy(3)
    );
  port_map_s_count_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => port_map_s_count(17),
      I1 => port_map_s_count(16),
      I2 => port_map_s_count(2),
      I3 => port_map_s_count(18),
      O => port_map_s_count_cmp_eq0000_wg_lut(4)
    );
  port_map_s_count_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => port_map_s_count_cmp_eq0000_wg_cy(3),
      DI => N0,
      S => port_map_s_count_cmp_eq0000_wg_lut(4),
      O => port_map_s_count_cmp_eq0000_wg_cy(4)
    );
  port_map_s_count_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => port_map_s_count(21),
      I1 => port_map_s_count(19),
      I2 => port_map_s_count(1),
      I3 => port_map_s_count(20),
      O => port_map_s_count_cmp_eq0000_wg_lut(5)
    );
  port_map_s_count_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => port_map_s_count_cmp_eq0000_wg_cy(4),
      DI => N0,
      S => port_map_s_count_cmp_eq0000_wg_lut(5),
      O => port_map_s_count_cmp_eq0000_wg_cy(5)
    );
  port_map_s_count_cmp_eq0000_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => port_map_s_count(23),
      I1 => port_map_s_count(22),
      I2 => port_map_s_count(0),
      I3 => port_map_s_count(24),
      O => port_map_s_count_cmp_eq0000_wg_lut(6)
    );
  port_map_s_count_cmp_eq0000_wg_cy_6_Q : MUXCY
    port map (
      CI => port_map_s_count_cmp_eq0000_wg_cy(5),
      DI => N0,
      S => port_map_s_count_cmp_eq0000_wg_lut(6),
      O => port_map_s_count_cmp_eq0000
    );
  current_state_cmp_eq00001_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => s_count(23),
      I1 => s_count(21),
      I2 => s_count(24),
      I3 => s_count(22),
      O => current_state_cmp_eq00001_wg_lut(0)
    );
  current_state_cmp_eq00001_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => current_state_cmp_eq00001_wg_lut(0),
      O => current_state_cmp_eq00001_wg_cy(0)
    );
  current_state_cmp_eq00001_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => s_count(20),
      I1 => s_count(17),
      I2 => s_count(26),
      I3 => s_count(19),
      O => current_state_cmp_eq00001_wg_lut(1)
    );
  current_state_cmp_eq00001_wg_cy_1_Q : MUXCY
    port map (
      CI => current_state_cmp_eq00001_wg_cy(0),
      DI => N0,
      S => current_state_cmp_eq00001_wg_lut(1),
      O => current_state_cmp_eq00001_wg_cy(1)
    );
  current_state_cmp_eq00001_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => s_count(18),
      I1 => s_count(16),
      I2 => s_count(25),
      I3 => s_count(14),
      O => current_state_cmp_eq00001_wg_lut(2)
    );
  current_state_cmp_eq00001_wg_cy_2_Q : MUXCY
    port map (
      CI => current_state_cmp_eq00001_wg_cy(1),
      DI => N0,
      S => current_state_cmp_eq00001_wg_lut(2),
      O => current_state_cmp_eq00001_wg_cy(2)
    );
  current_state_cmp_eq00001_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => s_count(15),
      I1 => s_count(13),
      I2 => s_count(28),
      I3 => s_count(10),
      O => current_state_cmp_eq00001_wg_lut(3)
    );
  current_state_cmp_eq00001_wg_cy_3_Q : MUXCY
    port map (
      CI => current_state_cmp_eq00001_wg_cy(2),
      DI => N0,
      S => current_state_cmp_eq00001_wg_lut(3),
      O => current_state_cmp_eq00001_wg_cy(3)
    );
  current_state_cmp_eq00001_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => s_count(11),
      I1 => s_count(12),
      I2 => s_count(27),
      I3 => s_count(8),
      O => current_state_cmp_eq00001_wg_lut(4)
    );
  current_state_cmp_eq00001_wg_cy_4_Q : MUXCY
    port map (
      CI => current_state_cmp_eq00001_wg_cy(3),
      DI => N0,
      S => current_state_cmp_eq00001_wg_lut(4),
      O => current_state_cmp_eq00001_wg_cy(4)
    );
  current_state_cmp_eq00001_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => s_count(9),
      I1 => s_count(7),
      I2 => s_count(29),
      I3 => s_count(5),
      O => current_state_cmp_eq00001_wg_lut(5)
    );
  current_state_cmp_eq00001_wg_cy_5_Q : MUXCY
    port map (
      CI => current_state_cmp_eq00001_wg_cy(4),
      DI => N0,
      S => current_state_cmp_eq00001_wg_lut(5),
      O => current_state_cmp_eq00001_wg_cy(5)
    );
  current_state_cmp_eq00001_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => s_count(31),
      I1 => s_count(6),
      I2 => s_count(30),
      I3 => s_count(4),
      O => current_state_cmp_eq00001_wg_lut(6)
    );
  current_state_cmp_eq00001_wg_cy_6_Q : MUXCY
    port map (
      CI => current_state_cmp_eq00001_wg_cy(5),
      DI => N0,
      S => current_state_cmp_eq00001_wg_lut(6),
      O => current_state_cmp_eq00001_wg_cy(6)
    );
  current_state_FSM_Out61 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => current_state_FSM_FFd3_143,
      I1 => current_state_FSM_FFd1_135,
      O => o_side_light_1_OBUF_187
    );
  current_state_FSM_Out01 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => current_state_FSM_FFd2_137,
      I1 => current_state_FSM_FFd1_135,
      O => o_ped_light_2_OBUF_182
    );
  current_state_FSM_Out81 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => current_state_FSM_FFd2_137,
      I1 => current_state_FSM_FFd3_143,
      I2 => current_state_FSM_FFd1_135,
      O => o_ped_light_0_OBUF_181
    );
  current_state_FSM_Out51 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => current_state_FSM_FFd1_135,
      I1 => current_state_FSM_FFd2_137,
      I2 => current_state_FSM_FFd3_143,
      O => o_side_light_2_OBUF_188
    );
  current_state_FSM_Out41 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => current_state_FSM_FFd2_137,
      I1 => current_state_FSM_FFd1_135,
      I2 => current_state_FSM_FFd3_143,
      O => o_main_light_1_OBUF_176
    );
  current_state_FSM_Out111 : LUT3
    generic map(
      INIT => X"AB"
    )
    port map (
      I0 => current_state_FSM_FFd1_135,
      I1 => current_state_FSM_FFd3_143,
      I2 => current_state_FSM_FFd2_137,
      O => o_main_light_0_OBUF_175
    );
  current_state_FSM_Out91 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => current_state_FSM_FFd1_135,
      I1 => current_state_FSM_FFd2_137,
      O => o_side_light_0_OBUF_186
    );
  port_map_Mcount_s_count_eqn_71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(7),
      I1 => port_map_s_count_cmp_eq0000,
      O => port_map_Mcount_s_count_eqn_7
    );
  port_map_Mcount_s_count_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(6),
      I1 => port_map_s_count_cmp_eq0000,
      O => port_map_Mcount_s_count_eqn_6
    );
  port_map_Mcount_s_count_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(5),
      I1 => port_map_s_count_cmp_eq0000,
      O => port_map_Mcount_s_count_eqn_5
    );
  port_map_Mcount_s_count_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(4),
      I1 => port_map_s_count_cmp_eq0000,
      O => port_map_Mcount_s_count_eqn_4
    );
  port_map_Mcount_s_count_eqn_31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(3),
      I1 => port_map_s_count_cmp_eq0000,
      O => port_map_Mcount_s_count_eqn_3
    );
  port_map_Mcount_s_count_eqn_25 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(2),
      I1 => port_map_s_count_cmp_eq0000,
      O => port_map_Mcount_s_count_eqn_2
    );
  port_map_Mcount_s_count_eqn_110 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(1),
      I1 => port_map_s_count_cmp_eq0000,
      O => port_map_Mcount_s_count_eqn_1
    );
  port_map_Mcount_s_count_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(0),
      I1 => port_map_s_count_cmp_eq0000,
      O => port_map_Mcount_s_count_eqn_0
    );
  port_map_Mcount_s_count_eqn_81 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => port_map_s_count_cmp_eq0000,
      I1 => Result(8),
      O => port_map_Mcount_s_count_eqn_8
    );
  port_map_Mcount_s_count_eqn_91 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => port_map_s_count_cmp_eq0000,
      I1 => Result(9),
      O => port_map_Mcount_s_count_eqn_9
    );
  port_map_Mcount_s_count_eqn_101 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => port_map_s_count_cmp_eq0000,
      I1 => Result(10),
      O => port_map_Mcount_s_count_eqn_10
    );
  port_map_Mcount_s_count_eqn_111 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => port_map_s_count_cmp_eq0000,
      I1 => Result(11),
      O => port_map_Mcount_s_count_eqn_11
    );
  port_map_Mcount_s_count_eqn_121 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => port_map_s_count_cmp_eq0000,
      I1 => Result(12),
      O => port_map_Mcount_s_count_eqn_12
    );
  port_map_Mcount_s_count_eqn_131 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => port_map_s_count_cmp_eq0000,
      I1 => Result(13),
      O => port_map_Mcount_s_count_eqn_13
    );
  port_map_Mcount_s_count_eqn_141 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => port_map_s_count_cmp_eq0000,
      I1 => Result(14),
      O => port_map_Mcount_s_count_eqn_14
    );
  port_map_Mcount_s_count_eqn_151 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => port_map_s_count_cmp_eq0000,
      I1 => Result(15),
      O => port_map_Mcount_s_count_eqn_15
    );
  port_map_Mcount_s_count_eqn_161 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => port_map_s_count_cmp_eq0000,
      I1 => Result(16),
      O => port_map_Mcount_s_count_eqn_16
    );
  port_map_Mcount_s_count_eqn_171 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => port_map_s_count_cmp_eq0000,
      I1 => Result(17),
      O => port_map_Mcount_s_count_eqn_17
    );
  port_map_Mcount_s_count_eqn_181 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => port_map_s_count_cmp_eq0000,
      I1 => Result(18),
      O => port_map_Mcount_s_count_eqn_18
    );
  port_map_Mcount_s_count_eqn_191 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => port_map_s_count_cmp_eq0000,
      I1 => Result(19),
      O => port_map_Mcount_s_count_eqn_19
    );
  port_map_Mcount_s_count_eqn_201 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => port_map_s_count_cmp_eq0000,
      I1 => Result(20),
      O => port_map_Mcount_s_count_eqn_20
    );
  port_map_Mcount_s_count_eqn_211 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => port_map_s_count_cmp_eq0000,
      I1 => Result(21),
      O => port_map_Mcount_s_count_eqn_21
    );
  port_map_Mcount_s_count_eqn_221 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => port_map_s_count_cmp_eq0000,
      I1 => Result(22),
      O => port_map_Mcount_s_count_eqn_22
    );
  port_map_Mcount_s_count_eqn_231 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => port_map_s_count_cmp_eq0000,
      I1 => Result(23),
      O => port_map_Mcount_s_count_eqn_23
    );
  port_map_Mcount_s_count_eqn_241 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => port_map_s_count_cmp_eq0000,
      I1 => Result(24),
      O => port_map_Mcount_s_count_eqn_24
    );
  current_state_cmp_eq000211 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => s_count(2),
      I1 => s_count(3),
      I2 => s_count(1),
      I3 => current_state_cmp_eq00001_wg_cy(6),
      O => N10
    );
  current_state_FSM_FFd3_In87 : LUT4
    generic map(
      INIT => X"0402"
    )
    port map (
      I0 => s_count(0),
      I1 => s_count(3),
      I2 => current_state_FSM_FFd2_137,
      I3 => current_state_FSM_FFd1_135,
      O => current_state_FSM_FFd3_In87_148
    );
  current_state_FSM_FFd3_In101 : LUT4
    generic map(
      INIT => X"EEEC"
    )
    port map (
      I0 => current_state_FSM_FFd3_143,
      I1 => current_state_FSM_FFd3_In88_149,
      I2 => current_state_FSM_FFd3_In10_145,
      I3 => current_state_FSM_FFd3_In28_147,
      O => current_state_FSM_FFd3_In
    );
  current_state_FSM_FFd2_In42 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => s_count(0),
      I1 => s_count(3),
      O => current_state_FSM_FFd2_In42_140
    );
  current_state_FSM_FFd2_In56 : LUT4
    generic map(
      INIT => X"EEEC"
    )
    port map (
      I0 => current_state_FSM_FFd2_137,
      I1 => current_state_FSM_FFd2_In51_141,
      I2 => current_state_FSM_FFd2_In17_139,
      I3 => current_state_FSM_FFd2_In9_142,
      O => current_state_FSM_FFd2_In
    );
  i_sensor_IBUF : IBUF
    port map (
      I => i_sensor,
      O => i_sensor_IBUF_171
    );
  i_reset_IBUF : IBUF
    port map (
      I => i_reset,
      O => i_reset_IBUF_169
    );
  o_ped_light_2_OBUF : OBUF
    port map (
      I => o_ped_light_2_OBUF_182,
      O => o_ped_light(2)
    );
  o_ped_light_1_OBUF : OBUF
    port map (
      I => N0,
      O => o_ped_light(1)
    );
  o_ped_light_0_OBUF : OBUF
    port map (
      I => o_ped_light_0_OBUF_181,
      O => o_ped_light(0)
    );
  o_main_light_2_OBUF : OBUF
    port map (
      I => o_main_light_2_OBUF_177,
      O => o_main_light(2)
    );
  o_main_light_1_OBUF : OBUF
    port map (
      I => o_main_light_1_OBUF_176,
      O => o_main_light(1)
    );
  o_main_light_0_OBUF : OBUF
    port map (
      I => o_main_light_0_OBUF_175,
      O => o_main_light(0)
    );
  o_side_light_2_OBUF : OBUF
    port map (
      I => o_side_light_2_OBUF_188,
      O => o_side_light(2)
    );
  o_side_light_1_OBUF : OBUF
    port map (
      I => o_side_light_1_OBUF_187,
      O => o_side_light(1)
    );
  o_side_light_0_OBUF : OBUF
    port map (
      I => o_side_light_0_OBUF_186,
      O => o_side_light(0)
    );
  port_map_Mcount_s_count_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => port_map_s_count(1),
      O => port_map_Mcount_s_count_cy_1_rt_211
    );
  port_map_Mcount_s_count_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => port_map_s_count(2),
      O => port_map_Mcount_s_count_cy_2_rt_221
    );
  port_map_Mcount_s_count_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => port_map_s_count(3),
      O => port_map_Mcount_s_count_cy_3_rt_223
    );
  port_map_Mcount_s_count_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => port_map_s_count(4),
      O => port_map_Mcount_s_count_cy_4_rt_225
    );
  port_map_Mcount_s_count_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => port_map_s_count(5),
      O => port_map_Mcount_s_count_cy_5_rt_227
    );
  port_map_Mcount_s_count_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => port_map_s_count(6),
      O => port_map_Mcount_s_count_cy_6_rt_229
    );
  port_map_Mcount_s_count_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => port_map_s_count(7),
      O => port_map_Mcount_s_count_cy_7_rt_231
    );
  port_map_Mcount_s_count_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => port_map_s_count(8),
      O => port_map_Mcount_s_count_cy_8_rt_233
    );
  port_map_Mcount_s_count_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => port_map_s_count(9),
      O => port_map_Mcount_s_count_cy_9_rt_235
    );
  port_map_Mcount_s_count_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => port_map_s_count(10),
      O => port_map_Mcount_s_count_cy_10_rt_191
    );
  port_map_Mcount_s_count_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => port_map_s_count(11),
      O => port_map_Mcount_s_count_cy_11_rt_193
    );
  port_map_Mcount_s_count_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => port_map_s_count(12),
      O => port_map_Mcount_s_count_cy_12_rt_195
    );
  port_map_Mcount_s_count_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => port_map_s_count(13),
      O => port_map_Mcount_s_count_cy_13_rt_197
    );
  port_map_Mcount_s_count_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => port_map_s_count(14),
      O => port_map_Mcount_s_count_cy_14_rt_199
    );
  port_map_Mcount_s_count_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => port_map_s_count(15),
      O => port_map_Mcount_s_count_cy_15_rt_201
    );
  port_map_Mcount_s_count_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => port_map_s_count(16),
      O => port_map_Mcount_s_count_cy_16_rt_203
    );
  port_map_Mcount_s_count_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => port_map_s_count(17),
      O => port_map_Mcount_s_count_cy_17_rt_205
    );
  port_map_Mcount_s_count_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => port_map_s_count(18),
      O => port_map_Mcount_s_count_cy_18_rt_207
    );
  port_map_Mcount_s_count_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => port_map_s_count(19),
      O => port_map_Mcount_s_count_cy_19_rt_209
    );
  port_map_Mcount_s_count_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => port_map_s_count(20),
      O => port_map_Mcount_s_count_cy_20_rt_213
    );
  port_map_Mcount_s_count_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => port_map_s_count(21),
      O => port_map_Mcount_s_count_cy_21_rt_215
    );
  port_map_Mcount_s_count_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => port_map_s_count(22),
      O => port_map_Mcount_s_count_cy_22_rt_217
    );
  port_map_Mcount_s_count_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => port_map_s_count(23),
      O => port_map_Mcount_s_count_cy_23_rt_219
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
  port_map_s_count_cmp_eq0000_wg_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => port_map_s_count(5),
      O => port_map_s_count_cmp_eq0000_wg_cy_0_rt_290
    );
  port_map_Mcount_s_count_xor_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => port_map_s_count(24),
      O => port_map_Mcount_s_count_xor_24_rt_262
    );
  Mcount_s_count_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_count(31),
      O => Mcount_s_count_xor_31_rt_62
    );
  current_state_cmp_eq00031_SW0 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s_button_register_304,
      I1 => s_count(3),
      O => N01
    );
  current_state_cmp_eq00031_SW1 : LUT4
    generic map(
      INIT => X"A8AE"
    )
    port map (
      I0 => current_state_FSM_FFd1_135,
      I1 => current_state_FSM_FFd2_137,
      I2 => s_count(3),
      I3 => current_state_FSM_FFd3_143,
      O => N2
    );
  current_state_FSM_FFd1_In1 : LUT4
    generic map(
      INIT => X"D8CC"
    )
    port map (
      I0 => s_count(0),
      I1 => current_state_FSM_FFd1_135,
      I2 => N2,
      I3 => N9,
      O => current_state_FSM_FFd1_In
    );
  current_state_FSM_FFd3_In10 : LUT4
    generic map(
      INIT => X"ECEE"
    )
    port map (
      I0 => current_state_FSM_FFd2_137,
      I1 => current_state_FSM_FFd1_135,
      I2 => N4,
      I3 => current_state_cmp_eq00001_wg_cy(6),
      O => current_state_FSM_FFd3_In10_145
    );
  current_state_FSM_FFd2_In9 : LUT4
    generic map(
      INIT => X"EAEE"
    )
    port map (
      I0 => current_state_FSM_FFd3_143,
      I1 => current_state_FSM_FFd1_135,
      I2 => N6,
      I3 => current_state_cmp_eq00001_wg_cy(6),
      O => current_state_FSM_FFd2_In9_142
    );
  current_state_FSM_FFd3_In28 : LUT4
    generic map(
      INIT => X"5155"
    )
    port map (
      I0 => current_state_FSM_FFd2_137,
      I1 => N8,
      I2 => current_state_FSM_FFd3_In13_146,
      I3 => current_state_cmp_eq00001_wg_cy(6),
      O => current_state_FSM_FFd3_In28_147
    );
  current_state_cmp_eq000021_SW1 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => s_count(2),
      I1 => current_state_FSM_FFd3_143,
      I2 => current_state_FSM_FFd1_135,
      O => N101
    );
  current_state_FSM_FFd2_In17 : LUT4
    generic map(
      INIT => X"1555"
    )
    port map (
      I0 => current_state_FSM_FFd1_135,
      I1 => N22,
      I2 => N01,
      I3 => current_state_cmp_eq00001_wg_cy(6),
      O => current_state_FSM_FFd2_In17_139
    );
  s_reset_count130_SW0 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => s_count(0),
      I1 => current_state_FSM_FFd3_143,
      I2 => current_state_FSM_FFd1_135,
      O => N14
    );
  current_state_FSM_Out101 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => current_state_FSM_FFd3_143,
      I1 => current_state_FSM_FFd1_135,
      I2 => current_state_FSM_FFd2_137,
      O => o_main_light_2_OBUF_177
    );
  s_reset_count130_SW1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => s_count(2),
      I1 => s_count(1),
      I2 => current_state_cmp_eq00001_wg_cy(6),
      I3 => s_reset_count101_339,
      O => N18
    );
  s_reset_count130 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => N18,
      I1 => N10,
      I2 => N14,
      I3 => current_state_FSM_FFd2_137,
      O => s_reset_count
    );
  s_reset_count101 : MUXF5
    port map (
      I0 => N20,
      I1 => N21,
      S => current_state_FSM_FFd1_135,
      O => s_reset_count101_339
    );
  s_reset_count101_F : LUT4
    generic map(
      INIT => X"1006"
    )
    port map (
      I0 => s_count(0),
      I1 => current_state_FSM_FFd2_137,
      I2 => s_count(3),
      I3 => current_state_FSM_FFd3_143,
      O => N20
    );
  s_reset_count101_G : LUT4
    generic map(
      INIT => X"0414"
    )
    port map (
      I0 => s_count(0),
      I1 => current_state_FSM_FFd3_143,
      I2 => s_count(3),
      I3 => current_state_FSM_FFd2_137,
      O => N21
    );
  i_clk_BUFGP : BUFGP
    port map (
      I => i_clk,
      O => i_clk_BUFGP_167
    );
  i_button_BUFGP : BUFGP
    port map (
      I => i_button,
      O => i_button_BUFGP_165
    );
  port_map_Mcount_s_count_lut_0_INV_0 : INV
    port map (
      I => port_map_s_count(0),
      O => port_map_Mcount_s_count_lut(0)
    );
  Mcount_s_count_lut_0_INV_0 : INV
    port map (
      I => s_count(0),
      O => Mcount_s_count_lut(0)
    );
  port_map_s_oclk_not00011_INV_0 : INV
    port map (
      I => port_map_s_oclk_302,
      O => port_map_s_oclk_not0001
    );
  current_state_FSM_FFd3_In13 : LUT2_L
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => i_sensor_IBUF_171,
      I1 => s_count(3),
      LO => current_state_FSM_FFd3_In13_146
    );
  current_state_cmp_eq000021 : LUT3_L
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => s_count(2),
      I1 => s_count(1),
      I2 => current_state_cmp_eq00001_wg_cy(6),
      LO => N9
    );
  current_state_FSM_FFd3_In88 : LUT4_L
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => s_count(1),
      I1 => s_count(2),
      I2 => current_state_FSM_FFd3_In87_148,
      I3 => current_state_cmp_eq00001_wg_cy(6),
      LO => current_state_FSM_FFd3_In88_149
    );
  current_state_cmp_eq000211_SW0 : LUT4_L
    generic map(
      INIT => X"FFBF"
    )
    port map (
      I0 => s_count(1),
      I1 => s_count(0),
      I2 => s_count(2),
      I3 => s_count(3),
      LO => N4
    );
  current_state_cmp_eq000211_SW1 : LUT4_L
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => s_count(2),
      I1 => s_count(1),
      I2 => s_count(0),
      I3 => s_count(3),
      LO => N6
    );
  current_state_cmp_eq000021_SW0 : LUT3_D
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => s_count(1),
      I1 => s_count(0),
      I2 => s_count(2),
      LO => N22,
      O => N8
    );
  current_state_FSM_FFd2_In51 : LUT4_L
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => N101,
      I1 => current_state_FSM_FFd2_In42_140,
      I2 => s_count(1),
      I3 => current_state_cmp_eq00001_wg_cy(6),
      LO => current_state_FSM_FFd2_In51_141
    );

end Structure;

