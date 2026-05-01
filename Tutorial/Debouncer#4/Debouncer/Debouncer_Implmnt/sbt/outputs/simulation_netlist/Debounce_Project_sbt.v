// ******************************************************************************

// iCEcube Netlister

// Version:            2020.12.27943

// Build Date:         Dec  9 2020 18:18:12

// File Generated:     Apr 18 2026 10:24:49

// Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

// Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

// ******************************************************************************

// Verilog file for cell "Debounce_Project" view "INTERFACE"

module Debounce_Project (
    o_LED_1,
    i_clk,
    i_Switch_1);

    output o_LED_1;
    input i_clk;
    input i_Switch_1;

    wire N__1062;
    wire N__1061;
    wire N__1060;
    wire N__1051;
    wire N__1050;
    wire N__1049;
    wire N__1042;
    wire N__1041;
    wire N__1040;
    wire N__1023;
    wire N__1022;
    wire N__1019;
    wire N__1018;
    wire N__1015;
    wire N__1012;
    wire N__1009;
    wire N__1002;
    wire N__999;
    wire N__998;
    wire N__997;
    wire N__994;
    wire N__991;
    wire N__988;
    wire N__985;
    wire N__978;
    wire N__975;
    wire N__974;
    wire N__973;
    wire N__970;
    wire N__967;
    wire N__964;
    wire N__957;
    wire N__954;
    wire N__953;
    wire N__950;
    wire N__949;
    wire N__946;
    wire N__943;
    wire N__940;
    wire N__933;
    wire N__930;
    wire N__929;
    wire N__928;
    wire N__925;
    wire N__922;
    wire N__919;
    wire N__916;
    wire N__913;
    wire N__906;
    wire N__903;
    wire N__900;
    wire N__899;
    wire N__898;
    wire N__895;
    wire N__892;
    wire N__889;
    wire N__886;
    wire N__883;
    wire N__876;
    wire N__875;
    wire N__874;
    wire N__873;
    wire N__864;
    wire N__861;
    wire N__858;
    wire N__855;
    wire N__852;
    wire N__851;
    wire N__850;
    wire N__847;
    wire N__842;
    wire N__841;
    wire N__836;
    wire N__833;
    wire N__828;
    wire N__825;
    wire N__822;
    wire N__819;
    wire N__818;
    wire N__815;
    wire N__812;
    wire N__807;
    wire N__806;
    wire N__805;
    wire N__804;
    wire N__803;
    wire N__802;
    wire N__789;
    wire N__786;
    wire N__783;
    wire N__782;
    wire N__779;
    wire N__776;
    wire N__771;
    wire N__768;
    wire N__767;
    wire N__764;
    wire N__761;
    wire N__756;
    wire N__753;
    wire N__752;
    wire N__751;
    wire N__748;
    wire N__745;
    wire N__742;
    wire N__735;
    wire N__732;
    wire N__731;
    wire N__730;
    wire N__727;
    wire N__724;
    wire N__721;
    wire N__714;
    wire N__711;
    wire N__710;
    wire N__709;
    wire N__706;
    wire N__701;
    wire N__696;
    wire N__693;
    wire N__692;
    wire N__691;
    wire N__688;
    wire N__683;
    wire N__678;
    wire N__675;
    wire N__674;
    wire N__673;
    wire N__670;
    wire N__665;
    wire N__660;
    wire N__657;
    wire N__656;
    wire N__655;
    wire N__652;
    wire N__649;
    wire N__644;
    wire N__639;
    wire N__636;
    wire N__635;
    wire N__632;
    wire N__629;
    wire N__626;
    wire N__623;
    wire N__620;
    wire N__617;
    wire N__612;
    wire N__609;
    wire N__606;
    wire N__603;
    wire N__600;
    wire N__597;
    wire N__594;
    wire N__591;
    wire N__588;
    wire N__585;
    wire N__584;
    wire N__581;
    wire N__578;
    wire N__573;
    wire N__570;
    wire N__567;
    wire N__564;
    wire N__561;
    wire N__558;
    wire N__557;
    wire N__556;
    wire N__555;
    wire N__552;
    wire N__545;
    wire N__540;
    wire N__539;
    wire N__538;
    wire N__535;
    wire N__530;
    wire N__527;
    wire N__524;
    wire N__519;
    wire N__518;
    wire N__515;
    wire N__512;
    wire N__509;
    wire N__504;
    wire N__501;
    wire N__500;
    wire N__497;
    wire N__494;
    wire N__489;
    wire N__486;
    wire N__483;
    wire N__480;
    wire N__477;
    wire N__474;
    wire N__471;
    wire N__468;
    wire GNDG0;
    wire VCCG0;
    wire \Debounce_Inst.un9_r_count_6_cascade_ ;
    wire \Debounce_Inst.un9_r_count_9_0_cascade_ ;
    wire \Debounce_Inst.un9_r_count_5_cascade_ ;
    wire \Debounce_Inst.un9_r_count_10_0 ;
    wire \Debounce_Inst.un1_r_Count_1lto11_1 ;
    wire i_Switch_1_c;
    wire \Debounce_Inst.un1_r_Count_1lt17_cascade_ ;
    wire \Debounce_Inst.r_count15_i ;
    wire \Debounce_Inst.un9_r_count_10 ;
    wire \Debounce_Inst.un9_r_count_9 ;
    wire \Debounce_Inst.un9_r_count_10_cascade_ ;
    wire \Debounce_Inst.un1_r_Count_1lt11_0 ;
    wire \Debounce_Inst.un1_r_Count_1lto17_2 ;
    wire \Debounce_Inst.r_CountZ0Z_0 ;
    wire \Debounce_Inst.r_CountZ0Z_1 ;
    wire bfn_6_5_0_;
    wire \Debounce_Inst.r_CountZ0Z_2 ;
    wire \Debounce_Inst.un2_r_count_cry_1 ;
    wire \Debounce_Inst.r_CountZ0Z_3 ;
    wire \Debounce_Inst.un2_r_count_cry_2 ;
    wire \Debounce_Inst.r_CountZ0Z_4 ;
    wire \Debounce_Inst.un2_r_count_cry_3 ;
    wire \Debounce_Inst.r_CountZ0Z_5 ;
    wire \Debounce_Inst.un2_r_count_cry_4 ;
    wire \Debounce_Inst.r_CountZ0Z_6 ;
    wire \Debounce_Inst.un2_r_count_cry_5 ;
    wire \Debounce_Inst.r_CountZ0Z_7 ;
    wire \Debounce_Inst.un2_r_count_cry_6 ;
    wire \Debounce_Inst.r_CountZ0Z_8 ;
    wire \Debounce_Inst.un2_r_count_cry_7 ;
    wire \Debounce_Inst.un2_r_count_cry_8 ;
    wire \Debounce_Inst.r_CountZ0Z_9 ;
    wire bfn_6_6_0_;
    wire \Debounce_Inst.r_CountZ0Z_10 ;
    wire \Debounce_Inst.un2_r_count_cry_9 ;
    wire \Debounce_Inst.r_CountZ0Z_11 ;
    wire \Debounce_Inst.un2_r_count_cry_10 ;
    wire \Debounce_Inst.r_CountZ0Z_12 ;
    wire \Debounce_Inst.un2_r_count_cry_11 ;
    wire \Debounce_Inst.r_CountZ0Z_13 ;
    wire \Debounce_Inst.un2_r_count_cry_12 ;
    wire \Debounce_Inst.r_CountZ0Z_14 ;
    wire \Debounce_Inst.un2_r_count_cry_13 ;
    wire \Debounce_Inst.r_CountZ0Z_15 ;
    wire \Debounce_Inst.un2_r_count_cry_14 ;
    wire \Debounce_Inst.r_CountZ0Z_16 ;
    wire \Debounce_Inst.un2_r_count_cry_15 ;
    wire \Debounce_Inst.un2_r_count_cry_16 ;
    wire bfn_6_7_0_;
    wire \Debounce_Inst.r_CountZ0Z_17 ;
    wire \Debounce_Inst.r_count15_i_g ;
    wire \LED_Toggle_Inst.r_switchZ0Z_1 ;
    wire w_Debounced_switch;
    wire o_LED_1_c;
    wire i_clk_c_g;
    wire _gnd_net_;

    PRE_IO_GBUF i_clk_ibuf_gb_io_preiogbuf (
            .PADSIGNALTOGLOBALBUFFER(N__1060),
            .GLOBALBUFFEROUTPUT(i_clk_c_g));
    IO_PAD i_clk_ibuf_gb_io_iopad (
            .OE(N__1062),
            .DIN(N__1061),
            .DOUT(N__1060),
            .PACKAGEPIN(i_clk));
    defparam i_clk_ibuf_gb_io_preio.NEG_TRIGGER=1'b0;
    defparam i_clk_ibuf_gb_io_preio.PIN_TYPE=6'b000001;
    PRE_IO i_clk_ibuf_gb_io_preio (
            .PADOEN(N__1062),
            .PADOUT(N__1061),
            .PADIN(N__1060),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD o_LED_1_obuf_iopad (
            .OE(N__1051),
            .DIN(N__1050),
            .DOUT(N__1049),
            .PACKAGEPIN(o_LED_1));
    defparam o_LED_1_obuf_preio.NEG_TRIGGER=1'b0;
    defparam o_LED_1_obuf_preio.PIN_TYPE=6'b011001;
    PRE_IO o_LED_1_obuf_preio (
            .PADOEN(N__1051),
            .PADOUT(N__1050),
            .PADIN(N__1049),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__828),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD i_Switch_1_ibuf_iopad (
            .OE(N__1042),
            .DIN(N__1041),
            .DOUT(N__1040),
            .PACKAGEPIN(i_Switch_1));
    defparam i_Switch_1_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam i_Switch_1_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO i_Switch_1_ibuf_preio (
            .PADOEN(N__1042),
            .PADOUT(N__1041),
            .PADIN(N__1040),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(i_Switch_1_c),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    CascadeMux I__228 (
            .O(N__1023),
            .I(N__1019));
    InMux I__227 (
            .O(N__1022),
            .I(N__1015));
    InMux I__226 (
            .O(N__1019),
            .I(N__1012));
    InMux I__225 (
            .O(N__1018),
            .I(N__1009));
    LocalMux I__224 (
            .O(N__1015),
            .I(\Debounce_Inst.r_CountZ0Z_12 ));
    LocalMux I__223 (
            .O(N__1012),
            .I(\Debounce_Inst.r_CountZ0Z_12 ));
    LocalMux I__222 (
            .O(N__1009),
            .I(\Debounce_Inst.r_CountZ0Z_12 ));
    InMux I__221 (
            .O(N__1002),
            .I(\Debounce_Inst.un2_r_count_cry_11 ));
    CascadeMux I__220 (
            .O(N__999),
            .I(N__994));
    InMux I__219 (
            .O(N__998),
            .I(N__991));
    InMux I__218 (
            .O(N__997),
            .I(N__988));
    InMux I__217 (
            .O(N__994),
            .I(N__985));
    LocalMux I__216 (
            .O(N__991),
            .I(\Debounce_Inst.r_CountZ0Z_13 ));
    LocalMux I__215 (
            .O(N__988),
            .I(\Debounce_Inst.r_CountZ0Z_13 ));
    LocalMux I__214 (
            .O(N__985),
            .I(\Debounce_Inst.r_CountZ0Z_13 ));
    InMux I__213 (
            .O(N__978),
            .I(\Debounce_Inst.un2_r_count_cry_12 ));
    InMux I__212 (
            .O(N__975),
            .I(N__970));
    InMux I__211 (
            .O(N__974),
            .I(N__967));
    InMux I__210 (
            .O(N__973),
            .I(N__964));
    LocalMux I__209 (
            .O(N__970),
            .I(\Debounce_Inst.r_CountZ0Z_14 ));
    LocalMux I__208 (
            .O(N__967),
            .I(\Debounce_Inst.r_CountZ0Z_14 ));
    LocalMux I__207 (
            .O(N__964),
            .I(\Debounce_Inst.r_CountZ0Z_14 ));
    InMux I__206 (
            .O(N__957),
            .I(\Debounce_Inst.un2_r_count_cry_13 ));
    InMux I__205 (
            .O(N__954),
            .I(N__950));
    InMux I__204 (
            .O(N__953),
            .I(N__946));
    LocalMux I__203 (
            .O(N__950),
            .I(N__943));
    InMux I__202 (
            .O(N__949),
            .I(N__940));
    LocalMux I__201 (
            .O(N__946),
            .I(\Debounce_Inst.r_CountZ0Z_15 ));
    Odrv4 I__200 (
            .O(N__943),
            .I(\Debounce_Inst.r_CountZ0Z_15 ));
    LocalMux I__199 (
            .O(N__940),
            .I(\Debounce_Inst.r_CountZ0Z_15 ));
    InMux I__198 (
            .O(N__933),
            .I(\Debounce_Inst.un2_r_count_cry_14 ));
    CascadeMux I__197 (
            .O(N__930),
            .I(N__925));
    InMux I__196 (
            .O(N__929),
            .I(N__922));
    InMux I__195 (
            .O(N__928),
            .I(N__919));
    InMux I__194 (
            .O(N__925),
            .I(N__916));
    LocalMux I__193 (
            .O(N__922),
            .I(N__913));
    LocalMux I__192 (
            .O(N__919),
            .I(\Debounce_Inst.r_CountZ0Z_16 ));
    LocalMux I__191 (
            .O(N__916),
            .I(\Debounce_Inst.r_CountZ0Z_16 ));
    Odrv4 I__190 (
            .O(N__913),
            .I(\Debounce_Inst.r_CountZ0Z_16 ));
    InMux I__189 (
            .O(N__906),
            .I(\Debounce_Inst.un2_r_count_cry_15 ));
    InMux I__188 (
            .O(N__903),
            .I(bfn_6_7_0_));
    InMux I__187 (
            .O(N__900),
            .I(N__895));
    CascadeMux I__186 (
            .O(N__899),
            .I(N__892));
    InMux I__185 (
            .O(N__898),
            .I(N__889));
    LocalMux I__184 (
            .O(N__895),
            .I(N__886));
    InMux I__183 (
            .O(N__892),
            .I(N__883));
    LocalMux I__182 (
            .O(N__889),
            .I(\Debounce_Inst.r_CountZ0Z_17 ));
    Odrv4 I__181 (
            .O(N__886),
            .I(\Debounce_Inst.r_CountZ0Z_17 ));
    LocalMux I__180 (
            .O(N__883),
            .I(\Debounce_Inst.r_CountZ0Z_17 ));
    SRMux I__179 (
            .O(N__876),
            .I(N__864));
    SRMux I__178 (
            .O(N__875),
            .I(N__864));
    SRMux I__177 (
            .O(N__874),
            .I(N__864));
    SRMux I__176 (
            .O(N__873),
            .I(N__864));
    GlobalMux I__175 (
            .O(N__864),
            .I(N__861));
    gio2CtrlBuf I__174 (
            .O(N__861),
            .I(\Debounce_Inst.r_count15_i_g ));
    InMux I__173 (
            .O(N__858),
            .I(N__855));
    LocalMux I__172 (
            .O(N__855),
            .I(\LED_Toggle_Inst.r_switchZ0Z_1 ));
    InMux I__171 (
            .O(N__852),
            .I(N__847));
    InMux I__170 (
            .O(N__851),
            .I(N__842));
    InMux I__169 (
            .O(N__850),
            .I(N__842));
    LocalMux I__168 (
            .O(N__847),
            .I(N__836));
    LocalMux I__167 (
            .O(N__842),
            .I(N__836));
    InMux I__166 (
            .O(N__841),
            .I(N__833));
    Odrv4 I__165 (
            .O(N__836),
            .I(w_Debounced_switch));
    LocalMux I__164 (
            .O(N__833),
            .I(w_Debounced_switch));
    IoInMux I__163 (
            .O(N__828),
            .I(N__825));
    LocalMux I__162 (
            .O(N__825),
            .I(N__822));
    IoSpan4Mux I__161 (
            .O(N__822),
            .I(N__819));
    Span4Mux_s1_h I__160 (
            .O(N__819),
            .I(N__815));
    InMux I__159 (
            .O(N__818),
            .I(N__812));
    Odrv4 I__158 (
            .O(N__815),
            .I(o_LED_1_c));
    LocalMux I__157 (
            .O(N__812),
            .I(o_LED_1_c));
    ClkMux I__156 (
            .O(N__807),
            .I(N__789));
    ClkMux I__155 (
            .O(N__806),
            .I(N__789));
    ClkMux I__154 (
            .O(N__805),
            .I(N__789));
    ClkMux I__153 (
            .O(N__804),
            .I(N__789));
    ClkMux I__152 (
            .O(N__803),
            .I(N__789));
    ClkMux I__151 (
            .O(N__802),
            .I(N__789));
    GlobalMux I__150 (
            .O(N__789),
            .I(N__786));
    gio2CtrlBuf I__149 (
            .O(N__786),
            .I(i_clk_c_g));
    InMux I__148 (
            .O(N__783),
            .I(N__779));
    InMux I__147 (
            .O(N__782),
            .I(N__776));
    LocalMux I__146 (
            .O(N__779),
            .I(\Debounce_Inst.r_CountZ0Z_4 ));
    LocalMux I__145 (
            .O(N__776),
            .I(\Debounce_Inst.r_CountZ0Z_4 ));
    InMux I__144 (
            .O(N__771),
            .I(\Debounce_Inst.un2_r_count_cry_3 ));
    InMux I__143 (
            .O(N__768),
            .I(N__764));
    InMux I__142 (
            .O(N__767),
            .I(N__761));
    LocalMux I__141 (
            .O(N__764),
            .I(\Debounce_Inst.r_CountZ0Z_5 ));
    LocalMux I__140 (
            .O(N__761),
            .I(\Debounce_Inst.r_CountZ0Z_5 ));
    InMux I__139 (
            .O(N__756),
            .I(\Debounce_Inst.un2_r_count_cry_4 ));
    InMux I__138 (
            .O(N__753),
            .I(N__748));
    InMux I__137 (
            .O(N__752),
            .I(N__745));
    InMux I__136 (
            .O(N__751),
            .I(N__742));
    LocalMux I__135 (
            .O(N__748),
            .I(\Debounce_Inst.r_CountZ0Z_6 ));
    LocalMux I__134 (
            .O(N__745),
            .I(\Debounce_Inst.r_CountZ0Z_6 ));
    LocalMux I__133 (
            .O(N__742),
            .I(\Debounce_Inst.r_CountZ0Z_6 ));
    InMux I__132 (
            .O(N__735),
            .I(\Debounce_Inst.un2_r_count_cry_5 ));
    InMux I__131 (
            .O(N__732),
            .I(N__727));
    InMux I__130 (
            .O(N__731),
            .I(N__724));
    InMux I__129 (
            .O(N__730),
            .I(N__721));
    LocalMux I__128 (
            .O(N__727),
            .I(\Debounce_Inst.r_CountZ0Z_7 ));
    LocalMux I__127 (
            .O(N__724),
            .I(\Debounce_Inst.r_CountZ0Z_7 ));
    LocalMux I__126 (
            .O(N__721),
            .I(\Debounce_Inst.r_CountZ0Z_7 ));
    InMux I__125 (
            .O(N__714),
            .I(\Debounce_Inst.un2_r_count_cry_6 ));
    InMux I__124 (
            .O(N__711),
            .I(N__706));
    InMux I__123 (
            .O(N__710),
            .I(N__701));
    InMux I__122 (
            .O(N__709),
            .I(N__701));
    LocalMux I__121 (
            .O(N__706),
            .I(\Debounce_Inst.r_CountZ0Z_8 ));
    LocalMux I__120 (
            .O(N__701),
            .I(\Debounce_Inst.r_CountZ0Z_8 ));
    InMux I__119 (
            .O(N__696),
            .I(\Debounce_Inst.un2_r_count_cry_7 ));
    InMux I__118 (
            .O(N__693),
            .I(N__688));
    InMux I__117 (
            .O(N__692),
            .I(N__683));
    InMux I__116 (
            .O(N__691),
            .I(N__683));
    LocalMux I__115 (
            .O(N__688),
            .I(\Debounce_Inst.r_CountZ0Z_9 ));
    LocalMux I__114 (
            .O(N__683),
            .I(\Debounce_Inst.r_CountZ0Z_9 ));
    InMux I__113 (
            .O(N__678),
            .I(bfn_6_6_0_));
    InMux I__112 (
            .O(N__675),
            .I(N__670));
    InMux I__111 (
            .O(N__674),
            .I(N__665));
    InMux I__110 (
            .O(N__673),
            .I(N__665));
    LocalMux I__109 (
            .O(N__670),
            .I(\Debounce_Inst.r_CountZ0Z_10 ));
    LocalMux I__108 (
            .O(N__665),
            .I(\Debounce_Inst.r_CountZ0Z_10 ));
    InMux I__107 (
            .O(N__660),
            .I(\Debounce_Inst.un2_r_count_cry_9 ));
    CascadeMux I__106 (
            .O(N__657),
            .I(N__652));
    InMux I__105 (
            .O(N__656),
            .I(N__649));
    InMux I__104 (
            .O(N__655),
            .I(N__644));
    InMux I__103 (
            .O(N__652),
            .I(N__644));
    LocalMux I__102 (
            .O(N__649),
            .I(\Debounce_Inst.r_CountZ0Z_11 ));
    LocalMux I__101 (
            .O(N__644),
            .I(\Debounce_Inst.r_CountZ0Z_11 ));
    InMux I__100 (
            .O(N__639),
            .I(\Debounce_Inst.un2_r_count_cry_10 ));
    InMux I__99 (
            .O(N__636),
            .I(N__632));
    InMux I__98 (
            .O(N__635),
            .I(N__629));
    LocalMux I__97 (
            .O(N__632),
            .I(N__626));
    LocalMux I__96 (
            .O(N__629),
            .I(N__623));
    Span4Mux_v I__95 (
            .O(N__626),
            .I(N__620));
    Span4Mux_v I__94 (
            .O(N__623),
            .I(N__617));
    Span4Mux_h I__93 (
            .O(N__620),
            .I(N__612));
    Span4Mux_h I__92 (
            .O(N__617),
            .I(N__612));
    Odrv4 I__91 (
            .O(N__612),
            .I(i_Switch_1_c));
    CascadeMux I__90 (
            .O(N__609),
            .I(\Debounce_Inst.un1_r_Count_1lt17_cascade_ ));
    IoInMux I__89 (
            .O(N__606),
            .I(N__603));
    LocalMux I__88 (
            .O(N__603),
            .I(N__600));
    Span4Mux_s0_h I__87 (
            .O(N__600),
            .I(N__597));
    Span4Mux_h I__86 (
            .O(N__597),
            .I(N__594));
    Odrv4 I__85 (
            .O(N__594),
            .I(\Debounce_Inst.r_count15_i ));
    InMux I__84 (
            .O(N__591),
            .I(N__588));
    LocalMux I__83 (
            .O(N__588),
            .I(\Debounce_Inst.un9_r_count_10 ));
    InMux I__82 (
            .O(N__585),
            .I(N__581));
    InMux I__81 (
            .O(N__584),
            .I(N__578));
    LocalMux I__80 (
            .O(N__581),
            .I(\Debounce_Inst.un9_r_count_9 ));
    LocalMux I__79 (
            .O(N__578),
            .I(\Debounce_Inst.un9_r_count_9 ));
    CascadeMux I__78 (
            .O(N__573),
            .I(\Debounce_Inst.un9_r_count_10_cascade_ ));
    InMux I__77 (
            .O(N__570),
            .I(N__567));
    LocalMux I__76 (
            .O(N__567),
            .I(\Debounce_Inst.un1_r_Count_1lt11_0 ));
    InMux I__75 (
            .O(N__564),
            .I(N__561));
    LocalMux I__74 (
            .O(N__561),
            .I(\Debounce_Inst.un1_r_Count_1lto17_2 ));
    InMux I__73 (
            .O(N__558),
            .I(N__552));
    InMux I__72 (
            .O(N__557),
            .I(N__545));
    InMux I__71 (
            .O(N__556),
            .I(N__545));
    InMux I__70 (
            .O(N__555),
            .I(N__545));
    LocalMux I__69 (
            .O(N__552),
            .I(\Debounce_Inst.r_CountZ0Z_0 ));
    LocalMux I__68 (
            .O(N__545),
            .I(\Debounce_Inst.r_CountZ0Z_0 ));
    CascadeMux I__67 (
            .O(N__540),
            .I(N__535));
    InMux I__66 (
            .O(N__539),
            .I(N__530));
    InMux I__65 (
            .O(N__538),
            .I(N__530));
    InMux I__64 (
            .O(N__535),
            .I(N__527));
    LocalMux I__63 (
            .O(N__530),
            .I(N__524));
    LocalMux I__62 (
            .O(N__527),
            .I(\Debounce_Inst.r_CountZ0Z_1 ));
    Odrv4 I__61 (
            .O(N__524),
            .I(\Debounce_Inst.r_CountZ0Z_1 ));
    CascadeMux I__60 (
            .O(N__519),
            .I(N__515));
    InMux I__59 (
            .O(N__518),
            .I(N__512));
    InMux I__58 (
            .O(N__515),
            .I(N__509));
    LocalMux I__57 (
            .O(N__512),
            .I(\Debounce_Inst.r_CountZ0Z_2 ));
    LocalMux I__56 (
            .O(N__509),
            .I(\Debounce_Inst.r_CountZ0Z_2 ));
    InMux I__55 (
            .O(N__504),
            .I(\Debounce_Inst.un2_r_count_cry_1 ));
    InMux I__54 (
            .O(N__501),
            .I(N__497));
    InMux I__53 (
            .O(N__500),
            .I(N__494));
    LocalMux I__52 (
            .O(N__497),
            .I(\Debounce_Inst.r_CountZ0Z_3 ));
    LocalMux I__51 (
            .O(N__494),
            .I(\Debounce_Inst.r_CountZ0Z_3 ));
    InMux I__50 (
            .O(N__489),
            .I(\Debounce_Inst.un2_r_count_cry_2 ));
    CascadeMux I__49 (
            .O(N__486),
            .I(\Debounce_Inst.un9_r_count_6_cascade_ ));
    CascadeMux I__48 (
            .O(N__483),
            .I(\Debounce_Inst.un9_r_count_9_0_cascade_ ));
    CascadeMux I__47 (
            .O(N__480),
            .I(\Debounce_Inst.un9_r_count_5_cascade_ ));
    InMux I__46 (
            .O(N__477),
            .I(N__474));
    LocalMux I__45 (
            .O(N__474),
            .I(\Debounce_Inst.un9_r_count_10_0 ));
    InMux I__44 (
            .O(N__471),
            .I(N__468));
    LocalMux I__43 (
            .O(N__468),
            .I(\Debounce_Inst.un1_r_Count_1lto11_1 ));
    defparam IN_MUX_bfv_6_5_0_.C_INIT=2'b00;
    ICE_CARRY_IN_MUX IN_MUX_bfv_6_5_0_ (
            .carryinitin(),
            .carryinitout(bfn_6_5_0_));
    defparam IN_MUX_bfv_6_6_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_6_6_0_ (
            .carryinitin(\Debounce_Inst.un2_r_count_cry_8 ),
            .carryinitout(bfn_6_6_0_));
    defparam IN_MUX_bfv_6_7_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_6_7_0_ (
            .carryinitin(\Debounce_Inst.un2_r_count_cry_16 ),
            .carryinitout(bfn_6_7_0_));
    ICE_GB \Debounce_Inst.r_State_RNI62LO8_0  (
            .USERSIGNALTOGLOBALBUFFER(N__606),
            .GLOBALBUFFEROUTPUT(\Debounce_Inst.r_count15_i_g ));
    GND GND (
            .Y(GNDG0));
    VCC VCC (
            .Y(VCCG0));
    GND GND_Inst (
            .Y(_gnd_net_));
    defparam \Debounce_Inst.r_Count_RNIDG3S_4_LC_5_5_0 .C_ON=1'b0;
    defparam \Debounce_Inst.r_Count_RNIDG3S_4_LC_5_5_0 .SEQ_MODE=4'b0000;
    defparam \Debounce_Inst.r_Count_RNIDG3S_4_LC_5_5_0 .LUT_INIT=16'b0000000000110011;
    LogicCell40 \Debounce_Inst.r_Count_RNIDG3S_4_LC_5_5_0  (
            .in0(_gnd_net_),
            .in1(N__782),
            .in2(_gnd_net_),
            .in3(N__767),
            .lcout(\Debounce_Inst.un9_r_count_9 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \Debounce_Inst.r_State_RNO_2_LC_5_5_1 .C_ON=1'b0;
    defparam \Debounce_Inst.r_State_RNO_2_LC_5_5_1 .SEQ_MODE=4'b0000;
    defparam \Debounce_Inst.r_State_RNO_2_LC_5_5_1 .LUT_INIT=16'b0000000001000000;
    LogicCell40 \Debounce_Inst.r_State_RNO_2_LC_5_5_1  (
            .in0(N__655),
            .in1(N__900),
            .in2(N__930),
            .in3(N__997),
            .lcout(),
            .ltout(\Debounce_Inst.un9_r_count_6_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \Debounce_Inst.r_State_RNO_0_LC_5_5_2 .C_ON=1'b0;
    defparam \Debounce_Inst.r_State_RNO_0_LC_5_5_2 .SEQ_MODE=4'b0000;
    defparam \Debounce_Inst.r_State_RNO_0_LC_5_5_2 .LUT_INIT=16'b0001000000000000;
    LogicCell40 \Debounce_Inst.r_State_RNO_0_LC_5_5_2  (
            .in0(N__710),
            .in1(N__753),
            .in2(N__486),
            .in3(N__585),
            .lcout(),
            .ltout(\Debounce_Inst.un9_r_count_9_0_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \Debounce_Inst.r_State_LC_5_5_3 .C_ON=1'b0;
    defparam \Debounce_Inst.r_State_LC_5_5_3 .SEQ_MODE=4'b1000;
    defparam \Debounce_Inst.r_State_LC_5_5_3 .LUT_INIT=16'b1010110011001100;
    LogicCell40 \Debounce_Inst.r_State_LC_5_5_3  (
            .in0(N__635),
            .in1(N__852),
            .in2(N__483),
            .in3(N__477),
            .lcout(w_Debounced_switch),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__804),
            .ce(),
            .sr(_gnd_net_));
    defparam \Debounce_Inst.r_Count_RNISHDR1_8_LC_5_5_5 .C_ON=1'b0;
    defparam \Debounce_Inst.r_Count_RNISHDR1_8_LC_5_5_5 .SEQ_MODE=4'b0000;
    defparam \Debounce_Inst.r_Count_RNISHDR1_8_LC_5_5_5 .LUT_INIT=16'b0000000000000001;
    LogicCell40 \Debounce_Inst.r_Count_RNISHDR1_8_LC_5_5_5  (
            .in0(N__673),
            .in1(N__691),
            .in2(N__657),
            .in3(N__709),
            .lcout(\Debounce_Inst.un1_r_Count_1lto11_1 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \Debounce_Inst.r_State_RNO_3_LC_5_5_6 .C_ON=1'b0;
    defparam \Debounce_Inst.r_State_RNO_3_LC_5_5_6 .SEQ_MODE=4'b0000;
    defparam \Debounce_Inst.r_State_RNO_3_LC_5_5_6 .LUT_INIT=16'b1000000000000000;
    LogicCell40 \Debounce_Inst.r_State_RNO_3_LC_5_5_6  (
            .in0(N__974),
            .in1(N__954),
            .in2(N__1023),
            .in3(N__731),
            .lcout(),
            .ltout(\Debounce_Inst.un9_r_count_5_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \Debounce_Inst.r_State_RNO_1_LC_5_5_7 .C_ON=1'b0;
    defparam \Debounce_Inst.r_State_RNO_1_LC_5_5_7 .SEQ_MODE=4'b0000;
    defparam \Debounce_Inst.r_State_RNO_1_LC_5_5_7 .LUT_INIT=16'b0000000001000000;
    LogicCell40 \Debounce_Inst.r_State_RNO_1_LC_5_5_7  (
            .in0(N__674),
            .in1(N__591),
            .in2(N__480),
            .in3(N__692),
            .lcout(\Debounce_Inst.un9_r_count_10_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \Debounce_Inst.r_Count_RNIJ85B6_12_LC_5_6_0 .C_ON=1'b0;
    defparam \Debounce_Inst.r_Count_RNIJ85B6_12_LC_5_6_0 .SEQ_MODE=4'b0000;
    defparam \Debounce_Inst.r_Count_RNIJ85B6_12_LC_5_6_0 .LUT_INIT=16'b0000010100001101;
    LogicCell40 \Debounce_Inst.r_Count_RNIJ85B6_12_LC_5_6_0  (
            .in0(N__1018),
            .in1(N__471),
            .in2(N__999),
            .in3(N__570),
            .lcout(),
            .ltout(\Debounce_Inst.un1_r_Count_1lt17_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \Debounce_Inst.r_State_RNI62LO8_LC_5_6_1 .C_ON=1'b0;
    defparam \Debounce_Inst.r_State_RNI62LO8_LC_5_6_1 .SEQ_MODE=4'b0000;
    defparam \Debounce_Inst.r_State_RNI62LO8_LC_5_6_1 .LUT_INIT=16'b1100111000111011;
    LogicCell40 \Debounce_Inst.r_State_RNI62LO8_LC_5_6_1  (
            .in0(N__564),
            .in1(N__636),
            .in2(N__609),
            .in3(N__841),
            .lcout(\Debounce_Inst.r_count15_i ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \Debounce_Inst.r_Count_RNIEK6O1_1_LC_5_6_2 .C_ON=1'b0;
    defparam \Debounce_Inst.r_Count_RNIEK6O1_1_LC_5_6_2 .SEQ_MODE=4'b0000;
    defparam \Debounce_Inst.r_Count_RNIEK6O1_1_LC_5_6_2 .LUT_INIT=16'b1000000000000000;
    LogicCell40 \Debounce_Inst.r_Count_RNIEK6O1_1_LC_5_6_2  (
            .in0(N__538),
            .in1(N__555),
            .in2(N__519),
            .in3(N__500),
            .lcout(\Debounce_Inst.un9_r_count_10 ),
            .ltout(\Debounce_Inst.un9_r_count_10_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \Debounce_Inst.r_Count_RNICPDG3_6_LC_5_6_3 .C_ON=1'b0;
    defparam \Debounce_Inst.r_Count_RNICPDG3_6_LC_5_6_3 .SEQ_MODE=4'b0000;
    defparam \Debounce_Inst.r_Count_RNICPDG3_6_LC_5_6_3 .LUT_INIT=16'b1100110011000100;
    LogicCell40 \Debounce_Inst.r_Count_RNICPDG3_6_LC_5_6_3  (
            .in0(N__584),
            .in1(N__730),
            .in2(N__573),
            .in3(N__751),
            .lcout(\Debounce_Inst.un1_r_Count_1lt11_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \Debounce_Inst.r_Count_RNI27KU1_17_LC_5_6_5 .C_ON=1'b0;
    defparam \Debounce_Inst.r_Count_RNI27KU1_17_LC_5_6_5 .SEQ_MODE=4'b0000;
    defparam \Debounce_Inst.r_Count_RNI27KU1_17_LC_5_6_5 .LUT_INIT=16'b1000000000000000;
    LogicCell40 \Debounce_Inst.r_Count_RNI27KU1_17_LC_5_6_5  (
            .in0(N__929),
            .in1(N__949),
            .in2(N__899),
            .in3(N__973),
            .lcout(\Debounce_Inst.un1_r_Count_1lto17_2 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \Debounce_Inst.r_Count_1_LC_5_6_6 .C_ON=1'b0;
    defparam \Debounce_Inst.r_Count_1_LC_5_6_6 .SEQ_MODE=4'b1000;
    defparam \Debounce_Inst.r_Count_1_LC_5_6_6 .LUT_INIT=16'b1010010101011010;
    LogicCell40 \Debounce_Inst.r_Count_1_LC_5_6_6  (
            .in0(N__539),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__557),
            .lcout(\Debounce_Inst.r_CountZ0Z_1 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__802),
            .ce(),
            .sr(N__873));
    defparam \Debounce_Inst.r_Count_0_LC_5_6_7 .C_ON=1'b0;
    defparam \Debounce_Inst.r_Count_0_LC_5_6_7 .SEQ_MODE=4'b1000;
    defparam \Debounce_Inst.r_Count_0_LC_5_6_7 .LUT_INIT=16'b0101010101010101;
    LogicCell40 \Debounce_Inst.r_Count_0_LC_5_6_7  (
            .in0(N__556),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(_gnd_net_),
            .lcout(\Debounce_Inst.r_CountZ0Z_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__802),
            .ce(),
            .sr(N__873));
    defparam \Debounce_Inst.un2_r_count_cry_1_c_LC_6_5_0 .C_ON=1'b1;
    defparam \Debounce_Inst.un2_r_count_cry_1_c_LC_6_5_0 .SEQ_MODE=4'b0000;
    defparam \Debounce_Inst.un2_r_count_cry_1_c_LC_6_5_0 .LUT_INIT=16'b0000000000000000;
    LogicCell40 \Debounce_Inst.un2_r_count_cry_1_c_LC_6_5_0  (
            .in0(_gnd_net_),
            .in1(N__558),
            .in2(N__540),
            .in3(_gnd_net_),
            .lcout(),
            .ltout(),
            .carryin(bfn_6_5_0_),
            .carryout(\Debounce_Inst.un2_r_count_cry_1 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \Debounce_Inst.r_Count_2_LC_6_5_1 .C_ON=1'b1;
    defparam \Debounce_Inst.r_Count_2_LC_6_5_1 .SEQ_MODE=4'b1000;
    defparam \Debounce_Inst.r_Count_2_LC_6_5_1 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \Debounce_Inst.r_Count_2_LC_6_5_1  (
            .in0(_gnd_net_),
            .in1(N__518),
            .in2(_gnd_net_),
            .in3(N__504),
            .lcout(\Debounce_Inst.r_CountZ0Z_2 ),
            .ltout(),
            .carryin(\Debounce_Inst.un2_r_count_cry_1 ),
            .carryout(\Debounce_Inst.un2_r_count_cry_2 ),
            .clk(N__806),
            .ce(),
            .sr(N__876));
    defparam \Debounce_Inst.r_Count_3_LC_6_5_2 .C_ON=1'b1;
    defparam \Debounce_Inst.r_Count_3_LC_6_5_2 .SEQ_MODE=4'b1000;
    defparam \Debounce_Inst.r_Count_3_LC_6_5_2 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \Debounce_Inst.r_Count_3_LC_6_5_2  (
            .in0(_gnd_net_),
            .in1(N__501),
            .in2(_gnd_net_),
            .in3(N__489),
            .lcout(\Debounce_Inst.r_CountZ0Z_3 ),
            .ltout(),
            .carryin(\Debounce_Inst.un2_r_count_cry_2 ),
            .carryout(\Debounce_Inst.un2_r_count_cry_3 ),
            .clk(N__806),
            .ce(),
            .sr(N__876));
    defparam \Debounce_Inst.r_Count_4_LC_6_5_3 .C_ON=1'b1;
    defparam \Debounce_Inst.r_Count_4_LC_6_5_3 .SEQ_MODE=4'b1000;
    defparam \Debounce_Inst.r_Count_4_LC_6_5_3 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \Debounce_Inst.r_Count_4_LC_6_5_3  (
            .in0(_gnd_net_),
            .in1(N__783),
            .in2(_gnd_net_),
            .in3(N__771),
            .lcout(\Debounce_Inst.r_CountZ0Z_4 ),
            .ltout(),
            .carryin(\Debounce_Inst.un2_r_count_cry_3 ),
            .carryout(\Debounce_Inst.un2_r_count_cry_4 ),
            .clk(N__806),
            .ce(),
            .sr(N__876));
    defparam \Debounce_Inst.r_Count_5_LC_6_5_4 .C_ON=1'b1;
    defparam \Debounce_Inst.r_Count_5_LC_6_5_4 .SEQ_MODE=4'b1000;
    defparam \Debounce_Inst.r_Count_5_LC_6_5_4 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \Debounce_Inst.r_Count_5_LC_6_5_4  (
            .in0(_gnd_net_),
            .in1(N__768),
            .in2(_gnd_net_),
            .in3(N__756),
            .lcout(\Debounce_Inst.r_CountZ0Z_5 ),
            .ltout(),
            .carryin(\Debounce_Inst.un2_r_count_cry_4 ),
            .carryout(\Debounce_Inst.un2_r_count_cry_5 ),
            .clk(N__806),
            .ce(),
            .sr(N__876));
    defparam \Debounce_Inst.r_Count_6_LC_6_5_5 .C_ON=1'b1;
    defparam \Debounce_Inst.r_Count_6_LC_6_5_5 .SEQ_MODE=4'b1000;
    defparam \Debounce_Inst.r_Count_6_LC_6_5_5 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \Debounce_Inst.r_Count_6_LC_6_5_5  (
            .in0(_gnd_net_),
            .in1(N__752),
            .in2(_gnd_net_),
            .in3(N__735),
            .lcout(\Debounce_Inst.r_CountZ0Z_6 ),
            .ltout(),
            .carryin(\Debounce_Inst.un2_r_count_cry_5 ),
            .carryout(\Debounce_Inst.un2_r_count_cry_6 ),
            .clk(N__806),
            .ce(),
            .sr(N__876));
    defparam \Debounce_Inst.r_Count_7_LC_6_5_6 .C_ON=1'b1;
    defparam \Debounce_Inst.r_Count_7_LC_6_5_6 .SEQ_MODE=4'b1000;
    defparam \Debounce_Inst.r_Count_7_LC_6_5_6 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \Debounce_Inst.r_Count_7_LC_6_5_6  (
            .in0(_gnd_net_),
            .in1(N__732),
            .in2(_gnd_net_),
            .in3(N__714),
            .lcout(\Debounce_Inst.r_CountZ0Z_7 ),
            .ltout(),
            .carryin(\Debounce_Inst.un2_r_count_cry_6 ),
            .carryout(\Debounce_Inst.un2_r_count_cry_7 ),
            .clk(N__806),
            .ce(),
            .sr(N__876));
    defparam \Debounce_Inst.r_Count_8_LC_6_5_7 .C_ON=1'b1;
    defparam \Debounce_Inst.r_Count_8_LC_6_5_7 .SEQ_MODE=4'b1000;
    defparam \Debounce_Inst.r_Count_8_LC_6_5_7 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \Debounce_Inst.r_Count_8_LC_6_5_7  (
            .in0(_gnd_net_),
            .in1(N__711),
            .in2(_gnd_net_),
            .in3(N__696),
            .lcout(\Debounce_Inst.r_CountZ0Z_8 ),
            .ltout(),
            .carryin(\Debounce_Inst.un2_r_count_cry_7 ),
            .carryout(\Debounce_Inst.un2_r_count_cry_8 ),
            .clk(N__806),
            .ce(),
            .sr(N__876));
    defparam \Debounce_Inst.r_Count_9_LC_6_6_0 .C_ON=1'b1;
    defparam \Debounce_Inst.r_Count_9_LC_6_6_0 .SEQ_MODE=4'b1000;
    defparam \Debounce_Inst.r_Count_9_LC_6_6_0 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \Debounce_Inst.r_Count_9_LC_6_6_0  (
            .in0(_gnd_net_),
            .in1(N__693),
            .in2(_gnd_net_),
            .in3(N__678),
            .lcout(\Debounce_Inst.r_CountZ0Z_9 ),
            .ltout(),
            .carryin(bfn_6_6_0_),
            .carryout(\Debounce_Inst.un2_r_count_cry_9 ),
            .clk(N__805),
            .ce(),
            .sr(N__875));
    defparam \Debounce_Inst.r_Count_10_LC_6_6_1 .C_ON=1'b1;
    defparam \Debounce_Inst.r_Count_10_LC_6_6_1 .SEQ_MODE=4'b1000;
    defparam \Debounce_Inst.r_Count_10_LC_6_6_1 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \Debounce_Inst.r_Count_10_LC_6_6_1  (
            .in0(_gnd_net_),
            .in1(N__675),
            .in2(_gnd_net_),
            .in3(N__660),
            .lcout(\Debounce_Inst.r_CountZ0Z_10 ),
            .ltout(),
            .carryin(\Debounce_Inst.un2_r_count_cry_9 ),
            .carryout(\Debounce_Inst.un2_r_count_cry_10 ),
            .clk(N__805),
            .ce(),
            .sr(N__875));
    defparam \Debounce_Inst.r_Count_11_LC_6_6_2 .C_ON=1'b1;
    defparam \Debounce_Inst.r_Count_11_LC_6_6_2 .SEQ_MODE=4'b1000;
    defparam \Debounce_Inst.r_Count_11_LC_6_6_2 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \Debounce_Inst.r_Count_11_LC_6_6_2  (
            .in0(_gnd_net_),
            .in1(N__656),
            .in2(_gnd_net_),
            .in3(N__639),
            .lcout(\Debounce_Inst.r_CountZ0Z_11 ),
            .ltout(),
            .carryin(\Debounce_Inst.un2_r_count_cry_10 ),
            .carryout(\Debounce_Inst.un2_r_count_cry_11 ),
            .clk(N__805),
            .ce(),
            .sr(N__875));
    defparam \Debounce_Inst.r_Count_12_LC_6_6_3 .C_ON=1'b1;
    defparam \Debounce_Inst.r_Count_12_LC_6_6_3 .SEQ_MODE=4'b1000;
    defparam \Debounce_Inst.r_Count_12_LC_6_6_3 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \Debounce_Inst.r_Count_12_LC_6_6_3  (
            .in0(_gnd_net_),
            .in1(N__1022),
            .in2(_gnd_net_),
            .in3(N__1002),
            .lcout(\Debounce_Inst.r_CountZ0Z_12 ),
            .ltout(),
            .carryin(\Debounce_Inst.un2_r_count_cry_11 ),
            .carryout(\Debounce_Inst.un2_r_count_cry_12 ),
            .clk(N__805),
            .ce(),
            .sr(N__875));
    defparam \Debounce_Inst.r_Count_13_LC_6_6_4 .C_ON=1'b1;
    defparam \Debounce_Inst.r_Count_13_LC_6_6_4 .SEQ_MODE=4'b1000;
    defparam \Debounce_Inst.r_Count_13_LC_6_6_4 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \Debounce_Inst.r_Count_13_LC_6_6_4  (
            .in0(_gnd_net_),
            .in1(N__998),
            .in2(_gnd_net_),
            .in3(N__978),
            .lcout(\Debounce_Inst.r_CountZ0Z_13 ),
            .ltout(),
            .carryin(\Debounce_Inst.un2_r_count_cry_12 ),
            .carryout(\Debounce_Inst.un2_r_count_cry_13 ),
            .clk(N__805),
            .ce(),
            .sr(N__875));
    defparam \Debounce_Inst.r_Count_14_LC_6_6_5 .C_ON=1'b1;
    defparam \Debounce_Inst.r_Count_14_LC_6_6_5 .SEQ_MODE=4'b1000;
    defparam \Debounce_Inst.r_Count_14_LC_6_6_5 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \Debounce_Inst.r_Count_14_LC_6_6_5  (
            .in0(_gnd_net_),
            .in1(N__975),
            .in2(_gnd_net_),
            .in3(N__957),
            .lcout(\Debounce_Inst.r_CountZ0Z_14 ),
            .ltout(),
            .carryin(\Debounce_Inst.un2_r_count_cry_13 ),
            .carryout(\Debounce_Inst.un2_r_count_cry_14 ),
            .clk(N__805),
            .ce(),
            .sr(N__875));
    defparam \Debounce_Inst.r_Count_15_LC_6_6_6 .C_ON=1'b1;
    defparam \Debounce_Inst.r_Count_15_LC_6_6_6 .SEQ_MODE=4'b1000;
    defparam \Debounce_Inst.r_Count_15_LC_6_6_6 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \Debounce_Inst.r_Count_15_LC_6_6_6  (
            .in0(_gnd_net_),
            .in1(N__953),
            .in2(_gnd_net_),
            .in3(N__933),
            .lcout(\Debounce_Inst.r_CountZ0Z_15 ),
            .ltout(),
            .carryin(\Debounce_Inst.un2_r_count_cry_14 ),
            .carryout(\Debounce_Inst.un2_r_count_cry_15 ),
            .clk(N__805),
            .ce(),
            .sr(N__875));
    defparam \Debounce_Inst.r_Count_16_LC_6_6_7 .C_ON=1'b1;
    defparam \Debounce_Inst.r_Count_16_LC_6_6_7 .SEQ_MODE=4'b1000;
    defparam \Debounce_Inst.r_Count_16_LC_6_6_7 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \Debounce_Inst.r_Count_16_LC_6_6_7  (
            .in0(_gnd_net_),
            .in1(N__928),
            .in2(_gnd_net_),
            .in3(N__906),
            .lcout(\Debounce_Inst.r_CountZ0Z_16 ),
            .ltout(),
            .carryin(\Debounce_Inst.un2_r_count_cry_15 ),
            .carryout(\Debounce_Inst.un2_r_count_cry_16 ),
            .clk(N__805),
            .ce(),
            .sr(N__875));
    defparam \Debounce_Inst.r_Count_17_LC_6_7_0 .C_ON=1'b0;
    defparam \Debounce_Inst.r_Count_17_LC_6_7_0 .SEQ_MODE=4'b1000;
    defparam \Debounce_Inst.r_Count_17_LC_6_7_0 .LUT_INIT=16'b0011001111001100;
    LogicCell40 \Debounce_Inst.r_Count_17_LC_6_7_0  (
            .in0(_gnd_net_),
            .in1(N__898),
            .in2(_gnd_net_),
            .in3(N__903),
            .lcout(\Debounce_Inst.r_CountZ0Z_17 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__803),
            .ce(),
            .sr(N__874));
    defparam \LED_Toggle_Inst.r_switch_1_LC_7_5_3 .C_ON=1'b0;
    defparam \LED_Toggle_Inst.r_switch_1_LC_7_5_3 .SEQ_MODE=4'b1000;
    defparam \LED_Toggle_Inst.r_switch_1_LC_7_5_3 .LUT_INIT=16'b1111111100000000;
    LogicCell40 \LED_Toggle_Inst.r_switch_1_LC_7_5_3  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__851),
            .lcout(\LED_Toggle_Inst.r_switchZ0Z_1 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__807),
            .ce(),
            .sr(_gnd_net_));
    defparam \LED_Toggle_Inst.r_led_1_LC_7_5_5 .C_ON=1'b0;
    defparam \LED_Toggle_Inst.r_led_1_LC_7_5_5 .SEQ_MODE=4'b1000;
    defparam \LED_Toggle_Inst.r_led_1_LC_7_5_5 .LUT_INIT=16'b1010101001100110;
    LogicCell40 \LED_Toggle_Inst.r_led_1_LC_7_5_5  (
            .in0(N__818),
            .in1(N__858),
            .in2(_gnd_net_),
            .in3(N__850),
            .lcout(o_LED_1_c),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__807),
            .ce(),
            .sr(_gnd_net_));
endmodule // Debounce_Project
