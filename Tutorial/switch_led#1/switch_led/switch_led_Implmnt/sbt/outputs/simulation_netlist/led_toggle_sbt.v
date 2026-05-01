// ******************************************************************************

// iCEcube Netlister

// Version:            2020.12.27943

// Build Date:         Dec  9 2020 18:18:12

// File Generated:     Apr 17 2026 14:18:56

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

    wire N__146;
    wire N__145;
    wire N__144;
    wire N__135;
    wire N__134;
    wire N__133;
    wire N__126;
    wire N__125;
    wire N__124;
    wire N__107;
    wire N__106;
    wire N__101;
    wire N__98;
    wire N__95;
    wire N__92;
    wire N__89;
    wire N__86;
    wire N__85;
    wire N__82;
    wire N__79;
    wire N__74;
    wire N__71;
    wire N__68;
    wire VCCG0;
    wire GNDG0;
    wire i_switch_1_c;
    wire r_switchZ0Z_1;
    wire o_led_1_c;
    wire i_clk_c_g;
    wire _gnd_net_;

    PRE_IO_GBUF i_clk_ibuf_gb_io_preiogbuf (
            .PADSIGNALTOGLOBALBUFFER(N__144),
            .GLOBALBUFFEROUTPUT(i_clk_c_g));
    IO_PAD i_clk_ibuf_gb_io_iopad (
            .OE(N__146),
            .DIN(N__145),
            .DOUT(N__144),
            .PACKAGEPIN(i_clk));
    defparam i_clk_ibuf_gb_io_preio.NEG_TRIGGER=1'b0;
    defparam i_clk_ibuf_gb_io_preio.PIN_TYPE=6'b000001;
    PRE_IO i_clk_ibuf_gb_io_preio (
            .PADOEN(N__146),
            .PADOUT(N__145),
            .PADIN(N__144),
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
            .OE(N__135),
            .DIN(N__134),
            .DOUT(N__133),
            .PACKAGEPIN(i_switch_1));
    defparam i_switch_1_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam i_switch_1_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO i_switch_1_ibuf_preio (
            .PADOEN(N__135),
            .PADOUT(N__134),
            .PADIN(N__133),
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
            .OE(N__126),
            .DIN(N__125),
            .DOUT(N__124),
            .PACKAGEPIN(o_led_1));
    defparam o_led_1_obuf_preio.NEG_TRIGGER=1'b0;
    defparam o_led_1_obuf_preio.PIN_TYPE=6'b011001;
    PRE_IO o_led_1_obuf_preio (
            .PADOEN(N__126),
            .PADOUT(N__125),
            .PADIN(N__124),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__92),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    InMux I__21 (
            .O(N__107),
            .I(N__101));
    InMux I__20 (
            .O(N__106),
            .I(N__101));
    LocalMux I__19 (
            .O(N__101),
            .I(i_switch_1_c));
    InMux I__18 (
            .O(N__98),
            .I(N__95));
    LocalMux I__17 (
            .O(N__95),
            .I(r_switchZ0Z_1));
    IoInMux I__16 (
            .O(N__92),
            .I(N__89));
    LocalMux I__15 (
            .O(N__89),
            .I(N__86));
    IoSpan4Mux I__14 (
            .O(N__86),
            .I(N__82));
    InMux I__13 (
            .O(N__85),
            .I(N__79));
    Odrv4 I__12 (
            .O(N__82),
            .I(o_led_1_c));
    LocalMux I__11 (
            .O(N__79),
            .I(o_led_1_c));
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
    defparam r_switch_1_LC_1_4_1.C_ON=1'b0;
    defparam r_switch_1_LC_1_4_1.SEQ_MODE=4'b1000;
    defparam r_switch_1_LC_1_4_1.LUT_INIT=16'b1010101010101010;
    LogicCell40 r_switch_1_LC_1_4_1 (
            .in0(N__107),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(_gnd_net_),
            .lcout(r_switchZ0Z_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__74),
            .ce(),
            .sr(_gnd_net_));
    defparam r_led_1_LC_1_4_7.C_ON=1'b0;
    defparam r_led_1_LC_1_4_7.SEQ_MODE=4'b1000;
    defparam r_led_1_LC_1_4_7.LUT_INIT=16'b1001100111001100;
    LogicCell40 r_led_1_LC_1_4_7 (
            .in0(N__106),
            .in1(N__85),
            .in2(_gnd_net_),
            .in3(N__98),
            .lcout(o_led_1_c),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__74),
            .ce(),
            .sr(_gnd_net_));
endmodule // led_toggle
