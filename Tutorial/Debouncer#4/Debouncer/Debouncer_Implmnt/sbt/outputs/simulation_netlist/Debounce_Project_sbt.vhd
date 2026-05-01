-- ******************************************************************************

-- iCEcube Netlister

-- Version:            2020.12.27943

-- Build Date:         Dec  9 2020 18:18:06

-- File Generated:     Apr 18 2026 10:24:49

-- Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

-- Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

-- ******************************************************************************

-- VHDL file for cell "Debounce_Project" view "INTERFACE"

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library ice;
use ice.vcomponent_vital.all;

-- Entity of Debounce_Project
entity Debounce_Project is
port (
    o_LED_1 : out std_logic;
    i_clk : in std_logic;
    i_Switch_1 : in std_logic);
end Debounce_Project;

-- Architecture of Debounce_Project
-- View name is \INTERFACE\
architecture \INTERFACE\ of Debounce_Project is

signal \N__1062\ : std_logic;
signal \N__1061\ : std_logic;
signal \N__1060\ : std_logic;
signal \N__1051\ : std_logic;
signal \N__1050\ : std_logic;
signal \N__1049\ : std_logic;
signal \N__1042\ : std_logic;
signal \N__1041\ : std_logic;
signal \N__1040\ : std_logic;
signal \N__1023\ : std_logic;
signal \N__1022\ : std_logic;
signal \N__1019\ : std_logic;
signal \N__1018\ : std_logic;
signal \N__1015\ : std_logic;
signal \N__1012\ : std_logic;
signal \N__1009\ : std_logic;
signal \N__1002\ : std_logic;
signal \N__999\ : std_logic;
signal \N__998\ : std_logic;
signal \N__997\ : std_logic;
signal \N__994\ : std_logic;
signal \N__991\ : std_logic;
signal \N__988\ : std_logic;
signal \N__985\ : std_logic;
signal \N__978\ : std_logic;
signal \N__975\ : std_logic;
signal \N__974\ : std_logic;
signal \N__973\ : std_logic;
signal \N__970\ : std_logic;
signal \N__967\ : std_logic;
signal \N__964\ : std_logic;
signal \N__957\ : std_logic;
signal \N__954\ : std_logic;
signal \N__953\ : std_logic;
signal \N__950\ : std_logic;
signal \N__949\ : std_logic;
signal \N__946\ : std_logic;
signal \N__943\ : std_logic;
signal \N__940\ : std_logic;
signal \N__933\ : std_logic;
signal \N__930\ : std_logic;
signal \N__929\ : std_logic;
signal \N__928\ : std_logic;
signal \N__925\ : std_logic;
signal \N__922\ : std_logic;
signal \N__919\ : std_logic;
signal \N__916\ : std_logic;
signal \N__913\ : std_logic;
signal \N__906\ : std_logic;
signal \N__903\ : std_logic;
signal \N__900\ : std_logic;
signal \N__899\ : std_logic;
signal \N__898\ : std_logic;
signal \N__895\ : std_logic;
signal \N__892\ : std_logic;
signal \N__889\ : std_logic;
signal \N__886\ : std_logic;
signal \N__883\ : std_logic;
signal \N__876\ : std_logic;
signal \N__875\ : std_logic;
signal \N__874\ : std_logic;
signal \N__873\ : std_logic;
signal \N__864\ : std_logic;
signal \N__861\ : std_logic;
signal \N__858\ : std_logic;
signal \N__855\ : std_logic;
signal \N__852\ : std_logic;
signal \N__851\ : std_logic;
signal \N__850\ : std_logic;
signal \N__847\ : std_logic;
signal \N__842\ : std_logic;
signal \N__841\ : std_logic;
signal \N__836\ : std_logic;
signal \N__833\ : std_logic;
signal \N__828\ : std_logic;
signal \N__825\ : std_logic;
signal \N__822\ : std_logic;
signal \N__819\ : std_logic;
signal \N__818\ : std_logic;
signal \N__815\ : std_logic;
signal \N__812\ : std_logic;
signal \N__807\ : std_logic;
signal \N__806\ : std_logic;
signal \N__805\ : std_logic;
signal \N__804\ : std_logic;
signal \N__803\ : std_logic;
signal \N__802\ : std_logic;
signal \N__789\ : std_logic;
signal \N__786\ : std_logic;
signal \N__783\ : std_logic;
signal \N__782\ : std_logic;
signal \N__779\ : std_logic;
signal \N__776\ : std_logic;
signal \N__771\ : std_logic;
signal \N__768\ : std_logic;
signal \N__767\ : std_logic;
signal \N__764\ : std_logic;
signal \N__761\ : std_logic;
signal \N__756\ : std_logic;
signal \N__753\ : std_logic;
signal \N__752\ : std_logic;
signal \N__751\ : std_logic;
signal \N__748\ : std_logic;
signal \N__745\ : std_logic;
signal \N__742\ : std_logic;
signal \N__735\ : std_logic;
signal \N__732\ : std_logic;
signal \N__731\ : std_logic;
signal \N__730\ : std_logic;
signal \N__727\ : std_logic;
signal \N__724\ : std_logic;
signal \N__721\ : std_logic;
signal \N__714\ : std_logic;
signal \N__711\ : std_logic;
signal \N__710\ : std_logic;
signal \N__709\ : std_logic;
signal \N__706\ : std_logic;
signal \N__701\ : std_logic;
signal \N__696\ : std_logic;
signal \N__693\ : std_logic;
signal \N__692\ : std_logic;
signal \N__691\ : std_logic;
signal \N__688\ : std_logic;
signal \N__683\ : std_logic;
signal \N__678\ : std_logic;
signal \N__675\ : std_logic;
signal \N__674\ : std_logic;
signal \N__673\ : std_logic;
signal \N__670\ : std_logic;
signal \N__665\ : std_logic;
signal \N__660\ : std_logic;
signal \N__657\ : std_logic;
signal \N__656\ : std_logic;
signal \N__655\ : std_logic;
signal \N__652\ : std_logic;
signal \N__649\ : std_logic;
signal \N__644\ : std_logic;
signal \N__639\ : std_logic;
signal \N__636\ : std_logic;
signal \N__635\ : std_logic;
signal \N__632\ : std_logic;
signal \N__629\ : std_logic;
signal \N__626\ : std_logic;
signal \N__623\ : std_logic;
signal \N__620\ : std_logic;
signal \N__617\ : std_logic;
signal \N__612\ : std_logic;
signal \N__609\ : std_logic;
signal \N__606\ : std_logic;
signal \N__603\ : std_logic;
signal \N__600\ : std_logic;
signal \N__597\ : std_logic;
signal \N__594\ : std_logic;
signal \N__591\ : std_logic;
signal \N__588\ : std_logic;
signal \N__585\ : std_logic;
signal \N__584\ : std_logic;
signal \N__581\ : std_logic;
signal \N__578\ : std_logic;
signal \N__573\ : std_logic;
signal \N__570\ : std_logic;
signal \N__567\ : std_logic;
signal \N__564\ : std_logic;
signal \N__561\ : std_logic;
signal \N__558\ : std_logic;
signal \N__557\ : std_logic;
signal \N__556\ : std_logic;
signal \N__555\ : std_logic;
signal \N__552\ : std_logic;
signal \N__545\ : std_logic;
signal \N__540\ : std_logic;
signal \N__539\ : std_logic;
signal \N__538\ : std_logic;
signal \N__535\ : std_logic;
signal \N__530\ : std_logic;
signal \N__527\ : std_logic;
signal \N__524\ : std_logic;
signal \N__519\ : std_logic;
signal \N__518\ : std_logic;
signal \N__515\ : std_logic;
signal \N__512\ : std_logic;
signal \N__509\ : std_logic;
signal \N__504\ : std_logic;
signal \N__501\ : std_logic;
signal \N__500\ : std_logic;
signal \N__497\ : std_logic;
signal \N__494\ : std_logic;
signal \N__489\ : std_logic;
signal \N__486\ : std_logic;
signal \N__483\ : std_logic;
signal \N__480\ : std_logic;
signal \N__477\ : std_logic;
signal \N__474\ : std_logic;
signal \N__471\ : std_logic;
signal \N__468\ : std_logic;
signal \GNDG0\ : std_logic;
signal \VCCG0\ : std_logic;
signal \Debounce_Inst.un9_r_count_6_cascade_\ : std_logic;
signal \Debounce_Inst.un9_r_count_9_0_cascade_\ : std_logic;
signal \Debounce_Inst.un9_r_count_5_cascade_\ : std_logic;
signal \Debounce_Inst.un9_r_count_10_0\ : std_logic;
signal \Debounce_Inst.un1_r_Count_1lto11_1\ : std_logic;
signal \i_Switch_1_c\ : std_logic;
signal \Debounce_Inst.un1_r_Count_1lt17_cascade_\ : std_logic;
signal \Debounce_Inst.r_count15_i\ : std_logic;
signal \Debounce_Inst.un9_r_count_10\ : std_logic;
signal \Debounce_Inst.un9_r_count_9\ : std_logic;
signal \Debounce_Inst.un9_r_count_10_cascade_\ : std_logic;
signal \Debounce_Inst.un1_r_Count_1lt11_0\ : std_logic;
signal \Debounce_Inst.un1_r_Count_1lto17_2\ : std_logic;
signal \Debounce_Inst.r_CountZ0Z_0\ : std_logic;
signal \Debounce_Inst.r_CountZ0Z_1\ : std_logic;
signal \bfn_6_5_0_\ : std_logic;
signal \Debounce_Inst.r_CountZ0Z_2\ : std_logic;
signal \Debounce_Inst.un2_r_count_cry_1\ : std_logic;
signal \Debounce_Inst.r_CountZ0Z_3\ : std_logic;
signal \Debounce_Inst.un2_r_count_cry_2\ : std_logic;
signal \Debounce_Inst.r_CountZ0Z_4\ : std_logic;
signal \Debounce_Inst.un2_r_count_cry_3\ : std_logic;
signal \Debounce_Inst.r_CountZ0Z_5\ : std_logic;
signal \Debounce_Inst.un2_r_count_cry_4\ : std_logic;
signal \Debounce_Inst.r_CountZ0Z_6\ : std_logic;
signal \Debounce_Inst.un2_r_count_cry_5\ : std_logic;
signal \Debounce_Inst.r_CountZ0Z_7\ : std_logic;
signal \Debounce_Inst.un2_r_count_cry_6\ : std_logic;
signal \Debounce_Inst.r_CountZ0Z_8\ : std_logic;
signal \Debounce_Inst.un2_r_count_cry_7\ : std_logic;
signal \Debounce_Inst.un2_r_count_cry_8\ : std_logic;
signal \Debounce_Inst.r_CountZ0Z_9\ : std_logic;
signal \bfn_6_6_0_\ : std_logic;
signal \Debounce_Inst.r_CountZ0Z_10\ : std_logic;
signal \Debounce_Inst.un2_r_count_cry_9\ : std_logic;
signal \Debounce_Inst.r_CountZ0Z_11\ : std_logic;
signal \Debounce_Inst.un2_r_count_cry_10\ : std_logic;
signal \Debounce_Inst.r_CountZ0Z_12\ : std_logic;
signal \Debounce_Inst.un2_r_count_cry_11\ : std_logic;
signal \Debounce_Inst.r_CountZ0Z_13\ : std_logic;
signal \Debounce_Inst.un2_r_count_cry_12\ : std_logic;
signal \Debounce_Inst.r_CountZ0Z_14\ : std_logic;
signal \Debounce_Inst.un2_r_count_cry_13\ : std_logic;
signal \Debounce_Inst.r_CountZ0Z_15\ : std_logic;
signal \Debounce_Inst.un2_r_count_cry_14\ : std_logic;
signal \Debounce_Inst.r_CountZ0Z_16\ : std_logic;
signal \Debounce_Inst.un2_r_count_cry_15\ : std_logic;
signal \Debounce_Inst.un2_r_count_cry_16\ : std_logic;
signal \bfn_6_7_0_\ : std_logic;
signal \Debounce_Inst.r_CountZ0Z_17\ : std_logic;
signal \Debounce_Inst.r_count15_i_g\ : std_logic;
signal \LED_Toggle_Inst.r_switchZ0Z_1\ : std_logic;
signal \w_Debounced_switch\ : std_logic;
signal \o_LED_1_c\ : std_logic;
signal i_clk_c_g : std_logic;
signal \_gnd_net_\ : std_logic;

signal i_clk_wire : std_logic;
signal \o_LED_1_wire\ : std_logic;
signal \i_Switch_1_wire\ : std_logic;

begin
    i_clk_wire <= i_clk;
    o_LED_1 <= \o_LED_1_wire\;
    \i_Switch_1_wire\ <= i_Switch_1;

    \i_clk_ibuf_gb_io_preiogbuf\ : PRE_IO_GBUF
    port map (
            PADSIGNALTOGLOBALBUFFER => \N__1060\,
            GLOBALBUFFEROUTPUT => i_clk_c_g
        );

    \i_clk_ibuf_gb_io_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1062\,
            DIN => \N__1061\,
            DOUT => \N__1060\,
            PACKAGEPIN => i_clk_wire
        );

    \i_clk_ibuf_gb_io_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__1062\,
            PADOUT => \N__1061\,
            PADIN => \N__1060\,
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

    \o_LED_1_obuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1051\,
            DIN => \N__1050\,
            DOUT => \N__1049\,
            PACKAGEPIN => \o_LED_1_wire\
        );

    \o_LED_1_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__1051\,
            PADOUT => \N__1050\,
            PADIN => \N__1049\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__828\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \i_Switch_1_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1042\,
            DIN => \N__1041\,
            DOUT => \N__1040\,
            PACKAGEPIN => \i_Switch_1_wire\
        );

    \i_Switch_1_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__1042\,
            PADOUT => \N__1041\,
            PADIN => \N__1040\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => \i_Switch_1_c\,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \I__228\ : CascadeMux
    port map (
            O => \N__1023\,
            I => \N__1019\
        );

    \I__227\ : InMux
    port map (
            O => \N__1022\,
            I => \N__1015\
        );

    \I__226\ : InMux
    port map (
            O => \N__1019\,
            I => \N__1012\
        );

    \I__225\ : InMux
    port map (
            O => \N__1018\,
            I => \N__1009\
        );

    \I__224\ : LocalMux
    port map (
            O => \N__1015\,
            I => \Debounce_Inst.r_CountZ0Z_12\
        );

    \I__223\ : LocalMux
    port map (
            O => \N__1012\,
            I => \Debounce_Inst.r_CountZ0Z_12\
        );

    \I__222\ : LocalMux
    port map (
            O => \N__1009\,
            I => \Debounce_Inst.r_CountZ0Z_12\
        );

    \I__221\ : InMux
    port map (
            O => \N__1002\,
            I => \Debounce_Inst.un2_r_count_cry_11\
        );

    \I__220\ : CascadeMux
    port map (
            O => \N__999\,
            I => \N__994\
        );

    \I__219\ : InMux
    port map (
            O => \N__998\,
            I => \N__991\
        );

    \I__218\ : InMux
    port map (
            O => \N__997\,
            I => \N__988\
        );

    \I__217\ : InMux
    port map (
            O => \N__994\,
            I => \N__985\
        );

    \I__216\ : LocalMux
    port map (
            O => \N__991\,
            I => \Debounce_Inst.r_CountZ0Z_13\
        );

    \I__215\ : LocalMux
    port map (
            O => \N__988\,
            I => \Debounce_Inst.r_CountZ0Z_13\
        );

    \I__214\ : LocalMux
    port map (
            O => \N__985\,
            I => \Debounce_Inst.r_CountZ0Z_13\
        );

    \I__213\ : InMux
    port map (
            O => \N__978\,
            I => \Debounce_Inst.un2_r_count_cry_12\
        );

    \I__212\ : InMux
    port map (
            O => \N__975\,
            I => \N__970\
        );

    \I__211\ : InMux
    port map (
            O => \N__974\,
            I => \N__967\
        );

    \I__210\ : InMux
    port map (
            O => \N__973\,
            I => \N__964\
        );

    \I__209\ : LocalMux
    port map (
            O => \N__970\,
            I => \Debounce_Inst.r_CountZ0Z_14\
        );

    \I__208\ : LocalMux
    port map (
            O => \N__967\,
            I => \Debounce_Inst.r_CountZ0Z_14\
        );

    \I__207\ : LocalMux
    port map (
            O => \N__964\,
            I => \Debounce_Inst.r_CountZ0Z_14\
        );

    \I__206\ : InMux
    port map (
            O => \N__957\,
            I => \Debounce_Inst.un2_r_count_cry_13\
        );

    \I__205\ : InMux
    port map (
            O => \N__954\,
            I => \N__950\
        );

    \I__204\ : InMux
    port map (
            O => \N__953\,
            I => \N__946\
        );

    \I__203\ : LocalMux
    port map (
            O => \N__950\,
            I => \N__943\
        );

    \I__202\ : InMux
    port map (
            O => \N__949\,
            I => \N__940\
        );

    \I__201\ : LocalMux
    port map (
            O => \N__946\,
            I => \Debounce_Inst.r_CountZ0Z_15\
        );

    \I__200\ : Odrv4
    port map (
            O => \N__943\,
            I => \Debounce_Inst.r_CountZ0Z_15\
        );

    \I__199\ : LocalMux
    port map (
            O => \N__940\,
            I => \Debounce_Inst.r_CountZ0Z_15\
        );

    \I__198\ : InMux
    port map (
            O => \N__933\,
            I => \Debounce_Inst.un2_r_count_cry_14\
        );

    \I__197\ : CascadeMux
    port map (
            O => \N__930\,
            I => \N__925\
        );

    \I__196\ : InMux
    port map (
            O => \N__929\,
            I => \N__922\
        );

    \I__195\ : InMux
    port map (
            O => \N__928\,
            I => \N__919\
        );

    \I__194\ : InMux
    port map (
            O => \N__925\,
            I => \N__916\
        );

    \I__193\ : LocalMux
    port map (
            O => \N__922\,
            I => \N__913\
        );

    \I__192\ : LocalMux
    port map (
            O => \N__919\,
            I => \Debounce_Inst.r_CountZ0Z_16\
        );

    \I__191\ : LocalMux
    port map (
            O => \N__916\,
            I => \Debounce_Inst.r_CountZ0Z_16\
        );

    \I__190\ : Odrv4
    port map (
            O => \N__913\,
            I => \Debounce_Inst.r_CountZ0Z_16\
        );

    \I__189\ : InMux
    port map (
            O => \N__906\,
            I => \Debounce_Inst.un2_r_count_cry_15\
        );

    \I__188\ : InMux
    port map (
            O => \N__903\,
            I => \bfn_6_7_0_\
        );

    \I__187\ : InMux
    port map (
            O => \N__900\,
            I => \N__895\
        );

    \I__186\ : CascadeMux
    port map (
            O => \N__899\,
            I => \N__892\
        );

    \I__185\ : InMux
    port map (
            O => \N__898\,
            I => \N__889\
        );

    \I__184\ : LocalMux
    port map (
            O => \N__895\,
            I => \N__886\
        );

    \I__183\ : InMux
    port map (
            O => \N__892\,
            I => \N__883\
        );

    \I__182\ : LocalMux
    port map (
            O => \N__889\,
            I => \Debounce_Inst.r_CountZ0Z_17\
        );

    \I__181\ : Odrv4
    port map (
            O => \N__886\,
            I => \Debounce_Inst.r_CountZ0Z_17\
        );

    \I__180\ : LocalMux
    port map (
            O => \N__883\,
            I => \Debounce_Inst.r_CountZ0Z_17\
        );

    \I__179\ : SRMux
    port map (
            O => \N__876\,
            I => \N__864\
        );

    \I__178\ : SRMux
    port map (
            O => \N__875\,
            I => \N__864\
        );

    \I__177\ : SRMux
    port map (
            O => \N__874\,
            I => \N__864\
        );

    \I__176\ : SRMux
    port map (
            O => \N__873\,
            I => \N__864\
        );

    \I__175\ : GlobalMux
    port map (
            O => \N__864\,
            I => \N__861\
        );

    \I__174\ : gio2CtrlBuf
    port map (
            O => \N__861\,
            I => \Debounce_Inst.r_count15_i_g\
        );

    \I__173\ : InMux
    port map (
            O => \N__858\,
            I => \N__855\
        );

    \I__172\ : LocalMux
    port map (
            O => \N__855\,
            I => \LED_Toggle_Inst.r_switchZ0Z_1\
        );

    \I__171\ : InMux
    port map (
            O => \N__852\,
            I => \N__847\
        );

    \I__170\ : InMux
    port map (
            O => \N__851\,
            I => \N__842\
        );

    \I__169\ : InMux
    port map (
            O => \N__850\,
            I => \N__842\
        );

    \I__168\ : LocalMux
    port map (
            O => \N__847\,
            I => \N__836\
        );

    \I__167\ : LocalMux
    port map (
            O => \N__842\,
            I => \N__836\
        );

    \I__166\ : InMux
    port map (
            O => \N__841\,
            I => \N__833\
        );

    \I__165\ : Odrv4
    port map (
            O => \N__836\,
            I => \w_Debounced_switch\
        );

    \I__164\ : LocalMux
    port map (
            O => \N__833\,
            I => \w_Debounced_switch\
        );

    \I__163\ : IoInMux
    port map (
            O => \N__828\,
            I => \N__825\
        );

    \I__162\ : LocalMux
    port map (
            O => \N__825\,
            I => \N__822\
        );

    \I__161\ : IoSpan4Mux
    port map (
            O => \N__822\,
            I => \N__819\
        );

    \I__160\ : Span4Mux_s1_h
    port map (
            O => \N__819\,
            I => \N__815\
        );

    \I__159\ : InMux
    port map (
            O => \N__818\,
            I => \N__812\
        );

    \I__158\ : Odrv4
    port map (
            O => \N__815\,
            I => \o_LED_1_c\
        );

    \I__157\ : LocalMux
    port map (
            O => \N__812\,
            I => \o_LED_1_c\
        );

    \I__156\ : ClkMux
    port map (
            O => \N__807\,
            I => \N__789\
        );

    \I__155\ : ClkMux
    port map (
            O => \N__806\,
            I => \N__789\
        );

    \I__154\ : ClkMux
    port map (
            O => \N__805\,
            I => \N__789\
        );

    \I__153\ : ClkMux
    port map (
            O => \N__804\,
            I => \N__789\
        );

    \I__152\ : ClkMux
    port map (
            O => \N__803\,
            I => \N__789\
        );

    \I__151\ : ClkMux
    port map (
            O => \N__802\,
            I => \N__789\
        );

    \I__150\ : GlobalMux
    port map (
            O => \N__789\,
            I => \N__786\
        );

    \I__149\ : gio2CtrlBuf
    port map (
            O => \N__786\,
            I => i_clk_c_g
        );

    \I__148\ : InMux
    port map (
            O => \N__783\,
            I => \N__779\
        );

    \I__147\ : InMux
    port map (
            O => \N__782\,
            I => \N__776\
        );

    \I__146\ : LocalMux
    port map (
            O => \N__779\,
            I => \Debounce_Inst.r_CountZ0Z_4\
        );

    \I__145\ : LocalMux
    port map (
            O => \N__776\,
            I => \Debounce_Inst.r_CountZ0Z_4\
        );

    \I__144\ : InMux
    port map (
            O => \N__771\,
            I => \Debounce_Inst.un2_r_count_cry_3\
        );

    \I__143\ : InMux
    port map (
            O => \N__768\,
            I => \N__764\
        );

    \I__142\ : InMux
    port map (
            O => \N__767\,
            I => \N__761\
        );

    \I__141\ : LocalMux
    port map (
            O => \N__764\,
            I => \Debounce_Inst.r_CountZ0Z_5\
        );

    \I__140\ : LocalMux
    port map (
            O => \N__761\,
            I => \Debounce_Inst.r_CountZ0Z_5\
        );

    \I__139\ : InMux
    port map (
            O => \N__756\,
            I => \Debounce_Inst.un2_r_count_cry_4\
        );

    \I__138\ : InMux
    port map (
            O => \N__753\,
            I => \N__748\
        );

    \I__137\ : InMux
    port map (
            O => \N__752\,
            I => \N__745\
        );

    \I__136\ : InMux
    port map (
            O => \N__751\,
            I => \N__742\
        );

    \I__135\ : LocalMux
    port map (
            O => \N__748\,
            I => \Debounce_Inst.r_CountZ0Z_6\
        );

    \I__134\ : LocalMux
    port map (
            O => \N__745\,
            I => \Debounce_Inst.r_CountZ0Z_6\
        );

    \I__133\ : LocalMux
    port map (
            O => \N__742\,
            I => \Debounce_Inst.r_CountZ0Z_6\
        );

    \I__132\ : InMux
    port map (
            O => \N__735\,
            I => \Debounce_Inst.un2_r_count_cry_5\
        );

    \I__131\ : InMux
    port map (
            O => \N__732\,
            I => \N__727\
        );

    \I__130\ : InMux
    port map (
            O => \N__731\,
            I => \N__724\
        );

    \I__129\ : InMux
    port map (
            O => \N__730\,
            I => \N__721\
        );

    \I__128\ : LocalMux
    port map (
            O => \N__727\,
            I => \Debounce_Inst.r_CountZ0Z_7\
        );

    \I__127\ : LocalMux
    port map (
            O => \N__724\,
            I => \Debounce_Inst.r_CountZ0Z_7\
        );

    \I__126\ : LocalMux
    port map (
            O => \N__721\,
            I => \Debounce_Inst.r_CountZ0Z_7\
        );

    \I__125\ : InMux
    port map (
            O => \N__714\,
            I => \Debounce_Inst.un2_r_count_cry_6\
        );

    \I__124\ : InMux
    port map (
            O => \N__711\,
            I => \N__706\
        );

    \I__123\ : InMux
    port map (
            O => \N__710\,
            I => \N__701\
        );

    \I__122\ : InMux
    port map (
            O => \N__709\,
            I => \N__701\
        );

    \I__121\ : LocalMux
    port map (
            O => \N__706\,
            I => \Debounce_Inst.r_CountZ0Z_8\
        );

    \I__120\ : LocalMux
    port map (
            O => \N__701\,
            I => \Debounce_Inst.r_CountZ0Z_8\
        );

    \I__119\ : InMux
    port map (
            O => \N__696\,
            I => \Debounce_Inst.un2_r_count_cry_7\
        );

    \I__118\ : InMux
    port map (
            O => \N__693\,
            I => \N__688\
        );

    \I__117\ : InMux
    port map (
            O => \N__692\,
            I => \N__683\
        );

    \I__116\ : InMux
    port map (
            O => \N__691\,
            I => \N__683\
        );

    \I__115\ : LocalMux
    port map (
            O => \N__688\,
            I => \Debounce_Inst.r_CountZ0Z_9\
        );

    \I__114\ : LocalMux
    port map (
            O => \N__683\,
            I => \Debounce_Inst.r_CountZ0Z_9\
        );

    \I__113\ : InMux
    port map (
            O => \N__678\,
            I => \bfn_6_6_0_\
        );

    \I__112\ : InMux
    port map (
            O => \N__675\,
            I => \N__670\
        );

    \I__111\ : InMux
    port map (
            O => \N__674\,
            I => \N__665\
        );

    \I__110\ : InMux
    port map (
            O => \N__673\,
            I => \N__665\
        );

    \I__109\ : LocalMux
    port map (
            O => \N__670\,
            I => \Debounce_Inst.r_CountZ0Z_10\
        );

    \I__108\ : LocalMux
    port map (
            O => \N__665\,
            I => \Debounce_Inst.r_CountZ0Z_10\
        );

    \I__107\ : InMux
    port map (
            O => \N__660\,
            I => \Debounce_Inst.un2_r_count_cry_9\
        );

    \I__106\ : CascadeMux
    port map (
            O => \N__657\,
            I => \N__652\
        );

    \I__105\ : InMux
    port map (
            O => \N__656\,
            I => \N__649\
        );

    \I__104\ : InMux
    port map (
            O => \N__655\,
            I => \N__644\
        );

    \I__103\ : InMux
    port map (
            O => \N__652\,
            I => \N__644\
        );

    \I__102\ : LocalMux
    port map (
            O => \N__649\,
            I => \Debounce_Inst.r_CountZ0Z_11\
        );

    \I__101\ : LocalMux
    port map (
            O => \N__644\,
            I => \Debounce_Inst.r_CountZ0Z_11\
        );

    \I__100\ : InMux
    port map (
            O => \N__639\,
            I => \Debounce_Inst.un2_r_count_cry_10\
        );

    \I__99\ : InMux
    port map (
            O => \N__636\,
            I => \N__632\
        );

    \I__98\ : InMux
    port map (
            O => \N__635\,
            I => \N__629\
        );

    \I__97\ : LocalMux
    port map (
            O => \N__632\,
            I => \N__626\
        );

    \I__96\ : LocalMux
    port map (
            O => \N__629\,
            I => \N__623\
        );

    \I__95\ : Span4Mux_v
    port map (
            O => \N__626\,
            I => \N__620\
        );

    \I__94\ : Span4Mux_v
    port map (
            O => \N__623\,
            I => \N__617\
        );

    \I__93\ : Span4Mux_h
    port map (
            O => \N__620\,
            I => \N__612\
        );

    \I__92\ : Span4Mux_h
    port map (
            O => \N__617\,
            I => \N__612\
        );

    \I__91\ : Odrv4
    port map (
            O => \N__612\,
            I => \i_Switch_1_c\
        );

    \I__90\ : CascadeMux
    port map (
            O => \N__609\,
            I => \Debounce_Inst.un1_r_Count_1lt17_cascade_\
        );

    \I__89\ : IoInMux
    port map (
            O => \N__606\,
            I => \N__603\
        );

    \I__88\ : LocalMux
    port map (
            O => \N__603\,
            I => \N__600\
        );

    \I__87\ : Span4Mux_s0_h
    port map (
            O => \N__600\,
            I => \N__597\
        );

    \I__86\ : Span4Mux_h
    port map (
            O => \N__597\,
            I => \N__594\
        );

    \I__85\ : Odrv4
    port map (
            O => \N__594\,
            I => \Debounce_Inst.r_count15_i\
        );

    \I__84\ : InMux
    port map (
            O => \N__591\,
            I => \N__588\
        );

    \I__83\ : LocalMux
    port map (
            O => \N__588\,
            I => \Debounce_Inst.un9_r_count_10\
        );

    \I__82\ : InMux
    port map (
            O => \N__585\,
            I => \N__581\
        );

    \I__81\ : InMux
    port map (
            O => \N__584\,
            I => \N__578\
        );

    \I__80\ : LocalMux
    port map (
            O => \N__581\,
            I => \Debounce_Inst.un9_r_count_9\
        );

    \I__79\ : LocalMux
    port map (
            O => \N__578\,
            I => \Debounce_Inst.un9_r_count_9\
        );

    \I__78\ : CascadeMux
    port map (
            O => \N__573\,
            I => \Debounce_Inst.un9_r_count_10_cascade_\
        );

    \I__77\ : InMux
    port map (
            O => \N__570\,
            I => \N__567\
        );

    \I__76\ : LocalMux
    port map (
            O => \N__567\,
            I => \Debounce_Inst.un1_r_Count_1lt11_0\
        );

    \I__75\ : InMux
    port map (
            O => \N__564\,
            I => \N__561\
        );

    \I__74\ : LocalMux
    port map (
            O => \N__561\,
            I => \Debounce_Inst.un1_r_Count_1lto17_2\
        );

    \I__73\ : InMux
    port map (
            O => \N__558\,
            I => \N__552\
        );

    \I__72\ : InMux
    port map (
            O => \N__557\,
            I => \N__545\
        );

    \I__71\ : InMux
    port map (
            O => \N__556\,
            I => \N__545\
        );

    \I__70\ : InMux
    port map (
            O => \N__555\,
            I => \N__545\
        );

    \I__69\ : LocalMux
    port map (
            O => \N__552\,
            I => \Debounce_Inst.r_CountZ0Z_0\
        );

    \I__68\ : LocalMux
    port map (
            O => \N__545\,
            I => \Debounce_Inst.r_CountZ0Z_0\
        );

    \I__67\ : CascadeMux
    port map (
            O => \N__540\,
            I => \N__535\
        );

    \I__66\ : InMux
    port map (
            O => \N__539\,
            I => \N__530\
        );

    \I__65\ : InMux
    port map (
            O => \N__538\,
            I => \N__530\
        );

    \I__64\ : InMux
    port map (
            O => \N__535\,
            I => \N__527\
        );

    \I__63\ : LocalMux
    port map (
            O => \N__530\,
            I => \N__524\
        );

    \I__62\ : LocalMux
    port map (
            O => \N__527\,
            I => \Debounce_Inst.r_CountZ0Z_1\
        );

    \I__61\ : Odrv4
    port map (
            O => \N__524\,
            I => \Debounce_Inst.r_CountZ0Z_1\
        );

    \I__60\ : CascadeMux
    port map (
            O => \N__519\,
            I => \N__515\
        );

    \I__59\ : InMux
    port map (
            O => \N__518\,
            I => \N__512\
        );

    \I__58\ : InMux
    port map (
            O => \N__515\,
            I => \N__509\
        );

    \I__57\ : LocalMux
    port map (
            O => \N__512\,
            I => \Debounce_Inst.r_CountZ0Z_2\
        );

    \I__56\ : LocalMux
    port map (
            O => \N__509\,
            I => \Debounce_Inst.r_CountZ0Z_2\
        );

    \I__55\ : InMux
    port map (
            O => \N__504\,
            I => \Debounce_Inst.un2_r_count_cry_1\
        );

    \I__54\ : InMux
    port map (
            O => \N__501\,
            I => \N__497\
        );

    \I__53\ : InMux
    port map (
            O => \N__500\,
            I => \N__494\
        );

    \I__52\ : LocalMux
    port map (
            O => \N__497\,
            I => \Debounce_Inst.r_CountZ0Z_3\
        );

    \I__51\ : LocalMux
    port map (
            O => \N__494\,
            I => \Debounce_Inst.r_CountZ0Z_3\
        );

    \I__50\ : InMux
    port map (
            O => \N__489\,
            I => \Debounce_Inst.un2_r_count_cry_2\
        );

    \I__49\ : CascadeMux
    port map (
            O => \N__486\,
            I => \Debounce_Inst.un9_r_count_6_cascade_\
        );

    \I__48\ : CascadeMux
    port map (
            O => \N__483\,
            I => \Debounce_Inst.un9_r_count_9_0_cascade_\
        );

    \I__47\ : CascadeMux
    port map (
            O => \N__480\,
            I => \Debounce_Inst.un9_r_count_5_cascade_\
        );

    \I__46\ : InMux
    port map (
            O => \N__477\,
            I => \N__474\
        );

    \I__45\ : LocalMux
    port map (
            O => \N__474\,
            I => \Debounce_Inst.un9_r_count_10_0\
        );

    \I__44\ : InMux
    port map (
            O => \N__471\,
            I => \N__468\
        );

    \I__43\ : LocalMux
    port map (
            O => \N__468\,
            I => \Debounce_Inst.un1_r_Count_1lto11_1\
        );

    \IN_MUX_bfv_6_5_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "00"
        )
    port map (
            carryinitin => '0',
            carryinitout => \bfn_6_5_0_\
        );

    \IN_MUX_bfv_6_6_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => \Debounce_Inst.un2_r_count_cry_8\,
            carryinitout => \bfn_6_6_0_\
        );

    \IN_MUX_bfv_6_7_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => \Debounce_Inst.un2_r_count_cry_16\,
            carryinitout => \bfn_6_7_0_\
        );

    \Debounce_Inst.r_State_RNI62LO8_0\ : ICE_GB
    port map (
            USERSIGNALTOGLOBALBUFFER => \N__606\,
            GLOBALBUFFEROUTPUT => \Debounce_Inst.r_count15_i_g\
        );

    \GND\ : GND
    port map (
            Y => \GNDG0\
        );

    \VCC\ : VCC
    port map (
            Y => \VCCG0\
        );

    \GND_Inst\ : GND
    port map (
            Y => \_gnd_net_\
        );

    \Debounce_Inst.r_Count_RNIDG3S_4_LC_5_5_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000110011"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__782\,
            in2 => \_gnd_net_\,
            in3 => \N__767\,
            lcout => \Debounce_Inst.un9_r_count_9\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \Debounce_Inst.r_State_RNO_2_LC_5_5_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000001000000"
        )
    port map (
            in0 => \N__655\,
            in1 => \N__900\,
            in2 => \N__930\,
            in3 => \N__997\,
            lcout => OPEN,
            ltout => \Debounce_Inst.un9_r_count_6_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \Debounce_Inst.r_State_RNO_0_LC_5_5_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0001000000000000"
        )
    port map (
            in0 => \N__710\,
            in1 => \N__753\,
            in2 => \N__486\,
            in3 => \N__585\,
            lcout => OPEN,
            ltout => \Debounce_Inst.un9_r_count_9_0_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \Debounce_Inst.r_State_LC_5_5_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1010110011001100"
        )
    port map (
            in0 => \N__635\,
            in1 => \N__852\,
            in2 => \N__483\,
            in3 => \N__477\,
            lcout => \w_Debounced_switch\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__804\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \Debounce_Inst.r_Count_RNISHDR1_8_LC_5_5_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000001"
        )
    port map (
            in0 => \N__673\,
            in1 => \N__691\,
            in2 => \N__657\,
            in3 => \N__709\,
            lcout => \Debounce_Inst.un1_r_Count_1lto11_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \Debounce_Inst.r_State_RNO_3_LC_5_5_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1000000000000000"
        )
    port map (
            in0 => \N__974\,
            in1 => \N__954\,
            in2 => \N__1023\,
            in3 => \N__731\,
            lcout => OPEN,
            ltout => \Debounce_Inst.un9_r_count_5_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \Debounce_Inst.r_State_RNO_1_LC_5_5_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000001000000"
        )
    port map (
            in0 => \N__674\,
            in1 => \N__591\,
            in2 => \N__480\,
            in3 => \N__692\,
            lcout => \Debounce_Inst.un9_r_count_10_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \Debounce_Inst.r_Count_RNIJ85B6_12_LC_5_6_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000010100001101"
        )
    port map (
            in0 => \N__1018\,
            in1 => \N__471\,
            in2 => \N__999\,
            in3 => \N__570\,
            lcout => OPEN,
            ltout => \Debounce_Inst.un1_r_Count_1lt17_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \Debounce_Inst.r_State_RNI62LO8_LC_5_6_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1100111000111011"
        )
    port map (
            in0 => \N__564\,
            in1 => \N__636\,
            in2 => \N__609\,
            in3 => \N__841\,
            lcout => \Debounce_Inst.r_count15_i\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \Debounce_Inst.r_Count_RNIEK6O1_1_LC_5_6_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1000000000000000"
        )
    port map (
            in0 => \N__538\,
            in1 => \N__555\,
            in2 => \N__519\,
            in3 => \N__500\,
            lcout => \Debounce_Inst.un9_r_count_10\,
            ltout => \Debounce_Inst.un9_r_count_10_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \Debounce_Inst.r_Count_RNICPDG3_6_LC_5_6_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1100110011000100"
        )
    port map (
            in0 => \N__584\,
            in1 => \N__730\,
            in2 => \N__573\,
            in3 => \N__751\,
            lcout => \Debounce_Inst.un1_r_Count_1lt11_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \Debounce_Inst.r_Count_RNI27KU1_17_LC_5_6_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1000000000000000"
        )
    port map (
            in0 => \N__929\,
            in1 => \N__949\,
            in2 => \N__899\,
            in3 => \N__973\,
            lcout => \Debounce_Inst.un1_r_Count_1lto17_2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \Debounce_Inst.r_Count_1_LC_5_6_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1010010101011010"
        )
    port map (
            in0 => \N__539\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__557\,
            lcout => \Debounce_Inst.r_CountZ0Z_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__802\,
            ce => 'H',
            sr => \N__873\
        );

    \Debounce_Inst.r_Count_0_LC_5_6_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0101010101010101"
        )
    port map (
            in0 => \N__556\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \Debounce_Inst.r_CountZ0Z_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__802\,
            ce => 'H',
            sr => \N__873\
        );

    \Debounce_Inst.un2_r_count_cry_1_c_LC_6_5_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__558\,
            in2 => \N__540\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => \bfn_6_5_0_\,
            carryout => \Debounce_Inst.un2_r_count_cry_1\,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \Debounce_Inst.r_Count_2_LC_6_5_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__518\,
            in2 => \_gnd_net_\,
            in3 => \N__504\,
            lcout => \Debounce_Inst.r_CountZ0Z_2\,
            ltout => OPEN,
            carryin => \Debounce_Inst.un2_r_count_cry_1\,
            carryout => \Debounce_Inst.un2_r_count_cry_2\,
            clk => \N__806\,
            ce => 'H',
            sr => \N__876\
        );

    \Debounce_Inst.r_Count_3_LC_6_5_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__501\,
            in2 => \_gnd_net_\,
            in3 => \N__489\,
            lcout => \Debounce_Inst.r_CountZ0Z_3\,
            ltout => OPEN,
            carryin => \Debounce_Inst.un2_r_count_cry_2\,
            carryout => \Debounce_Inst.un2_r_count_cry_3\,
            clk => \N__806\,
            ce => 'H',
            sr => \N__876\
        );

    \Debounce_Inst.r_Count_4_LC_6_5_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__783\,
            in2 => \_gnd_net_\,
            in3 => \N__771\,
            lcout => \Debounce_Inst.r_CountZ0Z_4\,
            ltout => OPEN,
            carryin => \Debounce_Inst.un2_r_count_cry_3\,
            carryout => \Debounce_Inst.un2_r_count_cry_4\,
            clk => \N__806\,
            ce => 'H',
            sr => \N__876\
        );

    \Debounce_Inst.r_Count_5_LC_6_5_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__768\,
            in2 => \_gnd_net_\,
            in3 => \N__756\,
            lcout => \Debounce_Inst.r_CountZ0Z_5\,
            ltout => OPEN,
            carryin => \Debounce_Inst.un2_r_count_cry_4\,
            carryout => \Debounce_Inst.un2_r_count_cry_5\,
            clk => \N__806\,
            ce => 'H',
            sr => \N__876\
        );

    \Debounce_Inst.r_Count_6_LC_6_5_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__752\,
            in2 => \_gnd_net_\,
            in3 => \N__735\,
            lcout => \Debounce_Inst.r_CountZ0Z_6\,
            ltout => OPEN,
            carryin => \Debounce_Inst.un2_r_count_cry_5\,
            carryout => \Debounce_Inst.un2_r_count_cry_6\,
            clk => \N__806\,
            ce => 'H',
            sr => \N__876\
        );

    \Debounce_Inst.r_Count_7_LC_6_5_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__732\,
            in2 => \_gnd_net_\,
            in3 => \N__714\,
            lcout => \Debounce_Inst.r_CountZ0Z_7\,
            ltout => OPEN,
            carryin => \Debounce_Inst.un2_r_count_cry_6\,
            carryout => \Debounce_Inst.un2_r_count_cry_7\,
            clk => \N__806\,
            ce => 'H',
            sr => \N__876\
        );

    \Debounce_Inst.r_Count_8_LC_6_5_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__711\,
            in2 => \_gnd_net_\,
            in3 => \N__696\,
            lcout => \Debounce_Inst.r_CountZ0Z_8\,
            ltout => OPEN,
            carryin => \Debounce_Inst.un2_r_count_cry_7\,
            carryout => \Debounce_Inst.un2_r_count_cry_8\,
            clk => \N__806\,
            ce => 'H',
            sr => \N__876\
        );

    \Debounce_Inst.r_Count_9_LC_6_6_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__693\,
            in2 => \_gnd_net_\,
            in3 => \N__678\,
            lcout => \Debounce_Inst.r_CountZ0Z_9\,
            ltout => OPEN,
            carryin => \bfn_6_6_0_\,
            carryout => \Debounce_Inst.un2_r_count_cry_9\,
            clk => \N__805\,
            ce => 'H',
            sr => \N__875\
        );

    \Debounce_Inst.r_Count_10_LC_6_6_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__675\,
            in2 => \_gnd_net_\,
            in3 => \N__660\,
            lcout => \Debounce_Inst.r_CountZ0Z_10\,
            ltout => OPEN,
            carryin => \Debounce_Inst.un2_r_count_cry_9\,
            carryout => \Debounce_Inst.un2_r_count_cry_10\,
            clk => \N__805\,
            ce => 'H',
            sr => \N__875\
        );

    \Debounce_Inst.r_Count_11_LC_6_6_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__656\,
            in2 => \_gnd_net_\,
            in3 => \N__639\,
            lcout => \Debounce_Inst.r_CountZ0Z_11\,
            ltout => OPEN,
            carryin => \Debounce_Inst.un2_r_count_cry_10\,
            carryout => \Debounce_Inst.un2_r_count_cry_11\,
            clk => \N__805\,
            ce => 'H',
            sr => \N__875\
        );

    \Debounce_Inst.r_Count_12_LC_6_6_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1022\,
            in2 => \_gnd_net_\,
            in3 => \N__1002\,
            lcout => \Debounce_Inst.r_CountZ0Z_12\,
            ltout => OPEN,
            carryin => \Debounce_Inst.un2_r_count_cry_11\,
            carryout => \Debounce_Inst.un2_r_count_cry_12\,
            clk => \N__805\,
            ce => 'H',
            sr => \N__875\
        );

    \Debounce_Inst.r_Count_13_LC_6_6_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__998\,
            in2 => \_gnd_net_\,
            in3 => \N__978\,
            lcout => \Debounce_Inst.r_CountZ0Z_13\,
            ltout => OPEN,
            carryin => \Debounce_Inst.un2_r_count_cry_12\,
            carryout => \Debounce_Inst.un2_r_count_cry_13\,
            clk => \N__805\,
            ce => 'H',
            sr => \N__875\
        );

    \Debounce_Inst.r_Count_14_LC_6_6_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__975\,
            in2 => \_gnd_net_\,
            in3 => \N__957\,
            lcout => \Debounce_Inst.r_CountZ0Z_14\,
            ltout => OPEN,
            carryin => \Debounce_Inst.un2_r_count_cry_13\,
            carryout => \Debounce_Inst.un2_r_count_cry_14\,
            clk => \N__805\,
            ce => 'H',
            sr => \N__875\
        );

    \Debounce_Inst.r_Count_15_LC_6_6_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__953\,
            in2 => \_gnd_net_\,
            in3 => \N__933\,
            lcout => \Debounce_Inst.r_CountZ0Z_15\,
            ltout => OPEN,
            carryin => \Debounce_Inst.un2_r_count_cry_14\,
            carryout => \Debounce_Inst.un2_r_count_cry_15\,
            clk => \N__805\,
            ce => 'H',
            sr => \N__875\
        );

    \Debounce_Inst.r_Count_16_LC_6_6_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__928\,
            in2 => \_gnd_net_\,
            in3 => \N__906\,
            lcout => \Debounce_Inst.r_CountZ0Z_16\,
            ltout => OPEN,
            carryin => \Debounce_Inst.un2_r_count_cry_15\,
            carryout => \Debounce_Inst.un2_r_count_cry_16\,
            clk => \N__805\,
            ce => 'H',
            sr => \N__875\
        );

    \Debounce_Inst.r_Count_17_LC_6_7_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0011001111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__898\,
            in2 => \_gnd_net_\,
            in3 => \N__903\,
            lcout => \Debounce_Inst.r_CountZ0Z_17\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__803\,
            ce => 'H',
            sr => \N__874\
        );

    \LED_Toggle_Inst.r_switch_1_LC_7_5_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__851\,
            lcout => \LED_Toggle_Inst.r_switchZ0Z_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__807\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \LED_Toggle_Inst.r_led_1_LC_7_5_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1010101001100110"
        )
    port map (
            in0 => \N__818\,
            in1 => \N__858\,
            in2 => \_gnd_net_\,
            in3 => \N__850\,
            lcout => \o_LED_1_c\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__807\,
            ce => 'H',
            sr => \_gnd_net_\
        );
end \INTERFACE\;
