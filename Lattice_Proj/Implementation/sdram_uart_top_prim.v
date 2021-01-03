// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Thu May 30 23:01:57 2019
//
// Verilog Description of module sdram_uart_top
//

module sdram_uart_top (clk, nreset, uart_rx, uart_tx, DB, ADR, BA, 
            DQM, nCAS, CKE, nRAS, nWE, nCS, SD_CLK, LED) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(3[8:22])
    input clk;   // c:/lscc/sd_ram_uart/src/top_module.v(5[23:26])
    input nreset;   // c:/lscc/sd_ram_uart/src/top_module.v(6[23:29])
    input uart_rx;   // c:/lscc/sd_ram_uart/src/top_module.v(7[23:30])
    output uart_tx;   // c:/lscc/sd_ram_uart/src/top_module.v(8[23:30])
    inout [15:0]DB;   // c:/lscc/sd_ram_uart/src/top_module.v(10[23:25])
    output [12:0]ADR;   // c:/lscc/sd_ram_uart/src/top_module.v(11[23:26])
    output [1:0]BA;   // c:/lscc/sd_ram_uart/src/top_module.v(12[23:25])
    output [1:0]DQM;   // c:/lscc/sd_ram_uart/src/top_module.v(13[23:26])
    output nCAS;   // c:/lscc/sd_ram_uart/src/top_module.v(14[23:27])
    output CKE;   // c:/lscc/sd_ram_uart/src/top_module.v(15[23:26])
    output nRAS;   // c:/lscc/sd_ram_uart/src/top_module.v(16[23:27])
    output nWE;   // c:/lscc/sd_ram_uart/src/top_module.v(17[23:26])
    output nCS;   // c:/lscc/sd_ram_uart/src/top_module.v(18[23:26])
    output SD_CLK;   // c:/lscc/sd_ram_uart/src/top_module.v(19[23:29])
    output [3:0]LED;   // c:/lscc/sd_ram_uart/src/top_module.v(21[23:26])
    
    wire clk_c /* synthesis is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(5[23:26])
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(31[6:16])
    wire count_2_derived_14 /* synthesis is_clock=1, SET_AS_NETWORK=\all_modules1/sdram_controller1/delayTimer/count[2]_derived_14 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(20[25:30])
    
    wire nreset_c, uart_rx_c, uart_tx_c, ADR_c_11, ADR_c_10, ADR_c_9, 
        ADR_c_8, ADR_c_7, ADR_c_6, ADR_c_5, ADR_c_4, ADR_c_3, ADR_c_2, 
        ADR_c_1, ADR_c_0, BA_c_1, BA_c_0, DQM_c, nCAS_c, nRAS_c, 
        nWE_c, LED_c_3, LED_c_2, LED_c_1, LED_c_0, tx_stb, tx_ack;
    wire [7:0]rx_dat;   // c:/lscc/sd_ram_uart/src/top_module.v(28[35:41])
    
    wire VCC_net, GND_net, DAT_7__N_993, full, SD_CLK_c_enable_109, 
        SD_CLK_c_enable_128;
    wire [15:0]SD_DATA_TEMP;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(59[34:46])
    
    wire refresh_tim_flag, refresh_tim_reset, delay_tim_reset, n1854, 
        n1852, n1850, n1848, n1846, n1844, n1842, n1840, SD_CLK_c_enable_131, 
        SD_P_DATA_15__N_423, DB_out_15, DB_out_14, DB_out_13, DB_out_12, 
        DB_out_11, DB_out_10, DB_out_9, DB_out_8, DB_out_7, DB_out_6, 
        DB_out_5, DB_out_4, DB_out_3, DB_out_2, DB_out_1, DB_out_0, 
        n5560;
    
    VHI i6 (.Z(VCC_net));
    all_modules all_modules1 (.LED_c_0(LED_c_0), .SD_CLK_c(SD_CLK_c), .nreset_c(nreset_c), 
            .LED_c_1(LED_c_1), .LED_c_2(LED_c_2), .LED_c_3(LED_c_3), .GND_net(GND_net), 
            .DB_out_0(DB_out_0), .DB_out_15(DB_out_15), .DB_out_14(DB_out_14), 
            .DB_out_13(DB_out_13), .DB_out_12(DB_out_12), .ADR_c_11(ADR_c_11), 
            .DB_out_11(DB_out_11), .DB_out_10(DB_out_10), .DB_out_9(DB_out_9), 
            .DB_out_8(DB_out_8), .ADR_c_9(ADR_c_9), .DB_out_7(DB_out_7), 
            .DB_out_6(DB_out_6), .DB_out_5(DB_out_5), .DB_out_4(DB_out_4), 
            .DB_out_3(DB_out_3), .DB_out_2(DB_out_2), .DB_out_1(DB_out_1), 
            .ADR_c_8(ADR_c_8), .\count[2]_derived_14 (count_2_derived_14), 
            .ADR_c_7(ADR_c_7), .n5560(n5560), .ADR_c_6(ADR_c_6), .ADR_c_5(ADR_c_5), 
            .ADR_c_4(ADR_c_4), .ADR_c_3(ADR_c_3), .ADR_c_2(ADR_c_2), .ADR_c_1(ADR_c_1), 
            .ADR_c_0(ADR_c_0), .DQM_c(DQM_c), .nRAS_c(nRAS_c), .SD_DATA_TEMP({SD_DATA_TEMP}), 
            .nWE_c(nWE_c), .refresh_tim_flag(refresh_tim_flag), .BA_c_0(BA_c_0), 
            .BA_c_1(BA_c_1), .delay_tim_reset(delay_tim_reset), .refresh_tim_reset(refresh_tim_reset), 
            .nCAS_c(nCAS_c), .SD_P_DATA_15__N_423(SD_P_DATA_15__N_423), 
            .ADR_c_10(ADR_c_10), .SD_CLK_c_enable_128(SD_CLK_c_enable_128), 
            .SD_CLK_c_enable_131(SD_CLK_c_enable_131), .n1854(n1854), .n1852(n1852), 
            .n1850(n1850), .n1848(n1848), .n1846(n1846), .n1844(n1844), 
            .n1842(n1842), .n1840(n1840), .DAT_7__N_993(DAT_7__N_993), 
            .VCC_net(VCC_net), .tx_stb(tx_stb), .tx_ack(tx_ack), .SD_CLK_c_enable_109(SD_CLK_c_enable_109), 
            .rx_dat({rx_dat}), .full(full)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(50[13] 75[2])
    BB DB_pad_14 (.I(SD_DATA_TEMP[14]), .T(SD_P_DATA_15__N_423), .B(DB[14]), 
       .O(DB_out_14));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(346[8:17])
    BB DB_pad_15 (.I(SD_DATA_TEMP[15]), .T(SD_P_DATA_15__N_423), .B(DB[15]), 
       .O(DB_out_15));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(346[8:17])
    LUT4 i838_2_lut (.A(refresh_tim_flag), .B(refresh_tim_reset), .Z(SD_CLK_c_enable_128)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i838_2_lut.init = 16'hdddd;
    LUT4 i839_2_lut (.A(count_2_derived_14), .B(delay_tim_reset), .Z(SD_CLK_c_enable_131)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i839_2_lut.init = 16'hdddd;
    BB DB_pad_13 (.I(SD_DATA_TEMP[13]), .T(SD_P_DATA_15__N_423), .B(DB[13]), 
       .O(DB_out_13));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(346[8:17])
    BB DB_pad_12 (.I(SD_DATA_TEMP[12]), .T(SD_P_DATA_15__N_423), .B(DB[12]), 
       .O(DB_out_12));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(346[8:17])
    BB DB_pad_11 (.I(SD_DATA_TEMP[11]), .T(SD_P_DATA_15__N_423), .B(DB[11]), 
       .O(DB_out_11));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(346[8:17])
    BB DB_pad_10 (.I(SD_DATA_TEMP[10]), .T(SD_P_DATA_15__N_423), .B(DB[10]), 
       .O(DB_out_10));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(346[8:17])
    BB DB_pad_9 (.I(SD_DATA_TEMP[9]), .T(SD_P_DATA_15__N_423), .B(DB[9]), 
       .O(DB_out_9));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(346[8:17])
    BB DB_pad_8 (.I(SD_DATA_TEMP[8]), .T(SD_P_DATA_15__N_423), .B(DB[8]), 
       .O(DB_out_8));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(346[8:17])
    BB DB_pad_7 (.I(SD_DATA_TEMP[7]), .T(SD_P_DATA_15__N_423), .B(DB[7]), 
       .O(DB_out_7));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(346[8:17])
    BB DB_pad_6 (.I(SD_DATA_TEMP[6]), .T(SD_P_DATA_15__N_423), .B(DB[6]), 
       .O(DB_out_6));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(346[8:17])
    BB DB_pad_5 (.I(SD_DATA_TEMP[5]), .T(SD_P_DATA_15__N_423), .B(DB[5]), 
       .O(DB_out_5));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(346[8:17])
    BB DB_pad_4 (.I(SD_DATA_TEMP[4]), .T(SD_P_DATA_15__N_423), .B(DB[4]), 
       .O(DB_out_4));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(346[8:17])
    BB DB_pad_3 (.I(SD_DATA_TEMP[3]), .T(SD_P_DATA_15__N_423), .B(DB[3]), 
       .O(DB_out_3));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(346[8:17])
    BB DB_pad_2 (.I(SD_DATA_TEMP[2]), .T(SD_P_DATA_15__N_423), .B(DB[2]), 
       .O(DB_out_2));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(346[8:17])
    BB DB_pad_1 (.I(SD_DATA_TEMP[1]), .T(SD_P_DATA_15__N_423), .B(DB[1]), 
       .O(DB_out_1));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(346[8:17])
    BB DB_pad_0 (.I(SD_DATA_TEMP[0]), .T(SD_P_DATA_15__N_423), .B(DB[0]), 
       .O(DB_out_0));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(346[8:17])
    OB uart_tx_pad (.I(uart_tx_c), .O(uart_tx));   // c:/lscc/sd_ram_uart/src/top_module.v(8[23:30])
    OB ADR_pad_12 (.I(GND_net), .O(ADR[12]));   // c:/lscc/sd_ram_uart/src/top_module.v(11[23:26])
    OB ADR_pad_11 (.I(ADR_c_11), .O(ADR[11]));   // c:/lscc/sd_ram_uart/src/top_module.v(11[23:26])
    OB ADR_pad_10 (.I(ADR_c_10), .O(ADR[10]));   // c:/lscc/sd_ram_uart/src/top_module.v(11[23:26])
    OB ADR_pad_9 (.I(ADR_c_9), .O(ADR[9]));   // c:/lscc/sd_ram_uart/src/top_module.v(11[23:26])
    OB ADR_pad_8 (.I(ADR_c_8), .O(ADR[8]));   // c:/lscc/sd_ram_uart/src/top_module.v(11[23:26])
    OB ADR_pad_7 (.I(ADR_c_7), .O(ADR[7]));   // c:/lscc/sd_ram_uart/src/top_module.v(11[23:26])
    OB ADR_pad_6 (.I(ADR_c_6), .O(ADR[6]));   // c:/lscc/sd_ram_uart/src/top_module.v(11[23:26])
    OB ADR_pad_5 (.I(ADR_c_5), .O(ADR[5]));   // c:/lscc/sd_ram_uart/src/top_module.v(11[23:26])
    OB ADR_pad_4 (.I(ADR_c_4), .O(ADR[4]));   // c:/lscc/sd_ram_uart/src/top_module.v(11[23:26])
    OB ADR_pad_3 (.I(ADR_c_3), .O(ADR[3]));   // c:/lscc/sd_ram_uart/src/top_module.v(11[23:26])
    OB ADR_pad_2 (.I(ADR_c_2), .O(ADR[2]));   // c:/lscc/sd_ram_uart/src/top_module.v(11[23:26])
    OB ADR_pad_1 (.I(ADR_c_1), .O(ADR[1]));   // c:/lscc/sd_ram_uart/src/top_module.v(11[23:26])
    OB ADR_pad_0 (.I(ADR_c_0), .O(ADR[0]));   // c:/lscc/sd_ram_uart/src/top_module.v(11[23:26])
    OB BA_pad_1 (.I(BA_c_1), .O(BA[1]));   // c:/lscc/sd_ram_uart/src/top_module.v(12[23:25])
    OB BA_pad_0 (.I(BA_c_0), .O(BA[0]));   // c:/lscc/sd_ram_uart/src/top_module.v(12[23:25])
    OB DQM_pad_1 (.I(DQM_c), .O(DQM[1]));   // c:/lscc/sd_ram_uart/src/top_module.v(13[23:26])
    OB DQM_pad_0 (.I(DQM_c), .O(DQM[0]));   // c:/lscc/sd_ram_uart/src/top_module.v(13[23:26])
    OB nCAS_pad (.I(nCAS_c), .O(nCAS));   // c:/lscc/sd_ram_uart/src/top_module.v(14[23:27])
    OB CKE_pad (.I(VCC_net), .O(CKE));   // c:/lscc/sd_ram_uart/src/top_module.v(15[23:26])
    OB nRAS_pad (.I(nRAS_c), .O(nRAS));   // c:/lscc/sd_ram_uart/src/top_module.v(16[23:27])
    OB nWE_pad (.I(nWE_c), .O(nWE));   // c:/lscc/sd_ram_uart/src/top_module.v(17[23:26])
    OB nCS_pad (.I(GND_net), .O(nCS));   // c:/lscc/sd_ram_uart/src/top_module.v(18[23:26])
    OB SD_CLK_pad (.I(SD_CLK_c), .O(SD_CLK));   // c:/lscc/sd_ram_uart/src/top_module.v(19[23:29])
    OB LED_pad_3 (.I(LED_c_3), .O(LED[3]));   // c:/lscc/sd_ram_uart/src/top_module.v(21[23:26])
    OB LED_pad_2 (.I(LED_c_2), .O(LED[2]));   // c:/lscc/sd_ram_uart/src/top_module.v(21[23:26])
    OB LED_pad_1 (.I(LED_c_1), .O(LED[1]));   // c:/lscc/sd_ram_uart/src/top_module.v(21[23:26])
    OB LED_pad_0 (.I(LED_c_0), .O(LED[0]));   // c:/lscc/sd_ram_uart/src/top_module.v(21[23:26])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/lscc/sd_ram_uart/src/top_module.v(5[23:26])
    IB nreset_pad (.I(nreset), .O(nreset_c));   // c:/lscc/sd_ram_uart/src/top_module.v(6[23:29])
    IB uart_rx_pad (.I(uart_rx), .O(uart_rx_c));   // c:/lscc/sd_ram_uart/src/top_module.v(7[23:30])
    GSR GSR_INST (.GSR(nreset_c));
    uart_rx uart1 (.SD_CLK_c(SD_CLK_c), .uart_rx_c(uart_rx_c), .rx_dat({rx_dat}), 
            .full(full), .SD_CLK_c_enable_109(SD_CLK_c_enable_109), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(38[9] 48[2])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 m1_lut (.Z(n5560)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    Clock_DCMA clk_multiply (.clk_c(clk_c), .SD_CLK_c(SD_CLK_c), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(33[12] 36[2])
    uart_tx uart_tx1 (.SD_CLK_c(SD_CLK_c), .n5560(n5560), .tx_ack(tx_ack), 
            .DAT_7__N_993(DAT_7__N_993), .uart_tx_c(uart_tx_c), .GND_net(GND_net), 
            .n1848(n1848), .n1850(n1850), .n1844(n1844), .n1846(n1846), 
            .n1840(n1840), .n1842(n1842), .tx_stb(tx_stb), .n1852(n1852), 
            .n1854(n1854)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(77[9] 87[2])
    
endmodule
//
// Verilog Description of module all_modules
//

module all_modules (LED_c_0, SD_CLK_c, nreset_c, LED_c_1, LED_c_2, 
            LED_c_3, GND_net, DB_out_0, DB_out_15, DB_out_14, DB_out_13, 
            DB_out_12, ADR_c_11, DB_out_11, DB_out_10, DB_out_9, DB_out_8, 
            ADR_c_9, DB_out_7, DB_out_6, DB_out_5, DB_out_4, DB_out_3, 
            DB_out_2, DB_out_1, ADR_c_8, \count[2]_derived_14 , ADR_c_7, 
            n5560, ADR_c_6, ADR_c_5, ADR_c_4, ADR_c_3, ADR_c_2, 
            ADR_c_1, ADR_c_0, DQM_c, nRAS_c, SD_DATA_TEMP, nWE_c, 
            refresh_tim_flag, BA_c_0, BA_c_1, delay_tim_reset, refresh_tim_reset, 
            nCAS_c, SD_P_DATA_15__N_423, ADR_c_10, SD_CLK_c_enable_128, 
            SD_CLK_c_enable_131, n1854, n1852, n1850, n1848, n1846, 
            n1844, n1842, n1840, DAT_7__N_993, VCC_net, tx_stb, 
            tx_ack, SD_CLK_c_enable_109, rx_dat, full) /* synthesis syn_module_defined=1 */ ;
    output LED_c_0;
    input SD_CLK_c;
    input nreset_c;
    output LED_c_1;
    output LED_c_2;
    output LED_c_3;
    input GND_net;
    input DB_out_0;
    input DB_out_15;
    input DB_out_14;
    input DB_out_13;
    input DB_out_12;
    output ADR_c_11;
    input DB_out_11;
    input DB_out_10;
    input DB_out_9;
    input DB_out_8;
    output ADR_c_9;
    input DB_out_7;
    input DB_out_6;
    input DB_out_5;
    input DB_out_4;
    input DB_out_3;
    input DB_out_2;
    input DB_out_1;
    output ADR_c_8;
    output \count[2]_derived_14 ;
    output ADR_c_7;
    input n5560;
    output ADR_c_6;
    output ADR_c_5;
    output ADR_c_4;
    output ADR_c_3;
    output ADR_c_2;
    output ADR_c_1;
    output ADR_c_0;
    output DQM_c;
    output nRAS_c;
    output [15:0]SD_DATA_TEMP;
    output nWE_c;
    output refresh_tim_flag;
    output BA_c_0;
    output BA_c_1;
    output delay_tim_reset;
    output refresh_tim_reset;
    output nCAS_c;
    output SD_P_DATA_15__N_423;
    output ADR_c_10;
    input SD_CLK_c_enable_128;
    input SD_CLK_c_enable_131;
    output n1854;
    output n1852;
    output n1850;
    output n1848;
    output n1846;
    output n1844;
    output n1842;
    output n1840;
    input DAT_7__N_993;
    input VCC_net;
    output tx_stb;
    input tx_ack;
    input SD_CLK_c_enable_109;
    input [7:0]rx_dat;
    output full;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(31[6:16])
    wire data_count_clk /* synthesis SET_AS_NETWORK=\all_modules1/uart_to_sdram1/data_count_clk, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(68[6:20])
    wire \count[2]_derived_14  /* synthesis is_clock=1, SET_AS_NETWORK=\all_modules1/sdram_controller1/delayTimer/count[2]_derived_14 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(20[25:30])
    
    wire rd_i_ack_N_577, n5390, n4060, uts_ack1, tx_stb1;
    wire [7:0]tx_dat1;   // c:/lscc/sd_ram_uart/src/all_modules.v(117[12:19])
    
    wire n5407;
    wire [1:0]rd_wt_operation;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(22[11:26])
    
    wire SD_CLK_c_enable_213, n1734;
    wire [13:0]repeat_tim_period;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(65[34:51])
    
    wire o_stb_rd_N_367;
    wire [1:0]rd_wt_operation_1__N_343;
    wire [7:0]rx_dat1;   // c:/lscc/sd_ram_uart/src/all_modules.v(28[12:19])
    wire [23:0]rx_sd_adr;   // c:/lscc/sd_ram_uart/src/all_modules.v(50[17:26])
    wire [15:0]rx_sd_data;   // c:/lscc/sd_ram_uart/src/all_modules.v(51[17:27])
    
    wire next_state_3__N_345, rx_stb1, next_state_3__N_347;
    wire [15:0]tx_sd_data;   // c:/lscc/sd_ram_uart/src/all_modules.v(51[28:38])
    wire [1:0]rd_wt_operation_1__N_835;
    
    wire full_c, tx_ack1, wt_o_stb1;
    
    LUT4 i2_3_lut (.A(rd_i_ack_N_577), .B(n5390), .C(n4060), .Z(uts_ack1)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/lscc/sd_ram_uart/src/all_modules.v(58[18:37])
    defparam i2_3_lut.init = 16'h0808;
    FD1P3AX status_temp_i0_i1 (.D(tx_dat1[0]), .SP(tx_stb1), .CK(SD_CLK_c), 
            .Q(LED_c_0)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=75 */ ;   // c:/lscc/sd_ram_uart/src/all_modules.v(161[7:48])
    defparam status_temp_i0_i1.GSR = "ENABLED";
    LUT4 i1_3_lut_rep_52 (.A(n5407), .B(rd_wt_operation[1]), .C(rd_wt_operation[0]), 
         .Z(n5390)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/lscc/sd_ram_uart/src/all_modules.v(58[18:37])
    defparam i1_3_lut_rep_52.init = 16'ha8a8;
    LUT4 i4065_2_lut_2_lut_4_lut (.A(n5407), .B(rd_wt_operation[1]), .C(rd_wt_operation[0]), 
         .D(SD_CLK_c_enable_213), .Z(n1734)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(D))) */ ;   // c:/lscc/sd_ram_uart/src/all_modules.v(58[18:37])
    defparam i4065_2_lut_2_lut_4_lut.init = 16'h5700;
    LUT4 i2_3_lut_rep_69 (.A(nreset_c), .B(repeat_tim_period[13]), .C(o_stb_rd_N_367), 
         .Z(n5407)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/lscc/sd_ram_uart/src/all_modules.v(58[18:37])
    defparam i2_3_lut_rep_69.init = 16'h8080;
    FD1P3AX status_temp_i0_i2 (.D(tx_dat1[1]), .SP(tx_stb1), .CK(SD_CLK_c), 
            .Q(LED_c_1)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=75 */ ;   // c:/lscc/sd_ram_uart/src/all_modules.v(161[7:48])
    defparam status_temp_i0_i2.GSR = "ENABLED";
    FD1P3AX status_temp_i0_i3 (.D(tx_dat1[2]), .SP(tx_stb1), .CK(SD_CLK_c), 
            .Q(LED_c_2)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=75 */ ;   // c:/lscc/sd_ram_uart/src/all_modules.v(161[7:48])
    defparam status_temp_i0_i3.GSR = "ENABLED";
    FD1P3AX status_temp_i0_i4 (.D(tx_dat1[3]), .SP(tx_stb1), .CK(SD_CLK_c), 
            .Q(LED_c_3)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=75 */ ;   // c:/lscc/sd_ram_uart/src/all_modules.v(161[7:48])
    defparam status_temp_i0_i4.GSR = "ENABLED";
    uart_to_sdram uart_to_sdram1 (.rd_wt_operation({rd_wt_operation}), .SD_CLK_c(SD_CLK_c), 
            .\rd_wt_operation_1__N_343[0] (rd_wt_operation_1__N_343[0]), .GND_net(GND_net), 
            .o_stb_rd_N_367(o_stb_rd_N_367), .rx_dat1({rx_dat1}), .rx_sd_adr({Open_0, 
            Open_1, Open_2, Open_3, Open_4, Open_5, Open_6, Open_7, 
            Open_8, Open_9, rx_sd_adr[13:10], Open_10, rx_sd_adr[8], 
            Open_11, Open_12, Open_13, Open_14, Open_15, Open_16, 
            Open_17, rx_sd_adr[0]}), .rx_sd_data({rx_sd_data}), .\rx_sd_adr[6] (rx_sd_adr[6]), 
            .\rx_sd_adr[7] (rx_sd_adr[7]), .next_state_3__N_345(next_state_3__N_345), 
            .rx_stb1(rx_stb1), .uts_ack1(uts_ack1), .\rx_sd_adr[22] (rx_sd_adr[22]), 
            .\rx_sd_adr[23] (rx_sd_adr[23]), .\rx_sd_adr[20] (rx_sd_adr[20]), 
            .\rx_sd_adr[21] (rx_sd_adr[21]), .\rx_sd_adr[18] (rx_sd_adr[18]), 
            .\rx_sd_adr[19] (rx_sd_adr[19]), .\rx_sd_adr[16] (rx_sd_adr[16]), 
            .\rx_sd_adr[17] (rx_sd_adr[17]), .\rx_sd_adr[14] (rx_sd_adr[14]), 
            .\rx_sd_adr[15] (rx_sd_adr[15]), .\rx_sd_adr[5] (rx_sd_adr[5]), 
            .\rx_sd_adr[4] (rx_sd_adr[4]), .\rx_sd_adr[3] (rx_sd_adr[3]), 
            .\rx_sd_adr[2] (rx_sd_adr[2]), .\rx_sd_adr[1] (rx_sd_adr[1]), 
            .data_count_clk(data_count_clk), .next_state_3__N_347(next_state_3__N_347), 
            .nreset_c(nreset_c)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/all_modules.v(65[1] 80[2])
    sdram_to_uart sdram_to_uart1 (.SD_CLK_c(SD_CLK_c), .tx_sd_data({tx_sd_data}), 
            .nreset_c(nreset_c), .tx_stb1(tx_stb1), .\rd_wt_operation_1__N_835[1] (rd_wt_operation_1__N_835[1]), 
            .full(full_c), .tx_ack1(tx_ack1), .tx_dat1({tx_dat1}), .wt_o_stb1(wt_o_stb1)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/all_modules.v(124[1] 136[2])
    SDRAM_Controller sdram_controller1 (.SD_CLK_c(SD_CLK_c), .SD_CLK_c_enable_213(SD_CLK_c_enable_213), 
            .tx_sd_data({tx_sd_data}), .DB_out_0(DB_out_0), .rd_i_ack_N_577(rd_i_ack_N_577), 
            .DB_out_15(DB_out_15), .DB_out_14(DB_out_14), .DB_out_13(DB_out_13), 
            .DB_out_12(DB_out_12), .ADR_c_11(ADR_c_11), .DB_out_11(DB_out_11), 
            .DB_out_10(DB_out_10), .DB_out_9(DB_out_9), .DB_out_8(DB_out_8), 
            .ADR_c_9(ADR_c_9), .n1734(n1734), .\rx_sd_adr[0] (rx_sd_adr[0]), 
            .nreset_c(nreset_c), .DB_out_7(DB_out_7), .DB_out_6(DB_out_6), 
            .DB_out_5(DB_out_5), .DB_out_4(DB_out_4), .DB_out_3(DB_out_3), 
            .DB_out_2(DB_out_2), .DB_out_1(DB_out_1), .rd_wt_operation({rd_wt_operation}), 
            .n5407(n5407), .ADR_c_8(ADR_c_8), .\count[2]_derived_14 (\count[2]_derived_14 ), 
            .ADR_c_7(ADR_c_7), .\repeat_tim_period[13] (repeat_tim_period[13]), 
            .n5560(n5560), .\rd_wt_operation_1__N_835[1] (rd_wt_operation_1__N_835[1]), 
            .ADR_c_6(ADR_c_6), .ADR_c_5(ADR_c_5), .ADR_c_4(ADR_c_4), .ADR_c_3(ADR_c_3), 
            .ADR_c_2(ADR_c_2), .ADR_c_1(ADR_c_1), .ADR_c_0(ADR_c_0), .DQM_c(DQM_c), 
            .nRAS_c(nRAS_c), .SD_DATA_TEMP({SD_DATA_TEMP}), .rx_sd_data({rx_sd_data}), 
            .wt_o_stb1(wt_o_stb1), .nWE_c(nWE_c), .refresh_tim_flag(refresh_tim_flag), 
            .uts_ack1(uts_ack1), .BA_c_0(BA_c_0), .BA_c_1(BA_c_1), .delay_tim_reset(delay_tim_reset), 
            .refresh_tim_reset(refresh_tim_reset), .nCAS_c(nCAS_c), .SD_P_DATA_15__N_423(SD_P_DATA_15__N_423), 
            .\rx_sd_adr[1] (rx_sd_adr[1]), .\rx_sd_adr[2] (rx_sd_adr[2]), 
            .\rx_sd_adr[3] (rx_sd_adr[3]), .\rx_sd_adr[4] (rx_sd_adr[4]), 
            .\rx_sd_adr[5] (rx_sd_adr[5]), .\rx_sd_adr[6] (rx_sd_adr[6]), 
            .\rx_sd_adr[7] (rx_sd_adr[7]), .\rx_sd_adr[8] (rx_sd_adr[8]), 
            .\rx_sd_adr[10] (rx_sd_adr[10]), .\rx_sd_adr[11] (rx_sd_adr[11]), 
            .\rx_sd_adr[12] (rx_sd_adr[12]), .\rx_sd_adr[13] (rx_sd_adr[13]), 
            .\rx_sd_adr[14] (rx_sd_adr[14]), .\rx_sd_adr[15] (rx_sd_adr[15]), 
            .\rx_sd_adr[16] (rx_sd_adr[16]), .\rx_sd_adr[17] (rx_sd_adr[17]), 
            .\rx_sd_adr[18] (rx_sd_adr[18]), .\rx_sd_adr[19] (rx_sd_adr[19]), 
            .\rx_sd_adr[20] (rx_sd_adr[20]), .\rx_sd_adr[21] (rx_sd_adr[21]), 
            .\rx_sd_adr[22] (rx_sd_adr[22]), .\rx_sd_adr[23] (rx_sd_adr[23]), 
            .n4060(n4060), .ADR_c_10(ADR_c_10), .n5390(n5390), .GND_net(GND_net), 
            .SD_CLK_c_enable_128(SD_CLK_c_enable_128), .SD_CLK_c_enable_131(SD_CLK_c_enable_131)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/all_modules.v(84[18] 115[2])
    \fifo(length=256)  fifo2 (.SD_CLK_c(SD_CLK_c), .tx_dat1({tx_dat1}), 
            .n1854(n1854), .n1852(n1852), .n1850(n1850), .n1848(n1848), 
            .n1846(n1846), .n1844(n1844), .n1842(n1842), .n1840(n1840), 
            .tx_ack1(tx_ack1), .DAT_7__N_993(DAT_7__N_993), .GND_net(GND_net), 
            .VCC_net(VCC_net), .tx_stb(tx_stb), .tx_ack(tx_ack), .full(full_c)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/all_modules.v(143[1] 155[3])
    \fifo(length=256)_U1  fifo1 (.SD_CLK_c(SD_CLK_c), .SD_CLK_c_enable_109(SD_CLK_c_enable_109), 
            .rx_stb1(rx_stb1), .rx_dat({rx_dat}), .rx_dat1({rx_dat1}), 
            .GND_net(GND_net), .VCC_net(VCC_net), .next_state_3__N_345(next_state_3__N_345), 
            .data_count_clk(data_count_clk), .o_stb_rd_N_367(o_stb_rd_N_367), 
            .nreset_c(nreset_c), .next_state_3__N_347(next_state_3__N_347), 
            .\rd_wt_operation_1__N_343[0] (rd_wt_operation_1__N_343[0]), .full(full)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/all_modules.v(36[1] 48[3])
    
endmodule
//
// Verilog Description of module uart_to_sdram
//

module uart_to_sdram (rd_wt_operation, SD_CLK_c, \rd_wt_operation_1__N_343[0] , 
            GND_net, o_stb_rd_N_367, rx_dat1, rx_sd_adr, rx_sd_data, 
            \rx_sd_adr[6] , \rx_sd_adr[7] , next_state_3__N_345, rx_stb1, 
            uts_ack1, \rx_sd_adr[22] , \rx_sd_adr[23] , \rx_sd_adr[20] , 
            \rx_sd_adr[21] , \rx_sd_adr[18] , \rx_sd_adr[19] , \rx_sd_adr[16] , 
            \rx_sd_adr[17] , \rx_sd_adr[14] , \rx_sd_adr[15] , \rx_sd_adr[5] , 
            \rx_sd_adr[4] , \rx_sd_adr[3] , \rx_sd_adr[2] , \rx_sd_adr[1] , 
            data_count_clk, next_state_3__N_347, nreset_c) /* synthesis syn_module_defined=1 */ ;
    output [1:0]rd_wt_operation;
    input SD_CLK_c;
    input \rd_wt_operation_1__N_343[0] ;
    input GND_net;
    output o_stb_rd_N_367;
    input [7:0]rx_dat1;
    output [23:0]rx_sd_adr;
    output [15:0]rx_sd_data;
    output \rx_sd_adr[6] ;
    output \rx_sd_adr[7] ;
    input next_state_3__N_345;
    input rx_stb1;
    input uts_ack1;
    output \rx_sd_adr[22] ;
    output \rx_sd_adr[23] ;
    output \rx_sd_adr[20] ;
    output \rx_sd_adr[21] ;
    output \rx_sd_adr[18] ;
    output \rx_sd_adr[19] ;
    output \rx_sd_adr[16] ;
    output \rx_sd_adr[17] ;
    output \rx_sd_adr[14] ;
    output \rx_sd_adr[15] ;
    output \rx_sd_adr[5] ;
    output \rx_sd_adr[4] ;
    output \rx_sd_adr[3] ;
    output \rx_sd_adr[2] ;
    output \rx_sd_adr[1] ;
    output data_count_clk;
    input next_state_3__N_347;
    input nreset_c;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(31[6:16])
    wire data_count_clk /* synthesis SET_AS_NETWORK=\all_modules1/uart_to_sdram1/data_count_clk, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(68[6:20])
    
    wire data_tim_reset, n4680;
    wire [23:0]sd_adr_23__N_319;
    
    wire n4681, n4679, SD_CLK_c_enable_102;
    wire [15:0]n133;
    wire [15:0]data_array_len;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(49[12:26])
    
    wire n4881, n4678;
    wire [23:0]rx_sd_adr_c;   // c:/lscc/sd_ram_uart/src/all_modules.v(50[17:26])
    
    wire n4677, SD_CLK_c_enable_55, n5, n155, SD_CLK_c_enable_197, 
        n2899, n5088, data_tim_flag, n4685, n4684, n4683, n4682, 
        SD_CLK_c_enable_72, n2161, n4, SD_CLK_c_enable_87, SD_CLK_c_enable_95, 
        n2825, n2163, n4913, n5154, n8, timout_tim_flag_N_370, data_count_clk_enable_16, 
        n4799, data_tim_flag_N_369, n4676, n4675, n4674;
    
    FD1P3AX rd_wt_operation_i0_i0 (.D(\rd_wt_operation_1__N_343[0] ), .SP(data_tim_reset), 
            .CK(SD_CLK_c), .Q(rd_wt_operation[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam rd_wt_operation_i0_i0.GSR = "DISABLED";
    CCU2D add_91_15 (.A0(GND_net), .B0(o_stb_rd_N_367), .C0(rx_dat1[4]), 
          .D0(rx_sd_adr[12]), .A1(GND_net), .B1(o_stb_rd_N_367), .C1(rx_dat1[5]), 
          .D1(rx_sd_adr[13]), .CIN(n4680), .COUT(n4681), .S0(sd_adr_23__N_319[12]), 
          .S1(sd_adr_23__N_319[13]));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(63[33:43])
    defparam add_91_15.INIT0 = 16'h569a;
    defparam add_91_15.INIT1 = 16'h569a;
    defparam add_91_15.INJECT1_0 = "NO";
    defparam add_91_15.INJECT1_1 = "NO";
    CCU2D add_91_13 (.A0(GND_net), .B0(o_stb_rd_N_367), .C0(rx_dat1[2]), 
          .D0(rx_sd_adr[10]), .A1(GND_net), .B1(o_stb_rd_N_367), .C1(rx_dat1[3]), 
          .D1(rx_sd_adr[11]), .CIN(n4679), .COUT(n4680), .S0(sd_adr_23__N_319[10]), 
          .S1(sd_adr_23__N_319[11]));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(63[33:43])
    defparam add_91_13.INIT0 = 16'h569a;
    defparam add_91_13.INIT1 = 16'h569a;
    defparam add_91_13.INJECT1_0 = "NO";
    defparam add_91_13.INJECT1_1 = "NO";
    FD1P3AX sd_adr_i0_i0 (.D(sd_adr_23__N_319[0]), .SP(SD_CLK_c_enable_102), 
            .CK(SD_CLK_c), .Q(rx_sd_adr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_adr_i0_i0.GSR = "DISABLED";
    FD1P3AX sd_data_i0 (.D(rx_dat1[0]), .SP(n133[9]), .CK(SD_CLK_c), .Q(rx_sd_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_data_i0.GSR = "DISABLED";
    FD1P3AX data_array_len_i0 (.D(rx_dat1[0]), .SP(n133[6]), .CK(SD_CLK_c), 
            .Q(data_array_len[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam data_array_len_i0.GSR = "DISABLED";
    FD1S3AY state_FSM_i1 (.D(n4881), .CK(SD_CLK_c), .Q(data_tim_reset));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(90[1] 107[8])
    defparam state_FSM_i1.GSR = "ENABLED";
    CCU2D add_91_11 (.A0(GND_net), .B0(o_stb_rd_N_367), .C0(rx_dat1[0]), 
          .D0(rx_sd_adr[8]), .A1(GND_net), .B1(o_stb_rd_N_367), .C1(rx_dat1[1]), 
          .D1(rx_sd_adr_c[9]), .CIN(n4678), .COUT(n4679), .S0(sd_adr_23__N_319[8]), 
          .S1(sd_adr_23__N_319[9]));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(63[33:43])
    defparam add_91_11.INIT0 = 16'h569a;
    defparam add_91_11.INIT1 = 16'h569a;
    defparam add_91_11.INJECT1_0 = "NO";
    defparam add_91_11.INJECT1_1 = "NO";
    CCU2D add_91_9 (.A0(GND_net), .B0(o_stb_rd_N_367), .C0(rx_dat1[6]), 
          .D0(\rx_sd_adr[6] ), .A1(GND_net), .B1(o_stb_rd_N_367), .C1(rx_dat1[7]), 
          .D1(\rx_sd_adr[7] ), .CIN(n4677), .COUT(n4678), .S0(sd_adr_23__N_319[6]), 
          .S1(sd_adr_23__N_319[7]));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(63[33:43])
    defparam add_91_9.INIT0 = 16'h569a;
    defparam add_91_9.INIT1 = 16'h569a;
    defparam add_91_9.INJECT1_0 = "NO";
    defparam add_91_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(n133[3]), .B(o_stb_rd_N_367), .Z(SD_CLK_c_enable_102)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    FD1P3AX data_array_len_i15 (.D(rx_dat1[7]), .SP(SD_CLK_c_enable_55), 
            .CK(SD_CLK_c), .Q(data_array_len[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam data_array_len_i15.GSR = "DISABLED";
    FD1P3AX data_array_len_i14 (.D(rx_dat1[6]), .SP(SD_CLK_c_enable_55), 
            .CK(SD_CLK_c), .Q(data_array_len[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam data_array_len_i14.GSR = "DISABLED";
    FD1P3AX data_array_len_i13 (.D(rx_dat1[5]), .SP(SD_CLK_c_enable_55), 
            .CK(SD_CLK_c), .Q(data_array_len[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam data_array_len_i13.GSR = "DISABLED";
    FD1P3AX data_array_len_i12 (.D(rx_dat1[4]), .SP(SD_CLK_c_enable_55), 
            .CK(SD_CLK_c), .Q(data_array_len[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam data_array_len_i12.GSR = "DISABLED";
    FD1P3AX data_array_len_i11 (.D(rx_dat1[3]), .SP(SD_CLK_c_enable_55), 
            .CK(SD_CLK_c), .Q(data_array_len[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam data_array_len_i11.GSR = "DISABLED";
    FD1P3AX data_array_len_i10 (.D(rx_dat1[2]), .SP(SD_CLK_c_enable_55), 
            .CK(SD_CLK_c), .Q(data_array_len[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam data_array_len_i10.GSR = "DISABLED";
    FD1P3AX data_array_len_i9 (.D(rx_dat1[1]), .SP(SD_CLK_c_enable_55), 
            .CK(SD_CLK_c), .Q(data_array_len[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam data_array_len_i9.GSR = "DISABLED";
    FD1P3AX data_array_len_i8 (.D(rx_dat1[0]), .SP(SD_CLK_c_enable_55), 
            .CK(SD_CLK_c), .Q(data_array_len[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam data_array_len_i8.GSR = "DISABLED";
    FD1P3AX data_array_len_i7 (.D(rx_dat1[7]), .SP(n133[6]), .CK(SD_CLK_c), 
            .Q(data_array_len[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam data_array_len_i7.GSR = "DISABLED";
    FD1P3AX data_array_len_i6 (.D(rx_dat1[6]), .SP(n133[6]), .CK(SD_CLK_c), 
            .Q(data_array_len[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam data_array_len_i6.GSR = "DISABLED";
    FD1P3AX data_array_len_i5 (.D(rx_dat1[5]), .SP(n133[6]), .CK(SD_CLK_c), 
            .Q(data_array_len[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam data_array_len_i5.GSR = "DISABLED";
    FD1P3AX data_array_len_i4 (.D(rx_dat1[4]), .SP(n133[6]), .CK(SD_CLK_c), 
            .Q(data_array_len[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam data_array_len_i4.GSR = "DISABLED";
    FD1P3AX data_array_len_i3 (.D(rx_dat1[3]), .SP(n133[6]), .CK(SD_CLK_c), 
            .Q(data_array_len[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam data_array_len_i3.GSR = "DISABLED";
    LUT4 i2_4_lut (.A(n5), .B(data_tim_reset), .C(n155), .D(next_state_3__N_345), 
         .Z(n4881)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(90[1] 107[8])
    defparam i2_4_lut.init = 16'hfafe;
    LUT4 i1_4_lut (.A(SD_CLK_c_enable_197), .B(n2899), .C(n5088), .D(rx_stb1), 
         .Z(n5)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(90[1] 107[8])
    defparam i1_4_lut.init = 16'h5054;
    LUT4 i85_3_lut (.A(data_tim_flag), .B(o_stb_rd_N_367), .C(uts_ack1), 
         .Z(n155)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(90[1] 107[8])
    defparam i85_3_lut.init = 16'h8080;
    LUT4 i2_2_lut (.A(n133[8]), .B(n133[9]), .Z(n2899)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(90[1] 107[8])
    defparam i2_2_lut.init = 16'heeee;
    CCU2D add_91_25 (.A0(GND_net), .B0(o_stb_rd_N_367), .C0(rx_dat1[6]), 
          .D0(\rx_sd_adr[22] ), .A1(GND_net), .B1(o_stb_rd_N_367), .C1(rx_dat1[7]), 
          .D1(\rx_sd_adr[23] ), .CIN(n4685), .S0(sd_adr_23__N_319[22]), 
          .S1(sd_adr_23__N_319[23]));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(63[33:43])
    defparam add_91_25.INIT0 = 16'h569a;
    defparam add_91_25.INIT1 = 16'h569a;
    defparam add_91_25.INJECT1_0 = "NO";
    defparam add_91_25.INJECT1_1 = "NO";
    FD1P3AX data_array_len_i2 (.D(rx_dat1[2]), .SP(n133[6]), .CK(SD_CLK_c), 
            .Q(data_array_len[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam data_array_len_i2.GSR = "DISABLED";
    CCU2D add_91_23 (.A0(GND_net), .B0(o_stb_rd_N_367), .C0(rx_dat1[4]), 
          .D0(\rx_sd_adr[20] ), .A1(GND_net), .B1(o_stb_rd_N_367), .C1(rx_dat1[5]), 
          .D1(\rx_sd_adr[21] ), .CIN(n4684), .COUT(n4685), .S0(sd_adr_23__N_319[20]), 
          .S1(sd_adr_23__N_319[21]));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(63[33:43])
    defparam add_91_23.INIT0 = 16'h569a;
    defparam add_91_23.INIT1 = 16'h569a;
    defparam add_91_23.INJECT1_0 = "NO";
    defparam add_91_23.INJECT1_1 = "NO";
    CCU2D add_91_21 (.A0(GND_net), .B0(o_stb_rd_N_367), .C0(rx_dat1[2]), 
          .D0(\rx_sd_adr[18] ), .A1(GND_net), .B1(o_stb_rd_N_367), .C1(rx_dat1[3]), 
          .D1(\rx_sd_adr[19] ), .CIN(n4683), .COUT(n4684), .S0(sd_adr_23__N_319[18]), 
          .S1(sd_adr_23__N_319[19]));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(63[33:43])
    defparam add_91_21.INIT0 = 16'h569a;
    defparam add_91_21.INIT1 = 16'h569a;
    defparam add_91_21.INJECT1_0 = "NO";
    defparam add_91_21.INJECT1_1 = "NO";
    CCU2D add_91_19 (.A0(GND_net), .B0(o_stb_rd_N_367), .C0(rx_dat1[0]), 
          .D0(\rx_sd_adr[16] ), .A1(GND_net), .B1(o_stb_rd_N_367), .C1(rx_dat1[1]), 
          .D1(\rx_sd_adr[17] ), .CIN(n4682), .COUT(n4683), .S0(sd_adr_23__N_319[16]), 
          .S1(sd_adr_23__N_319[17]));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(63[33:43])
    defparam add_91_19.INIT0 = 16'h569a;
    defparam add_91_19.INIT1 = 16'h569a;
    defparam add_91_19.INJECT1_0 = "NO";
    defparam add_91_19.INJECT1_1 = "NO";
    FD1P3AX data_array_len_i1 (.D(rx_dat1[1]), .SP(n133[6]), .CK(SD_CLK_c), 
            .Q(data_array_len[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam data_array_len_i1.GSR = "DISABLED";
    FD1P3AX sd_data_i15 (.D(rx_dat1[7]), .SP(SD_CLK_c_enable_72), .CK(SD_CLK_c), 
            .Q(rx_sd_data[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_data_i15.GSR = "DISABLED";
    FD1P3AX sd_data_i14 (.D(rx_dat1[6]), .SP(SD_CLK_c_enable_72), .CK(SD_CLK_c), 
            .Q(rx_sd_data[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_data_i14.GSR = "DISABLED";
    FD1P3AX sd_data_i13 (.D(rx_dat1[5]), .SP(SD_CLK_c_enable_72), .CK(SD_CLK_c), 
            .Q(rx_sd_data[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_data_i13.GSR = "DISABLED";
    FD1P3AX sd_data_i12 (.D(rx_dat1[4]), .SP(SD_CLK_c_enable_72), .CK(SD_CLK_c), 
            .Q(rx_sd_data[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_data_i12.GSR = "DISABLED";
    CCU2D add_91_17 (.A0(GND_net), .B0(o_stb_rd_N_367), .C0(rx_dat1[6]), 
          .D0(\rx_sd_adr[14] ), .A1(GND_net), .B1(o_stb_rd_N_367), .C1(rx_dat1[7]), 
          .D1(\rx_sd_adr[15] ), .CIN(n4681), .COUT(n4682), .S0(sd_adr_23__N_319[14]), 
          .S1(sd_adr_23__N_319[15]));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(63[33:43])
    defparam add_91_17.INIT0 = 16'h569a;
    defparam add_91_17.INIT1 = 16'h569a;
    defparam add_91_17.INJECT1_0 = "NO";
    defparam add_91_17.INJECT1_1 = "NO";
    FD1P3AX sd_data_i11 (.D(rx_dat1[3]), .SP(SD_CLK_c_enable_72), .CK(SD_CLK_c), 
            .Q(rx_sd_data[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_data_i11.GSR = "DISABLED";
    FD1P3AX sd_data_i10 (.D(rx_dat1[2]), .SP(SD_CLK_c_enable_72), .CK(SD_CLK_c), 
            .Q(rx_sd_data[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_data_i10.GSR = "DISABLED";
    FD1P3AX sd_data_i9 (.D(rx_dat1[1]), .SP(SD_CLK_c_enable_72), .CK(SD_CLK_c), 
            .Q(rx_sd_data[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_data_i9.GSR = "DISABLED";
    FD1P3AX sd_data_i8 (.D(rx_dat1[0]), .SP(SD_CLK_c_enable_72), .CK(SD_CLK_c), 
            .Q(rx_sd_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_data_i8.GSR = "DISABLED";
    FD1P3AX sd_data_i7 (.D(rx_dat1[7]), .SP(n133[9]), .CK(SD_CLK_c), .Q(rx_sd_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_data_i7.GSR = "DISABLED";
    FD1P3AX sd_data_i6 (.D(rx_dat1[6]), .SP(n133[9]), .CK(SD_CLK_c), .Q(rx_sd_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_data_i6.GSR = "DISABLED";
    LUT4 i1217_4_lut (.A(n133[1]), .B(next_state_3__N_345), .C(rx_stb1), 
         .D(data_tim_reset), .Z(n2161)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(90[1] 107[8])
    defparam i1217_4_lut.init = 16'hce0a;
    LUT4 i1_4_lut_adj_105 (.A(rx_stb1), .B(SD_CLK_c_enable_197), .C(n133[6]), 
         .D(n5088), .Z(n4)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(90[1] 107[8])
    defparam i1_4_lut_adj_105.init = 16'heca0;
    FD1P3AX sd_data_i5 (.D(rx_dat1[5]), .SP(n133[9]), .CK(SD_CLK_c), .Q(rx_sd_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_data_i5.GSR = "DISABLED";
    FD1P3AX sd_data_i4 (.D(rx_dat1[4]), .SP(n133[9]), .CK(SD_CLK_c), .Q(rx_sd_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_data_i4.GSR = "DISABLED";
    FD1P3AX sd_data_i3 (.D(rx_dat1[3]), .SP(n133[9]), .CK(SD_CLK_c), .Q(rx_sd_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_data_i3.GSR = "DISABLED";
    FD1P3AX sd_data_i2 (.D(rx_dat1[2]), .SP(n133[9]), .CK(SD_CLK_c), .Q(rx_sd_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_data_i2.GSR = "DISABLED";
    FD1P3AX sd_data_i1 (.D(rx_dat1[1]), .SP(n133[9]), .CK(SD_CLK_c), .Q(rx_sd_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_data_i1.GSR = "DISABLED";
    FD1P3AX sd_adr_i0_i23 (.D(sd_adr_23__N_319[23]), .SP(SD_CLK_c_enable_87), 
            .CK(SD_CLK_c), .Q(\rx_sd_adr[23] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_adr_i0_i23.GSR = "DISABLED";
    FD1P3AX sd_adr_i0_i22 (.D(sd_adr_23__N_319[22]), .SP(SD_CLK_c_enable_87), 
            .CK(SD_CLK_c), .Q(\rx_sd_adr[22] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_adr_i0_i22.GSR = "DISABLED";
    FD1P3AX sd_adr_i0_i21 (.D(sd_adr_23__N_319[21]), .SP(SD_CLK_c_enable_87), 
            .CK(SD_CLK_c), .Q(\rx_sd_adr[21] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_adr_i0_i21.GSR = "DISABLED";
    FD1P3AX sd_adr_i0_i20 (.D(sd_adr_23__N_319[20]), .SP(SD_CLK_c_enable_87), 
            .CK(SD_CLK_c), .Q(\rx_sd_adr[20] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_adr_i0_i20.GSR = "DISABLED";
    FD1P3AX sd_adr_i0_i19 (.D(sd_adr_23__N_319[19]), .SP(SD_CLK_c_enable_87), 
            .CK(SD_CLK_c), .Q(\rx_sd_adr[19] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_adr_i0_i19.GSR = "DISABLED";
    FD1P3AX sd_adr_i0_i18 (.D(sd_adr_23__N_319[18]), .SP(SD_CLK_c_enable_87), 
            .CK(SD_CLK_c), .Q(\rx_sd_adr[18] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_adr_i0_i18.GSR = "DISABLED";
    FD1P3AX sd_adr_i0_i17 (.D(sd_adr_23__N_319[17]), .SP(SD_CLK_c_enable_87), 
            .CK(SD_CLK_c), .Q(\rx_sd_adr[17] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_adr_i0_i17.GSR = "DISABLED";
    FD1P3AX sd_adr_i0_i16 (.D(sd_adr_23__N_319[16]), .SP(SD_CLK_c_enable_87), 
            .CK(SD_CLK_c), .Q(\rx_sd_adr[16] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_adr_i0_i16.GSR = "DISABLED";
    FD1P3AX sd_adr_i0_i15 (.D(sd_adr_23__N_319[15]), .SP(SD_CLK_c_enable_95), 
            .CK(SD_CLK_c), .Q(\rx_sd_adr[15] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_adr_i0_i15.GSR = "DISABLED";
    FD1P3AX sd_adr_i0_i14 (.D(sd_adr_23__N_319[14]), .SP(SD_CLK_c_enable_95), 
            .CK(SD_CLK_c), .Q(\rx_sd_adr[14] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_adr_i0_i14.GSR = "DISABLED";
    FD1P3AX sd_adr_i0_i13 (.D(sd_adr_23__N_319[13]), .SP(SD_CLK_c_enable_95), 
            .CK(SD_CLK_c), .Q(rx_sd_adr[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_adr_i0_i13.GSR = "DISABLED";
    FD1P3AX sd_adr_i0_i12 (.D(sd_adr_23__N_319[12]), .SP(SD_CLK_c_enable_95), 
            .CK(SD_CLK_c), .Q(rx_sd_adr[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_adr_i0_i12.GSR = "DISABLED";
    FD1P3AX sd_adr_i0_i11 (.D(sd_adr_23__N_319[11]), .SP(SD_CLK_c_enable_95), 
            .CK(SD_CLK_c), .Q(rx_sd_adr[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_adr_i0_i11.GSR = "DISABLED";
    FD1P3AX sd_adr_i0_i10 (.D(sd_adr_23__N_319[10]), .SP(SD_CLK_c_enable_95), 
            .CK(SD_CLK_c), .Q(rx_sd_adr[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_adr_i0_i10.GSR = "DISABLED";
    FD1P3AX sd_adr_i0_i9 (.D(sd_adr_23__N_319[9]), .SP(SD_CLK_c_enable_95), 
            .CK(SD_CLK_c), .Q(rx_sd_adr_c[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_adr_i0_i9.GSR = "DISABLED";
    FD1P3AX sd_adr_i0_i8 (.D(sd_adr_23__N_319[8]), .SP(SD_CLK_c_enable_95), 
            .CK(SD_CLK_c), .Q(rx_sd_adr[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_adr_i0_i8.GSR = "DISABLED";
    FD1P3AX sd_adr_i0_i7 (.D(sd_adr_23__N_319[7]), .SP(SD_CLK_c_enable_102), 
            .CK(SD_CLK_c), .Q(\rx_sd_adr[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_adr_i0_i7.GSR = "DISABLED";
    FD1P3AX sd_adr_i0_i6 (.D(sd_adr_23__N_319[6]), .SP(SD_CLK_c_enable_102), 
            .CK(SD_CLK_c), .Q(\rx_sd_adr[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_adr_i0_i6.GSR = "DISABLED";
    FD1P3AX sd_adr_i0_i5 (.D(sd_adr_23__N_319[5]), .SP(SD_CLK_c_enable_102), 
            .CK(SD_CLK_c), .Q(\rx_sd_adr[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_adr_i0_i5.GSR = "DISABLED";
    FD1P3AX sd_adr_i0_i4 (.D(sd_adr_23__N_319[4]), .SP(SD_CLK_c_enable_102), 
            .CK(SD_CLK_c), .Q(\rx_sd_adr[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_adr_i0_i4.GSR = "DISABLED";
    FD1P3AX sd_adr_i0_i3 (.D(sd_adr_23__N_319[3]), .SP(SD_CLK_c_enable_102), 
            .CK(SD_CLK_c), .Q(\rx_sd_adr[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_adr_i0_i3.GSR = "DISABLED";
    FD1P3AX sd_adr_i0_i2 (.D(sd_adr_23__N_319[2]), .SP(SD_CLK_c_enable_102), 
            .CK(SD_CLK_c), .Q(\rx_sd_adr[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_adr_i0_i2.GSR = "DISABLED";
    FD1P3AX sd_adr_i0_i1 (.D(sd_adr_23__N_319[1]), .SP(SD_CLK_c_enable_102), 
            .CK(SD_CLK_c), .Q(\rx_sd_adr[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam sd_adr_i0_i1.GSR = "DISABLED";
    LUT4 i1219_4_lut (.A(n133[8]), .B(n2825), .C(rx_stb1), .D(SD_CLK_c_enable_197), 
         .Z(n2163)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(90[1] 107[8])
    defparam i1219_4_lut.init = 16'hcecc;
    LUT4 i12_4_lut (.A(n133[9]), .B(n133[8]), .C(rx_stb1), .D(SD_CLK_c_enable_197), 
         .Z(n4913)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(90[1] 107[8])
    defparam i12_4_lut.init = 16'hcac0;
    LUT4 i4115_3_lut (.A(uts_ack1), .B(n5154), .C(o_stb_rd_N_367), .Z(n8)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(90[1] 107[8])
    defparam i4115_3_lut.init = 16'hdcdc;
    LUT4 i4038_4_lut (.A(rd_wt_operation[1]), .B(rx_stb1), .C(data_count_clk), 
         .D(n133[9]), .Z(n5154)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i4038_4_lut.init = 16'heca0;
    FD1P3AX rd_wt_operation_i0_i1 (.D(next_state_3__N_347), .SP(data_tim_reset), 
            .CK(SD_CLK_c), .Q(rd_wt_operation[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(51[8] 64[8])
    defparam rd_wt_operation_i0_i1.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(data_count_clk), .B(rd_wt_operation[1]), 
         .C(rd_wt_operation[0]), .D(rx_stb1), .Z(n2825)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(100[19:68])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i4061_4_lut (.A(nreset_c), .B(n133[9]), .C(n133[8]), .D(data_count_clk), 
         .Z(timout_tim_flag_N_370)) /* synthesis lut_function=(!(A (B+(C+(D))))) */ ;
    defparam i4061_4_lut.init = 16'h5557;
    LUT4 i1306_2_lut (.A(n133[8]), .B(n133[9]), .Z(SD_CLK_c_enable_72)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(90[1] 107[8])
    defparam i1306_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut_adj_106 (.A(data_count_clk), .B(rd_wt_operation[1]), 
         .C(rd_wt_operation[0]), .D(rx_stb1), .Z(n5088)) /* synthesis lut_function=(!((B+(C (D)))+!A)) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(100[19:68])
    defparam i1_2_lut_3_lut_4_lut_adj_106.init = 16'h0222;
    FD1S3AX state_FSM_i2 (.D(n2161), .CK(SD_CLK_c), .Q(n133[1]));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(90[1] 107[8])
    defparam state_FSM_i2.GSR = "ENABLED";
    LUT4 i59_1_lut_rep_41 (.A(data_tim_flag), .Z(data_count_clk_enable_16)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(106[31:45])
    defparam i59_1_lut_rep_41.init = 16'h5555;
    FD1P3AX state_FSM_i3 (.D(n133[1]), .SP(rx_stb1), .CK(SD_CLK_c), .Q(n133[2]));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(90[1] 107[8])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1P3AX state_FSM_i4 (.D(n133[2]), .SP(rx_stb1), .CK(SD_CLK_c), .Q(n133[3]));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(90[1] 107[8])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1P3AX state_FSM_i5 (.D(n133[3]), .SP(rx_stb1), .CK(SD_CLK_c), .Q(n133[4]));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(90[1] 107[8])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1P3AX state_FSM_i6 (.D(n133[4]), .SP(rx_stb1), .CK(SD_CLK_c), .Q(n133[5]));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(90[1] 107[8])
    defparam state_FSM_i6.GSR = "ENABLED";
    FD1P3AX state_FSM_i7 (.D(n133[5]), .SP(rx_stb1), .CK(SD_CLK_c), .Q(n133[6]));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(90[1] 107[8])
    defparam state_FSM_i7.GSR = "ENABLED";
    FD1S3AX state_FSM_i8 (.D(n4799), .CK(SD_CLK_c), .Q(data_count_clk));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(90[1] 107[8])
    defparam state_FSM_i8.GSR = "ENABLED";
    FD1S3AX state_FSM_i9 (.D(n2163), .CK(SD_CLK_c), .Q(n133[8]));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(90[1] 107[8])
    defparam state_FSM_i9.GSR = "ENABLED";
    FD1S3AX state_FSM_i10 (.D(n4913), .CK(SD_CLK_c), .Q(n133[9]));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(90[1] 107[8])
    defparam state_FSM_i10.GSR = "ENABLED";
    FD1S3AX state_FSM_i11 (.D(n8), .CK(SD_CLK_c), .Q(o_stb_rd_N_367));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(90[1] 107[8])
    defparam state_FSM_i11.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_107 (.A(n133[1]), .B(o_stb_rd_N_367), .C(n133[3]), 
         .D(n133[2]), .Z(SD_CLK_c_enable_87)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_107.init = 16'hccce;
    LUT4 i1_3_lut (.A(n133[2]), .B(o_stb_rd_N_367), .C(n133[3]), .Z(SD_CLK_c_enable_95)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;
    defparam i1_3_lut.init = 16'hcece;
    LUT4 i2_4_lut_4_lut (.A(data_tim_flag), .B(o_stb_rd_N_367), .C(n4), 
         .D(uts_ack1), .Z(n4799)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(106[31:45])
    defparam i2_4_lut_4_lut.init = 16'hf4f0;
    LUT4 RST_I_0_86_2_lut (.A(nreset_c), .B(data_tim_reset), .Z(data_tim_flag_N_369)) /* synthesis lut_function=((B)+!A) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(73[17:37])
    defparam RST_I_0_86_2_lut.init = 16'hdddd;
    LUT4 i1401_2_lut (.A(n133[5]), .B(n133[6]), .Z(SD_CLK_c_enable_55)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(90[1] 107[8])
    defparam i1401_2_lut.init = 16'h2222;
    CCU2D add_91_7 (.A0(GND_net), .B0(o_stb_rd_N_367), .C0(rx_dat1[4]), 
          .D0(\rx_sd_adr[4] ), .A1(GND_net), .B1(o_stb_rd_N_367), .C1(rx_dat1[5]), 
          .D1(\rx_sd_adr[5] ), .CIN(n4676), .COUT(n4677), .S0(sd_adr_23__N_319[4]), 
          .S1(sd_adr_23__N_319[5]));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(63[33:43])
    defparam add_91_7.INIT0 = 16'h569a;
    defparam add_91_7.INIT1 = 16'h569a;
    defparam add_91_7.INJECT1_0 = "NO";
    defparam add_91_7.INJECT1_1 = "NO";
    CCU2D add_91_5 (.A0(GND_net), .B0(o_stb_rd_N_367), .C0(rx_dat1[2]), 
          .D0(\rx_sd_adr[2] ), .A1(GND_net), .B1(o_stb_rd_N_367), .C1(rx_dat1[3]), 
          .D1(\rx_sd_adr[3] ), .CIN(n4675), .COUT(n4676), .S0(sd_adr_23__N_319[2]), 
          .S1(sd_adr_23__N_319[3]));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(63[33:43])
    defparam add_91_5.INIT0 = 16'h569a;
    defparam add_91_5.INIT1 = 16'h569a;
    defparam add_91_5.INJECT1_0 = "NO";
    defparam add_91_5.INJECT1_1 = "NO";
    CCU2D add_91_3 (.A0(uts_ack1), .B0(o_stb_rd_N_367), .C0(rx_dat1[0]), 
          .D0(rx_sd_adr[0]), .A1(GND_net), .B1(o_stb_rd_N_367), .C1(rx_dat1[1]), 
          .D1(\rx_sd_adr[1] ), .CIN(n4674), .COUT(n4675), .S0(sd_adr_23__N_319[0]), 
          .S1(sd_adr_23__N_319[1]));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(63[33:43])
    defparam add_91_3.INIT0 = 16'h74b8;
    defparam add_91_3.INIT1 = 16'h569a;
    defparam add_91_3.INJECT1_0 = "NO";
    defparam add_91_3.INJECT1_1 = "NO";
    CCU2D add_91_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(o_stb_rd_N_367), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n4674));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(63[33:43])
    defparam add_91_1.INIT0 = 16'hF000;
    defparam add_91_1.INIT1 = 16'h0fff;
    defparam add_91_1.INJECT1_0 = "NO";
    defparam add_91_1.INJECT1_1 = "NO";
    Timer1 timout_tim_flag_I_0 (.SD_CLK_c(SD_CLK_c), .SD_CLK_c_enable_197(SD_CLK_c_enable_197), 
           .timout_tim_flag_N_370(timout_tim_flag_N_370), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(79[14] 85[2])
    Timer1_U0 data_tim_flag_I_0 (.data_count_clk(data_count_clk), .data_count_clk_enable_16(data_count_clk_enable_16), 
            .data_tim_flag_N_369(data_tim_flag_N_369), .GND_net(GND_net), 
            .data_array_len({data_array_len}), .data_tim_flag(data_tim_flag)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(71[14] 77[2])
    
endmodule
//
// Verilog Description of module Timer1
//

module Timer1 (SD_CLK_c, SD_CLK_c_enable_197, timout_tim_flag_N_370, GND_net) /* synthesis syn_module_defined=1 */ ;
    input SD_CLK_c;
    output SD_CLK_c_enable_197;
    input timout_tim_flag_N_370;
    input GND_net;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(31[6:16])
    
    wire n5;
    wire [15:0]count;   // c:/lscc/sd_ram_uart/src/timer.v(42[29:34])
    
    wire n26;
    wire [15:0]n121;
    wire [15:0]n69;
    
    wire n4775, n10, n4748, n4747, n4746, n4745, n4744, n4743, 
        n4742, n4741, n2432;
    
    LUT4 i910_4_lut (.A(n5), .B(count[12]), .C(count[11]), .D(count[9]), 
         .Z(n26)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i910_4_lut.init = 16'heccc;
    FD1P3DX count_814__i0 (.D(n69[0]), .SP(SD_CLK_c_enable_197), .CK(SD_CLK_c), 
            .CD(timout_tim_flag_N_370), .Q(n121[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_814__i0.GSR = "DISABLED";
    LUT4 i1_3_lut (.A(n4775), .B(count[10]), .C(count[8]), .Z(n5)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i1_3_lut.init = 16'hc8c8;
    LUT4 i3_4_lut (.A(n10), .B(count[7]), .C(count[6]), .D(count[5]), 
         .Z(n4775)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i913_4_lut (.A(count[3]), .B(count[4]), .C(count[2]), .D(count[1]), 
         .Z(n10)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i913_4_lut.init = 16'heccc;
    CCU2D count_814_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4748), .S0(n69[15]));   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_814_add_4_17.INIT0 = 16'hfaaa;
    defparam count_814_add_4_17.INIT1 = 16'h0000;
    defparam count_814_add_4_17.INJECT1_0 = "NO";
    defparam count_814_add_4_17.INJECT1_1 = "NO";
    CCU2D count_814_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4747), .COUT(n4748), .S0(n69[13]), .S1(n69[14]));   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_814_add_4_15.INIT0 = 16'hfaaa;
    defparam count_814_add_4_15.INIT1 = 16'hfaaa;
    defparam count_814_add_4_15.INJECT1_0 = "NO";
    defparam count_814_add_4_15.INJECT1_1 = "NO";
    CCU2D count_814_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4746), .COUT(n4747), .S0(n69[11]), .S1(n69[12]));   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_814_add_4_13.INIT0 = 16'hfaaa;
    defparam count_814_add_4_13.INIT1 = 16'hfaaa;
    defparam count_814_add_4_13.INJECT1_0 = "NO";
    defparam count_814_add_4_13.INJECT1_1 = "NO";
    CCU2D count_814_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4745), .COUT(n4746), .S0(n69[9]), .S1(n69[10]));   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_814_add_4_11.INIT0 = 16'hfaaa;
    defparam count_814_add_4_11.INIT1 = 16'hfaaa;
    defparam count_814_add_4_11.INJECT1_0 = "NO";
    defparam count_814_add_4_11.INJECT1_1 = "NO";
    CCU2D count_814_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4744), .COUT(n4745), .S0(n69[7]), .S1(n69[8]));   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_814_add_4_9.INIT0 = 16'hfaaa;
    defparam count_814_add_4_9.INIT1 = 16'hfaaa;
    defparam count_814_add_4_9.INJECT1_0 = "NO";
    defparam count_814_add_4_9.INJECT1_1 = "NO";
    CCU2D count_814_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4743), .COUT(n4744), .S0(n69[5]), .S1(n69[6]));   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_814_add_4_7.INIT0 = 16'hfaaa;
    defparam count_814_add_4_7.INIT1 = 16'hfaaa;
    defparam count_814_add_4_7.INJECT1_0 = "NO";
    defparam count_814_add_4_7.INJECT1_1 = "NO";
    CCU2D count_814_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4742), .COUT(n4743), .S0(n69[3]), .S1(n69[4]));   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_814_add_4_5.INIT0 = 16'hfaaa;
    defparam count_814_add_4_5.INIT1 = 16'hfaaa;
    defparam count_814_add_4_5.INJECT1_0 = "NO";
    defparam count_814_add_4_5.INJECT1_1 = "NO";
    CCU2D count_814_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4741), .COUT(n4742), .S0(n69[1]), .S1(n69[2]));   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_814_add_4_3.INIT0 = 16'hfaaa;
    defparam count_814_add_4_3.INIT1 = 16'hfaaa;
    defparam count_814_add_4_3.INJECT1_0 = "NO";
    defparam count_814_add_4_3.INJECT1_1 = "NO";
    CCU2D count_814_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n4741), .S1(n69[0]));   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_814_add_4_1.INIT0 = 16'hF000;
    defparam count_814_add_4_1.INIT1 = 16'h0555;
    defparam count_814_add_4_1.INJECT1_0 = "NO";
    defparam count_814_add_4_1.INJECT1_1 = "NO";
    FD1P3DX count_814__i1 (.D(n69[1]), .SP(SD_CLK_c_enable_197), .CK(SD_CLK_c), 
            .CD(timout_tim_flag_N_370), .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_814__i1.GSR = "DISABLED";
    LUT4 i1454_2_lut_2_lut (.A(SD_CLK_c_enable_197), .B(n69[15]), .Z(n2432)) /* synthesis lut_function=((B)+!A) */ ;   // c:/lscc/sd_ram_uart/src/timer.v(44[23:40])
    defparam i1454_2_lut_2_lut.init = 16'hdddd;
    FD1P3DX count_814__i2 (.D(n69[2]), .SP(SD_CLK_c_enable_197), .CK(SD_CLK_c), 
            .CD(timout_tim_flag_N_370), .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_814__i2.GSR = "DISABLED";
    FD1P3DX count_814__i3 (.D(n69[3]), .SP(SD_CLK_c_enable_197), .CK(SD_CLK_c), 
            .CD(timout_tim_flag_N_370), .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_814__i3.GSR = "DISABLED";
    FD1P3DX count_814__i4 (.D(n69[4]), .SP(SD_CLK_c_enable_197), .CK(SD_CLK_c), 
            .CD(timout_tim_flag_N_370), .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_814__i4.GSR = "DISABLED";
    FD1P3DX count_814__i5 (.D(n69[5]), .SP(SD_CLK_c_enable_197), .CK(SD_CLK_c), 
            .CD(timout_tim_flag_N_370), .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_814__i5.GSR = "DISABLED";
    FD1P3DX count_814__i6 (.D(n69[6]), .SP(SD_CLK_c_enable_197), .CK(SD_CLK_c), 
            .CD(timout_tim_flag_N_370), .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_814__i6.GSR = "DISABLED";
    FD1P3DX count_814__i7 (.D(n69[7]), .SP(SD_CLK_c_enable_197), .CK(SD_CLK_c), 
            .CD(timout_tim_flag_N_370), .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_814__i7.GSR = "DISABLED";
    FD1P3DX count_814__i8 (.D(n69[8]), .SP(SD_CLK_c_enable_197), .CK(SD_CLK_c), 
            .CD(timout_tim_flag_N_370), .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_814__i8.GSR = "DISABLED";
    FD1P3DX count_814__i9 (.D(n69[9]), .SP(SD_CLK_c_enable_197), .CK(SD_CLK_c), 
            .CD(timout_tim_flag_N_370), .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_814__i9.GSR = "DISABLED";
    FD1P3DX count_814__i10 (.D(n69[10]), .SP(SD_CLK_c_enable_197), .CK(SD_CLK_c), 
            .CD(timout_tim_flag_N_370), .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_814__i10.GSR = "DISABLED";
    FD1P3DX count_814__i11 (.D(n69[11]), .SP(SD_CLK_c_enable_197), .CK(SD_CLK_c), 
            .CD(timout_tim_flag_N_370), .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_814__i11.GSR = "DISABLED";
    FD1P3DX count_814__i12 (.D(n69[12]), .SP(SD_CLK_c_enable_197), .CK(SD_CLK_c), 
            .CD(timout_tim_flag_N_370), .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_814__i12.GSR = "DISABLED";
    FD1P3DX count_814__i13 (.D(n69[13]), .SP(SD_CLK_c_enable_197), .CK(SD_CLK_c), 
            .CD(timout_tim_flag_N_370), .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_814__i13.GSR = "DISABLED";
    FD1P3DX count_814__i14 (.D(n69[14]), .SP(SD_CLK_c_enable_197), .CK(SD_CLK_c), 
            .CD(timout_tim_flag_N_370), .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_814__i14.GSR = "DISABLED";
    FD1S3DX count_814__i15 (.D(n2432), .CK(SD_CLK_c), .CD(timout_tim_flag_N_370), 
            .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_814__i15.GSR = "DISABLED";
    LUT4 i4071_4_lut_rep_47 (.A(n26), .B(count[15]), .C(count[14]), .D(count[13]), 
         .Z(SD_CLK_c_enable_197)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;   // c:/lscc/sd_ram_uart/src/timer.v(44[23:40])
    defparam i4071_4_lut_rep_47.init = 16'h7fff;
    
endmodule
//
// Verilog Description of module Timer1_U0
//

module Timer1_U0 (data_count_clk, data_count_clk_enable_16, data_tim_flag_N_369, 
            GND_net, data_array_len, data_tim_flag) /* synthesis syn_module_defined=1 */ ;
    input data_count_clk;
    input data_count_clk_enable_16;
    input data_tim_flag_N_369;
    input GND_net;
    input [15:0]data_array_len;
    output data_tim_flag;
    
    wire data_count_clk /* synthesis SET_AS_NETWORK=\all_modules1/uart_to_sdram1/data_count_clk, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(68[6:20])
    wire [15:0]count;   // c:/lscc/sd_ram_uart/src/timer.v(42[29:34])
    wire [15:0]n69;
    
    wire n4730, n4729, n4728, n4727, n4726, n4725, n4724, n4666, 
        n4665, n4664, n4663, n4662, n4661, n4660, n4659, n4723;
    
    FD1P3DX count_813__i0 (.D(n69[0]), .SP(data_count_clk_enable_16), .CK(data_count_clk), 
            .CD(data_tim_flag_N_369), .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_813__i0.GSR = "DISABLED";
    FD1P3DX count_813__i1 (.D(n69[1]), .SP(data_count_clk_enable_16), .CK(data_count_clk), 
            .CD(data_tim_flag_N_369), .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_813__i1.GSR = "DISABLED";
    FD1P3DX count_813__i2 (.D(n69[2]), .SP(data_count_clk_enable_16), .CK(data_count_clk), 
            .CD(data_tim_flag_N_369), .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_813__i2.GSR = "DISABLED";
    FD1P3DX count_813__i3 (.D(n69[3]), .SP(data_count_clk_enable_16), .CK(data_count_clk), 
            .CD(data_tim_flag_N_369), .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_813__i3.GSR = "DISABLED";
    FD1P3DX count_813__i4 (.D(n69[4]), .SP(data_count_clk_enable_16), .CK(data_count_clk), 
            .CD(data_tim_flag_N_369), .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_813__i4.GSR = "DISABLED";
    FD1P3DX count_813__i5 (.D(n69[5]), .SP(data_count_clk_enable_16), .CK(data_count_clk), 
            .CD(data_tim_flag_N_369), .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_813__i5.GSR = "DISABLED";
    FD1P3DX count_813__i6 (.D(n69[6]), .SP(data_count_clk_enable_16), .CK(data_count_clk), 
            .CD(data_tim_flag_N_369), .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_813__i6.GSR = "DISABLED";
    FD1P3DX count_813__i7 (.D(n69[7]), .SP(data_count_clk_enable_16), .CK(data_count_clk), 
            .CD(data_tim_flag_N_369), .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_813__i7.GSR = "DISABLED";
    FD1P3DX count_813__i8 (.D(n69[8]), .SP(data_count_clk_enable_16), .CK(data_count_clk), 
            .CD(data_tim_flag_N_369), .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_813__i8.GSR = "DISABLED";
    FD1P3DX count_813__i9 (.D(n69[9]), .SP(data_count_clk_enable_16), .CK(data_count_clk), 
            .CD(data_tim_flag_N_369), .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_813__i9.GSR = "DISABLED";
    FD1P3DX count_813__i10 (.D(n69[10]), .SP(data_count_clk_enable_16), 
            .CK(data_count_clk), .CD(data_tim_flag_N_369), .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_813__i10.GSR = "DISABLED";
    FD1P3DX count_813__i11 (.D(n69[11]), .SP(data_count_clk_enable_16), 
            .CK(data_count_clk), .CD(data_tim_flag_N_369), .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_813__i11.GSR = "DISABLED";
    FD1P3DX count_813__i12 (.D(n69[12]), .SP(data_count_clk_enable_16), 
            .CK(data_count_clk), .CD(data_tim_flag_N_369), .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_813__i12.GSR = "DISABLED";
    FD1P3DX count_813__i13 (.D(n69[13]), .SP(data_count_clk_enable_16), 
            .CK(data_count_clk), .CD(data_tim_flag_N_369), .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_813__i13.GSR = "DISABLED";
    FD1P3DX count_813__i14 (.D(n69[14]), .SP(data_count_clk_enable_16), 
            .CK(data_count_clk), .CD(data_tim_flag_N_369), .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_813__i14.GSR = "DISABLED";
    FD1P3DX count_813__i15 (.D(n69[15]), .SP(data_count_clk_enable_16), 
            .CK(data_count_clk), .CD(data_tim_flag_N_369), .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_813__i15.GSR = "DISABLED";
    CCU2D count_813_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4730), .S0(n69[15]));   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_813_add_4_17.INIT0 = 16'hfaaa;
    defparam count_813_add_4_17.INIT1 = 16'h0000;
    defparam count_813_add_4_17.INJECT1_0 = "NO";
    defparam count_813_add_4_17.INJECT1_1 = "NO";
    CCU2D count_813_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4729), .COUT(n4730), .S0(n69[13]), .S1(n69[14]));   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_813_add_4_15.INIT0 = 16'hfaaa;
    defparam count_813_add_4_15.INIT1 = 16'hfaaa;
    defparam count_813_add_4_15.INJECT1_0 = "NO";
    defparam count_813_add_4_15.INJECT1_1 = "NO";
    CCU2D count_813_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4728), .COUT(n4729), .S0(n69[11]), .S1(n69[12]));   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_813_add_4_13.INIT0 = 16'hfaaa;
    defparam count_813_add_4_13.INIT1 = 16'hfaaa;
    defparam count_813_add_4_13.INJECT1_0 = "NO";
    defparam count_813_add_4_13.INJECT1_1 = "NO";
    CCU2D count_813_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4727), .COUT(n4728), .S0(n69[9]), .S1(n69[10]));   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_813_add_4_11.INIT0 = 16'hfaaa;
    defparam count_813_add_4_11.INIT1 = 16'hfaaa;
    defparam count_813_add_4_11.INJECT1_0 = "NO";
    defparam count_813_add_4_11.INJECT1_1 = "NO";
    CCU2D count_813_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4726), .COUT(n4727), .S0(n69[7]), .S1(n69[8]));   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_813_add_4_9.INIT0 = 16'hfaaa;
    defparam count_813_add_4_9.INIT1 = 16'hfaaa;
    defparam count_813_add_4_9.INJECT1_0 = "NO";
    defparam count_813_add_4_9.INJECT1_1 = "NO";
    CCU2D count_813_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4725), .COUT(n4726), .S0(n69[5]), .S1(n69[6]));   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_813_add_4_7.INIT0 = 16'hfaaa;
    defparam count_813_add_4_7.INIT1 = 16'hfaaa;
    defparam count_813_add_4_7.INJECT1_0 = "NO";
    defparam count_813_add_4_7.INJECT1_1 = "NO";
    CCU2D count_813_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4724), .COUT(n4725), .S0(n69[3]), .S1(n69[4]));   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_813_add_4_5.INIT0 = 16'hfaaa;
    defparam count_813_add_4_5.INIT1 = 16'hfaaa;
    defparam count_813_add_4_5.INJECT1_0 = "NO";
    defparam count_813_add_4_5.INJECT1_1 = "NO";
    CCU2D sub_642_add_2_17 (.A0(count[15]), .B0(data_array_len[15]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4666), .S1(data_tim_flag));
    defparam sub_642_add_2_17.INIT0 = 16'h5999;
    defparam sub_642_add_2_17.INIT1 = 16'h0000;
    defparam sub_642_add_2_17.INJECT1_0 = "NO";
    defparam sub_642_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_642_add_2_15 (.A0(count[13]), .B0(data_array_len[13]), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(data_array_len[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4665), .COUT(n4666));
    defparam sub_642_add_2_15.INIT0 = 16'h5999;
    defparam sub_642_add_2_15.INIT1 = 16'h5999;
    defparam sub_642_add_2_15.INJECT1_0 = "NO";
    defparam sub_642_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_642_add_2_13 (.A0(count[11]), .B0(data_array_len[11]), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(data_array_len[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4664), .COUT(n4665));
    defparam sub_642_add_2_13.INIT0 = 16'h5999;
    defparam sub_642_add_2_13.INIT1 = 16'h5999;
    defparam sub_642_add_2_13.INJECT1_0 = "NO";
    defparam sub_642_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_642_add_2_11 (.A0(count[9]), .B0(data_array_len[9]), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(data_array_len[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4663), .COUT(n4664));
    defparam sub_642_add_2_11.INIT0 = 16'h5999;
    defparam sub_642_add_2_11.INIT1 = 16'h5999;
    defparam sub_642_add_2_11.INJECT1_0 = "NO";
    defparam sub_642_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_642_add_2_9 (.A0(count[7]), .B0(data_array_len[7]), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(data_array_len[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4662), .COUT(n4663));
    defparam sub_642_add_2_9.INIT0 = 16'h5999;
    defparam sub_642_add_2_9.INIT1 = 16'h5999;
    defparam sub_642_add_2_9.INJECT1_0 = "NO";
    defparam sub_642_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_642_add_2_7 (.A0(count[5]), .B0(data_array_len[5]), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(data_array_len[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4661), .COUT(n4662));
    defparam sub_642_add_2_7.INIT0 = 16'h5999;
    defparam sub_642_add_2_7.INIT1 = 16'h5999;
    defparam sub_642_add_2_7.INJECT1_0 = "NO";
    defparam sub_642_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_642_add_2_5 (.A0(count[3]), .B0(data_array_len[3]), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(data_array_len[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4660), .COUT(n4661));
    defparam sub_642_add_2_5.INIT0 = 16'h5999;
    defparam sub_642_add_2_5.INIT1 = 16'h5999;
    defparam sub_642_add_2_5.INJECT1_0 = "NO";
    defparam sub_642_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_642_add_2_3 (.A0(count[1]), .B0(data_array_len[1]), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(data_array_len[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4659), .COUT(n4660));
    defparam sub_642_add_2_3.INIT0 = 16'h5999;
    defparam sub_642_add_2_3.INIT1 = 16'h5999;
    defparam sub_642_add_2_3.INJECT1_0 = "NO";
    defparam sub_642_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_642_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[0]), .B1(data_array_len[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n4659));
    defparam sub_642_add_2_1.INIT0 = 16'h0000;
    defparam sub_642_add_2_1.INIT1 = 16'h5999;
    defparam sub_642_add_2_1.INJECT1_0 = "NO";
    defparam sub_642_add_2_1.INJECT1_1 = "NO";
    CCU2D count_813_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4723), .COUT(n4724), .S0(n69[1]), .S1(n69[2]));   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_813_add_4_3.INIT0 = 16'hfaaa;
    defparam count_813_add_4_3.INIT1 = 16'hfaaa;
    defparam count_813_add_4_3.INJECT1_0 = "NO";
    defparam count_813_add_4_3.INJECT1_1 = "NO";
    CCU2D count_813_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n4723), .S1(n69[0]));   // c:/lscc/sd_ram_uart/src/timer.v(49[40:52])
    defparam count_813_add_4_1.INIT0 = 16'hF000;
    defparam count_813_add_4_1.INIT1 = 16'h0555;
    defparam count_813_add_4_1.INJECT1_0 = "NO";
    defparam count_813_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module sdram_to_uart
//

module sdram_to_uart (SD_CLK_c, tx_sd_data, nreset_c, tx_stb1, \rd_wt_operation_1__N_835[1] , 
            full, tx_ack1, tx_dat1, wt_o_stb1) /* synthesis syn_module_defined=1 */ ;
    input SD_CLK_c;
    input [15:0]tx_sd_data;
    input nreset_c;
    output tx_stb1;
    input \rd_wt_operation_1__N_835[1] ;
    input full;
    output tx_ack1;
    output [7:0]tx_dat1;
    input wt_o_stb1;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(31[6:16])
    wire [15:0]sd_data_temp;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(20[13:25])
    
    wire SD_CLK_c_enable_146;
    wire [1:0]state;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(18[13:18])
    wire [1:0]next_state;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(19[13:23])
    
    wire n3704;
    wire [1:0]rd_wt_operation;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(21[13:28])
    
    wire SD_CLK_c_enable_147, n5292, n5094, n5395, n8, n13, n6, 
        n6_adj_1008, n10;
    
    FD1P3AX sd_data_temp_i0 (.D(tx_sd_data[0]), .SP(SD_CLK_c_enable_146), 
            .CK(SD_CLK_c), .Q(sd_data_temp[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i0.GSR = "DISABLED";
    FD1S3AX state_i0 (.D(next_state[0]), .CK(SD_CLK_c), .Q(state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(35[9:29])
    defparam state_i0.GSR = "ENABLED";
    LUT4 i2_1_lut (.A(state[0]), .Z(n3704)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(55[1] 60[8])
    defparam i2_1_lut.init = 16'h5555;
    LUT4 i1_2_lut (.A(state[0]), .B(nreset_c), .Z(tx_stb1)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(35[9:29])
    defparam i1_2_lut.init = 16'h8888;
    FD1P3AX sd_data_temp_i1 (.D(tx_sd_data[1]), .SP(SD_CLK_c_enable_146), 
            .CK(SD_CLK_c), .Q(sd_data_temp[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i1.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i2 (.D(tx_sd_data[2]), .SP(SD_CLK_c_enable_146), 
            .CK(SD_CLK_c), .Q(sd_data_temp[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i2.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i3 (.D(tx_sd_data[3]), .SP(SD_CLK_c_enable_146), 
            .CK(SD_CLK_c), .Q(sd_data_temp[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i3.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i4 (.D(tx_sd_data[4]), .SP(SD_CLK_c_enable_146), 
            .CK(SD_CLK_c), .Q(sd_data_temp[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i4.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i5 (.D(tx_sd_data[5]), .SP(SD_CLK_c_enable_146), 
            .CK(SD_CLK_c), .Q(sd_data_temp[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i5.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i6 (.D(tx_sd_data[6]), .SP(SD_CLK_c_enable_146), 
            .CK(SD_CLK_c), .Q(sd_data_temp[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i6.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i7 (.D(tx_sd_data[7]), .SP(SD_CLK_c_enable_146), 
            .CK(SD_CLK_c), .Q(sd_data_temp[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i7.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i8 (.D(tx_sd_data[8]), .SP(SD_CLK_c_enable_146), 
            .CK(SD_CLK_c), .Q(sd_data_temp[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i8.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i9 (.D(tx_sd_data[9]), .SP(SD_CLK_c_enable_146), 
            .CK(SD_CLK_c), .Q(sd_data_temp[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i9.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i10 (.D(tx_sd_data[10]), .SP(SD_CLK_c_enable_146), 
            .CK(SD_CLK_c), .Q(sd_data_temp[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i10.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i11 (.D(tx_sd_data[11]), .SP(SD_CLK_c_enable_146), 
            .CK(SD_CLK_c), .Q(sd_data_temp[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i11.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i12 (.D(tx_sd_data[12]), .SP(SD_CLK_c_enable_146), 
            .CK(SD_CLK_c), .Q(sd_data_temp[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i12.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i13 (.D(tx_sd_data[13]), .SP(SD_CLK_c_enable_146), 
            .CK(SD_CLK_c), .Q(sd_data_temp[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i13.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i14 (.D(tx_sd_data[14]), .SP(SD_CLK_c_enable_146), 
            .CK(SD_CLK_c), .Q(sd_data_temp[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i14.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i15 (.D(tx_sd_data[15]), .SP(SD_CLK_c_enable_146), 
            .CK(SD_CLK_c), .Q(sd_data_temp[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i15.GSR = "DISABLED";
    FD1P3AX rd_wt_operation_i1 (.D(\rd_wt_operation_1__N_835[1] ), .SP(SD_CLK_c_enable_147), 
            .CK(SD_CLK_c), .Q(rd_wt_operation[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam rd_wt_operation_i1.GSR = "DISABLED";
    FD1S3IX state_i1 (.D(n5292), .CK(SD_CLK_c), .CD(n3704), .Q(state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(35[9:29])
    defparam state_i1.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(nreset_c), .B(state[0]), .C(full), .Z(tx_ack1)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(35[9:29])
    defparam i2_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_adj_99 (.A(state[0]), .B(rd_wt_operation[1]), .Z(n5094)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(55[1] 60[8])
    defparam i1_2_lut_adj_99.init = 16'h8888;
    LUT4 state_1__I_0_39_Mux_0_i3_4_lut (.A(n5395), .B(tx_ack1), .C(state[1]), 
         .D(state[0]), .Z(next_state[0])) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B (C+!(D))+!B !(D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(66[1] 70[8])
    defparam state_1__I_0_39_Mux_0_i3_4_lut.init = 16'h3f0a;
    LUT4 i4109_4_lut (.A(sd_data_temp[8]), .B(n5094), .C(sd_data_temp[0]), 
         .D(state[1]), .Z(tx_dat1[0])) /* synthesis lut_function=(A ((C+!(D))+!B)+!A ((C (D))+!B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(55[1] 60[8])
    defparam i4109_4_lut.init = 16'hf3bb;
    LUT4 i4105_4_lut (.A(sd_data_temp[9]), .B(n5094), .C(sd_data_temp[1]), 
         .D(state[1]), .Z(tx_dat1[1])) /* synthesis lut_function=(A ((C+!(D))+!B)+!A ((C (D))+!B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(55[1] 60[8])
    defparam i4105_4_lut.init = 16'hf3bb;
    LUT4 i1_2_lut_adj_100 (.A(state[0]), .B(n8), .Z(tx_dat1[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(35[9:29])
    defparam i1_2_lut_adj_100.init = 16'h8888;
    LUT4 i21_4_lut (.A(rd_wt_operation[1]), .B(sd_data_temp[2]), .C(state[1]), 
         .D(sd_data_temp[10]), .Z(n8)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(35[9:29])
    defparam i21_4_lut.init = 16'h8f85;
    LUT4 state_0__bdd_4_lut (.A(state[0]), .B(nreset_c), .C(state[1]), 
         .D(full), .Z(n5292)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C))+!A (C)) */ ;
    defparam state_0__bdd_4_lut.init = 16'hf078;
    LUT4 i1_3_lut (.A(rd_wt_operation[1]), .B(state[0]), .C(n13), .Z(tx_dat1[3])) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(21[13:28])
    defparam i1_3_lut.init = 16'hc4c4;
    LUT4 i4090_2_lut_rep_56 (.A(state[0]), .B(state[1]), .Z(SD_CLK_c_enable_147)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(55[1] 60[8])
    defparam i4090_2_lut_rep_56.init = 16'h1111;
    LUT4 i2715_3_lut (.A(sd_data_temp[11]), .B(sd_data_temp[3]), .C(state[1]), 
         .Z(n13)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(18[13:18])
    defparam i2715_3_lut.init = 16'hcaca;
    LUT4 i478_2_lut_rep_57 (.A(wt_o_stb1), .B(\rd_wt_operation_1__N_835[1] ), 
         .Z(n5395)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(44[12] 49[37])
    defparam i478_2_lut_rep_57.init = 16'heeee;
    LUT4 i1191_2_lut_3_lut_4_lut (.A(wt_o_stb1), .B(\rd_wt_operation_1__N_835[1] ), 
         .C(state[1]), .D(state[0]), .Z(SD_CLK_c_enable_146)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(44[12] 49[37])
    defparam i1191_2_lut_3_lut_4_lut.init = 16'h000e;
    LUT4 i1_3_lut_adj_101 (.A(state[0]), .B(rd_wt_operation[1]), .C(n6), 
         .Z(tx_dat1[4])) /* synthesis lut_function=((B (C))+!A) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(55[1] 60[8])
    defparam i1_3_lut_adj_101.init = 16'hd5d5;
    LUT4 i19_3_lut (.A(sd_data_temp[12]), .B(sd_data_temp[4]), .C(state[1]), 
         .Z(n6)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(55[1] 60[8])
    defparam i19_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_adj_102 (.A(state[0]), .B(rd_wt_operation[1]), .C(n6_adj_1008), 
         .Z(tx_dat1[5])) /* synthesis lut_function=((B (C))+!A) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(55[1] 60[8])
    defparam i1_3_lut_adj_102.init = 16'hd5d5;
    LUT4 i19_3_lut_adj_103 (.A(sd_data_temp[13]), .B(sd_data_temp[5]), .C(state[1]), 
         .Z(n6_adj_1008)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(55[1] 60[8])
    defparam i19_3_lut_adj_103.init = 16'hcaca;
    LUT4 i1_3_lut_adj_104 (.A(state[0]), .B(rd_wt_operation[1]), .C(n10), 
         .Z(tx_dat1[6])) /* synthesis lut_function=(A ((C)+!B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(21[13:28])
    defparam i1_3_lut_adj_104.init = 16'ha2a2;
    LUT4 i17_3_lut (.A(sd_data_temp[14]), .B(sd_data_temp[6]), .C(state[1]), 
         .Z(n10)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(21[13:28])
    defparam i17_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut (.A(sd_data_temp[15]), .B(n5094), .C(sd_data_temp[7]), 
         .D(state[1]), .Z(tx_dat1[7])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(35[9:29])
    defparam i1_4_lut.init = 16'hc088;
    
endmodule
//
// Verilog Description of module SDRAM_Controller
//

module SDRAM_Controller (SD_CLK_c, SD_CLK_c_enable_213, tx_sd_data, DB_out_0, 
            rd_i_ack_N_577, DB_out_15, DB_out_14, DB_out_13, DB_out_12, 
            ADR_c_11, DB_out_11, DB_out_10, DB_out_9, DB_out_8, ADR_c_9, 
            n1734, \rx_sd_adr[0] , nreset_c, DB_out_7, DB_out_6, DB_out_5, 
            DB_out_4, DB_out_3, DB_out_2, DB_out_1, rd_wt_operation, 
            n5407, ADR_c_8, \count[2]_derived_14 , ADR_c_7, \repeat_tim_period[13] , 
            n5560, \rd_wt_operation_1__N_835[1] , ADR_c_6, ADR_c_5, 
            ADR_c_4, ADR_c_3, ADR_c_2, ADR_c_1, ADR_c_0, DQM_c, 
            nRAS_c, SD_DATA_TEMP, rx_sd_data, wt_o_stb1, nWE_c, refresh_tim_flag, 
            uts_ack1, BA_c_0, BA_c_1, delay_tim_reset, refresh_tim_reset, 
            nCAS_c, SD_P_DATA_15__N_423, \rx_sd_adr[1] , \rx_sd_adr[2] , 
            \rx_sd_adr[3] , \rx_sd_adr[4] , \rx_sd_adr[5] , \rx_sd_adr[6] , 
            \rx_sd_adr[7] , \rx_sd_adr[8] , \rx_sd_adr[10] , \rx_sd_adr[11] , 
            \rx_sd_adr[12] , \rx_sd_adr[13] , \rx_sd_adr[14] , \rx_sd_adr[15] , 
            \rx_sd_adr[16] , \rx_sd_adr[17] , \rx_sd_adr[18] , \rx_sd_adr[19] , 
            \rx_sd_adr[20] , \rx_sd_adr[21] , \rx_sd_adr[22] , \rx_sd_adr[23] , 
            n4060, ADR_c_10, n5390, GND_net, SD_CLK_c_enable_128, 
            SD_CLK_c_enable_131) /* synthesis syn_module_defined=1 */ ;
    input SD_CLK_c;
    output SD_CLK_c_enable_213;
    output [15:0]tx_sd_data;
    input DB_out_0;
    output rd_i_ack_N_577;
    input DB_out_15;
    input DB_out_14;
    input DB_out_13;
    input DB_out_12;
    output ADR_c_11;
    input DB_out_11;
    input DB_out_10;
    input DB_out_9;
    input DB_out_8;
    output ADR_c_9;
    input n1734;
    input \rx_sd_adr[0] ;
    input nreset_c;
    input DB_out_7;
    input DB_out_6;
    input DB_out_5;
    input DB_out_4;
    input DB_out_3;
    input DB_out_2;
    input DB_out_1;
    input [1:0]rd_wt_operation;
    input n5407;
    output ADR_c_8;
    output \count[2]_derived_14 ;
    output ADR_c_7;
    output \repeat_tim_period[13] ;
    input n5560;
    output \rd_wt_operation_1__N_835[1] ;
    output ADR_c_6;
    output ADR_c_5;
    output ADR_c_4;
    output ADR_c_3;
    output ADR_c_2;
    output ADR_c_1;
    output ADR_c_0;
    output DQM_c;
    output nRAS_c;
    output [15:0]SD_DATA_TEMP;
    input [15:0]rx_sd_data;
    output wt_o_stb1;
    output nWE_c;
    output refresh_tim_flag;
    input uts_ack1;
    output BA_c_0;
    output BA_c_1;
    output delay_tim_reset;
    output refresh_tim_reset;
    output nCAS_c;
    output SD_P_DATA_15__N_423;
    input \rx_sd_adr[1] ;
    input \rx_sd_adr[2] ;
    input \rx_sd_adr[3] ;
    input \rx_sd_adr[4] ;
    input \rx_sd_adr[5] ;
    input \rx_sd_adr[6] ;
    input \rx_sd_adr[7] ;
    input \rx_sd_adr[8] ;
    input \rx_sd_adr[10] ;
    input \rx_sd_adr[11] ;
    input \rx_sd_adr[12] ;
    input \rx_sd_adr[13] ;
    input \rx_sd_adr[14] ;
    input \rx_sd_adr[15] ;
    input \rx_sd_adr[16] ;
    input \rx_sd_adr[17] ;
    input \rx_sd_adr[18] ;
    input \rx_sd_adr[19] ;
    input \rx_sd_adr[20] ;
    input \rx_sd_adr[21] ;
    input \rx_sd_adr[22] ;
    input \rx_sd_adr[23] ;
    output n4060;
    output ADR_c_10;
    input n5390;
    input GND_net;
    input SD_CLK_c_enable_128;
    input SD_CLK_c_enable_131;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(31[6:16])
    wire \count[2]_derived_14  /* synthesis is_clock=1, SET_AS_NETWORK=\all_modules1/sdram_controller1/delayTimer/count[2]_derived_14 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(20[25:30])
    
    wire init_done_N_558;
    wire [15:0]n385;
    wire [23:0]SD_ADR_TEMP;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(58[34:45])
    
    wire n5055, n5078, n12, n5408, n2417;
    wire [1:0]n1714;
    wire [1:0]n51;
    
    wire SD_CLK_c_enable_46, n2409;
    wire [2:0]arb_delay_2__N_465;
    
    wire n2423, n5387, n2421, n2419, n2411, n1737, repeat_tim_flag, 
        n5382, n419, count_2_derived_14_enable_14, n5076, n21, n2216;
    wire [3:0]state;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(70[34:39])
    
    wire n5397;
    wire [2:0]arb_delay;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(67[34:43])
    
    wire n5084, n2188, n4, n2189, n5160, n12_adj_1007, next_state_3__N_570, 
        SD_CLK_c_enable_125, n5092, n2190, n5099;
    wire [3:0]count;   // c:/lscc/sd_ram_uart/src/timer.v(20[25:30])
    
    wire n9;
    wire [3:0]delay_tim_period;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(64[34:50])
    
    wire n5383, n5555, n2200, n2202, n2204, n2206, n2208, delay_tim_flag_N_589, 
        n5060, n5391, n3006, n14, n10;
    
    LUT4 i1_3_lut_4_lut (.A(init_done_N_558), .B(n385[1]), .C(SD_ADR_TEMP[3]), 
         .D(n5055), .Z(n5078)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0010;
    LUT4 i6_4_lut (.A(n385[8]), .B(n12), .C(n5408), .D(n385[4]), .Z(n5055)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_83 (.A(init_done_N_558), .B(n385[1]), .C(SD_ADR_TEMP[5]), 
         .D(n5055), .Z(n2417)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;
    defparam i1_3_lut_4_lut_adj_83.init = 16'heefe;
    FD1P3AX rd_wt_operation_i0_i0 (.D(n51[0]), .SP(SD_CLK_c_enable_213), 
            .CK(SD_CLK_c), .Q(n1714[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam rd_wt_operation_i0_i0.GSR = "DISABLED";
    FD1P3AX RD_DATA_i0_i0 (.D(DB_out_0), .SP(SD_CLK_c_enable_46), .CK(SD_CLK_c), 
            .Q(tx_sd_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam RD_DATA_i0_i0.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(init_done_N_558), .B(n385[1]), .C(SD_ADR_TEMP[1]), 
         .D(n5055), .Z(n2409)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i5_4_lut (.A(n385[6]), .B(n385[2]), .C(rd_i_ack_N_577), .D(arb_delay_2__N_465[1]), 
         .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_84 (.A(init_done_N_558), .B(n385[1]), 
         .C(SD_ADR_TEMP[8]), .D(n5055), .Z(n2423)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_84.init = 16'h0010;
    LUT4 i1_2_lut_rep_49_3_lut (.A(init_done_N_558), .B(n385[1]), .C(n5055), 
         .Z(n5387)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_49_3_lut.init = 16'hfefe;
    FD1P3AX RD_DATA_i0_i15 (.D(DB_out_15), .SP(SD_CLK_c_enable_46), .CK(SD_CLK_c), 
            .Q(tx_sd_data[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam RD_DATA_i0_i15.GSR = "DISABLED";
    FD1P3AX RD_DATA_i0_i14 (.D(DB_out_14), .SP(SD_CLK_c_enable_46), .CK(SD_CLK_c), 
            .Q(tx_sd_data[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam RD_DATA_i0_i14.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_85 (.A(init_done_N_558), .B(n385[1]), 
         .C(SD_ADR_TEMP[7]), .D(n5055), .Z(n2421)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_85.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_86 (.A(init_done_N_558), .B(n385[1]), 
         .C(SD_ADR_TEMP[6]), .D(n5055), .Z(n2419)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_86.init = 16'h0010;
    FD1P3AX RD_DATA_i0_i13 (.D(DB_out_13), .SP(SD_CLK_c_enable_46), .CK(SD_CLK_c), 
            .Q(tx_sd_data[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam RD_DATA_i0_i13.GSR = "DISABLED";
    FD1P3AX RD_DATA_i0_i12 (.D(DB_out_12), .SP(SD_CLK_c_enable_46), .CK(SD_CLK_c), 
            .Q(tx_sd_data[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam RD_DATA_i0_i12.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_87 (.A(init_done_N_558), .B(n385[1]), 
         .C(SD_ADR_TEMP[2]), .D(n5055), .Z(n2411)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_87.init = 16'h0010;
    LUT4 i1_2_lut_3_lut (.A(n385[7]), .B(n385[1]), .C(SD_ADR_TEMP[21]), 
         .Z(ADR_c_11)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(223[1] 280[8])
    defparam i1_2_lut_3_lut.init = 16'h2020;
    FD1P3AX RD_DATA_i0_i11 (.D(DB_out_11), .SP(SD_CLK_c_enable_46), .CK(SD_CLK_c), 
            .Q(tx_sd_data[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam RD_DATA_i0_i11.GSR = "DISABLED";
    FD1P3AX RD_DATA_i0_i10 (.D(DB_out_10), .SP(SD_CLK_c_enable_46), .CK(SD_CLK_c), 
            .Q(tx_sd_data[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam RD_DATA_i0_i10.GSR = "DISABLED";
    FD1P3AX RD_DATA_i0_i9 (.D(DB_out_9), .SP(SD_CLK_c_enable_46), .CK(SD_CLK_c), 
            .Q(tx_sd_data[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam RD_DATA_i0_i9.GSR = "DISABLED";
    FD1P3AX RD_DATA_i0_i8 (.D(DB_out_8), .SP(SD_CLK_c_enable_46), .CK(SD_CLK_c), 
            .Q(tx_sd_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam RD_DATA_i0_i8.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_88 (.A(n385[7]), .B(n385[1]), .C(SD_ADR_TEMP[19]), 
         .Z(ADR_c_9)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(223[1] 280[8])
    defparam i1_2_lut_3_lut_adj_88.init = 16'h2020;
    FD1P3IX SD_ADR_TEMP__i0 (.D(\rx_sd_adr[0] ), .SP(SD_CLK_c_enable_213), 
            .CD(n1734), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_ADR_TEMP__i0.GSR = "DISABLED";
    LUT4 i2974_2_lut_rep_71 (.A(rd_i_ack_N_577), .B(nreset_c), .Z(SD_CLK_c_enable_213)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2974_2_lut_rep_71.init = 16'h8888;
    FD1P3AX RD_DATA_i0_i7 (.D(DB_out_7), .SP(SD_CLK_c_enable_46), .CK(SD_CLK_c), 
            .Q(tx_sd_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam RD_DATA_i0_i7.GSR = "DISABLED";
    FD1P3AX RD_DATA_i0_i6 (.D(DB_out_6), .SP(SD_CLK_c_enable_46), .CK(SD_CLK_c), 
            .Q(tx_sd_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam RD_DATA_i0_i6.GSR = "DISABLED";
    FD1P3AX RD_DATA_i0_i5 (.D(DB_out_5), .SP(SD_CLK_c_enable_46), .CK(SD_CLK_c), 
            .Q(tx_sd_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam RD_DATA_i0_i5.GSR = "DISABLED";
    FD1P3AX RD_DATA_i0_i4 (.D(DB_out_4), .SP(SD_CLK_c_enable_46), .CK(SD_CLK_c), 
            .Q(tx_sd_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam RD_DATA_i0_i4.GSR = "DISABLED";
    FD1P3AX RD_DATA_i0_i3 (.D(DB_out_3), .SP(SD_CLK_c_enable_46), .CK(SD_CLK_c), 
            .Q(tx_sd_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam RD_DATA_i0_i3.GSR = "DISABLED";
    FD1P3AX RD_DATA_i0_i2 (.D(DB_out_2), .SP(SD_CLK_c_enable_46), .CK(SD_CLK_c), 
            .Q(tx_sd_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam RD_DATA_i0_i2.GSR = "DISABLED";
    FD1P3AX RD_DATA_i0_i1 (.D(DB_out_1), .SP(SD_CLK_c_enable_46), .CK(SD_CLK_c), 
            .Q(tx_sd_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam RD_DATA_i0_i1.GSR = "DISABLED";
    LUT4 i4063_2_lut_2_lut_3_lut_4_lut (.A(rd_i_ack_N_577), .B(nreset_c), 
         .C(rd_wt_operation[0]), .D(n5407), .Z(n1737)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;
    defparam i4063_2_lut_2_lut_3_lut_4_lut.init = 16'h0888;
    LUT4 i3032_4_lut (.A(n2423), .B(n385[1]), .C(SD_ADR_TEMP[18]), .D(n385[7]), 
         .Z(ADR_c_8)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(223[1] 280[8])
    defparam i3032_4_lut.init = 16'h3022;
    LUT4 i20_3_lut_rep_44_4_lut_4_lut (.A(\count[2]_derived_14 ), .B(n385[2]), 
         .C(n385[4]), .D(repeat_tim_flag), .Z(n5382)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A !(C)) */ ;
    defparam i20_3_lut_rep_44_4_lut_4_lut.init = 16'ha707;
    LUT4 i3031_4_lut (.A(n2421), .B(n385[1]), .C(SD_ADR_TEMP[17]), .D(n385[7]), 
         .Z(ADR_c_7)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(223[1] 280[8])
    defparam i3031_4_lut.init = 16'h3022;
    LUT4 reduce_or_206_i1_4_lut_4_lut (.A(\count[2]_derived_14 ), .B(n385[2]), 
         .C(repeat_tim_flag), .D(n385[4]), .Z(n419)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;
    defparam reduce_or_206_i1_4_lut_4_lut.init = 16'h8a88;
    FD1P3AX init_done_146 (.D(n5560), .SP(init_done_N_558), .CK(SD_CLK_c), 
            .Q(\repeat_tim_period[13] ));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam init_done_146.GSR = "ENABLED";
    FD1P3AX rd_o_stb_148 (.D(arb_delay_2__N_465[1]), .SP(nreset_c), .CK(SD_CLK_c), 
            .Q(\rd_wt_operation_1__N_835[1] ));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam rd_o_stb_148.GSR = "DISABLED";
    LUT4 i3030_4_lut (.A(n2419), .B(n385[1]), .C(SD_ADR_TEMP[16]), .D(n385[7]), 
         .Z(ADR_c_6)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(223[1] 280[8])
    defparam i3030_4_lut.init = 16'h3022;
    LUT4 i840_2_lut_4_lut_4_lut_4_lut (.A(\count[2]_derived_14 ), .B(n385[2]), 
         .C(n385[4]), .D(repeat_tim_flag), .Z(count_2_derived_14_enable_14)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A !(C (D))) */ ;
    defparam i840_2_lut_4_lut_4_lut_4_lut.init = 16'ha7ff;
    LUT4 i2992_2_lut (.A(arb_delay_2__N_465[1]), .B(nreset_c), .Z(SD_CLK_c_enable_46)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2992_2_lut.init = 16'h8888;
    FD1S3AY state_FSM_i1 (.D(n5076), .CK(SD_CLK_c), .Q(rd_i_ack_N_577));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam state_FSM_i1.GSR = "ENABLED";
    LUT4 i3029_4_lut (.A(n2417), .B(n385[1]), .C(SD_ADR_TEMP[15]), .D(n385[7]), 
         .Z(ADR_c_5)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(223[1] 280[8])
    defparam i3029_4_lut.init = 16'h3022;
    LUT4 i1_4_lut (.A(n385[1]), .B(n21), .C(SD_ADR_TEMP[14]), .D(n385[7]), 
         .Z(ADR_c_4)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam i1_4_lut.init = 16'h5044;
    LUT4 i3028_4_lut (.A(n5078), .B(n385[1]), .C(SD_ADR_TEMP[13]), .D(n385[7]), 
         .Z(ADR_c_3)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(223[1] 280[8])
    defparam i3028_4_lut.init = 16'h3022;
    LUT4 i3027_4_lut (.A(n2411), .B(n385[1]), .C(SD_ADR_TEMP[12]), .D(n385[7]), 
         .Z(ADR_c_2)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(223[1] 280[8])
    defparam i3027_4_lut.init = 16'h3022;
    LUT4 i3026_4_lut (.A(n2409), .B(n385[1]), .C(SD_ADR_TEMP[11]), .D(n385[7]), 
         .Z(ADR_c_1)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(223[1] 280[8])
    defparam i3026_4_lut.init = 16'h3022;
    LUT4 i2994_4_lut (.A(n2216), .B(n385[1]), .C(SD_ADR_TEMP[10]), .D(n385[7]), 
         .Z(ADR_c_0)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(223[1] 280[8])
    defparam i2994_4_lut.init = 16'h3022;
    LUT4 i4084_2_lut (.A(n1714[0]), .B(n1714[1]), .Z(DQM_c)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(347[30:56])
    defparam i4084_2_lut.init = 16'h1111;
    LUT4 i3_4_lut (.A(state[0]), .B(n5397), .C(n385[8]), .D(arb_delay[0]), 
         .Z(nRAS_c)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam i3_4_lut.init = 16'hfffd;
    FD1P3IX SD_DATA_TEMP__i0 (.D(rx_sd_data[0]), .SP(SD_CLK_c_enable_213), 
            .CD(n1737), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_DATA_TEMP__i0.GSR = "DISABLED";
    LUT4 i2_4_lut (.A(n1714[1]), .B(\count[2]_derived_14 ), .C(n1714[0]), 
         .D(n385[8]), .Z(n5084)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam i2_4_lut.init = 16'h0800;
    FD1P3AX wt_o_stb_147 (.D(arb_delay[2]), .SP(nreset_c), .CK(SD_CLK_c), 
            .Q(wt_o_stb1));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam wt_o_stb_147.GSR = "DISABLED";
    LUT4 i4078_3_lut (.A(init_done_N_558), .B(n385[1]), .C(arb_delay[2]), 
         .Z(nWE_c)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam i4078_3_lut.init = 16'h0101;
    LUT4 i1243_4_lut (.A(arb_delay[0]), .B(\count[2]_derived_14 ), .C(n2188), 
         .D(n4), .Z(n2189)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam i1243_4_lut.init = 16'hcfca;
    LUT4 i1242_2_lut (.A(n385[4]), .B(n385[2]), .Z(n2188)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1242_2_lut.init = 16'heeee;
    LUT4 i1_2_lut (.A(rd_i_ack_N_577), .B(init_done_N_558), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i4113_2_lut (.A(n385[2]), .B(n385[8]), .Z(n5160)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam i4113_2_lut.init = 16'heeee;
    LUT4 i23_2_lut_2_lut (.A(n1714[1]), .B(n1714[0]), .Z(n12_adj_1007)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(346[30:56])
    defparam i23_2_lut_2_lut.init = 16'h9999;
    LUT4 i2_3_lut_3_lut (.A(n1714[1]), .B(\count[2]_derived_14 ), .C(n1714[0]), 
         .Z(next_state_3__N_570)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(346[30:56])
    defparam i2_3_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_4_lut (.A(SD_CLK_c_enable_125), .B(refresh_tim_flag), 
         .C(\repeat_tim_period[13] ), .D(uts_ack1), .Z(n5092)) /* synthesis lut_function=(!(A (B+!(D))+!A (B+!(C (D))))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(140[10:57])
    defparam i1_2_lut_4_lut.init = 16'h3200;
    LUT4 i1244_4_lut_4_lut (.A(n1714[1]), .B(n385[2]), .C(\count[2]_derived_14 ), 
         .D(n1714[0]), .Z(n2190)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(346[30:56])
    defparam i1244_4_lut_4_lut.init = 16'hd0e0;
    LUT4 i2987_2_lut_3_lut_4_lut (.A(arb_delay[2]), .B(n385[10]), .C(SD_ADR_TEMP[22]), 
         .D(n385[7]), .Z(BA_c_0)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i2987_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i3025_2_lut_3_lut_4_lut (.A(arb_delay[2]), .B(n385[10]), .C(SD_ADR_TEMP[23]), 
         .D(n385[7]), .Z(BA_c_1)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i3025_2_lut_3_lut_4_lut.init = 16'hf0e0;
    PFUMX mux_618_i1 (.BLUT(n2189), .ALUT(n2190), .C0(n5160), .Z(delay_tim_reset));
    LUT4 i4081_3_lut_4_lut (.A(arb_delay[2]), .B(n385[10]), .C(init_done_N_558), 
         .D(refresh_tim_reset), .Z(nCAS_c)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i4081_3_lut_4_lut.init = 16'h0001;
    LUT4 i4107_2_lut (.A(n1714[0]), .B(n1714[1]), .Z(SD_P_DATA_15__N_423)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(346[8:17])
    defparam i4107_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_adj_89 (.A(\count[2]_derived_14 ), .B(repeat_tim_flag), 
         .C(n385[4]), .Z(n5099)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam i1_2_lut_3_lut_adj_89.init = 16'h8080;
    LUT4 i1_2_lut_rep_59 (.A(n385[10]), .B(n385[11]), .Z(n5397)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_59.init = 16'heeee;
    FD1P3IX SD_ADR_TEMP__i1 (.D(\rx_sd_adr[1] ), .SP(SD_CLK_c_enable_213), 
            .CD(n1734), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_ADR_TEMP__i1.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i2 (.D(\rx_sd_adr[2] ), .SP(SD_CLK_c_enable_213), 
            .CD(n1734), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_ADR_TEMP__i2.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i3 (.D(\rx_sd_adr[3] ), .SP(SD_CLK_c_enable_213), 
            .CD(n1734), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_ADR_TEMP__i3.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i4 (.D(\rx_sd_adr[4] ), .SP(SD_CLK_c_enable_213), 
            .CD(n1734), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_ADR_TEMP__i4.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i5 (.D(\rx_sd_adr[5] ), .SP(SD_CLK_c_enable_213), 
            .CD(n1734), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_ADR_TEMP__i5.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i6 (.D(\rx_sd_adr[6] ), .SP(SD_CLK_c_enable_213), 
            .CD(n1734), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_ADR_TEMP__i6.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i7 (.D(\rx_sd_adr[7] ), .SP(SD_CLK_c_enable_213), 
            .CD(n1734), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_ADR_TEMP__i7.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i8 (.D(\rx_sd_adr[8] ), .SP(SD_CLK_c_enable_213), 
            .CD(n1734), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_ADR_TEMP__i8.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i10 (.D(\rx_sd_adr[10] ), .SP(SD_CLK_c_enable_213), 
            .CD(n1734), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_ADR_TEMP__i10.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i11 (.D(\rx_sd_adr[11] ), .SP(SD_CLK_c_enable_213), 
            .CD(n1734), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_ADR_TEMP__i11.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i12 (.D(\rx_sd_adr[12] ), .SP(SD_CLK_c_enable_213), 
            .CD(n1734), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_ADR_TEMP__i12.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i13 (.D(\rx_sd_adr[13] ), .SP(SD_CLK_c_enable_213), 
            .CD(n1734), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_ADR_TEMP__i13.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i14 (.D(\rx_sd_adr[14] ), .SP(SD_CLK_c_enable_213), 
            .CD(n1734), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_ADR_TEMP__i14.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i15 (.D(\rx_sd_adr[15] ), .SP(SD_CLK_c_enable_213), 
            .CD(n1734), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_ADR_TEMP__i15.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i16 (.D(\rx_sd_adr[16] ), .SP(SD_CLK_c_enable_213), 
            .CD(n1734), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_ADR_TEMP__i16.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i17 (.D(\rx_sd_adr[17] ), .SP(SD_CLK_c_enable_213), 
            .CD(n1734), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_ADR_TEMP__i17.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i18 (.D(\rx_sd_adr[18] ), .SP(SD_CLK_c_enable_213), 
            .CD(n1734), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_ADR_TEMP__i18.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i19 (.D(\rx_sd_adr[19] ), .SP(SD_CLK_c_enable_213), 
            .CD(n1734), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_ADR_TEMP__i19.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i20 (.D(\rx_sd_adr[20] ), .SP(SD_CLK_c_enable_213), 
            .CD(n1734), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_ADR_TEMP__i20.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i21 (.D(\rx_sd_adr[21] ), .SP(SD_CLK_c_enable_213), 
            .CD(n1734), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_ADR_TEMP__i21.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i22 (.D(\rx_sd_adr[22] ), .SP(SD_CLK_c_enable_213), 
            .CD(n1734), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_ADR_TEMP__i22.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i23 (.D(\rx_sd_adr[23] ), .SP(SD_CLK_c_enable_213), 
            .CD(n1734), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_ADR_TEMP__i23.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut_adj_90 (.A(n385[10]), .B(n385[11]), .C(count[0]), 
         .D(count[1]), .Z(n9)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (D))) */ ;
    defparam i1_3_lut_4_lut_adj_90.init = 16'hf100;
    LUT4 i1_3_lut_4_lut_adj_91 (.A(n385[10]), .B(n385[11]), .C(n385[4]), 
         .D(refresh_tim_reset), .Z(delay_tim_period[3])) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_91.init = 16'h1110;
    FD1S3IX state_FSM_i2 (.D(rd_i_ack_N_577), .CK(SD_CLK_c), .CD(n5383), 
            .Q(n385[1]));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam state_FSM_i2.GSR = "ENABLED";
    LUT4 i3007_2_lut_rep_72 (.A(arb_delay_2__N_465[1]), .B(arb_delay[2]), 
         .Z(n5555)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(338[30] 339[77])
    defparam i3007_2_lut_rep_72.init = 16'h2222;
    FD1S3AX state_FSM_i3 (.D(n2200), .CK(SD_CLK_c), .Q(n385[2]));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i4 (.D(n419), .CK(SD_CLK_c), .Q(refresh_tim_reset));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3AX state_FSM_i5 (.D(n2202), .CK(SD_CLK_c), .Q(n385[4]));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3IX state_FSM_i6 (.D(n5099), .CK(SD_CLK_c), .CD(\repeat_tim_period[13] ), 
            .Q(init_done_N_558));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam state_FSM_i6.GSR = "ENABLED";
    FD1S3AX state_FSM_i7 (.D(n2204), .CK(SD_CLK_c), .Q(n385[6]));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam state_FSM_i7.GSR = "ENABLED";
    FD1S3AX state_FSM_i8 (.D(n5092), .CK(SD_CLK_c), .Q(n385[7]));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam state_FSM_i8.GSR = "ENABLED";
    FD1S3AX state_FSM_i9 (.D(n2206), .CK(SD_CLK_c), .Q(n385[8]));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam state_FSM_i9.GSR = "ENABLED";
    FD1S3AX state_FSM_i11 (.D(n5084), .CK(SD_CLK_c), .Q(n385[10]));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam state_FSM_i11.GSR = "ENABLED";
    FD1S3AX state_FSM_i12 (.D(n2208), .CK(SD_CLK_c), .Q(n385[11]));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam state_FSM_i12.GSR = "ENABLED";
    FD1S3IX state_FSM_i13 (.D(n385[11]), .CK(SD_CLK_c), .CD(delay_tim_flag_N_589), 
            .Q(arb_delay_2__N_465[1]));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam state_FSM_i13.GSR = "ENABLED";
    LUT4 i2959_2_lut_3_lut (.A(n5407), .B(rd_wt_operation[0]), .C(n4060), 
         .Z(n51[0])) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(109[10:30])
    defparam i2959_2_lut_3_lut.init = 16'h0808;
    LUT4 i1254_3_lut (.A(n385[2]), .B(n385[1]), .C(\count[2]_derived_14 ), 
         .Z(n2200)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam i1254_3_lut.init = 16'hcece;
    LUT4 i1_2_lut_rep_70 (.A(refresh_tim_reset), .B(n385[11]), .Z(n5408)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(223[1] 280[8])
    defparam i1_2_lut_rep_70.init = 16'heeee;
    LUT4 i2_3_lut_4_lut (.A(refresh_tim_reset), .B(n385[11]), .C(n385[7]), 
         .D(nWE_c), .Z(state[0])) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(223[1] 280[8])
    defparam i2_3_lut_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_3_lut_4_lut_adj_92 (.A(init_done_N_558), .B(n385[1]), 
         .C(SD_ADR_TEMP[0]), .D(n5055), .Z(n2216)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_92.init = 16'h0010;
    FD1P3IX SD_DATA_TEMP__i1 (.D(rx_sd_data[1]), .SP(SD_CLK_c_enable_213), 
            .CD(n1737), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_DATA_TEMP__i1.GSR = "DISABLED";
    LUT4 i3_4_lut_4_lut (.A(n5407), .B(rd_wt_operation[0]), .C(rd_wt_operation[1]), 
         .D(n4060), .Z(n5060)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(109[10:30])
    defparam i3_4_lut_4_lut.init = 16'h0020;
    LUT4 arb_delay_2__N_572_I_0_2_lut_rep_53 (.A(arb_delay_2__N_465[1]), .B(arb_delay[2]), 
         .Z(n5391)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(337[30:62])
    defparam arb_delay_2__N_572_I_0_2_lut_rep_53.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_93 (.A(init_done_N_558), .B(n385[1]), .C(SD_ADR_TEMP[4]), 
         .D(n5055), .Z(n21)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;
    defparam i1_3_lut_4_lut_adj_93.init = 16'heefe;
    LUT4 i1256_3_lut (.A(\count[2]_derived_14 ), .B(refresh_tim_reset), 
         .C(n385[4]), .Z(n2202)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam i1256_3_lut.init = 16'hdcdc;
    LUT4 i1_4_lut_adj_94 (.A(n385[1]), .B(n5387), .C(SD_ADR_TEMP[20]), 
         .D(n385[7]), .Z(ADR_c_10)) /* synthesis lut_function=(A+(B (C (D))+!B (C+!(D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam i1_4_lut_adj_94.init = 16'hfabb;
    LUT4 i1258_3_lut (.A(n385[6]), .B(init_done_N_558), .C(\count[2]_derived_14 ), 
         .Z(n2204)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam i1258_3_lut.init = 16'hcece;
    FD1P3IX SD_DATA_TEMP__i2 (.D(rx_sd_data[2]), .SP(SD_CLK_c_enable_213), 
            .CD(n1737), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_DATA_TEMP__i2.GSR = "DISABLED";
    FD1P3IX SD_DATA_TEMP__i3 (.D(rx_sd_data[3]), .SP(SD_CLK_c_enable_213), 
            .CD(n1737), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_DATA_TEMP__i3.GSR = "DISABLED";
    FD1P3IX SD_DATA_TEMP__i4 (.D(rx_sd_data[4]), .SP(SD_CLK_c_enable_213), 
            .CD(n1737), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_DATA_TEMP__i4.GSR = "DISABLED";
    FD1P3IX SD_DATA_TEMP__i5 (.D(rx_sd_data[5]), .SP(SD_CLK_c_enable_213), 
            .CD(n1737), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_DATA_TEMP__i5.GSR = "DISABLED";
    FD1P3IX SD_DATA_TEMP__i6 (.D(rx_sd_data[6]), .SP(SD_CLK_c_enable_213), 
            .CD(n1737), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_DATA_TEMP__i6.GSR = "DISABLED";
    FD1P3IX SD_DATA_TEMP__i7 (.D(rx_sd_data[7]), .SP(SD_CLK_c_enable_213), 
            .CD(n1737), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_DATA_TEMP__i7.GSR = "DISABLED";
    FD1P3IX SD_DATA_TEMP__i8 (.D(rx_sd_data[8]), .SP(SD_CLK_c_enable_213), 
            .CD(n1737), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_DATA_TEMP__i8.GSR = "DISABLED";
    FD1P3IX SD_DATA_TEMP__i9 (.D(rx_sd_data[9]), .SP(SD_CLK_c_enable_213), 
            .CD(n1737), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_DATA_TEMP__i9.GSR = "DISABLED";
    FD1P3IX SD_DATA_TEMP__i10 (.D(rx_sd_data[10]), .SP(SD_CLK_c_enable_213), 
            .CD(n1737), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_DATA_TEMP__i10.GSR = "DISABLED";
    FD1P3IX SD_DATA_TEMP__i11 (.D(rx_sd_data[11]), .SP(SD_CLK_c_enable_213), 
            .CD(n1737), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_DATA_TEMP__i11.GSR = "DISABLED";
    FD1P3IX SD_DATA_TEMP__i12 (.D(rx_sd_data[12]), .SP(SD_CLK_c_enable_213), 
            .CD(n1737), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_DATA_TEMP__i12.GSR = "DISABLED";
    FD1P3IX SD_DATA_TEMP__i13 (.D(rx_sd_data[13]), .SP(SD_CLK_c_enable_213), 
            .CD(n1737), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_DATA_TEMP__i13.GSR = "DISABLED";
    FD1P3IX SD_DATA_TEMP__i14 (.D(rx_sd_data[14]), .SP(SD_CLK_c_enable_213), 
            .CD(n1737), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_DATA_TEMP__i14.GSR = "DISABLED";
    FD1P3IX SD_DATA_TEMP__i15 (.D(rx_sd_data[15]), .SP(SD_CLK_c_enable_213), 
            .CD(n1737), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam SD_DATA_TEMP__i15.GSR = "DISABLED";
    LUT4 i1262_3_lut (.A(n385[11]), .B(n385[10]), .C(\count[2]_derived_14 ), 
         .Z(n2208)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam i1262_3_lut.init = 16'hcece;
    LUT4 i1992_1_lut (.A(n385[8]), .Z(n3006)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam i1992_1_lut.init = 16'h5555;
    LUT4 i1260_4_lut (.A(n385[8]), .B(n385[7]), .C(\count[2]_derived_14 ), 
         .D(n12_adj_1007), .Z(n2206)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam i1260_4_lut.init = 16'heece;
    FD1S3IX state_FSM_i10 (.D(next_state_3__N_570), .CK(SD_CLK_c), .CD(n3006), 
            .Q(arb_delay[2]));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam state_FSM_i10.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_95 (.A(arb_delay[2]), .B(arb_delay_2__N_465[1]), .Z(arb_delay[0])) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam i1_2_lut_adj_95.init = 16'heeee;
    LUT4 i1_4_lut_adj_96 (.A(n5391), .B(\count[2]_derived_14 ), .C(n14), 
         .D(n10), .Z(n5076)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam i1_4_lut_adj_96.init = 16'hfefa;
    LUT4 i2_4_lut_adj_97 (.A(n4060), .B(rd_i_ack_N_577), .C(n5390), .D(n5383), 
         .Z(n14)) /* synthesis lut_function=(A (B (D))+!A !((C+!(D))+!B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam i2_4_lut_adj_97.init = 16'h8c00;
    LUT4 i1_4_lut_adj_98 (.A(\repeat_tim_period[13] ), .B(n385[6]), .C(n385[4]), 
         .D(repeat_tim_flag), .Z(n10)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(138[1] 218[8])
    defparam i1_4_lut_adj_98.init = 16'heccc;
    FD1P3AX rd_wt_operation_i0_i1 (.D(n5060), .SP(SD_CLK_c_enable_213), 
            .CK(SD_CLK_c), .Q(n1714[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(101[6] 128[4])
    defparam rd_wt_operation_i0_i1.GSR = "DISABLED";
    \Timer(SIZE=14)  repeatTimer (.GND_net(GND_net), .\count[2]_derived_14 (\count[2]_derived_14 ), 
            .\count[2]_derived_14_enable_14 (count_2_derived_14_enable_14), 
            .n5382(n5382), .\repeat_tim_period[13] (\repeat_tim_period[13] ), 
            .repeat_tim_flag(repeat_tim_flag)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(320[13] 327[2])
    \Timer(SIZE=24)  refreshTimer (.SD_CLK_c(SD_CLK_c), .SD_CLK_c_enable_128(SD_CLK_c_enable_128), 
            .refresh_tim_reset(refresh_tim_reset), .refresh_tim_flag(refresh_tim_flag), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(299[13] 306[2])
    Timer initTimer (.SD_CLK_c(SD_CLK_c), .n5560(n5560), .SD_CLK_c_enable_125(SD_CLK_c_enable_125), 
          .\repeat_tim_period[13] (\repeat_tim_period[13] ), .refresh_tim_flag(refresh_tim_flag), 
          .n5383(n5383), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(290[13] 297[2])
    \Timer(SIZE=4)  delayTimer (.count({Open_18, Open_19, Open_20, count[0]}), 
            .SD_CLK_c(SD_CLK_c), .delay_tim_reset(delay_tim_reset), .n9(n9), 
            .\delay_tim_period[3] (delay_tim_period[3]), .\count[2]_derived_14 (\count[2]_derived_14 ), 
            .delay_tim_flag_N_589(delay_tim_flag_N_589), .\count[1] (count[1]), 
            .SD_CLK_c_enable_131(SD_CLK_c_enable_131)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(308[12] 315[2])
    bankArbiter arbBank (.SD_CLK_c(SD_CLK_c), .\arb_delay[2] (arb_delay[2]), 
            .\arb_delay_2__N_465[1] (arb_delay_2__N_465[1]), .n5555(n5555), 
            .\arb_delay[0] (arb_delay[0]), .\SD_ADR_TEMP[22] (SD_ADR_TEMP[22]), 
            .\SD_ADR_TEMP[23] (SD_ADR_TEMP[23]), .n4060(n4060)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(329[13] 335[2])
    
endmodule
//
// Verilog Description of module \Timer(SIZE=14) 
//

module \Timer(SIZE=14)  (GND_net, \count[2]_derived_14 , \count[2]_derived_14_enable_14 , 
            n5382, \repeat_tim_period[13] , repeat_tim_flag) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input \count[2]_derived_14 ;
    input \count[2]_derived_14_enable_14 ;
    input n5382;
    input \repeat_tim_period[13] ;
    output repeat_tim_flag;
    
    wire \count[2]_derived_14  /* synthesis is_clock=1, SET_AS_NETWORK=\all_modules1/sdram_controller1/delayTimer/count[2]_derived_14 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(20[25:30])
    
    wire n4722;
    wire [13:0]count;   // c:/lscc/sd_ram_uart/src/timer.v(20[25:30])
    wire [13:0]n6;
    
    wire n4721, n4720, n4690, n4691, n4719, n4689, n4688, n4718, 
        n4687, n4717, n4716;
    
    CCU2D add_6_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4722), 
          .S0(n6[13]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_15.INIT0 = 16'h5aaa;
    defparam add_6_15.INIT1 = 16'h0000;
    defparam add_6_15.INJECT1_0 = "NO";
    defparam add_6_15.INJECT1_1 = "NO";
    CCU2D add_6_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4721), .COUT(n4722), .S0(n6[11]), .S1(n6[12]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_13.INIT0 = 16'h5aaa;
    defparam add_6_13.INIT1 = 16'h5aaa;
    defparam add_6_13.INJECT1_0 = "NO";
    defparam add_6_13.INJECT1_1 = "NO";
    CCU2D add_6_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4720), .COUT(n4721), .S0(n6[9]), .S1(n6[10]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_11.INIT0 = 16'h5aaa;
    defparam add_6_11.INIT1 = 16'h5aaa;
    defparam add_6_11.INJECT1_0 = "NO";
    defparam add_6_11.INJECT1_1 = "NO";
    CCU2D sub_643_add_2_10 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4690), .COUT(n4691));
    defparam sub_643_add_2_10.INIT0 = 16'h5555;
    defparam sub_643_add_2_10.INIT1 = 16'h5555;
    defparam sub_643_add_2_10.INJECT1_0 = "NO";
    defparam sub_643_add_2_10.INJECT1_1 = "NO";
    CCU2D add_6_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4719), 
          .COUT(n4720), .S0(n6[7]), .S1(n6[8]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_9.INIT0 = 16'h5aaa;
    defparam add_6_9.INIT1 = 16'h5aaa;
    defparam add_6_9.INJECT1_0 = "NO";
    defparam add_6_9.INJECT1_1 = "NO";
    CCU2D sub_643_add_2_8 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4689), .COUT(n4690));
    defparam sub_643_add_2_8.INIT0 = 16'h5555;
    defparam sub_643_add_2_8.INIT1 = 16'h5555;
    defparam sub_643_add_2_8.INJECT1_0 = "NO";
    defparam sub_643_add_2_8.INJECT1_1 = "NO";
    FD1P3IX count__i0 (.D(n6[0]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(n5382), .CK(\count[2]_derived_14 ), .Q(count[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=320, LSE_RLINE=327 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i0.GSR = "ENABLED";
    CCU2D sub_643_add_2_6 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4688), .COUT(n4689));
    defparam sub_643_add_2_6.INIT0 = 16'h5555;
    defparam sub_643_add_2_6.INIT1 = 16'h5555;
    defparam sub_643_add_2_6.INJECT1_0 = "NO";
    defparam sub_643_add_2_6.INJECT1_1 = "NO";
    CCU2D add_6_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4718), 
          .COUT(n4719), .S0(n6[5]), .S1(n6[6]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_7.INIT0 = 16'h5aaa;
    defparam add_6_7.INIT1 = 16'h5aaa;
    defparam add_6_7.INJECT1_0 = "NO";
    defparam add_6_7.INJECT1_1 = "NO";
    CCU2D sub_643_add_2_4 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4687), .COUT(n4688));
    defparam sub_643_add_2_4.INIT0 = 16'h5555;
    defparam sub_643_add_2_4.INIT1 = 16'h5555;
    defparam sub_643_add_2_4.INJECT1_0 = "NO";
    defparam sub_643_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_643_add_2_2 (.A0(count[3]), .B0(\repeat_tim_period[13] ), 
          .C0(GND_net), .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n4687));
    defparam sub_643_add_2_2.INIT0 = 16'h1000;
    defparam sub_643_add_2_2.INIT1 = 16'h5555;
    defparam sub_643_add_2_2.INJECT1_0 = "NO";
    defparam sub_643_add_2_2.INJECT1_1 = "NO";
    CCU2D add_6_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4717), 
          .COUT(n4718), .S0(n6[3]), .S1(n6[4]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_5.INIT0 = 16'h5aaa;
    defparam add_6_5.INIT1 = 16'h5aaa;
    defparam add_6_5.INJECT1_0 = "NO";
    defparam add_6_5.INJECT1_1 = "NO";
    CCU2D add_6_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4716), 
          .COUT(n4717), .S0(n6[1]), .S1(n6[2]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_3.INIT0 = 16'h5aaa;
    defparam add_6_3.INIT1 = 16'h5aaa;
    defparam add_6_3.INJECT1_0 = "NO";
    defparam add_6_3.INJECT1_1 = "NO";
    CCU2D add_6_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n4716), 
          .S1(n6[0]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_1.INIT0 = 16'hF000;
    defparam add_6_1.INIT1 = 16'h5555;
    defparam add_6_1.INJECT1_0 = "NO";
    defparam add_6_1.INJECT1_1 = "NO";
    FD1P3IX count__i1 (.D(n6[1]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(n5382), .CK(\count[2]_derived_14 ), .Q(count[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=320, LSE_RLINE=327 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i1.GSR = "ENABLED";
    FD1P3IX count__i2 (.D(n6[2]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(n5382), .CK(\count[2]_derived_14 ), .Q(count[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=320, LSE_RLINE=327 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i2.GSR = "ENABLED";
    FD1P3IX count__i3 (.D(n6[3]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(n5382), .CK(\count[2]_derived_14 ), .Q(count[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=320, LSE_RLINE=327 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i3.GSR = "ENABLED";
    FD1P3IX count__i4 (.D(n6[4]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(n5382), .CK(\count[2]_derived_14 ), .Q(count[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=320, LSE_RLINE=327 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i4.GSR = "ENABLED";
    FD1P3IX count__i5 (.D(n6[5]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(n5382), .CK(\count[2]_derived_14 ), .Q(count[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=320, LSE_RLINE=327 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i5.GSR = "ENABLED";
    FD1P3IX count__i6 (.D(n6[6]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(n5382), .CK(\count[2]_derived_14 ), .Q(count[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=320, LSE_RLINE=327 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i6.GSR = "ENABLED";
    FD1P3IX count__i7 (.D(n6[7]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(n5382), .CK(\count[2]_derived_14 ), .Q(count[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=320, LSE_RLINE=327 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i7.GSR = "ENABLED";
    FD1P3IX count__i8 (.D(n6[8]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(n5382), .CK(\count[2]_derived_14 ), .Q(count[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=320, LSE_RLINE=327 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i8.GSR = "ENABLED";
    FD1P3IX count__i9 (.D(n6[9]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(n5382), .CK(\count[2]_derived_14 ), .Q(count[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=320, LSE_RLINE=327 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i9.GSR = "ENABLED";
    FD1P3IX count__i10 (.D(n6[10]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(n5382), .CK(\count[2]_derived_14 ), .Q(count[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=320, LSE_RLINE=327 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i10.GSR = "ENABLED";
    FD1P3IX count__i11 (.D(n6[11]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(n5382), .CK(\count[2]_derived_14 ), .Q(count[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=320, LSE_RLINE=327 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i11.GSR = "ENABLED";
    FD1P3IX count__i12 (.D(n6[12]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(n5382), .CK(\count[2]_derived_14 ), .Q(count[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=320, LSE_RLINE=327 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i12.GSR = "ENABLED";
    FD1P3IX count__i13 (.D(n6[13]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(n5382), .CK(\count[2]_derived_14 ), .Q(count[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=320, LSE_RLINE=327 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i13.GSR = "ENABLED";
    CCU2D sub_643_add_2_12 (.A0(count[13]), .B0(\repeat_tim_period[13] ), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4691), .S1(repeat_tim_flag));
    defparam sub_643_add_2_12.INIT0 = 16'h5999;
    defparam sub_643_add_2_12.INIT1 = 16'h0000;
    defparam sub_643_add_2_12.INJECT1_0 = "NO";
    defparam sub_643_add_2_12.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module \Timer(SIZE=24) 
//

module \Timer(SIZE=24)  (SD_CLK_c, SD_CLK_c_enable_128, refresh_tim_reset, 
            refresh_tim_flag, GND_net) /* synthesis syn_module_defined=1 */ ;
    input SD_CLK_c;
    input SD_CLK_c_enable_128;
    input refresh_tim_reset;
    output refresh_tim_flag;
    input GND_net;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(31[6:16])
    wire [23:0]count;   // c:/lscc/sd_ram_uart/src/timer.v(20[25:30])
    wire [23:0]n6;
    
    wire n9, n14_adj_1001, n10_adj_1002, n5, n4715, n4714, n4713, 
        n11_adj_1004, n12_adj_1005, n10_adj_1006, n4712, n4711, n4710, 
        n4709, n4708, n4707, n4706, n4705, n4704;
    
    FD1P3IX count__i6 (.D(n6[6]), .SP(SD_CLK_c_enable_128), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=306 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i6.GSR = "ENABLED";
    FD1P3IX count__i5 (.D(n6[5]), .SP(SD_CLK_c_enable_128), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=306 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i5.GSR = "ENABLED";
    FD1P3IX count__i4 (.D(n6[4]), .SP(SD_CLK_c_enable_128), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=306 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i4.GSR = "ENABLED";
    FD1P3IX count__i3 (.D(n6[3]), .SP(SD_CLK_c_enable_128), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=306 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i3.GSR = "ENABLED";
    FD1P3IX count__i0 (.D(n6[0]), .SP(SD_CLK_c_enable_128), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=306 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i0.GSR = "ENABLED";
    FD1P3IX count__i20 (.D(n6[20]), .SP(SD_CLK_c_enable_128), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=306 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i20.GSR = "ENABLED";
    FD1P3IX count__i2 (.D(n6[2]), .SP(SD_CLK_c_enable_128), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=306 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i2.GSR = "ENABLED";
    FD1P3IX count__i1 (.D(n6[1]), .SP(SD_CLK_c_enable_128), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=306 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i1.GSR = "ENABLED";
    FD1P3IX count__i19 (.D(n6[19]), .SP(SD_CLK_c_enable_128), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=306 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i19.GSR = "ENABLED";
    FD1P3IX count__i18 (.D(n6[18]), .SP(SD_CLK_c_enable_128), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=306 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i18.GSR = "ENABLED";
    FD1P3IX count__i17 (.D(n6[17]), .SP(SD_CLK_c_enable_128), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=306 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i17.GSR = "ENABLED";
    FD1P3IX count__i16 (.D(n6[16]), .SP(SD_CLK_c_enable_128), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=306 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i16.GSR = "ENABLED";
    FD1P3IX count__i15 (.D(n6[15]), .SP(SD_CLK_c_enable_128), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=306 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i15.GSR = "ENABLED";
    FD1P3IX count__i14 (.D(n6[14]), .SP(SD_CLK_c_enable_128), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=306 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i14.GSR = "ENABLED";
    FD1P3IX count__i13 (.D(n6[13]), .SP(SD_CLK_c_enable_128), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=306 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i13.GSR = "ENABLED";
    FD1P3IX count__i12 (.D(n6[12]), .SP(SD_CLK_c_enable_128), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=306 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i12.GSR = "ENABLED";
    FD1P3IX count__i11 (.D(n6[11]), .SP(SD_CLK_c_enable_128), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=306 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i11.GSR = "ENABLED";
    FD1P3IX count__i10 (.D(n6[10]), .SP(SD_CLK_c_enable_128), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=306 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i10.GSR = "ENABLED";
    FD1P3IX count__i9 (.D(n6[9]), .SP(SD_CLK_c_enable_128), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=306 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i9.GSR = "ENABLED";
    FD1P3IX count__i8 (.D(n6[8]), .SP(SD_CLK_c_enable_128), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=306 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i8.GSR = "ENABLED";
    FD1P3IX count__i7 (.D(n6[7]), .SP(SD_CLK_c_enable_128), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=306 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i7.GSR = "ENABLED";
    LUT4 i914_4_lut (.A(n9), .B(count[23]), .C(n14_adj_1001), .D(n10_adj_1002), 
         .Z(refresh_tim_flag)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i914_4_lut.init = 16'hccc8;
    LUT4 i1_4_lut (.A(n5), .B(count[19]), .C(count[15]), .D(count[13]), 
         .Z(n9)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut.init = 16'heccc;
    LUT4 i6_4_lut (.A(count[17]), .B(count[20]), .C(count[18]), .D(count[16]), 
         .Z(n14_adj_1001)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    CCU2D add_6_25 (.A0(count[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4715), 
          .S0(n6[23]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_25.INIT0 = 16'h5aaa;
    defparam add_6_25.INIT1 = 16'h0000;
    defparam add_6_25.INJECT1_0 = "NO";
    defparam add_6_25.INJECT1_1 = "NO";
    CCU2D add_6_23 (.A0(count[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4714), .COUT(n4715), .S0(n6[21]), .S1(n6[22]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_23.INIT0 = 16'h5aaa;
    defparam add_6_23.INIT1 = 16'h5aaa;
    defparam add_6_23.INJECT1_0 = "NO";
    defparam add_6_23.INJECT1_1 = "NO";
    LUT4 i2_2_lut (.A(count[21]), .B(count[22]), .Z(n10_adj_1002)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    CCU2D add_6_21 (.A0(count[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4713), .COUT(n4714), .S0(n6[19]), .S1(n6[20]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_21.INIT0 = 16'h5aaa;
    defparam add_6_21.INIT1 = 16'h5aaa;
    defparam add_6_21.INJECT1_0 = "NO";
    defparam add_6_21.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_82 (.A(n11_adj_1004), .B(count[14]), .C(count[12]), 
         .D(n12_adj_1005), .Z(n5)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_82.init = 16'hc8c0;
    LUT4 i4_3_lut (.A(count[7]), .B(count[6]), .C(count[10]), .Z(n11_adj_1004)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i4_3_lut.init = 16'h8080;
    LUT4 i5_4_lut (.A(count[4]), .B(n10_adj_1006), .C(count[8]), .D(count[5]), 
         .Z(n12_adj_1005)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i5_4_lut.init = 16'hc080;
    LUT4 i3_2_lut (.A(count[9]), .B(count[11]), .Z(n10_adj_1006)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3_2_lut.init = 16'h8888;
    CCU2D add_6_19 (.A0(count[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4712), .COUT(n4713), .S0(n6[17]), .S1(n6[18]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_19.INIT0 = 16'h5aaa;
    defparam add_6_19.INIT1 = 16'h5aaa;
    defparam add_6_19.INJECT1_0 = "NO";
    defparam add_6_19.INJECT1_1 = "NO";
    FD1P3IX count__i21 (.D(n6[21]), .SP(SD_CLK_c_enable_128), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=306 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i21.GSR = "ENABLED";
    FD1P3IX count__i22 (.D(n6[22]), .SP(SD_CLK_c_enable_128), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=306 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i22.GSR = "ENABLED";
    FD1P3IX count__i23 (.D(n6[23]), .SP(SD_CLK_c_enable_128), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=306 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i23.GSR = "ENABLED";
    CCU2D add_6_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4711), .COUT(n4712), .S0(n6[15]), .S1(n6[16]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_17.INIT0 = 16'h5aaa;
    defparam add_6_17.INIT1 = 16'h5aaa;
    defparam add_6_17.INJECT1_0 = "NO";
    defparam add_6_17.INJECT1_1 = "NO";
    CCU2D add_6_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4710), .COUT(n4711), .S0(n6[13]), .S1(n6[14]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_15.INIT0 = 16'h5aaa;
    defparam add_6_15.INIT1 = 16'h5aaa;
    defparam add_6_15.INJECT1_0 = "NO";
    defparam add_6_15.INJECT1_1 = "NO";
    CCU2D add_6_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4709), .COUT(n4710), .S0(n6[11]), .S1(n6[12]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_13.INIT0 = 16'h5aaa;
    defparam add_6_13.INIT1 = 16'h5aaa;
    defparam add_6_13.INJECT1_0 = "NO";
    defparam add_6_13.INJECT1_1 = "NO";
    CCU2D add_6_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4708), .COUT(n4709), .S0(n6[9]), .S1(n6[10]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_11.INIT0 = 16'h5aaa;
    defparam add_6_11.INIT1 = 16'h5aaa;
    defparam add_6_11.INJECT1_0 = "NO";
    defparam add_6_11.INJECT1_1 = "NO";
    CCU2D add_6_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4707), 
          .COUT(n4708), .S0(n6[7]), .S1(n6[8]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_9.INIT0 = 16'h5aaa;
    defparam add_6_9.INIT1 = 16'h5aaa;
    defparam add_6_9.INJECT1_0 = "NO";
    defparam add_6_9.INJECT1_1 = "NO";
    CCU2D add_6_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4706), 
          .COUT(n4707), .S0(n6[5]), .S1(n6[6]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_7.INIT0 = 16'h5aaa;
    defparam add_6_7.INIT1 = 16'h5aaa;
    defparam add_6_7.INJECT1_0 = "NO";
    defparam add_6_7.INJECT1_1 = "NO";
    CCU2D add_6_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4705), 
          .COUT(n4706), .S0(n6[3]), .S1(n6[4]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_5.INIT0 = 16'h5aaa;
    defparam add_6_5.INIT1 = 16'h5aaa;
    defparam add_6_5.INJECT1_0 = "NO";
    defparam add_6_5.INJECT1_1 = "NO";
    CCU2D add_6_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4704), 
          .COUT(n4705), .S0(n6[1]), .S1(n6[2]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_3.INIT0 = 16'h5aaa;
    defparam add_6_3.INIT1 = 16'h5aaa;
    defparam add_6_3.INJECT1_0 = "NO";
    defparam add_6_3.INJECT1_1 = "NO";
    CCU2D add_6_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n4704), 
          .S1(n6[0]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_1.INIT0 = 16'hF000;
    defparam add_6_1.INIT1 = 16'h5555;
    defparam add_6_1.INJECT1_0 = "NO";
    defparam add_6_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module Timer
//

module Timer (SD_CLK_c, n5560, SD_CLK_c_enable_125, \repeat_tim_period[13] , 
            refresh_tim_flag, n5383, GND_net) /* synthesis syn_module_defined=1 */ ;
    input SD_CLK_c;
    input n5560;
    output SD_CLK_c_enable_125;
    input \repeat_tim_period[13] ;
    input refresh_tim_flag;
    output n5383;
    input GND_net;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(31[6:16])
    wire [15:0]count;   // c:/lscc/sd_ram_uart/src/timer.v(20[25:30])
    
    wire n12, n10, n6, SD_CLK_c_enable_110;
    wire [15:0]n69;
    
    wire n30, n4703, n4702, n4701, n24, n4700, n4699, n4698, 
        n4697, n4696;
    
    LUT4 i4_4_lut (.A(count[7]), .B(count[6]), .C(n12), .D(count[9]), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i926_4_lut (.A(n6), .B(count[5]), .C(count[4]), .D(count[3]), 
         .Z(n12)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i926_4_lut.init = 16'hc8c0;
    LUT4 i908_3_lut (.A(count[0]), .B(count[2]), .C(count[1]), .Z(n6)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i908_3_lut.init = 16'hecec;
    FD1P3AX count_815__i15 (.D(n5560), .SP(SD_CLK_c_enable_110), .CK(SD_CLK_c), 
            .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_815__i15.GSR = "ENABLED";
    FD1P3AX count_815__i14 (.D(n69[14]), .SP(SD_CLK_c_enable_125), .CK(SD_CLK_c), 
            .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_815__i14.GSR = "ENABLED";
    FD1P3AX count_815__i13 (.D(n69[13]), .SP(SD_CLK_c_enable_125), .CK(SD_CLK_c), 
            .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_815__i13.GSR = "ENABLED";
    FD1P3AX count_815__i12 (.D(n69[12]), .SP(SD_CLK_c_enable_125), .CK(SD_CLK_c), 
            .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_815__i12.GSR = "ENABLED";
    FD1P3AX count_815__i11 (.D(n69[11]), .SP(SD_CLK_c_enable_125), .CK(SD_CLK_c), 
            .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_815__i11.GSR = "ENABLED";
    FD1P3AX count_815__i10 (.D(n69[10]), .SP(SD_CLK_c_enable_125), .CK(SD_CLK_c), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_815__i10.GSR = "ENABLED";
    FD1P3AX count_815__i9 (.D(n69[9]), .SP(SD_CLK_c_enable_125), .CK(SD_CLK_c), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_815__i9.GSR = "ENABLED";
    FD1P3AX count_815__i8 (.D(n69[8]), .SP(SD_CLK_c_enable_125), .CK(SD_CLK_c), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_815__i8.GSR = "ENABLED";
    FD1P3AX count_815__i7 (.D(n69[7]), .SP(SD_CLK_c_enable_125), .CK(SD_CLK_c), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_815__i7.GSR = "ENABLED";
    FD1P3AX count_815__i6 (.D(n69[6]), .SP(SD_CLK_c_enable_125), .CK(SD_CLK_c), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_815__i6.GSR = "ENABLED";
    FD1P3AX count_815__i5 (.D(n69[5]), .SP(SD_CLK_c_enable_125), .CK(SD_CLK_c), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_815__i5.GSR = "ENABLED";
    FD1P3AX count_815__i4 (.D(n69[4]), .SP(SD_CLK_c_enable_125), .CK(SD_CLK_c), 
            .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_815__i4.GSR = "ENABLED";
    FD1P3AX count_815__i3 (.D(n69[3]), .SP(SD_CLK_c_enable_125), .CK(SD_CLK_c), 
            .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_815__i3.GSR = "ENABLED";
    FD1P3AX count_815__i2 (.D(n69[2]), .SP(SD_CLK_c_enable_125), .CK(SD_CLK_c), 
            .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_815__i2.GSR = "ENABLED";
    FD1P3AX count_815__i1 (.D(n69[1]), .SP(SD_CLK_c_enable_125), .CK(SD_CLK_c), 
            .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_815__i1.GSR = "ENABLED";
    FD1P3AX count_815__i0 (.D(n69[0]), .SP(SD_CLK_c_enable_125), .CK(SD_CLK_c), 
            .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_815__i0.GSR = "ENABLED";
    LUT4 i4094_2_lut_rep_46 (.A(n30), .B(count[15]), .Z(SD_CLK_c_enable_125)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(61[34:47])
    defparam i4094_2_lut_rep_46.init = 16'h1111;
    LUT4 i4074_3_lut_rep_45_4_lut (.A(n30), .B(count[15]), .C(\repeat_tim_period[13] ), 
         .D(refresh_tim_flag), .Z(n5383)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B (D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(61[34:47])
    defparam i4074_3_lut_rep_45_4_lut.init = 16'h00f1;
    LUT4 i1376_2_lut (.A(n30), .B(n69[15]), .Z(SD_CLK_c_enable_110)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam i1376_2_lut.init = 16'h4444;
    CCU2D count_815_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4703), .S0(n69[15]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_815_add_4_17.INIT0 = 16'hfaaa;
    defparam count_815_add_4_17.INIT1 = 16'h0000;
    defparam count_815_add_4_17.INJECT1_0 = "NO";
    defparam count_815_add_4_17.INJECT1_1 = "NO";
    CCU2D count_815_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4702), .COUT(n4703), .S0(n69[13]), .S1(n69[14]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_815_add_4_15.INIT0 = 16'hfaaa;
    defparam count_815_add_4_15.INIT1 = 16'hfaaa;
    defparam count_815_add_4_15.INJECT1_0 = "NO";
    defparam count_815_add_4_15.INJECT1_1 = "NO";
    CCU2D count_815_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4701), .COUT(n4702), .S0(n69[11]), .S1(n69[12]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_815_add_4_13.INIT0 = 16'hfaaa;
    defparam count_815_add_4_13.INIT1 = 16'hfaaa;
    defparam count_815_add_4_13.INJECT1_0 = "NO";
    defparam count_815_add_4_13.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(count[14]), .B(count[13]), .C(n24), .D(count[12]), 
         .Z(n30)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2_4_lut.init = 16'h8880;
    LUT4 i925_4_lut (.A(count[10]), .B(count[11]), .C(n10), .D(count[8]), 
         .Z(n24)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i925_4_lut.init = 16'hccc8;
    CCU2D count_815_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4700), .COUT(n4701), .S0(n69[9]), .S1(n69[10]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_815_add_4_11.INIT0 = 16'hfaaa;
    defparam count_815_add_4_11.INIT1 = 16'hfaaa;
    defparam count_815_add_4_11.INJECT1_0 = "NO";
    defparam count_815_add_4_11.INJECT1_1 = "NO";
    CCU2D count_815_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4699), .COUT(n4700), .S0(n69[7]), .S1(n69[8]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_815_add_4_9.INIT0 = 16'hfaaa;
    defparam count_815_add_4_9.INIT1 = 16'hfaaa;
    defparam count_815_add_4_9.INJECT1_0 = "NO";
    defparam count_815_add_4_9.INJECT1_1 = "NO";
    CCU2D count_815_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4698), .COUT(n4699), .S0(n69[5]), .S1(n69[6]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_815_add_4_7.INIT0 = 16'hfaaa;
    defparam count_815_add_4_7.INIT1 = 16'hfaaa;
    defparam count_815_add_4_7.INJECT1_0 = "NO";
    defparam count_815_add_4_7.INJECT1_1 = "NO";
    CCU2D count_815_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4697), .COUT(n4698), .S0(n69[3]), .S1(n69[4]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_815_add_4_5.INIT0 = 16'hfaaa;
    defparam count_815_add_4_5.INIT1 = 16'hfaaa;
    defparam count_815_add_4_5.INJECT1_0 = "NO";
    defparam count_815_add_4_5.INJECT1_1 = "NO";
    CCU2D count_815_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4696), .COUT(n4697), .S0(n69[1]), .S1(n69[2]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_815_add_4_3.INIT0 = 16'hfaaa;
    defparam count_815_add_4_3.INIT1 = 16'hfaaa;
    defparam count_815_add_4_3.INJECT1_0 = "NO";
    defparam count_815_add_4_3.INJECT1_1 = "NO";
    CCU2D count_815_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n4696), .S1(n69[0]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_815_add_4_1.INIT0 = 16'hF000;
    defparam count_815_add_4_1.INIT1 = 16'h0555;
    defparam count_815_add_4_1.INJECT1_0 = "NO";
    defparam count_815_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module \Timer(SIZE=4) 
//

module \Timer(SIZE=4)  (count, SD_CLK_c, delay_tim_reset, n9, \delay_tim_period[3] , 
            \count[2]_derived_14 , delay_tim_flag_N_589, \count[1] , SD_CLK_c_enable_131) /* synthesis syn_module_defined=1 */ ;
    output [3:0]count;
    input SD_CLK_c;
    input delay_tim_reset;
    input n9;
    input \delay_tim_period[3] ;
    output \count[2]_derived_14 ;
    output delay_tim_flag_N_589;
    output \count[1] ;
    input SD_CLK_c_enable_131;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(31[6:16])
    wire \count[2]_derived_14  /* synthesis is_clock=1, SET_AS_NETWORK=\all_modules1/sdram_controller1/delayTimer/count[2]_derived_14 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(20[25:30])
    wire [3:0]n15;
    wire [3:0]count_c;   // c:/lscc/sd_ram_uart/src/timer.v(20[25:30])
    wire [3:0]n6;
    
    FD1S3IX count__i0 (.D(n15[0]), .CK(SD_CLK_c), .CD(delay_tim_reset), 
            .Q(count[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=308, LSE_RLINE=315 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i0.GSR = "ENABLED";
    LUT4 period_3__I_0_i8_4_lut_rep_48 (.A(n9), .B(count_c[3]), .C(\delay_tim_period[3] ), 
         .D(count_c[2]), .Z(\count[2]_derived_14 )) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/lscc/sd_ram_uart/src/timer.v(22[23:40])
    defparam period_3__I_0_i8_4_lut_rep_48.init = 16'hcfce;
    LUT4 delay_tim_flag_I_0_1_lut_4_lut (.A(n9), .B(count_c[3]), .C(\delay_tim_period[3] ), 
         .D(count_c[2]), .Z(delay_tim_flag_N_589)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+!(C+!(D))))) */ ;   // c:/lscc/sd_ram_uart/src/timer.v(22[23:40])
    defparam delay_tim_flag_I_0_1_lut_4_lut.init = 16'h3031;
    LUT4 i1019_2_lut (.A(\count[1] ), .B(count[0]), .Z(n6[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam i1019_2_lut.init = 16'h6666;
    LUT4 i1166_2_lut_3_lut (.A(count[0]), .B(\count[2]_derived_14 ), .C(delay_tim_reset), 
         .Z(n15[0])) /* synthesis lut_function=(!(A ((C)+!B)+!A !((C)+!B))) */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam i1166_2_lut_3_lut.init = 16'h5959;
    LUT4 i1033_3_lut_4_lut (.A(\count[1] ), .B(count[0]), .C(count_c[2]), 
         .D(count_c[3]), .Z(n6[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam i1033_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1026_2_lut_3_lut (.A(\count[1] ), .B(count[0]), .C(count_c[2]), 
         .Z(n6[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam i1026_2_lut_3_lut.init = 16'h7878;
    FD1P3IX count__i1 (.D(n6[1]), .SP(SD_CLK_c_enable_131), .CD(delay_tim_reset), 
            .CK(SD_CLK_c), .Q(\count[1] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=308, LSE_RLINE=315 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i1.GSR = "ENABLED";
    FD1P3IX count__i2 (.D(n6[2]), .SP(SD_CLK_c_enable_131), .CD(delay_tim_reset), 
            .CK(SD_CLK_c), .Q(count_c[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=308, LSE_RLINE=315 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i2.GSR = "ENABLED";
    FD1P3IX count__i3 (.D(n6[3]), .SP(SD_CLK_c_enable_131), .CD(delay_tim_reset), 
            .CK(SD_CLK_c), .Q(count_c[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=308, LSE_RLINE=315 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i3.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module bankArbiter
//

module bankArbiter (SD_CLK_c, \arb_delay[2] , \arb_delay_2__N_465[1] , 
            n5555, \arb_delay[0] , \SD_ADR_TEMP[22] , \SD_ADR_TEMP[23] , 
            n4060) /* synthesis syn_module_defined=1 */ ;
    input SD_CLK_c;
    input \arb_delay[2] ;
    input \arb_delay_2__N_465[1] ;
    input n5555;
    input \arb_delay[0] ;
    input \SD_ADR_TEMP[22] ;
    input \SD_ADR_TEMP[23] ;
    output n4060;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(31[6:16])
    wire [2:0]\delay[2] ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(360[11:16])
    
    wire n5284;
    wire [2:0]\delay[0] ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(360[11:16])
    wire [2:0]n1861;
    wire [2:0]\delay[3] ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(360[11:16])
    
    wire n5282, n5557, n5286, delay_3__2__N_737;
    wire [2:0]n1863;
    wire [2:0]\delay[1] ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(360[11:16])
    
    wire n5525, n5556, delay_3__2__N_750, n5402, n5405, n5399;
    wire [2:0]n1862;
    wire [2:0]n1860;
    
    wire delay_3__2__N_709, n4, delay_3__2__N_724, n5401, delay_3__2__N_710, 
        n5523, n4_adj_998, n4_adj_999, n5526, n4851, n5527, n5524;
    
    LUT4 \delay_2[[1__bdd_3_lut  (.A(\delay[2] [1]), .B(\delay[2] [0]), 
         .C(\delay[2] [2]), .Z(n5284)) /* synthesis lut_function=(A (B)+!A !(B+!(C))) */ ;
    defparam \delay_2[[1__bdd_3_lut .init = 16'h9898;
    FD1S3AX delay_0__i1 (.D(n1861[0]), .CK(SD_CLK_c), .Q(\delay[0] [0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=329, LSE_RLINE=335 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(362[8] 379[4])
    defparam delay_0__i1.GSR = "DISABLED";
    LUT4 \delay_3[[1__bdd_3_lut  (.A(\delay[3] [1]), .B(\delay[3] [0]), 
         .C(\delay[3] [2]), .Z(n5282)) /* synthesis lut_function=(A (B)+!A !(B+!(C))) */ ;
    defparam \delay_3[[1__bdd_3_lut .init = 16'h9898;
    LUT4 i4171_then_2_lut (.A(\arb_delay[2] ), .B(\arb_delay_2__N_465[1] ), 
         .Z(n5557)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i4171_then_2_lut.init = 16'h4444;
    PFUMX i4124 (.BLUT(n5286), .ALUT(n5555), .C0(delay_3__2__N_737), .Z(n1863[1]));
    LUT4 \delay_1[[1__bdd_3_lut_4222  (.A(\delay[1] [1]), .B(\delay[1] [2]), 
         .C(\delay[1] [0]), .Z(n5525)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam \delay_1[[1__bdd_3_lut_4222 .init = 16'hfefe;
    LUT4 \delay_1[[1__bdd_3_lut_4221  (.A(\delay[1] [1]), .B(\delay[1] [0]), 
         .C(\delay[1] [2]), .Z(n5286)) /* synthesis lut_function=(A (B)+!A !(B+!(C))) */ ;
    defparam \delay_1[[1__bdd_3_lut_4221 .init = 16'h9898;
    LUT4 i4171_else_2_lut (.A(\delay[0] [1]), .B(\delay[0] [0]), .C(\delay[0] [2]), 
         .Z(n5556)) /* synthesis lut_function=(A (B)+!A !(B+!(C))) */ ;
    defparam i4171_else_2_lut.init = 16'h9898;
    LUT4 mux_958_i3_4_lut (.A(\delay[0] [2]), .B(\arb_delay[2] ), .C(delay_3__2__N_750), 
         .D(n5402), .Z(n1861[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(365[91:106])
    defparam mux_958_i3_4_lut.init = 16'hcac0;
    LUT4 mux_960_i1_4_lut (.A(\delay[1] [0]), .B(\arb_delay[0] ), .C(delay_3__2__N_737), 
         .D(n5405), .Z(n1863[0])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(369[91:106])
    defparam mux_960_i1_4_lut.init = 16'hc5c0;
    FD1S3AX delay_0__i2 (.D(n1861[1]), .CK(SD_CLK_c), .Q(\delay[0] [1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=329, LSE_RLINE=335 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(362[8] 379[4])
    defparam delay_0__i2.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_61 (.A(\delay[3] [1]), .B(\delay[3] [2]), .Z(n5399)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_61.init = 16'heeee;
    FD1S3AX delay_0__i3 (.D(n1861[2]), .CK(SD_CLK_c), .Q(\delay[0] [2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=329, LSE_RLINE=335 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(362[8] 379[4])
    defparam delay_0__i3.GSR = "DISABLED";
    FD1S3AX delay_0__i4 (.D(n1863[0]), .CK(SD_CLK_c), .Q(\delay[1] [0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=329, LSE_RLINE=335 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(362[8] 379[4])
    defparam delay_0__i4.GSR = "DISABLED";
    FD1S3AX delay_0__i5 (.D(n1863[1]), .CK(SD_CLK_c), .Q(\delay[1] [1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=329, LSE_RLINE=335 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(362[8] 379[4])
    defparam delay_0__i5.GSR = "DISABLED";
    FD1S3AX delay_0__i6 (.D(n1863[2]), .CK(SD_CLK_c), .Q(\delay[1] [2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=329, LSE_RLINE=335 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(362[8] 379[4])
    defparam delay_0__i6.GSR = "DISABLED";
    FD1S3AX delay_0__i7 (.D(n1862[0]), .CK(SD_CLK_c), .Q(\delay[2] [0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=329, LSE_RLINE=335 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(362[8] 379[4])
    defparam delay_0__i7.GSR = "DISABLED";
    FD1S3AX delay_0__i8 (.D(n1862[1]), .CK(SD_CLK_c), .Q(\delay[2] [1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=329, LSE_RLINE=335 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(362[8] 379[4])
    defparam delay_0__i8.GSR = "DISABLED";
    FD1S3AX delay_0__i9 (.D(n1862[2]), .CK(SD_CLK_c), .Q(\delay[2] [2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=329, LSE_RLINE=335 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(362[8] 379[4])
    defparam delay_0__i9.GSR = "DISABLED";
    FD1S3AX delay_0__i10 (.D(n1860[0]), .CK(SD_CLK_c), .Q(\delay[3] [0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=329, LSE_RLINE=335 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(362[8] 379[4])
    defparam delay_0__i10.GSR = "DISABLED";
    FD1S3AX delay_0__i11 (.D(n1860[1]), .CK(SD_CLK_c), .Q(\delay[3] [1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=329, LSE_RLINE=335 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(362[8] 379[4])
    defparam delay_0__i11.GSR = "DISABLED";
    FD1S3AX delay_0__i12 (.D(n1860[2]), .CK(SD_CLK_c), .Q(\delay[3] [2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=329, LSE_RLINE=335 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(362[8] 379[4])
    defparam delay_0__i12.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut (.A(\delay[3] [1]), .B(\delay[3] [2]), .C(\delay[3] [0]), 
         .Z(delay_3__2__N_709)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 mux_960_i3_4_lut (.A(\delay[1] [2]), .B(\arb_delay[2] ), .C(delay_3__2__N_737), 
         .D(n4), .Z(n1863[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(369[91:106])
    defparam mux_960_i3_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut (.A(\delay[1] [1]), .B(\delay[1] [0]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(369[91:106])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 mux_959_i1_4_lut (.A(\delay[2] [0]), .B(\arb_delay[0] ), .C(delay_3__2__N_724), 
         .D(n5401), .Z(n1862[0])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(373[91:106])
    defparam mux_959_i1_4_lut.init = 16'hc5c0;
    LUT4 i1_2_lut_3_lut_4_lut (.A(\SD_ADR_TEMP[22] ), .B(\SD_ADR_TEMP[23] ), 
         .C(\arb_delay[2] ), .D(\arb_delay_2__N_465[1] ), .Z(delay_3__2__N_710)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8880;
    LUT4 i1_2_lut_rep_63 (.A(\delay[2] [1]), .B(\delay[2] [2]), .Z(n5401)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_63.init = 16'heeee;
    LUT4 i1_2_lut_rep_64 (.A(\delay[0] [1]), .B(\delay[0] [0]), .Z(n5402)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(365[91:106])
    defparam i1_2_lut_rep_64.init = 16'heeee;
    LUT4 delay_3__2__N_709_bdd_3_lut_4241 (.A(\delay[2] [0]), .B(\delay[2] [1]), 
         .C(\delay[2] [2]), .Z(n5523)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam delay_3__2__N_709_bdd_3_lut_4241.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_76 (.A(\SD_ADR_TEMP[22] ), .B(\SD_ADR_TEMP[23] ), 
         .C(\arb_delay[2] ), .D(\arb_delay_2__N_465[1] ), .Z(delay_3__2__N_724)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(382[23:39])
    defparam i1_2_lut_3_lut_4_lut_adj_76.init = 16'h4440;
    LUT4 i1_2_lut_3_lut_4_lut_adj_77 (.A(\SD_ADR_TEMP[22] ), .B(\SD_ADR_TEMP[23] ), 
         .C(\arb_delay[2] ), .D(\arb_delay_2__N_465[1] ), .Z(delay_3__2__N_750)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(380[23:39])
    defparam i1_2_lut_3_lut_4_lut_adj_77.init = 16'h1110;
    LUT4 mux_959_i3_4_lut (.A(\delay[2] [2]), .B(\arb_delay[2] ), .C(delay_3__2__N_724), 
         .D(n4_adj_998), .Z(n1862[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(373[91:106])
    defparam mux_959_i3_4_lut.init = 16'hcac0;
    PFUMX i4122 (.BLUT(n5284), .ALUT(n5555), .C0(delay_3__2__N_724), .Z(n1862[1]));
    LUT4 i1_2_lut_rep_67 (.A(\delay[1] [1]), .B(\delay[1] [2]), .Z(n5405)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_67.init = 16'heeee;
    LUT4 i1_2_lut_adj_78 (.A(\delay[2] [1]), .B(\delay[2] [0]), .Z(n4_adj_998)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(373[91:106])
    defparam i1_2_lut_adj_78.init = 16'heeee;
    LUT4 mux_957_i1_4_lut (.A(\delay[3] [0]), .B(\arb_delay[0] ), .C(delay_3__2__N_710), 
         .D(n5399), .Z(n1860[0])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(377[91:106])
    defparam mux_957_i1_4_lut.init = 16'hc5c0;
    LUT4 mux_957_i3_4_lut (.A(\delay[3] [2]), .B(\arb_delay[2] ), .C(delay_3__2__N_710), 
         .D(n4_adj_999), .Z(n1860[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(377[91:106])
    defparam mux_957_i3_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_adj_79 (.A(\delay[3] [1]), .B(\delay[3] [0]), .Z(n4_adj_999)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(377[91:106])
    defparam i1_2_lut_adj_79.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_80 (.A(\SD_ADR_TEMP[22] ), .B(\SD_ADR_TEMP[23] ), 
         .C(\arb_delay[2] ), .D(\arb_delay_2__N_465[1] ), .Z(delay_3__2__N_737)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(381[23:39])
    defparam i1_2_lut_3_lut_4_lut_adj_80.init = 16'h2220;
    LUT4 \delay_1[[1__bdd_3_lut  (.A(\delay[0] [1]), .B(\delay[0] [0]), 
         .C(\delay[0] [2]), .Z(n5526)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam \delay_1[[1__bdd_3_lut .init = 16'hfefe;
    PFUMX i4120 (.BLUT(n5282), .ALUT(n5555), .C0(delay_3__2__N_710), .Z(n1860[1]));
    LUT4 mux_958_i1_4_lut (.A(\delay[0] [0]), .B(\arb_delay[0] ), .C(delay_3__2__N_750), 
         .D(n4851), .Z(n1861[0])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(365[91:106])
    defparam mux_958_i1_4_lut.init = 16'hc5c0;
    LUT4 i1_2_lut_adj_81 (.A(\delay[0] [1]), .B(\delay[0] [2]), .Z(n4851)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_81.init = 16'heeee;
    PFUMX i4223 (.BLUT(n5526), .ALUT(n5525), .C0(\SD_ADR_TEMP[22] ), .Z(n5527));
    PFUMX i4247 (.BLUT(n5556), .ALUT(n5557), .C0(delay_3__2__N_750), .Z(n1861[1]));
    PFUMX i4219 (.BLUT(n5523), .ALUT(delay_3__2__N_709), .C0(\SD_ADR_TEMP[22] ), 
          .Z(n5524));
    L6MUX21 i4225 (.D0(n5527), .D1(n5524), .SD(\SD_ADR_TEMP[23] ), .Z(n4060));
    
endmodule
//
// Verilog Description of module \fifo(length=256) 
//

module \fifo(length=256)  (SD_CLK_c, tx_dat1, n1854, n1852, n1850, 
            n1848, n1846, n1844, n1842, n1840, tx_ack1, DAT_7__N_993, 
            GND_net, VCC_net, tx_stb, tx_ack, full) /* synthesis syn_module_defined=1 */ ;
    input SD_CLK_c;
    input [7:0]tx_dat1;
    output n1854;
    output n1852;
    output n1850;
    output n1848;
    output n1846;
    output n1844;
    output n1842;
    output n1840;
    input tx_ack1;
    input DAT_7__N_993;
    input GND_net;
    input VCC_net;
    output tx_stb;
    input tx_ack;
    output full;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(31[6:16])
    wire [7:0]o_addr;   // c:/lscc/sd_ram_uart/src/fifo.v(23[23:29])
    
    wire o_stb_N_212;
    wire [7:0]n37;
    wire [7:0]i_addr;   // c:/lscc/sd_ram_uart/src/fifo.v(22[23:29])
    wire [7:0]n1;   // c:/lscc/sd_ram_uart/src/fifo.v(25[24:32])
    
    wire SD_CLK_c_enable_23, empty, n4695, n4694, n4693, n4599, 
        n4600, n4602, n4601, n4658, n4657, n4656, n4655, n4692;
    
    FD1P3AX o_addr_812__i0 (.D(n37[0]), .SP(o_stb_N_212), .CK(SD_CLK_c), 
            .Q(o_addr[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_812__i0.GSR = "ENABLED";
    DP8KC m_RAM0 (.DIA0(tx_dat1[0]), .DIA1(tx_dat1[1]), .DIA2(tx_dat1[2]), 
          .DIA3(tx_dat1[3]), .DIA4(tx_dat1[4]), .DIA5(tx_dat1[5]), .DIA6(tx_dat1[6]), 
          .DIA7(tx_dat1[7]), .DIA8(GND_net), .ADA0(VCC_net), .ADA1(GND_net), 
          .ADA2(GND_net), .ADA3(i_addr[0]), .ADA4(i_addr[1]), .ADA5(i_addr[2]), 
          .ADA6(i_addr[3]), .ADA7(i_addr[4]), .ADA8(i_addr[5]), .ADA9(i_addr[6]), 
          .ADA10(i_addr[7]), .ADA11(GND_net), .ADA12(GND_net), .CEA(VCC_net), 
          .OCEA(VCC_net), .CLKA(SD_CLK_c), .WEA(tx_ack1), .CSA0(GND_net), 
          .CSA1(GND_net), .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), 
          .DIB1(GND_net), .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), 
          .DIB5(GND_net), .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), 
          .ADB0(VCC_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(o_addr[0]), 
          .ADB4(o_addr[1]), .ADB5(o_addr[2]), .ADB6(o_addr[3]), .ADB7(o_addr[4]), 
          .ADB8(o_addr[5]), .ADB9(o_addr[6]), .ADB10(o_addr[7]), .ADB11(GND_net), 
          .ADB12(GND_net), .CEB(o_stb_N_212), .OCEB(DAT_7__N_993), .CLKB(SD_CLK_c), 
          .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), 
          .RSTB(GND_net), .DOB0(n1854), .DOB1(n1852), .DOB2(n1850), 
          .DOB3(n1848), .DOB4(n1846), .DOB5(n1844), .DOB6(n1842), .DOB7(n1840));
    defparam m_RAM0.DATA_WIDTH_A = 9;
    defparam m_RAM0.DATA_WIDTH_B = 9;
    defparam m_RAM0.REGMODE_A = "NOREG";
    defparam m_RAM0.REGMODE_B = "OUTREG";
    defparam m_RAM0.CSDECODE_A = "0b000";
    defparam m_RAM0.CSDECODE_B = "0b000";
    defparam m_RAM0.WRITEMODE_A = "READBEFOREWRITE";
    defparam m_RAM0.WRITEMODE_B = "READBEFOREWRITE";
    defparam m_RAM0.GSR = "DISABLED";
    defparam m_RAM0.RESETMODE = "SYNC";
    defparam m_RAM0.ASYNC_RESET_RELEASE = "SYNC";
    defparam m_RAM0.INIT_DATA = "STATIC";
    defparam m_RAM0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    FD1P3AX i_addr_i0_i0 (.D(n1[0]), .SP(tx_ack1), .CK(SD_CLK_c), .Q(i_addr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=143, LSE_RLINE=155 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(37[9] 38[26])
    defparam i_addr_i0_i0.GSR = "ENABLED";
    FD1P3AX s_stb_33 (.D(o_stb_N_212), .SP(SD_CLK_c_enable_23), .CK(SD_CLK_c), 
            .Q(tx_stb)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=143, LSE_RLINE=155 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(65[7] 67[22])
    defparam s_stb_33.GSR = "ENABLED";
    FD1P3AX o_addr_812__i7 (.D(n37[7]), .SP(o_stb_N_212), .CK(SD_CLK_c), 
            .Q(o_addr[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_812__i7.GSR = "ENABLED";
    FD1P3AX o_addr_812__i6 (.D(n37[6]), .SP(o_stb_N_212), .CK(SD_CLK_c), 
            .Q(o_addr[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_812__i6.GSR = "ENABLED";
    FD1P3AX o_addr_812__i5 (.D(n37[5]), .SP(o_stb_N_212), .CK(SD_CLK_c), 
            .Q(o_addr[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_812__i5.GSR = "ENABLED";
    FD1P3AX o_addr_812__i4 (.D(n37[4]), .SP(o_stb_N_212), .CK(SD_CLK_c), 
            .Q(o_addr[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_812__i4.GSR = "ENABLED";
    FD1P3AX o_addr_812__i3 (.D(n37[3]), .SP(o_stb_N_212), .CK(SD_CLK_c), 
            .Q(o_addr[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_812__i3.GSR = "ENABLED";
    FD1P3AX o_addr_812__i2 (.D(n37[2]), .SP(o_stb_N_212), .CK(SD_CLK_c), 
            .Q(o_addr[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_812__i2.GSR = "ENABLED";
    FD1P3AX o_addr_812__i1 (.D(n37[1]), .SP(o_stb_N_212), .CK(SD_CLK_c), 
            .Q(o_addr[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_812__i1.GSR = "ENABLED";
    FD1P3AX i_addr_i0_i1 (.D(n1[1]), .SP(tx_ack1), .CK(SD_CLK_c), .Q(i_addr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=143, LSE_RLINE=155 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(37[9] 38[26])
    defparam i_addr_i0_i1.GSR = "ENABLED";
    FD1P3AX i_addr_i0_i2 (.D(n1[2]), .SP(tx_ack1), .CK(SD_CLK_c), .Q(i_addr[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=143, LSE_RLINE=155 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(37[9] 38[26])
    defparam i_addr_i0_i2.GSR = "ENABLED";
    FD1P3AX i_addr_i0_i3 (.D(n1[3]), .SP(tx_ack1), .CK(SD_CLK_c), .Q(i_addr[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=143, LSE_RLINE=155 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(37[9] 38[26])
    defparam i_addr_i0_i3.GSR = "ENABLED";
    FD1P3AX i_addr_i0_i4 (.D(n1[4]), .SP(tx_ack1), .CK(SD_CLK_c), .Q(i_addr[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=143, LSE_RLINE=155 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(37[9] 38[26])
    defparam i_addr_i0_i4.GSR = "ENABLED";
    FD1P3AX i_addr_i0_i5 (.D(n1[5]), .SP(tx_ack1), .CK(SD_CLK_c), .Q(i_addr[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=143, LSE_RLINE=155 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(37[9] 38[26])
    defparam i_addr_i0_i5.GSR = "ENABLED";
    FD1P3AX i_addr_i0_i6 (.D(n1[6]), .SP(tx_ack1), .CK(SD_CLK_c), .Q(i_addr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=143, LSE_RLINE=155 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(37[9] 38[26])
    defparam i_addr_i0_i6.GSR = "ENABLED";
    FD1P3AX i_addr_i0_i7 (.D(n1[7]), .SP(tx_ack1), .CK(SD_CLK_c), .Q(i_addr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=143, LSE_RLINE=155 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(37[9] 38[26])
    defparam i_addr_i0_i7.GSR = "ENABLED";
    LUT4 i1227_3_lut (.A(tx_stb), .B(empty), .C(tx_ack), .Z(o_stb_N_212)) /* synthesis lut_function=(!(A (B+!(C))+!A (B))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(50[17:50])
    defparam i1227_3_lut.init = 16'h3131;
    LUT4 i1_3_lut (.A(tx_ack), .B(tx_stb), .C(empty), .Z(SD_CLK_c_enable_23)) /* synthesis lut_function=(A+!(B+(C))) */ ;
    defparam i1_3_lut.init = 16'habab;
    CCU2D add_38_9 (.A0(i_addr[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4695), 
          .S0(n1[7]));   // c:/lscc/sd_ram_uart/src/fifo.v(25[35:47])
    defparam add_38_9.INIT0 = 16'h5aaa;
    defparam add_38_9.INIT1 = 16'h0000;
    defparam add_38_9.INJECT1_0 = "NO";
    defparam add_38_9.INJECT1_1 = "NO";
    CCU2D add_38_7 (.A0(i_addr[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(i_addr[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4694), .COUT(n4695), .S0(n1[5]), .S1(n1[6]));   // c:/lscc/sd_ram_uart/src/fifo.v(25[35:47])
    defparam add_38_7.INIT0 = 16'h5aaa;
    defparam add_38_7.INIT1 = 16'h5aaa;
    defparam add_38_7.INJECT1_0 = "NO";
    defparam add_38_7.INJECT1_1 = "NO";
    CCU2D add_38_5 (.A0(i_addr[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(i_addr[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4693), .COUT(n4694), .S0(n1[3]), .S1(n1[4]));   // c:/lscc/sd_ram_uart/src/fifo.v(25[35:47])
    defparam add_38_5.INIT0 = 16'h5aaa;
    defparam add_38_5.INIT1 = 16'h5aaa;
    defparam add_38_5.INJECT1_0 = "NO";
    defparam add_38_5.INJECT1_1 = "NO";
    CCU2D i_addr_7__I_0_7 (.A0(o_addr[5]), .B0(i_addr[5]), .C0(o_addr[4]), 
          .D0(i_addr[4]), .A1(o_addr[3]), .B1(i_addr[3]), .C1(o_addr[2]), 
          .D1(i_addr[2]), .CIN(n4599), .COUT(n4600));
    defparam i_addr_7__I_0_7.INIT0 = 16'h9009;
    defparam i_addr_7__I_0_7.INIT1 = 16'h9009;
    defparam i_addr_7__I_0_7.INJECT1_0 = "YES";
    defparam i_addr_7__I_0_7.INJECT1_1 = "YES";
    CCU2D i_addr_1_7__I_0_8 (.A0(o_addr[1]), .B0(n1[1]), .C0(o_addr[0]), 
          .D0(n1[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4602), .S1(full));
    defparam i_addr_1_7__I_0_8.INIT0 = 16'h9009;
    defparam i_addr_1_7__I_0_8.INIT1 = 16'hFFFF;
    defparam i_addr_1_7__I_0_8.INJECT1_0 = "YES";
    defparam i_addr_1_7__I_0_8.INJECT1_1 = "NO";
    CCU2D i_addr_7__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(o_addr[7]), .B1(i_addr[7]), .C1(o_addr[6]), .D1(i_addr[6]), 
          .COUT(n4599));   // c:/lscc/sd_ram_uart/src/fifo.v(27[16:32])
    defparam i_addr_7__I_0_0.INIT0 = 16'hF000;
    defparam i_addr_7__I_0_0.INIT1 = 16'h9009;
    defparam i_addr_7__I_0_0.INJECT1_0 = "NO";
    defparam i_addr_7__I_0_0.INJECT1_1 = "YES";
    CCU2D i_addr_1_7__I_0_7 (.A0(o_addr[5]), .B0(n1[5]), .C0(o_addr[4]), 
          .D0(n1[4]), .A1(o_addr[3]), .B1(n1[3]), .C1(o_addr[2]), .D1(n1[2]), 
          .CIN(n4601), .COUT(n4602));
    defparam i_addr_1_7__I_0_7.INIT0 = 16'h9009;
    defparam i_addr_1_7__I_0_7.INIT1 = 16'h9009;
    defparam i_addr_1_7__I_0_7.INJECT1_0 = "YES";
    defparam i_addr_1_7__I_0_7.INJECT1_1 = "YES";
    CCU2D i_addr_1_7__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_addr[7]), .B1(n1[7]), .C1(o_addr[6]), 
          .D1(n1[6]), .COUT(n4601));   // c:/lscc/sd_ram_uart/src/fifo.v(28[16:34])
    defparam i_addr_1_7__I_0_0.INIT0 = 16'hF000;
    defparam i_addr_1_7__I_0_0.INIT1 = 16'h9009;
    defparam i_addr_1_7__I_0_0.INJECT1_0 = "NO";
    defparam i_addr_1_7__I_0_0.INJECT1_1 = "YES";
    CCU2D o_addr_812_add_4_9 (.A0(o_addr[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4658), .S0(n37[7]));   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_812_add_4_9.INIT0 = 16'hfaaa;
    defparam o_addr_812_add_4_9.INIT1 = 16'h0000;
    defparam o_addr_812_add_4_9.INJECT1_0 = "NO";
    defparam o_addr_812_add_4_9.INJECT1_1 = "NO";
    CCU2D i_addr_7__I_0_8 (.A0(o_addr[1]), .B0(i_addr[1]), .C0(o_addr[0]), 
          .D0(i_addr[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4600), .S1(empty));
    defparam i_addr_7__I_0_8.INIT0 = 16'h9009;
    defparam i_addr_7__I_0_8.INIT1 = 16'hFFFF;
    defparam i_addr_7__I_0_8.INJECT1_0 = "YES";
    defparam i_addr_7__I_0_8.INJECT1_1 = "NO";
    CCU2D o_addr_812_add_4_7 (.A0(o_addr[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_addr[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4657), .COUT(n4658), .S0(n37[5]), .S1(n37[6]));   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_812_add_4_7.INIT0 = 16'hfaaa;
    defparam o_addr_812_add_4_7.INIT1 = 16'hfaaa;
    defparam o_addr_812_add_4_7.INJECT1_0 = "NO";
    defparam o_addr_812_add_4_7.INJECT1_1 = "NO";
    CCU2D o_addr_812_add_4_5 (.A0(o_addr[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_addr[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4656), .COUT(n4657), .S0(n37[3]), .S1(n37[4]));   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_812_add_4_5.INIT0 = 16'hfaaa;
    defparam o_addr_812_add_4_5.INIT1 = 16'hfaaa;
    defparam o_addr_812_add_4_5.INJECT1_0 = "NO";
    defparam o_addr_812_add_4_5.INJECT1_1 = "NO";
    CCU2D o_addr_812_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_addr[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n4655), .S1(n37[0]));   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_812_add_4_1.INIT0 = 16'hF000;
    defparam o_addr_812_add_4_1.INIT1 = 16'h0555;
    defparam o_addr_812_add_4_1.INJECT1_0 = "NO";
    defparam o_addr_812_add_4_1.INJECT1_1 = "NO";
    CCU2D o_addr_812_add_4_3 (.A0(o_addr[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_addr[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4655), .COUT(n4656), .S0(n37[1]), .S1(n37[2]));   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_812_add_4_3.INIT0 = 16'hfaaa;
    defparam o_addr_812_add_4_3.INIT1 = 16'hfaaa;
    defparam o_addr_812_add_4_3.INJECT1_0 = "NO";
    defparam o_addr_812_add_4_3.INJECT1_1 = "NO";
    CCU2D add_38_3 (.A0(i_addr[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(i_addr[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4692), .COUT(n4693), .S0(n1[1]), .S1(n1[2]));   // c:/lscc/sd_ram_uart/src/fifo.v(25[35:47])
    defparam add_38_3.INIT0 = 16'h5aaa;
    defparam add_38_3.INIT1 = 16'h5aaa;
    defparam add_38_3.INJECT1_0 = "NO";
    defparam add_38_3.INJECT1_1 = "NO";
    CCU2D add_38_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(i_addr[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n4692), .S1(n1[0]));   // c:/lscc/sd_ram_uart/src/fifo.v(25[35:47])
    defparam add_38_1.INIT0 = 16'hF000;
    defparam add_38_1.INIT1 = 16'h5555;
    defparam add_38_1.INJECT1_0 = "NO";
    defparam add_38_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module \fifo(length=256)_U1 
//

module \fifo(length=256)_U1  (SD_CLK_c, SD_CLK_c_enable_109, rx_stb1, 
            rx_dat, rx_dat1, GND_net, VCC_net, next_state_3__N_345, 
            data_count_clk, o_stb_rd_N_367, nreset_c, next_state_3__N_347, 
            \rd_wt_operation_1__N_343[0] , full) /* synthesis syn_module_defined=1 */ ;
    input SD_CLK_c;
    input SD_CLK_c_enable_109;
    output rx_stb1;
    input [7:0]rx_dat;
    output [7:0]rx_dat1;
    input GND_net;
    input VCC_net;
    output next_state_3__N_345;
    input data_count_clk;
    input o_stb_rd_N_367;
    input nreset_c;
    output next_state_3__N_347;
    output \rd_wt_operation_1__N_343[0] ;
    output full;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(31[6:16])
    wire data_count_clk /* synthesis SET_AS_NETWORK=\all_modules1/uart_to_sdram1/data_count_clk, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(68[6:20])
    wire [7:0]i_addr;   // c:/lscc/sd_ram_uart/src/fifo.v(22[23:29])
    wire [7:0]n1;   // c:/lscc/sd_ram_uart/src/fifo.v(25[24:32])
    
    wire n7;
    wire [7:0]o_addr;   // c:/lscc/sd_ram_uart/src/fifo.v(23[23:29])
    
    wire o_stb_N_212;
    wire [7:0]n37;
    
    wire n5145, n5398, empty, n4595, n8, n4734, n4733, n4732, 
        n4731, n4596, n4670, n4669, n4668, n4667, n4597, n4598;
    
    FD1P3AX i_addr_i0_i0 (.D(n1[0]), .SP(SD_CLK_c_enable_109), .CK(SD_CLK_c), 
            .Q(i_addr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=36, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(37[9] 38[26])
    defparam i_addr_i0_i0.GSR = "ENABLED";
    FD1S3AX s_stb_33 (.D(n7), .CK(SD_CLK_c), .Q(rx_stb1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=36, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(65[7] 67[22])
    defparam s_stb_33.GSR = "ENABLED";
    DP8KC m_RAM0 (.DIA0(rx_dat[0]), .DIA1(rx_dat[1]), .DIA2(rx_dat[2]), 
          .DIA3(rx_dat[3]), .DIA4(rx_dat[4]), .DIA5(rx_dat[5]), .DIA6(rx_dat[6]), 
          .DIA7(rx_dat[7]), .DIA8(GND_net), .ADA0(VCC_net), .ADA1(GND_net), 
          .ADA2(GND_net), .ADA3(i_addr[0]), .ADA4(i_addr[1]), .ADA5(i_addr[2]), 
          .ADA6(i_addr[3]), .ADA7(i_addr[4]), .ADA8(i_addr[5]), .ADA9(i_addr[6]), 
          .ADA10(i_addr[7]), .ADA11(GND_net), .ADA12(GND_net), .CEA(VCC_net), 
          .OCEA(VCC_net), .CLKA(SD_CLK_c), .WEA(SD_CLK_c_enable_109), 
          .CSA0(GND_net), .CSA1(GND_net), .CSA2(GND_net), .RSTA(GND_net), 
          .DIB0(GND_net), .DIB1(GND_net), .DIB2(GND_net), .DIB3(GND_net), 
          .DIB4(GND_net), .DIB5(GND_net), .DIB6(GND_net), .DIB7(GND_net), 
          .DIB8(GND_net), .ADB0(VCC_net), .ADB1(GND_net), .ADB2(GND_net), 
          .ADB3(o_addr[0]), .ADB4(o_addr[1]), .ADB5(o_addr[2]), .ADB6(o_addr[3]), 
          .ADB7(o_addr[4]), .ADB8(o_addr[5]), .ADB9(o_addr[6]), .ADB10(o_addr[7]), 
          .ADB11(GND_net), .ADB12(GND_net), .CEB(o_stb_N_212), .OCEB(VCC_net), 
          .CLKB(SD_CLK_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
          .CSB2(GND_net), .RSTB(GND_net), .DOB0(rx_dat1[0]), .DOB1(rx_dat1[1]), 
          .DOB2(rx_dat1[2]), .DOB3(rx_dat1[3]), .DOB4(rx_dat1[4]), .DOB5(rx_dat1[5]), 
          .DOB6(rx_dat1[6]), .DOB7(rx_dat1[7]));
    defparam m_RAM0.DATA_WIDTH_A = 9;
    defparam m_RAM0.DATA_WIDTH_B = 9;
    defparam m_RAM0.REGMODE_A = "NOREG";
    defparam m_RAM0.REGMODE_B = "NOREG";
    defparam m_RAM0.CSDECODE_A = "0b000";
    defparam m_RAM0.CSDECODE_B = "0b000";
    defparam m_RAM0.WRITEMODE_A = "READBEFOREWRITE";
    defparam m_RAM0.WRITEMODE_B = "READBEFOREWRITE";
    defparam m_RAM0.GSR = "DISABLED";
    defparam m_RAM0.RESETMODE = "SYNC";
    defparam m_RAM0.ASYNC_RESET_RELEASE = "SYNC";
    defparam m_RAM0.INIT_DATA = "STATIC";
    defparam m_RAM0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam m_RAM0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    FD1P3AX o_addr_811__i0 (.D(n37[0]), .SP(o_stb_N_212), .CK(SD_CLK_c), 
            .Q(o_addr[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_811__i0.GSR = "ENABLED";
    LUT4 i4030_3_lut (.A(rx_dat1[7]), .B(rx_dat1[3]), .C(rx_dat1[5]), 
         .Z(n5145)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i4030_3_lut.init = 16'hfefe;
    LUT4 i1188_2_lut (.A(n5398), .B(empty), .Z(o_stb_N_212)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(50[17:50])
    defparam i1188_2_lut.init = 16'h2222;
    FD1P3AX i_addr_i0_i7 (.D(n1[7]), .SP(SD_CLK_c_enable_109), .CK(SD_CLK_c), 
            .Q(i_addr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=36, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(37[9] 38[26])
    defparam i_addr_i0_i7.GSR = "ENABLED";
    FD1P3AX i_addr_i0_i6 (.D(n1[6]), .SP(SD_CLK_c_enable_109), .CK(SD_CLK_c), 
            .Q(i_addr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=36, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(37[9] 38[26])
    defparam i_addr_i0_i6.GSR = "ENABLED";
    FD1P3AX i_addr_i0_i5 (.D(n1[5]), .SP(SD_CLK_c_enable_109), .CK(SD_CLK_c), 
            .Q(i_addr[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=36, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(37[9] 38[26])
    defparam i_addr_i0_i5.GSR = "ENABLED";
    FD1P3AX i_addr_i0_i4 (.D(n1[4]), .SP(SD_CLK_c_enable_109), .CK(SD_CLK_c), 
            .Q(i_addr[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=36, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(37[9] 38[26])
    defparam i_addr_i0_i4.GSR = "ENABLED";
    FD1P3AX i_addr_i0_i3 (.D(n1[3]), .SP(SD_CLK_c_enable_109), .CK(SD_CLK_c), 
            .Q(i_addr[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=36, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(37[9] 38[26])
    defparam i_addr_i0_i3.GSR = "ENABLED";
    FD1P3AX i_addr_i0_i2 (.D(n1[2]), .SP(SD_CLK_c_enable_109), .CK(SD_CLK_c), 
            .Q(i_addr[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=36, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(37[9] 38[26])
    defparam i_addr_i0_i2.GSR = "ENABLED";
    FD1P3AX i_addr_i0_i1 (.D(n1[1]), .SP(SD_CLK_c_enable_109), .CK(SD_CLK_c), 
            .Q(i_addr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=36, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(37[9] 38[26])
    defparam i_addr_i0_i1.GSR = "ENABLED";
    CCU2D i_addr_7__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(o_addr[7]), .B1(i_addr[7]), .C1(o_addr[6]), .D1(i_addr[6]), 
          .COUT(n4595));   // c:/lscc/sd_ram_uart/src/fifo.v(27[16:32])
    defparam i_addr_7__I_0_0.INIT0 = 16'hF000;
    defparam i_addr_7__I_0_0.INIT1 = 16'h9009;
    defparam i_addr_7__I_0_0.INJECT1_0 = "NO";
    defparam i_addr_7__I_0_0.INJECT1_1 = "YES";
    LUT4 i2_4_lut (.A(rx_dat1[0]), .B(n8), .C(rx_dat1[2]), .D(rx_stb1), 
         .Z(next_state_3__N_345)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i2_4_lut.init = 16'h8400;
    FD1P3AX o_addr_811__i1 (.D(n37[1]), .SP(o_stb_N_212), .CK(SD_CLK_c), 
            .Q(o_addr[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_811__i1.GSR = "ENABLED";
    FD1P3AX o_addr_811__i2 (.D(n37[2]), .SP(o_stb_N_212), .CK(SD_CLK_c), 
            .Q(o_addr[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_811__i2.GSR = "ENABLED";
    FD1P3AX o_addr_811__i3 (.D(n37[3]), .SP(o_stb_N_212), .CK(SD_CLK_c), 
            .Q(o_addr[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_811__i3.GSR = "ENABLED";
    FD1P3AX o_addr_811__i4 (.D(n37[4]), .SP(o_stb_N_212), .CK(SD_CLK_c), 
            .Q(o_addr[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_811__i4.GSR = "ENABLED";
    FD1P3AX o_addr_811__i5 (.D(n37[5]), .SP(o_stb_N_212), .CK(SD_CLK_c), 
            .Q(o_addr[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_811__i5.GSR = "ENABLED";
    FD1P3AX o_addr_811__i6 (.D(n37[6]), .SP(o_stb_N_212), .CK(SD_CLK_c), 
            .Q(o_addr[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_811__i6.GSR = "ENABLED";
    FD1P3AX o_addr_811__i7 (.D(n37[7]), .SP(o_stb_N_212), .CK(SD_CLK_c), 
            .Q(o_addr[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_811__i7.GSR = "ENABLED";
    LUT4 i1_4_lut_rep_60 (.A(data_count_clk), .B(rx_stb1), .C(o_stb_rd_N_367), 
         .D(nreset_c), .Z(n5398)) /* synthesis lut_function=(!(A (B)+!A (B (C+!(D))))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(65[7] 67[22])
    defparam i1_4_lut_rep_60.init = 16'h3733;
    LUT4 i4112_2_lut_2_lut (.A(n5398), .B(empty), .Z(n7)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(65[7] 67[22])
    defparam i4112_2_lut_2_lut.init = 16'h7777;
    LUT4 i1_3_lut (.A(n8), .B(rx_dat1[0]), .C(rx_dat1[2]), .Z(next_state_3__N_347)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_3_lut.init = 16'h0202;
    LUT4 i2_3_lut (.A(rx_dat1[2]), .B(n8), .C(rx_dat1[0]), .Z(\rd_wt_operation_1__N_343[0] )) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i3_4_lut (.A(rx_dat1[6]), .B(rx_dat1[4]), .C(rx_dat1[1]), .D(n5145), 
         .Z(n8)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3_4_lut.init = 16'h0080;
    CCU2D o_addr_811_add_4_9 (.A0(o_addr[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4734), .S0(n37[7]));   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_811_add_4_9.INIT0 = 16'hfaaa;
    defparam o_addr_811_add_4_9.INIT1 = 16'h0000;
    defparam o_addr_811_add_4_9.INJECT1_0 = "NO";
    defparam o_addr_811_add_4_9.INJECT1_1 = "NO";
    CCU2D o_addr_811_add_4_7 (.A0(o_addr[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_addr[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4733), .COUT(n4734), .S0(n37[5]), .S1(n37[6]));   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_811_add_4_7.INIT0 = 16'hfaaa;
    defparam o_addr_811_add_4_7.INIT1 = 16'hfaaa;
    defparam o_addr_811_add_4_7.INJECT1_0 = "NO";
    defparam o_addr_811_add_4_7.INJECT1_1 = "NO";
    CCU2D o_addr_811_add_4_5 (.A0(o_addr[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_addr[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4732), .COUT(n4733), .S0(n37[3]), .S1(n37[4]));   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_811_add_4_5.INIT0 = 16'hfaaa;
    defparam o_addr_811_add_4_5.INIT1 = 16'hfaaa;
    defparam o_addr_811_add_4_5.INJECT1_0 = "NO";
    defparam o_addr_811_add_4_5.INJECT1_1 = "NO";
    CCU2D o_addr_811_add_4_3 (.A0(o_addr[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_addr[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4731), .COUT(n4732), .S0(n37[1]), .S1(n37[2]));   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_811_add_4_3.INIT0 = 16'hfaaa;
    defparam o_addr_811_add_4_3.INIT1 = 16'hfaaa;
    defparam o_addr_811_add_4_3.INJECT1_0 = "NO";
    defparam o_addr_811_add_4_3.INJECT1_1 = "NO";
    CCU2D o_addr_811_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_addr[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n4731), .S1(n37[0]));   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_811_add_4_1.INIT0 = 16'hF000;
    defparam o_addr_811_add_4_1.INIT1 = 16'h0555;
    defparam o_addr_811_add_4_1.INJECT1_0 = "NO";
    defparam o_addr_811_add_4_1.INJECT1_1 = "NO";
    CCU2D i_addr_7__I_0_7 (.A0(o_addr[5]), .B0(i_addr[5]), .C0(o_addr[4]), 
          .D0(i_addr[4]), .A1(o_addr[3]), .B1(i_addr[3]), .C1(o_addr[2]), 
          .D1(i_addr[2]), .CIN(n4595), .COUT(n4596));
    defparam i_addr_7__I_0_7.INIT0 = 16'h9009;
    defparam i_addr_7__I_0_7.INIT1 = 16'h9009;
    defparam i_addr_7__I_0_7.INJECT1_0 = "YES";
    defparam i_addr_7__I_0_7.INJECT1_1 = "YES";
    CCU2D add_38_9 (.A0(i_addr[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4670), 
          .S0(n1[7]));   // c:/lscc/sd_ram_uart/src/fifo.v(25[35:47])
    defparam add_38_9.INIT0 = 16'h5aaa;
    defparam add_38_9.INIT1 = 16'h0000;
    defparam add_38_9.INJECT1_0 = "NO";
    defparam add_38_9.INJECT1_1 = "NO";
    CCU2D add_38_7 (.A0(i_addr[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(i_addr[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4669), .COUT(n4670), .S0(n1[5]), .S1(n1[6]));   // c:/lscc/sd_ram_uart/src/fifo.v(25[35:47])
    defparam add_38_7.INIT0 = 16'h5aaa;
    defparam add_38_7.INIT1 = 16'h5aaa;
    defparam add_38_7.INJECT1_0 = "NO";
    defparam add_38_7.INJECT1_1 = "NO";
    CCU2D add_38_5 (.A0(i_addr[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(i_addr[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4668), .COUT(n4669), .S0(n1[3]), .S1(n1[4]));   // c:/lscc/sd_ram_uart/src/fifo.v(25[35:47])
    defparam add_38_5.INIT0 = 16'h5aaa;
    defparam add_38_5.INIT1 = 16'h5aaa;
    defparam add_38_5.INJECT1_0 = "NO";
    defparam add_38_5.INJECT1_1 = "NO";
    CCU2D add_38_3 (.A0(i_addr[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(i_addr[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4667), .COUT(n4668), .S0(n1[1]), .S1(n1[2]));   // c:/lscc/sd_ram_uart/src/fifo.v(25[35:47])
    defparam add_38_3.INIT0 = 16'h5aaa;
    defparam add_38_3.INIT1 = 16'h5aaa;
    defparam add_38_3.INJECT1_0 = "NO";
    defparam add_38_3.INJECT1_1 = "NO";
    CCU2D add_38_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(i_addr[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n4667), .S1(n1[0]));   // c:/lscc/sd_ram_uart/src/fifo.v(25[35:47])
    defparam add_38_1.INIT0 = 16'hF000;
    defparam add_38_1.INIT1 = 16'h5555;
    defparam add_38_1.INJECT1_0 = "NO";
    defparam add_38_1.INJECT1_1 = "NO";
    CCU2D i_addr_1_7__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_addr[7]), .B1(n1[7]), .C1(o_addr[6]), 
          .D1(n1[6]), .COUT(n4597));   // c:/lscc/sd_ram_uart/src/fifo.v(28[16:34])
    defparam i_addr_1_7__I_0_0.INIT0 = 16'hF000;
    defparam i_addr_1_7__I_0_0.INIT1 = 16'h9009;
    defparam i_addr_1_7__I_0_0.INJECT1_0 = "NO";
    defparam i_addr_1_7__I_0_0.INJECT1_1 = "YES";
    CCU2D i_addr_1_7__I_0_8 (.A0(o_addr[1]), .B0(n1[1]), .C0(o_addr[0]), 
          .D0(n1[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4598), .S1(full));
    defparam i_addr_1_7__I_0_8.INIT0 = 16'h9009;
    defparam i_addr_1_7__I_0_8.INIT1 = 16'hFFFF;
    defparam i_addr_1_7__I_0_8.INJECT1_0 = "YES";
    defparam i_addr_1_7__I_0_8.INJECT1_1 = "NO";
    CCU2D i_addr_1_7__I_0_7 (.A0(o_addr[5]), .B0(n1[5]), .C0(o_addr[4]), 
          .D0(n1[4]), .A1(o_addr[3]), .B1(n1[3]), .C1(o_addr[2]), .D1(n1[2]), 
          .CIN(n4597), .COUT(n4598));
    defparam i_addr_1_7__I_0_7.INIT0 = 16'h9009;
    defparam i_addr_1_7__I_0_7.INIT1 = 16'h9009;
    defparam i_addr_1_7__I_0_7.INJECT1_0 = "YES";
    defparam i_addr_1_7__I_0_7.INJECT1_1 = "YES";
    CCU2D i_addr_7__I_0_8 (.A0(o_addr[1]), .B0(i_addr[1]), .C0(o_addr[0]), 
          .D0(i_addr[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4596), .S1(empty));
    defparam i_addr_7__I_0_8.INIT0 = 16'h9009;
    defparam i_addr_7__I_0_8.INIT1 = 16'hFFFF;
    defparam i_addr_7__I_0_8.INJECT1_0 = "YES";
    defparam i_addr_7__I_0_8.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module uart_rx
//

module uart_rx (SD_CLK_c, uart_rx_c, rx_dat, full, SD_CLK_c_enable_109, 
            GND_net) /* synthesis syn_module_defined=1 */ ;
    input SD_CLK_c;
    input uart_rx_c;
    output [7:0]rx_dat;
    input full;
    output SD_CLK_c_enable_109;
    input GND_net;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(31[6:16])
    
    wire RXDc, RXDb, SMPL, PS_10__N_48, rx_stb, STBo_N_161;
    wire [10:0]PS;   // c:/lscc/sd_ram_uart/src/uart_rx.v(51[12:14])
    
    wire n2114;
    wire [10:0]n52;
    
    wire RXDa;
    wire [7:0]DAT;   // c:/lscc/sd_ram_uart/src/uart_rx.v(55[11:14])
    
    wire SD_CLK_c_enable_154, n2888, SD_CLK_c_enable_183, FSM_7__N_60, 
        n3367, n20, n16, FSM_7__N_55, FSM_7__N_54, n5393;
    wire [10:0]PS_10__N_37;
    
    wire FSM_7__N_56, n5392, n5396, n5127, n5389, n5109, FSM_7__N_52, 
        n2882, FSM_7__N_53, FSM_7__N_51, n5380, n5101, n2876, n18, 
        n5110, n2870, FSM_7__N_59, n2891, n5112, n2885, FSM_7__N_57, 
        n5115, n2879, FSM_7__N_58, n5116, n2873, FSM_7__N_49, FSM_7__N_50, 
        n5102, n2192, n2210, n4739, n4738, n4737, n4736, n5388, 
        n4735;
    
    FD1S3AX RXDc_69 (.D(RXDb), .CK(SD_CLK_c), .Q(RXDc)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(64[8:36])
    defparam RXDc_69.GSR = "DISABLED";
    FD1S3AX SMPL_72 (.D(PS_10__N_48), .CK(SD_CLK_c), .Q(SMPL)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(78[8:26])
    defparam SMPL_72.GSR = "ENABLED";
    FD1S3AX STBo_76 (.D(STBo_N_161), .CK(SD_CLK_c), .Q(rx_stb)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(123[7] 127[9])
    defparam STBo_76.GSR = "ENABLED";
    FD1S3IX PS_i0 (.D(n52[0]), .CK(SD_CLK_c), .CD(n2114), .Q(PS[0])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(69[7] 73[5])
    defparam PS_i0.GSR = "ENABLED";
    FD1S3AX RXDa_67 (.D(uart_rx_c), .CK(SD_CLK_c), .Q(RXDa)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(62[8:35])
    defparam RXDa_67.GSR = "DISABLED";
    FD1P3AX DAT_i0_i0 (.D(n2888), .SP(SD_CLK_c_enable_154), .CK(SD_CLK_c), 
            .Q(DAT[0])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam DAT_i0_i0.GSR = "ENABLED";
    FD1P3AX DATo_i0_i0 (.D(DAT[0]), .SP(SD_CLK_c_enable_183), .CK(SD_CLK_c), 
            .Q(rx_dat[0])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(116[7] 118[9])
    defparam DATo_i0_i0.GSR = "ENABLED";
    FD1S3AX FSM_FSM_i1 (.D(n3367), .CK(SD_CLK_c), .Q(FSM_7__N_60));   // c:/lscc/sd_ram_uart/src/uart_rx.v(83[7] 97[9])
    defparam FSM_FSM_i1.GSR = "ENABLED";
    LUT4 i4097_4_lut (.A(PS[7]), .B(n20), .C(n16), .D(PS[9]), .Z(PS_10__N_48)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i4097_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_rep_55 (.A(FSM_7__N_55), .B(FSM_7__N_54), .Z(n5393)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_2_lut_rep_55.init = 16'heeee;
    FD1S3JX PS_i10 (.D(PS_10__N_37[10]), .CK(SD_CLK_c), .PD(PS_10__N_48), 
            .Q(PS[10])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(69[7] 73[5])
    defparam PS_i10.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(FSM_7__N_56), .B(n5392), .C(n5396), 
         .D(n5393), .Z(n5127)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_56 (.A(FSM_7__N_56), .B(n5392), .C(FSM_7__N_55), 
         .D(n5389), .Z(n5109)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_2_lut_3_lut_4_lut_adj_56.init = 16'hfffe;
    LUT4 i1_4_lut (.A(RXDc), .B(DAT[1]), .C(FSM_7__N_52), .D(n5127), 
         .Z(n2882)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_4_lut.init = 16'heca0;
    LUT4 i1_2_lut_rep_51_3_lut (.A(FSM_7__N_53), .B(FSM_7__N_51), .C(FSM_7__N_52), 
         .Z(n5389)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_2_lut_rep_51_3_lut.init = 16'hfefe;
    FD1S3IX PS_i9 (.D(PS_10__N_37[9]), .CK(SD_CLK_c), .CD(PS_10__N_48), 
            .Q(PS[9])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(69[7] 73[5])
    defparam PS_i9.GSR = "ENABLED";
    FD1S3IX PS_i8 (.D(n52[8]), .CK(SD_CLK_c), .CD(n2114), .Q(PS[8])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(69[7] 73[5])
    defparam PS_i8.GSR = "ENABLED";
    FD1S3JX PS_i7 (.D(PS_10__N_37[7]), .CK(SD_CLK_c), .PD(PS_10__N_48), 
            .Q(PS[7])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(69[7] 73[5])
    defparam PS_i7.GSR = "ENABLED";
    FD1S3IX PS_i6 (.D(PS_10__N_37[6]), .CK(SD_CLK_c), .CD(PS_10__N_48), 
            .Q(PS[6])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(69[7] 73[5])
    defparam PS_i6.GSR = "ENABLED";
    FD1S3IX PS_i5 (.D(n52[5]), .CK(SD_CLK_c), .CD(n2114), .Q(PS[5])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(69[7] 73[5])
    defparam PS_i5.GSR = "ENABLED";
    FD1S3IX PS_i4 (.D(n52[4]), .CK(SD_CLK_c), .CD(n2114), .Q(PS[4])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(69[7] 73[5])
    defparam PS_i4.GSR = "ENABLED";
    FD1S3IX PS_i3 (.D(n52[3]), .CK(SD_CLK_c), .CD(n2114), .Q(PS[3])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(69[7] 73[5])
    defparam PS_i3.GSR = "ENABLED";
    FD1S3IX PS_i2 (.D(n52[2]), .CK(SD_CLK_c), .CD(n2114), .Q(PS[2])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(69[7] 73[5])
    defparam PS_i2.GSR = "ENABLED";
    FD1S3JX PS_i1 (.D(PS_10__N_37[1]), .CK(SD_CLK_c), .PD(PS_10__N_48), 
            .Q(PS[1])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(69[7] 73[5])
    defparam PS_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_42_3_lut (.A(rx_stb), .B(full), .C(FSM_7__N_60), 
         .Z(n5380)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(123[7] 127[9])
    defparam i1_2_lut_rep_42_3_lut.init = 16'hd0d0;
    LUT4 i1_4_lut_adj_57 (.A(RXDc), .B(DAT[2]), .C(FSM_7__N_53), .D(n5101), 
         .Z(n2876)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_4_lut_adj_57.init = 16'heca0;
    LUT4 i9_4_lut (.A(PS[4]), .B(n18), .C(PS[10]), .D(PS[2]), .Z(n20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_58 (.A(FSM_7__N_56), .B(n5392), .C(FSM_7__N_54), 
         .D(n5389), .Z(n5110)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_2_lut_3_lut_4_lut_adj_58.init = 16'hfffe;
    LUT4 i1_4_lut_adj_59 (.A(RXDc), .B(DAT[3]), .C(FSM_7__N_54), .D(n5109), 
         .Z(n2870)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_4_lut_adj_59.init = 16'heca0;
    LUT4 i2_4_lut (.A(n5380), .B(FSM_7__N_59), .C(rx_stb), .D(SMPL), 
         .Z(STBo_N_161)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(52[7:11])
    defparam i2_4_lut.init = 16'heeea;
    LUT4 i1_4_lut_adj_60 (.A(RXDc), .B(DAT[4]), .C(FSM_7__N_55), .D(n5110), 
         .Z(n2891)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_4_lut_adj_60.init = 16'heca0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_61 (.A(FSM_7__N_52), .B(n5396), .C(n5392), 
         .D(n5393), .Z(n5112)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_2_lut_3_lut_4_lut_adj_61.init = 16'hfffe;
    LUT4 i5_2_lut (.A(PS[5]), .B(PS[8]), .Z(n16)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_62 (.A(RXDc), .B(DAT[5]), .C(FSM_7__N_56), .D(n5112), 
         .Z(n2885)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_4_lut_adj_62.init = 16'heca0;
    LUT4 i1_4_lut_adj_63 (.A(RXDc), .B(DAT[6]), .C(FSM_7__N_57), .D(n5115), 
         .Z(n2879)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_4_lut_adj_63.init = 16'heca0;
    LUT4 i1_4_lut_adj_64 (.A(RXDc), .B(DAT[7]), .C(FSM_7__N_58), .D(n5116), 
         .Z(n2873)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_4_lut_adj_64.init = 16'heca0;
    FD1P3AX DAT_i0_i1 (.D(n2882), .SP(SD_CLK_c_enable_154), .CK(SD_CLK_c), 
            .Q(DAT[1])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam DAT_i0_i1.GSR = "ENABLED";
    FD1P3AX DAT_i0_i2 (.D(n2876), .SP(SD_CLK_c_enable_154), .CK(SD_CLK_c), 
            .Q(DAT[2])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam DAT_i0_i2.GSR = "ENABLED";
    FD1P3AX DAT_i0_i3 (.D(n2870), .SP(SD_CLK_c_enable_154), .CK(SD_CLK_c), 
            .Q(DAT[3])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam DAT_i0_i3.GSR = "ENABLED";
    FD1P3AX DAT_i0_i4 (.D(n2891), .SP(SD_CLK_c_enable_154), .CK(SD_CLK_c), 
            .Q(DAT[4])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam DAT_i0_i4.GSR = "ENABLED";
    FD1P3AX DAT_i0_i5 (.D(n2885), .SP(SD_CLK_c_enable_154), .CK(SD_CLK_c), 
            .Q(DAT[5])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam DAT_i0_i5.GSR = "ENABLED";
    FD1P3AX DAT_i0_i6 (.D(n2879), .SP(SD_CLK_c_enable_154), .CK(SD_CLK_c), 
            .Q(DAT[6])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam DAT_i0_i6.GSR = "ENABLED";
    FD1P3AX DAT_i0_i7 (.D(n2873), .SP(SD_CLK_c_enable_154), .CK(SD_CLK_c), 
            .Q(DAT[7])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam DAT_i0_i7.GSR = "ENABLED";
    FD1P3AX DATo_i0_i1 (.D(DAT[1]), .SP(SD_CLK_c_enable_183), .CK(SD_CLK_c), 
            .Q(rx_dat[1])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(116[7] 118[9])
    defparam DATo_i0_i1.GSR = "ENABLED";
    FD1P3AX DATo_i0_i2 (.D(DAT[2]), .SP(SD_CLK_c_enable_183), .CK(SD_CLK_c), 
            .Q(rx_dat[2])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(116[7] 118[9])
    defparam DATo_i0_i2.GSR = "ENABLED";
    FD1P3AX DATo_i0_i3 (.D(DAT[3]), .SP(SD_CLK_c_enable_183), .CK(SD_CLK_c), 
            .Q(rx_dat[3])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(116[7] 118[9])
    defparam DATo_i0_i3.GSR = "ENABLED";
    FD1P3AX DATo_i0_i4 (.D(DAT[4]), .SP(SD_CLK_c_enable_183), .CK(SD_CLK_c), 
            .Q(rx_dat[4])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(116[7] 118[9])
    defparam DATo_i0_i4.GSR = "ENABLED";
    FD1P3AX DATo_i0_i5 (.D(DAT[5]), .SP(SD_CLK_c_enable_183), .CK(SD_CLK_c), 
            .Q(rx_dat[5])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(116[7] 118[9])
    defparam DATo_i0_i5.GSR = "ENABLED";
    FD1P3AX DATo_i0_i6 (.D(DAT[6]), .SP(SD_CLK_c_enable_183), .CK(SD_CLK_c), 
            .Q(rx_dat[6])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(116[7] 118[9])
    defparam DATo_i0_i6.GSR = "ENABLED";
    FD1P3AX DATo_i0_i7 (.D(DAT[7]), .SP(SD_CLK_c_enable_183), .CK(SD_CLK_c), 
            .Q(rx_dat[7])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(116[7] 118[9])
    defparam DATo_i0_i7.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_65 (.A(n5389), .B(n5393), .C(FSM_7__N_57), 
         .D(FSM_7__N_56), .Z(n5116)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_2_lut_3_lut_4_lut_adj_65.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut (.A(FSM_7__N_60), .B(SD_CLK_c_enable_109), .C(FSM_7__N_59), 
         .D(SMPL), .Z(n3367)) /* synthesis lut_function=(A ((C (D))+!B)+!A (C (D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(83[7] 97[9])
    defparam i1_3_lut_4_lut.init = 16'hf222;
    LUT4 i4103_4_lut (.A(FSM_7__N_59), .B(FSM_7__N_60), .C(FSM_7__N_49), 
         .D(FSM_7__N_50), .Z(SD_CLK_c_enable_154)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i4103_4_lut.init = 16'h0001;
    LUT4 i1_4_lut_adj_66 (.A(RXDc), .B(DAT[0]), .C(FSM_7__N_51), .D(n5102), 
         .Z(n2888)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_4_lut_adj_66.init = 16'heca0;
    FD1P3AX FSM_FSM_i2 (.D(FSM_7__N_58), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_59));   // c:/lscc/sd_ram_uart/src/uart_rx.v(83[7] 97[9])
    defparam FSM_FSM_i2.GSR = "ENABLED";
    LUT4 i4100_2_lut_rep_43 (.A(rx_stb), .B(full), .Z(SD_CLK_c_enable_109)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(123[7] 127[9])
    defparam i4100_2_lut_rep_43.init = 16'h2222;
    FD1P3AX FSM_FSM_i3 (.D(FSM_7__N_57), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_58));   // c:/lscc/sd_ram_uart/src/uart_rx.v(83[7] 97[9])
    defparam FSM_FSM_i3.GSR = "ENABLED";
    FD1P3AX FSM_FSM_i4 (.D(FSM_7__N_56), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_57));   // c:/lscc/sd_ram_uart/src/uart_rx.v(83[7] 97[9])
    defparam FSM_FSM_i4.GSR = "ENABLED";
    FD1P3AX FSM_FSM_i5 (.D(FSM_7__N_55), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_56));   // c:/lscc/sd_ram_uart/src/uart_rx.v(83[7] 97[9])
    defparam FSM_FSM_i5.GSR = "ENABLED";
    FD1P3AX FSM_FSM_i6 (.D(FSM_7__N_54), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_55));   // c:/lscc/sd_ram_uart/src/uart_rx.v(83[7] 97[9])
    defparam FSM_FSM_i6.GSR = "ENABLED";
    FD1P3AX FSM_FSM_i7 (.D(FSM_7__N_53), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_54));   // c:/lscc/sd_ram_uart/src/uart_rx.v(83[7] 97[9])
    defparam FSM_FSM_i7.GSR = "ENABLED";
    FD1P3AX FSM_FSM_i8 (.D(FSM_7__N_52), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_53));   // c:/lscc/sd_ram_uart/src/uart_rx.v(83[7] 97[9])
    defparam FSM_FSM_i8.GSR = "ENABLED";
    FD1P3AX FSM_FSM_i9 (.D(FSM_7__N_51), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_52));   // c:/lscc/sd_ram_uart/src/uart_rx.v(83[7] 97[9])
    defparam FSM_FSM_i9.GSR = "ENABLED";
    FD1P3AX FSM_FSM_i10 (.D(FSM_7__N_50), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_51));   // c:/lscc/sd_ram_uart/src/uart_rx.v(83[7] 97[9])
    defparam FSM_FSM_i10.GSR = "ENABLED";
    FD1S3AX FSM_FSM_i11 (.D(n2192), .CK(SD_CLK_c), .Q(FSM_7__N_50));   // c:/lscc/sd_ram_uart/src/uart_rx.v(83[7] 97[9])
    defparam FSM_FSM_i11.GSR = "ENABLED";
    FD1S3AY FSM_FSM_i12 (.D(n2210), .CK(SD_CLK_c), .Q(FSM_7__N_49));   // c:/lscc/sd_ram_uart/src/uart_rx.v(83[7] 97[9])
    defparam FSM_FSM_i12.GSR = "ENABLED";
    CCU2D sub_7_add_2_11 (.A0(PS[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PS[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4739), 
          .S0(n52[9]), .S1(n52[10]));   // c:/lscc/sd_ram_uart/src/uart_rx.v(72[16:22])
    defparam sub_7_add_2_11.INIT0 = 16'h5555;
    defparam sub_7_add_2_11.INIT1 = 16'h5555;
    defparam sub_7_add_2_11.INJECT1_0 = "NO";
    defparam sub_7_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_9 (.A0(PS[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PS[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4738), 
          .COUT(n4739), .S0(n52[7]), .S1(n52[8]));   // c:/lscc/sd_ram_uart/src/uart_rx.v(72[16:22])
    defparam sub_7_add_2_9.INIT0 = 16'h5555;
    defparam sub_7_add_2_9.INIT1 = 16'h5555;
    defparam sub_7_add_2_9.INJECT1_0 = "NO";
    defparam sub_7_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_7 (.A0(PS[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PS[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4737), 
          .COUT(n4738), .S0(n52[5]), .S1(n52[6]));   // c:/lscc/sd_ram_uart/src/uart_rx.v(72[16:22])
    defparam sub_7_add_2_7.INIT0 = 16'h5555;
    defparam sub_7_add_2_7.INIT1 = 16'h5555;
    defparam sub_7_add_2_7.INJECT1_0 = "NO";
    defparam sub_7_add_2_7.INJECT1_1 = "NO";
    LUT4 i7_4_lut (.A(PS[3]), .B(PS[6]), .C(PS[0]), .D(PS[1]), .Z(n18)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_67 (.A(n5389), .B(n5393), .C(FSM_7__N_58), 
         .D(FSM_7__N_56), .Z(n5115)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_2_lut_3_lut_4_lut_adj_67.init = 16'hfffe;
    LUT4 i1_2_lut_rep_54 (.A(FSM_7__N_57), .B(FSM_7__N_58), .Z(n5392)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_2_lut_rep_54.init = 16'heeee;
    LUT4 i60_4_lut (.A(RXDc), .B(FSM_7__N_60), .C(FSM_7__N_49), .D(SD_CLK_c_enable_109), 
         .Z(n2210)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(59[7:11])
    defparam i60_4_lut.init = 16'heca0;
    LUT4 i1907_1_lut (.A(FSM_7__N_59), .Z(SD_CLK_c_enable_183)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(83[7] 97[9])
    defparam i1907_1_lut.init = 16'h5555;
    CCU2D sub_7_add_2_5 (.A0(PS[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PS[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4736), 
          .COUT(n4737), .S0(n52[3]), .S1(n52[4]));   // c:/lscc/sd_ram_uart/src/uart_rx.v(72[16:22])
    defparam sub_7_add_2_5.INIT0 = 16'h5555;
    defparam sub_7_add_2_5.INIT1 = 16'h5555;
    defparam sub_7_add_2_5.INJECT1_0 = "NO";
    defparam sub_7_add_2_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_50_3_lut (.A(FSM_7__N_57), .B(FSM_7__N_58), .C(FSM_7__N_56), 
         .Z(n5388)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_2_lut_rep_50_3_lut.init = 16'hfefe;
    CCU2D sub_7_add_2_3 (.A0(PS[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PS[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4735), 
          .COUT(n4736), .S0(n52[1]), .S1(n52[2]));   // c:/lscc/sd_ram_uart/src/uart_rx.v(72[16:22])
    defparam sub_7_add_2_3.INIT0 = 16'h5555;
    defparam sub_7_add_2_3.INIT1 = 16'h5555;
    defparam sub_7_add_2_3.INJECT1_0 = "NO";
    defparam sub_7_add_2_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_68 (.A(n5388), .B(n5393), .C(FSM_7__N_51), 
         .D(FSM_7__N_52), .Z(n5101)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_2_lut_3_lut_4_lut_adj_68.init = 16'hfffe;
    CCU2D sub_7_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PS[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n4735), 
          .S1(n52[0]));   // c:/lscc/sd_ram_uart/src/uart_rx.v(72[16:22])
    defparam sub_7_add_2_1.INIT0 = 16'hF000;
    defparam sub_7_add_2_1.INIT1 = 16'h5555;
    defparam sub_7_add_2_1.INJECT1_0 = "NO";
    defparam sub_7_add_2_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_69 (.A(n5388), .B(n5393), .C(FSM_7__N_53), 
         .D(FSM_7__N_52), .Z(n5102)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_2_lut_3_lut_4_lut_adj_69.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut (.A(RXDc), .B(FSM_7__N_49), .C(PS_10__N_48), .Z(n2114)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(64[8:36])
    defparam i1_2_lut_3_lut.init = 16'hf4f4;
    LUT4 i1_2_lut_3_lut_adj_70 (.A(RXDc), .B(FSM_7__N_49), .C(n52[10]), 
         .Z(PS_10__N_37[10])) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(64[8:36])
    defparam i1_2_lut_3_lut_adj_70.init = 16'hb0b0;
    LUT4 i1_2_lut_rep_58 (.A(FSM_7__N_53), .B(FSM_7__N_51), .Z(n5396)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_2_lut_rep_58.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_71 (.A(RXDc), .B(FSM_7__N_49), .C(n52[9]), 
         .Z(PS_10__N_37[9])) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(64[8:36])
    defparam i1_2_lut_3_lut_adj_71.init = 16'hf4f4;
    LUT4 i1_2_lut_3_lut_adj_72 (.A(RXDc), .B(FSM_7__N_49), .C(n52[7]), 
         .Z(PS_10__N_37[7])) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(64[8:36])
    defparam i1_2_lut_3_lut_adj_72.init = 16'hb0b0;
    LUT4 i1_2_lut_3_lut_adj_73 (.A(RXDc), .B(FSM_7__N_49), .C(n52[6]), 
         .Z(PS_10__N_37[6])) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(64[8:36])
    defparam i1_2_lut_3_lut_adj_73.init = 16'hf4f4;
    LUT4 i1_2_lut_3_lut_adj_74 (.A(RXDc), .B(FSM_7__N_49), .C(n52[1]), 
         .Z(PS_10__N_37[1])) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(64[8:36])
    defparam i1_2_lut_3_lut_adj_74.init = 16'hb0b0;
    LUT4 i1_3_lut_4_lut_adj_75 (.A(RXDc), .B(FSM_7__N_49), .C(FSM_7__N_50), 
         .D(SMPL), .Z(n2192)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(64[8:36])
    defparam i1_3_lut_4_lut_adj_75.init = 16'h44f4;
    FD1S3AX RXDb_68 (.D(RXDa), .CK(SD_CLK_c), .Q(RXDb)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(63[8:36])
    defparam RXDb_68.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module Clock_DCMA
//

module Clock_DCMA (clk_c, SD_CLK_c, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input clk_c;
    output SD_CLK_c;
    input GND_net;
    
    wire clk_c /* synthesis is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(5[23:26])
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(31[6:16])
    
    EHXPLLJ PLLInst_0 (.CLKI(clk_c), .CLKFB(SD_CLK_c), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(SD_CLK_c)) /* synthesis FREQUENCY_PIN_CLKOP="133.333333", FREQUENCY_PIN_CLKI="50.000000", ICP_CURRENT="8", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=8, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=33, LSE_RLINE=36 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(33[12] 36[2])
    defparam PLLInst_0.CLKI_DIV = 3;
    defparam PLLInst_0.CLKFB_DIV = 8;
    defparam PLLInst_0.CLKOP_DIV = 4;
    defparam PLLInst_0.CLKOS_DIV = 1;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 3;
    defparam PLLInst_0.CLKOS_CPHASE = 0;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.FRACN_ENABLE = "DISABLED";
    defparam PLLInst_0.FRACN_DIV = 0;
    defparam PLLInst_0.CLKOP_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.PLL_USE_WB = "DISABLED";
    defparam PLLInst_0.PREDIVIDER_MUXA1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXB1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXC1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXD1 = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA2 = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB2 = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC2 = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD2 = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.MRST_ENA = "DISABLED";
    defparam PLLInst_0.DCRST_ENA = "DISABLED";
    defparam PLLInst_0.DDRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
//
// Verilog Description of module uart_tx
//

module uart_tx (SD_CLK_c, n5560, tx_ack, DAT_7__N_993, uart_tx_c, 
            GND_net, n1848, n1850, n1844, n1846, n1840, n1842, 
            tx_stb, n1852, n1854) /* synthesis syn_module_defined=1 */ ;
    input SD_CLK_c;
    input n5560;
    output tx_ack;
    output DAT_7__N_993;
    output uart_tx_c;
    input GND_net;
    input n1848;
    input n1850;
    input n1844;
    input n1846;
    input n1840;
    input n1842;
    input tx_stb;
    input n1852;
    input n1854;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(31[6:16])
    
    wire SMPL, PS_10__N_882, n1839, n4789, n2167;
    wire [10:0]PS;   // c:/lscc/sd_ram_uart/src/uart_tx.v(35[12:14])
    wire [11:0]PS_10__N_870;
    
    wire n4753, n4752, n4751, n4750, n4749, FSM_7__N_895, FSM_7__N_894, 
        FSM_7__N_892, FSM_7__N_890, FSM_7__N_891, FSM_7__N_889, n4812, 
        n2184, n2544, n2644, FSM_7__N_893, n2211;
    wire [0:0]n1588;
    
    wire n2645;
    wire [0:0]n1597;
    
    wire n20, n16, FSM_7__N_883, n18, FSM_7__N_884, FSM_7__N_885, 
        FSM_7__N_886, n2129, n1587, FSM_7__N_887, FSM_7__N_888, n2229, 
        n2225;
    
    FD1S3AX SMPL_61 (.D(PS_10__N_882), .CK(SD_CLK_c), .Q(SMPL)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(49[8:26])
    defparam SMPL_61.GSR = "ENABLED";
    FD1S3AX DAT (.D(n5560), .CK(SD_CLK_c), .Q(n1839));   // c:/lscc/sd_ram_uart/src/uart_tx.v(75[7:47])
    defparam DAT.GSR = "ENABLED";
    FD1S3AX ACKi_64 (.D(DAT_7__N_993), .CK(SD_CLK_c), .Q(tx_ack)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(80[7] 82[17])
    defparam ACKi_64.GSR = "ENABLED";
    FD1S3JX TXD_65 (.D(n2167), .CK(SD_CLK_c), .PD(n4789), .Q(uart_tx_c)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(87[7] 99[9])
    defparam TXD_65.GSR = "ENABLED";
    FD1S3IX PS_i0 (.D(PS_10__N_870[0]), .CK(SD_CLK_c), .CD(PS_10__N_882), 
            .Q(PS[0])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[11:50])
    defparam PS_i0.GSR = "ENABLED";
    CCU2D add_596_11 (.A0(PS[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PS[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4753), 
          .S0(PS_10__N_870[9]), .S1(PS_10__N_870[10]));   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[43:49])
    defparam add_596_11.INIT0 = 16'h5555;
    defparam add_596_11.INIT1 = 16'h5555;
    defparam add_596_11.INJECT1_0 = "NO";
    defparam add_596_11.INJECT1_1 = "NO";
    CCU2D add_596_9 (.A0(PS[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PS[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4752), 
          .COUT(n4753), .S0(PS_10__N_870[7]), .S1(PS_10__N_870[8]));   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[43:49])
    defparam add_596_9.INIT0 = 16'h5555;
    defparam add_596_9.INIT1 = 16'h5555;
    defparam add_596_9.INJECT1_0 = "NO";
    defparam add_596_9.INJECT1_1 = "NO";
    CCU2D add_596_7 (.A0(PS[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PS[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4751), 
          .COUT(n4752), .S0(PS_10__N_870[5]), .S1(PS_10__N_870[6]));   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[43:49])
    defparam add_596_7.INIT0 = 16'h5555;
    defparam add_596_7.INIT1 = 16'h5555;
    defparam add_596_7.INJECT1_0 = "NO";
    defparam add_596_7.INJECT1_1 = "NO";
    CCU2D add_596_5 (.A0(PS[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PS[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4750), 
          .COUT(n4751), .S0(PS_10__N_870[3]), .S1(PS_10__N_870[4]));   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[43:49])
    defparam add_596_5.INIT0 = 16'h5555;
    defparam add_596_5.INIT1 = 16'h5555;
    defparam add_596_5.INJECT1_0 = "NO";
    defparam add_596_5.INJECT1_1 = "NO";
    CCU2D add_596_3 (.A0(PS[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PS[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4749), 
          .COUT(n4750), .S0(PS_10__N_870[1]), .S1(PS_10__N_870[2]));   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[43:49])
    defparam add_596_3.INIT0 = 16'h5555;
    defparam add_596_3.INIT1 = 16'h5555;
    defparam add_596_3.INJECT1_0 = "NO";
    defparam add_596_3.INJECT1_1 = "NO";
    FD1P3AX FSM_FSM_i1 (.D(FSM_7__N_894), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_895));   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam FSM_FSM_i1.GSR = "ENABLED";
    CCU2D add_596_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PS[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n4749), 
          .S1(PS_10__N_870[0]));   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[43:49])
    defparam add_596_1.INIT0 = 16'hF000;
    defparam add_596_1.INIT1 = 16'h5555;
    defparam add_596_1.INJECT1_0 = "NO";
    defparam add_596_1.INJECT1_1 = "NO";
    FD1S3JX PS_i10 (.D(PS_10__N_870[10]), .CK(SD_CLK_c), .PD(PS_10__N_882), 
            .Q(PS[10])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[11:50])
    defparam PS_i10.GSR = "ENABLED";
    FD1S3IX PS_i9 (.D(PS_10__N_870[9]), .CK(SD_CLK_c), .CD(PS_10__N_882), 
            .Q(PS[9])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[11:50])
    defparam PS_i9.GSR = "ENABLED";
    FD1S3IX PS_i8 (.D(PS_10__N_870[8]), .CK(SD_CLK_c), .CD(PS_10__N_882), 
            .Q(PS[8])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[11:50])
    defparam PS_i8.GSR = "ENABLED";
    FD1S3JX PS_i7 (.D(PS_10__N_870[7]), .CK(SD_CLK_c), .PD(PS_10__N_882), 
            .Q(PS[7])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[11:50])
    defparam PS_i7.GSR = "ENABLED";
    FD1S3IX PS_i6 (.D(PS_10__N_870[6]), .CK(SD_CLK_c), .CD(PS_10__N_882), 
            .Q(PS[6])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[11:50])
    defparam PS_i6.GSR = "ENABLED";
    FD1S3IX PS_i5 (.D(PS_10__N_870[5]), .CK(SD_CLK_c), .CD(PS_10__N_882), 
            .Q(PS[5])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[11:50])
    defparam PS_i5.GSR = "ENABLED";
    FD1S3IX PS_i4 (.D(PS_10__N_870[4]), .CK(SD_CLK_c), .CD(PS_10__N_882), 
            .Q(PS[4])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[11:50])
    defparam PS_i4.GSR = "ENABLED";
    FD1S3IX PS_i3 (.D(PS_10__N_870[3]), .CK(SD_CLK_c), .CD(PS_10__N_882), 
            .Q(PS[3])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[11:50])
    defparam PS_i3.GSR = "ENABLED";
    FD1S3IX PS_i2 (.D(PS_10__N_870[2]), .CK(SD_CLK_c), .CD(PS_10__N_882), 
            .Q(PS[2])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[11:50])
    defparam PS_i2.GSR = "ENABLED";
    FD1S3JX PS_i1 (.D(PS_10__N_870[1]), .CK(SD_CLK_c), .PD(PS_10__N_882), 
            .Q(PS[1])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[11:50])
    defparam PS_i1.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(FSM_7__N_892), .B(FSM_7__N_890), .C(FSM_7__N_891), 
         .D(FSM_7__N_889), .Z(n4812)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i4054_4_lut (.A(n2184), .B(n2544), .C(FSM_7__N_889), .D(FSM_7__N_890), 
         .Z(n2644)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;
    defparam i4054_4_lut.init = 16'hccca;
    LUT4 i1175_3_lut (.A(n1848), .B(n1850), .C(FSM_7__N_889), .Z(n2544)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(87[7] 99[9])
    defparam i1175_3_lut.init = 16'hcaca;
    LUT4 mux_709_i1_3_lut (.A(n1844), .B(n1846), .C(FSM_7__N_891), .Z(n2184)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(87[7] 99[9])
    defparam mux_709_i1_3_lut.init = 16'hcaca;
    LUT4 mux_707_i1_3_lut (.A(n1840), .B(n1842), .C(FSM_7__N_893), .Z(n2211)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(87[7] 99[9])
    defparam mux_707_i1_3_lut.init = 16'hcaca;
    PFUMX mux_721_i1 (.BLUT(n1588[0]), .ALUT(n2645), .C0(n4812), .Z(n1597[0]));
    LUT4 i4087_4_lut (.A(PS[4]), .B(n20), .C(n16), .D(PS[8]), .Z(PS_10__N_882)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(49[16:25])
    defparam i4087_4_lut.init = 16'h0001;
    LUT4 DAT_7__I_55_2_lut (.A(FSM_7__N_883), .B(tx_stb), .Z(DAT_7__N_993)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(80[10:33])
    defparam DAT_7__I_55_2_lut.init = 16'h8888;
    LUT4 i9_4_lut (.A(PS[6]), .B(n18), .C(PS[3]), .D(PS[10]), .Z(n20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(49[16:25])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut (.A(FSM_7__N_884), .B(FSM_7__N_883), .C(FSM_7__N_885), 
         .Z(n4789)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i5_2_lut (.A(PS[1]), .B(PS[5]), .Z(n16)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(49[16:25])
    defparam i5_2_lut.init = 16'heeee;
    LUT4 i3036_4_lut (.A(n1597[0]), .B(FSM_7__N_886), .C(n2129), .D(n1587), 
         .Z(n2167)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(87[7] 99[9])
    defparam i3036_4_lut.init = 16'h3022;
    LUT4 i7_4_lut (.A(PS[7]), .B(PS[2]), .C(PS[9]), .D(PS[0]), .Z(n18)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(49[16:25])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i1186_4_lut (.A(n1839), .B(n1852), .C(n1854), .D(FSM_7__N_887), 
         .Z(n2129)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(87[7] 99[9])
    defparam i1186_4_lut.init = 16'ha088;
    LUT4 i715_2_lut (.A(FSM_7__N_888), .B(FSM_7__N_887), .Z(n1587)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i715_2_lut.init = 16'heeee;
    FD1P3AX FSM_FSM_i2 (.D(FSM_7__N_893), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_894));   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam FSM_FSM_i2.GSR = "ENABLED";
    LUT4 i1654_2_lut (.A(n1839), .B(n2644), .Z(n2645)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(87[7] 99[9])
    defparam i1654_2_lut.init = 16'h8888;
    FD1P3AX FSM_FSM_i3 (.D(FSM_7__N_892), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_893));   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam FSM_FSM_i3.GSR = "ENABLED";
    FD1P3AX FSM_FSM_i4 (.D(FSM_7__N_891), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_892));   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam FSM_FSM_i4.GSR = "ENABLED";
    FD1P3AX FSM_FSM_i5 (.D(FSM_7__N_890), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_891));   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam FSM_FSM_i5.GSR = "ENABLED";
    FD1P3AX FSM_FSM_i6 (.D(FSM_7__N_889), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_890));   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam FSM_FSM_i6.GSR = "ENABLED";
    FD1P3AX FSM_FSM_i7 (.D(FSM_7__N_888), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_889));   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam FSM_FSM_i7.GSR = "ENABLED";
    FD1P3AX FSM_FSM_i8 (.D(FSM_7__N_887), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_888));   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam FSM_FSM_i8.GSR = "ENABLED";
    FD1P3AX FSM_FSM_i9 (.D(FSM_7__N_886), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_887));   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam FSM_FSM_i9.GSR = "ENABLED";
    FD1P3AX FSM_FSM_i10 (.D(FSM_7__N_885), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_886));   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam FSM_FSM_i10.GSR = "ENABLED";
    FD1S3AX FSM_FSM_i11 (.D(n2229), .CK(SD_CLK_c), .Q(FSM_7__N_885));   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam FSM_FSM_i11.GSR = "ENABLED";
    FD1S3AX FSM_FSM_i12 (.D(DAT_7__N_993), .CK(SD_CLK_c), .Q(FSM_7__N_884));   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam FSM_FSM_i12.GSR = "ENABLED";
    FD1S3AY FSM_FSM_i13 (.D(n2225), .CK(SD_CLK_c), .Q(FSM_7__N_883));   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam FSM_FSM_i13.GSR = "ENABLED";
    LUT4 i1282_3_lut (.A(FSM_7__N_885), .B(FSM_7__N_884), .C(SMPL), .Z(n2229)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam i1282_3_lut.init = 16'hcece;
    LUT4 i1278_4_lut (.A(FSM_7__N_883), .B(SMPL), .C(tx_stb), .D(FSM_7__N_895), 
         .Z(n2225)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam i1278_4_lut.init = 16'hce0a;
    LUT4 i2948_4_lut (.A(n1839), .B(FSM_7__N_894), .C(n2211), .D(FSM_7__N_893), 
         .Z(n1588[0])) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A !(B+(D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(87[7] 99[9])
    defparam i2948_4_lut.init = 16'ha0b3;
    
endmodule
