-- ******************************************************************************

-- iCEcube Netlister

-- Version:            2020.12.27943

-- Build Date:         Dec  9 2020 18:18:06

-- File Generated:     Apr 17 2026 17:25:11

-- Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

-- Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

-- ******************************************************************************

-- VHDL file for cell "led_toggle" view "INTERFACE"

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library ice;
use ice.vcomponent_vital.all;

-- Entity of led_toggle
entity led_toggle is
port (
    o_led_1 : out std_logic;
    i_switch_1 : in std_logic;
    i_clk : in std_logic);
end led_toggle;

-- Architecture of led_toggle
-- View name is \INTERFACE\
architecture \INTERFACE\ of led_toggle is

signal \N__149\ : std_logic;
signal \N__148\ : std_logic;
signal \N__147\ : std_logic;
signal \N__138\ : std_logic;
signal \N__137\ : std_logic;
signal \N__136\ : std_logic;
signal \N__129\ : std_logic;
signal \N__128\ : std_logic;
signal \N__127\ : std_logic;
signal \N__110\ : std_logic;
signal \N__107\ : std_logic;
signal \N__106\ : std_logic;
signal \N__103\ : std_logic;
signal \N__100\ : std_logic;
signal \N__95\ : std_logic;
signal \N__94\ : std_logic;
signal \N__89\ : std_logic;
signal \N__86\ : std_logic;
signal \N__83\ : std_logic;
signal \N__80\ : std_logic;
signal \N__77\ : std_logic;
signal \N__74\ : std_logic;
signal \N__71\ : std_logic;
signal \N__68\ : std_logic;
signal \VCCG0\ : std_logic;
signal \GNDG0\ : std_logic;
signal o_led_1_c : std_logic;
signal i_switch_1_c : std_logic;
signal \r_switchZ0Z_1\ : std_logic;
signal i_clk_c_g : std_logic;
signal \_gnd_net_\ : std_logic;

signal i_clk_wire : std_logic;
signal i_switch_1_wire : std_logic;
signal o_led_1_wire : std_logic;

begin
    i_clk_wire <= i_clk;
    i_switch_1_wire <= i_switch_1;
    o_led_1 <= o_led_1_wire;

    \i_clk_ibuf_gb_io_preiogbuf\ : PRE_IO_GBUF
    port map (
            PADSIGNALTOGLOBALBUFFER => \N__147\,
            GLOBALBUFFEROUTPUT => i_clk_c_g
        );

    \i_clk_ibuf_gb_io_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__149\,
            DIN => \N__148\,
            DOUT => \N__147\,
            PACKAGEPIN => i_clk_wire
        );

    \i_clk_ibuf_gb_io_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__149\,
            PADOUT => \N__148\,
            PADIN => \N__147\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \i_switch_1_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__138\,
            DIN => \N__137\,
            DOUT => \N__136\,
            PACKAGEPIN => i_switch_1_wire
        );

    \i_switch_1_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__138\,
            PADOUT => \N__137\,
            PADIN => \N__136\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => i_switch_1_c,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \o_led_1_obuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__129\,
            DIN => \N__128\,
            DOUT => \N__127\,
            PACKAGEPIN => o_led_1_wire
        );

    \o_led_1_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__129\,
            PADOUT => \N__128\,
            PADIN => \N__127\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__110\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \I__22\ : IoInMux
    port map (
            O => \N__110\,
            I => \N__107\
        );

    \I__21\ : LocalMux
    port map (
            O => \N__107\,
            I => \N__103\
        );

    \I__20\ : InMux
    port map (
            O => \N__106\,
            I => \N__100\
        );

    \I__19\ : Odrv4
    port map (
            O => \N__103\,
            I => o_led_1_c
        );

    \I__18\ : LocalMux
    port map (
            O => \N__100\,
            I => o_led_1_c
        );

    \I__17\ : InMux
    port map (
            O => \N__95\,
            I => \N__89\
        );

    \I__16\ : InMux
    port map (
            O => \N__94\,
            I => \N__89\
        );

    \I__15\ : LocalMux
    port map (
            O => \N__89\,
            I => \N__86\
        );

    \I__14\ : Span4Mux_v
    port map (
            O => \N__86\,
            I => \N__83\
        );

    \I__13\ : Odrv4
    port map (
            O => \N__83\,
            I => i_switch_1_c
        );

    \I__12\ : InMux
    port map (
            O => \N__80\,
            I => \N__77\
        );

    \I__11\ : LocalMux
    port map (
            O => \N__77\,
            I => \r_switchZ0Z_1\
        );

    \I__10\ : ClkMux
    port map (
            O => \N__74\,
            I => \N__71\
        );

    \I__9\ : GlobalMux
    port map (
            O => \N__71\,
            I => \N__68\
        );

    \I__8\ : gio2CtrlBuf
    port map (
            O => \N__68\,
            I => i_clk_c_g
        );

    \VCC\ : VCC
    port map (
            Y => \VCCG0\
        );

    \GND\ : GND
    port map (
            Y => \GNDG0\
        );

    \GND_Inst\ : GND
    port map (
            Y => \_gnd_net_\
        );

    \r_led_1_LC_9_6_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100111001100"
        )
    port map (
            in0 => \N__94\,
            in1 => \N__106\,
            in2 => \_gnd_net_\,
            in3 => \N__80\,
            lcout => o_led_1_c,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__74\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \r_switch_1_LC_9_6_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__95\,
            lcout => \r_switchZ0Z_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__74\,
            ce => 'H',
            sr => \_gnd_net_\
        );
end \INTERFACE\;
