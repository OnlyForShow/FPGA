// ******************************************************************************

// iCEcube Netlister

// Version:            2020.12.27943

// Build Date:         Dec  9 2020 18:18:12

// File Generated:     Apr 17 2026 17:25:11

// Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

// Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

// ******************************************************************************

// Verilog file for cell "led_toggle" view "INTERFACE"

module led_toggle (
    o_led_1,
    i_switch_1,
    i_clk);

    output o_led_1;
    input i_switch_1;
    input i_clk;

    wire N__149;
    wire N__148;
    wire N__147;
    wire N__138;
    wire N__137;
    wire N__136;
    wire N__129;
    wire N__128;
    wire N__127;
    wire N__110;
    wire N__107;
    wire N__106;
    wire N__103;
    wire N__100;
    wire N__95;
    wire N__94;
    wire N__89;
    wire N__86;
    wire N__83;
    wire N__80;
    wire N__77;
    wire N__74;
    wire N__71;
    wire N__68;
    wire VCCG0;
    wire GNDG0;
    wire o_led_1_c;
    wire i_switch_1_c;
    wire r_switchZ0Z_1;
    wire i_clk_c_g;
    wire _gnd_net_;

    PRE_IO_GBUF i_clk_ibuf_gb_io_preiogbuf (
            .PADSIGNALTOGLOBALBUFFER(N__147),
            .GLOBALBUFFEROUTPUT(i_clk_c_g));
    IO_PAD i_clk_ibuf_gb_io_iopad (
            .OE(N__149),
            .DIN(N__148),
            .DOUT(N__147),
            .PACKAGEPIN(i_clk));
    defparam i_clk_ibuf_gb_io_preio.NEG_TRIGGER=1'b0;
    defparam i_clk_ibuf_gb_io_preio.PIN_TYPE=6'b000001;
    PRE_IO i_clk_ibuf_gb_io_preio (
            .PADOEN(N__149),
            .PADOUT(N__148),
            .PADIN(N__147),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD i_switch_1_ibuf_iopad (
            .OE(N__138),
            .DIN(N__137),
            .DOUT(N__136),
            .PACKAGEPIN(i_switch_1));
    defparam i_switch_1_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam i_switch_1_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO i_switch_1_ibuf_preio (
            .PADOEN(N__138),
            .PADOUT(N__137),
            .PADIN(N__136),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(i_switch_1_c),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD o_led_1_obuf_iopad (
            .OE(N__129),
            .DIN(N__128),
            .DOUT(N__127),
            .PACKAGEPIN(o_led_1));
    defparam o_led_1_obuf_preio.NEG_TRIGGER=1'b0;
    defparam o_led_1_obuf_preio.PIN_TYPE=6'b011001;
    PRE_IO o_led_1_obuf_preio (
            .PADOEN(N__129),
            .PADOUT(N__128),
            .PADIN(N__127),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__110),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IoInMux I__22 (
            .O(N__110),
            .I(N__107));
    LocalMux I__21 (
            .O(N__107),
            .I(N__103));
    InMux I__20 (
            .O(N__106),
            .I(N__100));
    Odrv4 I__19 (
            .O(N__103),
            .I(o_led_1_c));
    LocalMux I__18 (
            .O(N__100),
            .I(o_led_1_c));
    InMux I__17 (
            .O(N__95),
            .I(N__89));
    InMux I__16 (
            .O(N__94),
            .I(N__89));
    LocalMux I__15 (
            .O(N__89),
            .I(N__86));
    Span4Mux_v I__14 (
            .O(N__86),
            .I(N__83));
    Odrv4 I__13 (
            .O(N__83),
            .I(i_switch_1_c));
    InMux I__12 (
            .O(N__80),
            .I(N__77));
    LocalMux I__11 (
            .O(N__77),
            .I(r_switchZ0Z_1));
    ClkMux I__10 (
            .O(N__74),
            .I(N__71));
    GlobalMux I__9 (
            .O(N__71),
            .I(N__68));
    gio2CtrlBuf I__8 (
            .O(N__68),
            .I(i_clk_c_g));
    VCC VCC (
            .Y(VCCG0));
    GND GND (
            .Y(GNDG0));
    GND GND_Inst (
            .Y(_gnd_net_));
    defparam r_led_1_LC_9_6_0.C_ON=1'b0;
    defparam r_led_1_LC_9_6_0.SEQ_MODE=4'b1000;
    defparam r_led_1_LC_9_6_0.LUT_INIT=16'b1001100111001100;
    LogicCell40 r_led_1_LC_9_6_0 (
            .in0(N__94),
            .in1(N__106),
            .in2(_gnd_net_),
            .in3(N__80),
            .lcout(o_led_1_c),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__74),
            .ce(),
            .sr(_gnd_net_));
    defparam r_switch_1_LC_9_6_1.C_ON=1'b0;
    defparam r_switch_1_LC_9_6_1.SEQ_MODE=4'b1000;
    defparam r_switch_1_LC_9_6_1.LUT_INIT=16'b1111111100000000;
    LogicCell40 r_switch_1_LC_9_6_1 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__95),
            .lcout(r_switchZ0Z_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__74),
            .ce(),
            .sr(_gnd_net_));
endmodule // led_toggle
