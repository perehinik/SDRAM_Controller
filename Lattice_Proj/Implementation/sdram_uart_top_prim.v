// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Sun May 26 19:32:17 2019
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
    
    wire nreset_c, uart_rx_c, uart_tx_c, ADR_c_12, ADR_c_11, ADR_c_10, 
        ADR_c_9, ADR_c_8, ADR_c_7, ADR_c_6, ADR_c_5, ADR_c_4, ADR_c_3, 
        ADR_c_2, ADR_c_1, ADR_c_0, BA_c_1, BA_c_0, DQM_c, nCAS_c, 
        nRAS_c, nWE_c, LED_c_3, LED_c_2, LED_c_1, LED_c_0, tx_stb, 
        rx_ack, tx_ack;
    wire [7:0]rx_dat;   // c:/lscc/sd_ram_uart/src/top_module.v(28[35:41])
    wire [7:0]tx_dat;   // c:/lscc/sd_ram_uart/src/top_module.v(29[14:20])
    
    wire VCC_net, GND_net, n4605, DB_out_13, n12, DB_out_15;
    wire [3:0]i_addr;   // c:/lscc/sd_ram_uart/src/fifo.v(22[23:29])
    wire [15:0]SD_DATA_TEMP;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(51[20:32])
    
    wire refresh_tim_flag, refresh_tim_reset, n4890, n19, SD_CLK_c_enable_117, 
        n4642, rd_i_ack_N_462, n4318;
    wire [2:0]arb_delay_2__N_350;
    
    wire SD_P_DATA_15__N_308, n11;
    wire [3:0]count_adj_948;   // c:/lscc/sd_ram_uart/src/timer.v(20[25:30])
    
    wire n4876, n2246, n370, n376, DB_out_14, n5023, DB_out_12, 
        DB_out_11, DB_out_10, DB_out_9, DB_out_8, DB_out_7, DB_out_6, 
        DB_out_5, DB_out_4, DB_out_3, DB_out_2, DB_out_1, DB_out_0, 
        SD_CLK_c_enable_120, n2541;
    
    VHI i6 (.Z(VCC_net));
    all_modules all_modules1 (.LED_c_0(LED_c_0), .SD_CLK_c(SD_CLK_c), .LED_c_1(LED_c_1), 
            .LED_c_2(LED_c_2), .LED_c_3(LED_c_3), .nreset_c(nreset_c), 
            .\count[2]_derived_14 (count_2_derived_14), .DB_out_0(DB_out_0), 
            .DQM_c(DQM_c), .n370(n370), .\arb_delay_2__N_350[1] (arb_delay_2__N_350[1]), 
            .nRAS_c(nRAS_c), .rd_i_ack_N_462(rd_i_ack_N_462), .n376(n376), 
            .n5023(n5023), .n2246(n2246), .SD_DATA_TEMP({SD_DATA_TEMP}), 
            .ADR_c_3(ADR_c_3), .ADR_c_2(ADR_c_2), .ADR_c_12(ADR_c_12), 
            .ADR_c_11(ADR_c_11), .ADR_c_9(ADR_c_9), .\count[0] (count_adj_948[0]), 
            .refresh_tim_reset(refresh_tim_reset), .refresh_tim_flag(refresh_tim_flag), 
            .ADR_c_1(ADR_c_1), .DB_out_1(DB_out_1), .DB_out_2(DB_out_2), 
            .DB_out_3(DB_out_3), .DB_out_4(DB_out_4), .DB_out_5(DB_out_5), 
            .DB_out_6(DB_out_6), .DB_out_7(DB_out_7), .DB_out_8(DB_out_8), 
            .DB_out_9(DB_out_9), .DB_out_10(DB_out_10), .DB_out_11(DB_out_11), 
            .DB_out_12(DB_out_12), .DB_out_13(DB_out_13), .DB_out_14(DB_out_14), 
            .DB_out_15(DB_out_15), .ADR_c_0(ADR_c_0), .n4876(n4876), .nCAS_c(nCAS_c), 
            .nWE_c(nWE_c), .BA_c_1(BA_c_1), .BA_c_0(BA_c_0), .ADR_c_8(ADR_c_8), 
            .ADR_c_7(ADR_c_7), .SD_P_DATA_15__N_308(SD_P_DATA_15__N_308), 
            .n12(n12), .ADR_c_4(ADR_c_4), .ADR_c_10(ADR_c_10), .ADR_c_6(ADR_c_6), 
            .ADR_c_5(ADR_c_5), .GND_net(GND_net), .SD_CLK_c_enable_117(SD_CLK_c_enable_117), 
            .n11(n11), .SD_CLK_c_enable_120(SD_CLK_c_enable_120), .tx_dat({tx_dat}), 
            .tx_stb(tx_stb), .tx_ack(tx_ack), .\i_addr[0] (i_addr[0]), 
            .n4642(n4642), .rx_dat({rx_dat}), .rx_ack(rx_ack), .n4605(n4605), 
            .n2541(n2541), .n4318(n4318)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(50[13] 75[2])
    BB DB_pad_15 (.I(SD_DATA_TEMP[15]), .T(SD_P_DATA_15__N_308), .B(DB[15]), 
       .O(DB_out_15));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(338[8:17])
    LUT4 i30_4_lut_else_2_lut (.A(arb_delay_2__N_350[1]), .B(rd_i_ack_N_462), 
         .C(n2246), .D(n4876), .Z(n4890)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i30_4_lut_else_2_lut.init = 16'h0001;
    LUT4 i3698_3_lut_rep_56 (.A(count_2_derived_14), .B(n376), .C(n19), 
         .Z(SD_CLK_c_enable_120)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i3698_3_lut_rep_56.init = 16'hdfdf;
    LUT4 i790_2_lut (.A(refresh_tim_flag), .B(refresh_tim_reset), .Z(SD_CLK_c_enable_117)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i790_2_lut.init = 16'hdddd;
    BB DB_pad_14 (.I(SD_DATA_TEMP[14]), .T(SD_P_DATA_15__N_308), .B(DB[14]), 
       .O(DB_out_14));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(338[8:17])
    BB DB_pad_13 (.I(SD_DATA_TEMP[13]), .T(SD_P_DATA_15__N_308), .B(DB[13]), 
       .O(DB_out_13));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(338[8:17])
    BB DB_pad_12 (.I(SD_DATA_TEMP[12]), .T(SD_P_DATA_15__N_308), .B(DB[12]), 
       .O(DB_out_12));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(338[8:17])
    BB DB_pad_11 (.I(SD_DATA_TEMP[11]), .T(SD_P_DATA_15__N_308), .B(DB[11]), 
       .O(DB_out_11));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(338[8:17])
    BB DB_pad_10 (.I(SD_DATA_TEMP[10]), .T(SD_P_DATA_15__N_308), .B(DB[10]), 
       .O(DB_out_10));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(338[8:17])
    BB DB_pad_9 (.I(SD_DATA_TEMP[9]), .T(SD_P_DATA_15__N_308), .B(DB[9]), 
       .O(DB_out_9));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(338[8:17])
    BB DB_pad_8 (.I(SD_DATA_TEMP[8]), .T(SD_P_DATA_15__N_308), .B(DB[8]), 
       .O(DB_out_8));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(338[8:17])
    BB DB_pad_7 (.I(SD_DATA_TEMP[7]), .T(SD_P_DATA_15__N_308), .B(DB[7]), 
       .O(DB_out_7));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(338[8:17])
    LUT4 i1200_2_lut_4_lut (.A(count_2_derived_14), .B(n376), .C(n19), 
         .D(count_adj_948[0]), .Z(n11)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (D))) */ ;
    defparam i1200_2_lut_4_lut.init = 16'h20df;
    BB DB_pad_6 (.I(SD_DATA_TEMP[6]), .T(SD_P_DATA_15__N_308), .B(DB[6]), 
       .O(DB_out_6));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(338[8:17])
    BB DB_pad_5 (.I(SD_DATA_TEMP[5]), .T(SD_P_DATA_15__N_308), .B(DB[5]), 
       .O(DB_out_5));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(338[8:17])
    BB DB_pad_4 (.I(SD_DATA_TEMP[4]), .T(SD_P_DATA_15__N_308), .B(DB[4]), 
       .O(DB_out_4));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(338[8:17])
    BB DB_pad_3 (.I(SD_DATA_TEMP[3]), .T(SD_P_DATA_15__N_308), .B(DB[3]), 
       .O(DB_out_3));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(338[8:17])
    BB DB_pad_2 (.I(SD_DATA_TEMP[2]), .T(SD_P_DATA_15__N_308), .B(DB[2]), 
       .O(DB_out_2));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(338[8:17])
    BB DB_pad_1 (.I(SD_DATA_TEMP[1]), .T(SD_P_DATA_15__N_308), .B(DB[1]), 
       .O(DB_out_1));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(338[8:17])
    BB DB_pad_0 (.I(SD_DATA_TEMP[0]), .T(SD_P_DATA_15__N_308), .B(DB[0]), 
       .O(DB_out_0));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(338[8:17])
    OB uart_tx_pad (.I(uart_tx_c), .O(uart_tx));   // c:/lscc/sd_ram_uart/src/top_module.v(8[23:30])
    OB ADR_pad_12 (.I(ADR_c_12), .O(ADR[12]));   // c:/lscc/sd_ram_uart/src/top_module.v(11[23:26])
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
    Clock_DCMA clk_multiply (.clk_c(clk_c), .SD_CLK_c(SD_CLK_c), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(33[12] 36[2])
    VLO i1 (.Z(GND_net));
    GSR GSR_INST (.GSR(nreset_c));
    PFUMX i3751 (.BLUT(n4890), .ALUT(n12), .C0(n370), .Z(n19));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    uart_rx uart1 (.SD_CLK_c(SD_CLK_c), .uart_rx_c(uart_rx_c), .rx_ack(rx_ack), 
            .rx_dat({rx_dat}), .GND_net(GND_net), .\i_addr[0] (i_addr[0]), 
            .n4642(n4642), .n2541(n2541), .n4605(n4605), .n4318(n4318)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(38[9] 48[2])
    LUT4 m1_lut (.Z(n5023)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    uart_tx uart_tx1 (.SD_CLK_c(SD_CLK_c), .tx_dat({tx_dat}), .tx_ack(tx_ack), 
            .uart_tx_c(uart_tx_c), .GND_net(GND_net), .tx_stb(tx_stb)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(77[9] 87[2])
    TSALL TSALL_INST (.TSALL(GND_net));
    
endmodule
//
// Verilog Description of module all_modules
//

module all_modules (LED_c_0, SD_CLK_c, LED_c_1, LED_c_2, LED_c_3, 
            nreset_c, \count[2]_derived_14 , DB_out_0, DQM_c, n370, 
            \arb_delay_2__N_350[1] , nRAS_c, rd_i_ack_N_462, n376, n5023, 
            n2246, SD_DATA_TEMP, ADR_c_3, ADR_c_2, ADR_c_12, ADR_c_11, 
            ADR_c_9, \count[0] , refresh_tim_reset, refresh_tim_flag, 
            ADR_c_1, DB_out_1, DB_out_2, DB_out_3, DB_out_4, DB_out_5, 
            DB_out_6, DB_out_7, DB_out_8, DB_out_9, DB_out_10, DB_out_11, 
            DB_out_12, DB_out_13, DB_out_14, DB_out_15, ADR_c_0, n4876, 
            nCAS_c, nWE_c, BA_c_1, BA_c_0, ADR_c_8, ADR_c_7, SD_P_DATA_15__N_308, 
            n12, ADR_c_4, ADR_c_10, ADR_c_6, ADR_c_5, GND_net, SD_CLK_c_enable_117, 
            n11, SD_CLK_c_enable_120, tx_dat, tx_stb, tx_ack, \i_addr[0] , 
            n4642, rx_dat, rx_ack, n4605, n2541, n4318) /* synthesis syn_module_defined=1 */ ;
    output LED_c_0;
    input SD_CLK_c;
    output LED_c_1;
    output LED_c_2;
    output LED_c_3;
    input nreset_c;
    output \count[2]_derived_14 ;
    input DB_out_0;
    output DQM_c;
    output n370;
    output \arb_delay_2__N_350[1] ;
    output nRAS_c;
    output rd_i_ack_N_462;
    output n376;
    input n5023;
    output n2246;
    output [15:0]SD_DATA_TEMP;
    output ADR_c_3;
    output ADR_c_2;
    output ADR_c_12;
    output ADR_c_11;
    output ADR_c_9;
    output \count[0] ;
    output refresh_tim_reset;
    output refresh_tim_flag;
    output ADR_c_1;
    input DB_out_1;
    input DB_out_2;
    input DB_out_3;
    input DB_out_4;
    input DB_out_5;
    input DB_out_6;
    input DB_out_7;
    input DB_out_8;
    input DB_out_9;
    input DB_out_10;
    input DB_out_11;
    input DB_out_12;
    input DB_out_13;
    input DB_out_14;
    input DB_out_15;
    output ADR_c_0;
    output n4876;
    output nCAS_c;
    output nWE_c;
    output BA_c_1;
    output BA_c_0;
    output ADR_c_8;
    output ADR_c_7;
    output SD_P_DATA_15__N_308;
    output n12;
    output ADR_c_4;
    output ADR_c_10;
    output ADR_c_6;
    output ADR_c_5;
    input GND_net;
    input SD_CLK_c_enable_117;
    input n11;
    input SD_CLK_c_enable_120;
    output [7:0]tx_dat;
    output tx_stb;
    input tx_ack;
    output \i_addr[0] ;
    input n4642;
    input [7:0]rx_dat;
    input rx_ack;
    output n4605;
    output n2541;
    output n4318;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(31[6:16])
    wire \count[2]_derived_14  /* synthesis is_clock=1, SET_AS_NETWORK=\all_modules1/sdram_controller1/delayTimer/count[2]_derived_14 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(20[25:30])
    
    wire tx_stb1;
    wire [7:0]tx_dat1;   // c:/lscc/sd_ram_uart/src/all_modules.v(117[12:19])
    wire [15:0]rx_sd_data;   // c:/lscc/sd_ram_uart/src/all_modules.v(51[17:27])
    wire [7:0]rx_dat1;   // c:/lscc/sd_ram_uart/src/all_modules.v(28[12:19])
    wire [23:0]rx_sd_adr;   // c:/lscc/sd_ram_uart/src/all_modules.v(50[17:26])
    wire [1:0]rd_wt_operation;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(22[11:26])
    
    wire n4861, n4862, o_stb_rd_N_289, n4850, n3503;
    wire [1:0]n51;
    
    wire SD_CLK_c_enable_202, n1673, n4842, rx_stb1, n4839, n3493, 
        full_N_199;
    wire [3:0]i_addr;   // c:/lscc/sd_ram_uart/src/fifo.v(22[23:29])
    wire [3:0]n10;
    wire [15:0]tx_sd_data;   // c:/lscc/sd_ram_uart/src/all_modules.v(51[28:38])
    
    wire SD_CLK_c_enable_130, n4872, wt_o_stb1;
    wire [1:0]rd_wt_operation_1__N_720;
    
    FD1P3AX status_temp_i0_i1 (.D(tx_dat1[0]), .SP(tx_stb1), .CK(SD_CLK_c), 
            .Q(LED_c_0)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=75 */ ;   // c:/lscc/sd_ram_uart/src/all_modules.v(161[7:48])
    defparam status_temp_i0_i1.GSR = "ENABLED";
    FD1P3AX status_temp_i0_i2 (.D(tx_dat1[1]), .SP(tx_stb1), .CK(SD_CLK_c), 
            .Q(LED_c_1)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=75 */ ;   // c:/lscc/sd_ram_uart/src/all_modules.v(161[7:48])
    defparam status_temp_i0_i2.GSR = "ENABLED";
    FD1P3AX status_temp_i0_i3 (.D(tx_dat1[2]), .SP(tx_stb1), .CK(SD_CLK_c), 
            .Q(LED_c_2)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=75 */ ;   // c:/lscc/sd_ram_uart/src/all_modules.v(161[7:48])
    defparam status_temp_i0_i3.GSR = "ENABLED";
    FD1P3AX status_temp_i0_i4 (.D(tx_dat1[3]), .SP(tx_stb1), .CK(SD_CLK_c), 
            .Q(LED_c_3)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=75 */ ;   // c:/lscc/sd_ram_uart/src/all_modules.v(161[7:48])
    defparam status_temp_i0_i4.GSR = "ENABLED";
    uart_to_sdram uart_to_sdram1 (.rx_sd_data({rx_sd_data}), .SD_CLK_c(SD_CLK_c), 
            .rx_dat1({rx_dat1}), .rx_sd_adr({rx_sd_adr}), .\rd_wt_operation[1] (rd_wt_operation[1]), 
            .n4861(n4861), .n4862(n4862), .o_stb_rd_N_289(o_stb_rd_N_289), 
            .n4850(n4850), .n3503(n3503), .n53(n51[0]), .SD_CLK_c_enable_202(SD_CLK_c_enable_202), 
            .n1673(n1673), .n4842(n4842), .rx_stb1(rx_stb1), .n4839(n4839), 
            .n3493(n3493)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/all_modules.v(65[1] 80[2])
    sdram_to_uart sdram_to_uart1 (.nreset_c(nreset_c), .full_N_199(full_N_199), 
            .\i_addr[0] (i_addr[0]), .n8(n10[0]), .SD_CLK_c(SD_CLK_c), 
            .tx_sd_data({tx_sd_data}), .SD_CLK_c_enable_130(SD_CLK_c_enable_130), 
            .n4872(n4872), .tx_dat1({tx_dat1}), .wt_o_stb1(wt_o_stb1), 
            .\rd_wt_operation_1__N_720[1] (rd_wt_operation_1__N_720[1]), .tx_stb1(tx_stb1)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/all_modules.v(124[1] 136[2])
    SDRAM_Controller sdram_controller1 (.SD_CLK_c(SD_CLK_c), .SD_CLK_c_enable_202(SD_CLK_c_enable_202), 
            .n53(n51[0]), .\count[2]_derived_14 (\count[2]_derived_14 ), 
            .tx_sd_data({tx_sd_data}), .DB_out_0(DB_out_0), .DQM_c(DQM_c), 
            .n370(n370), .\arb_delay_2__N_350[1] (\arb_delay_2__N_350[1] ), 
            .nRAS_c(nRAS_c), .rx_sd_adr({rx_sd_adr}), .n3503(n3503), .rd_i_ack_N_462(rd_i_ack_N_462), 
            .n4850(n4850), .n4842(n4842), .n376(n376), .n5023(n5023), 
            .nreset_c(nreset_c), .\rd_wt_operation[1] (rd_wt_operation[1]), 
            .n4839(n4839), .wt_o_stb1(wt_o_stb1), .n2246(n2246), .n4862(n4862), 
            .\rd_wt_operation_1__N_720[1] (rd_wt_operation_1__N_720[1]), .SD_DATA_TEMP({SD_DATA_TEMP}), 
            .n1673(n1673), .rx_sd_data({rx_sd_data}), .ADR_c_3(ADR_c_3), 
            .ADR_c_2(ADR_c_2), .n4872(n4872), .ADR_c_12(ADR_c_12), .ADR_c_11(ADR_c_11), 
            .ADR_c_9(ADR_c_9), .\count[0] (\count[0] ), .refresh_tim_reset(refresh_tim_reset), 
            .refresh_tim_flag(refresh_tim_flag), .ADR_c_1(ADR_c_1), .DB_out_1(DB_out_1), 
            .DB_out_2(DB_out_2), .DB_out_3(DB_out_3), .DB_out_4(DB_out_4), 
            .DB_out_5(DB_out_5), .DB_out_6(DB_out_6), .DB_out_7(DB_out_7), 
            .DB_out_8(DB_out_8), .DB_out_9(DB_out_9), .DB_out_10(DB_out_10), 
            .DB_out_11(DB_out_11), .DB_out_12(DB_out_12), .DB_out_13(DB_out_13), 
            .DB_out_14(DB_out_14), .DB_out_15(DB_out_15), .ADR_c_0(ADR_c_0), 
            .n4876(n4876), .nCAS_c(nCAS_c), .nWE_c(nWE_c), .BA_c_1(BA_c_1), 
            .BA_c_0(BA_c_0), .ADR_c_8(ADR_c_8), .ADR_c_7(ADR_c_7), .SD_P_DATA_15__N_308(SD_P_DATA_15__N_308), 
            .n12(n12), .ADR_c_4(ADR_c_4), .n4861(n4861), .o_stb_rd_N_289(o_stb_rd_N_289), 
            .ADR_c_10(ADR_c_10), .ADR_c_6(ADR_c_6), .ADR_c_5(ADR_c_5), 
            .GND_net(GND_net), .SD_CLK_c_enable_117(SD_CLK_c_enable_117), 
            .n11(n11), .SD_CLK_c_enable_120(SD_CLK_c_enable_120)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/all_modules.v(84[18] 115[2])
    fifo fifo2 (.SD_CLK_c(SD_CLK_c), .\i_addr[0] (i_addr[0]), .tx_dat1({tx_dat1}), 
         .SD_CLK_c_enable_130(SD_CLK_c_enable_130), .tx_dat({tx_dat}), .n8(n10[0]), 
         .tx_stb(tx_stb), .tx_ack(tx_ack), .full_N_199(full_N_199)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/all_modules.v(143[1] 155[3])
    fifo_U0 fifo1 (.rx_dat1({rx_dat1}), .SD_CLK_c(SD_CLK_c), .i_addr({Open_0, 
            Open_1, Open_2, \i_addr[0] }), .n4642(n4642), .rx_stb1(rx_stb1), 
            .rx_dat({rx_dat}), .rx_ack(rx_ack), .n4605(n4605), .nreset_c(nreset_c), 
            .n3493(n3493), .n2541(n2541), .n4318(n4318)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/all_modules.v(36[1] 48[3])
    
endmodule
//
// Verilog Description of module uart_to_sdram
//

module uart_to_sdram (rx_sd_data, SD_CLK_c, rx_dat1, rx_sd_adr, \rd_wt_operation[1] , 
            n4861, n4862, o_stb_rd_N_289, n4850, n3503, n53, SD_CLK_c_enable_202, 
            n1673, n4842, rx_stb1, n4839, n3493) /* synthesis syn_module_defined=1 */ ;
    output [15:0]rx_sd_data;
    input SD_CLK_c;
    input [7:0]rx_dat1;
    output [23:0]rx_sd_adr;
    output \rd_wt_operation[1] ;
    output n4861;
    input n4862;
    output o_stb_rd_N_289;
    output n4850;
    input n3503;
    output n53;
    input SD_CLK_c_enable_202;
    output n1673;
    input n4842;
    input rx_stb1;
    input n4839;
    output n3493;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(31[6:16])
    
    wire SD_CLK_c_enable_35;
    wire [1:0]rd_wt_operation;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(22[11:26])
    wire [7:0]n110;
    wire [1:0]rd_wt_operation_1__N_271;
    
    wire SD_CLK_c_enable_71, SD_CLK_c_enable_79, next_state_2__N_275, 
        n4291, o_stb_wt_N_291, i_ack_N_284, n4559, next_state_2__N_273, 
        n2170, n2157, n4411, n2123, n2579, n4, n4616;
    
    FD1P3AX sd_data_i14 (.D(rx_dat1[6]), .SP(SD_CLK_c_enable_35), .CK(SD_CLK_c), 
            .Q(rx_sd_data[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_data_i14.GSR = "DISABLED";
    FD1P3AX rd_wt_operation_i0_i0 (.D(rd_wt_operation_1__N_271[0]), .SP(n110[0]), 
            .CK(SD_CLK_c), .Q(rd_wt_operation[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam rd_wt_operation_i0_i0.GSR = "DISABLED";
    FD1P3AX sd_data_i0 (.D(rx_dat1[0]), .SP(n110[6]), .CK(SD_CLK_c), .Q(rx_sd_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_data_i0.GSR = "DISABLED";
    FD1P3AX sd_adr_i0 (.D(rx_dat1[0]), .SP(n110[3]), .CK(SD_CLK_c), .Q(rx_sd_adr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_adr_i0.GSR = "DISABLED";
    FD1P3AX sd_adr_i12 (.D(rx_dat1[4]), .SP(SD_CLK_c_enable_71), .CK(SD_CLK_c), 
            .Q(rx_sd_adr[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_adr_i12.GSR = "DISABLED";
    FD1P3AX sd_data_i13 (.D(rx_dat1[5]), .SP(SD_CLK_c_enable_35), .CK(SD_CLK_c), 
            .Q(rx_sd_data[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_data_i13.GSR = "DISABLED";
    FD1P3AX sd_adr_i11 (.D(rx_dat1[3]), .SP(SD_CLK_c_enable_71), .CK(SD_CLK_c), 
            .Q(rx_sd_adr[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_adr_i11.GSR = "DISABLED";
    FD1P3AX sd_adr_i10 (.D(rx_dat1[2]), .SP(SD_CLK_c_enable_71), .CK(SD_CLK_c), 
            .Q(rx_sd_adr[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_adr_i10.GSR = "DISABLED";
    FD1P3AX sd_adr_i9 (.D(rx_dat1[1]), .SP(SD_CLK_c_enable_71), .CK(SD_CLK_c), 
            .Q(rx_sd_adr[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_adr_i9.GSR = "DISABLED";
    FD1P3AX sd_adr_i8 (.D(rx_dat1[0]), .SP(SD_CLK_c_enable_71), .CK(SD_CLK_c), 
            .Q(rx_sd_adr[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_adr_i8.GSR = "DISABLED";
    FD1P3AX sd_adr_i7 (.D(rx_dat1[7]), .SP(n110[3]), .CK(SD_CLK_c), .Q(rx_sd_adr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_adr_i7.GSR = "DISABLED";
    FD1P3AX sd_adr_i6 (.D(rx_dat1[6]), .SP(n110[3]), .CK(SD_CLK_c), .Q(rx_sd_adr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_adr_i6.GSR = "DISABLED";
    FD1P3AX sd_adr_i5 (.D(rx_dat1[5]), .SP(n110[3]), .CK(SD_CLK_c), .Q(rx_sd_adr[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_adr_i5.GSR = "DISABLED";
    FD1P3AX sd_adr_i4 (.D(rx_dat1[4]), .SP(n110[3]), .CK(SD_CLK_c), .Q(rx_sd_adr[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_adr_i4.GSR = "DISABLED";
    FD1P3AX sd_adr_i3 (.D(rx_dat1[3]), .SP(n110[3]), .CK(SD_CLK_c), .Q(rx_sd_adr[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_adr_i3.GSR = "DISABLED";
    FD1P3AX sd_adr_i2 (.D(rx_dat1[2]), .SP(n110[3]), .CK(SD_CLK_c), .Q(rx_sd_adr[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_adr_i2.GSR = "DISABLED";
    FD1P3AX sd_adr_i1 (.D(rx_dat1[1]), .SP(n110[3]), .CK(SD_CLK_c), .Q(rx_sd_adr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_adr_i1.GSR = "DISABLED";
    FD1P3AX sd_data_i15 (.D(rx_dat1[7]), .SP(SD_CLK_c_enable_35), .CK(SD_CLK_c), 
            .Q(rx_sd_data[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_data_i15.GSR = "DISABLED";
    LUT4 i2_3_lut (.A(n110[3]), .B(n110[1]), .C(n110[2]), .Z(SD_CLK_c_enable_79)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut.init = 16'h0404;
    FD1P3AX sd_data_i12 (.D(rx_dat1[4]), .SP(SD_CLK_c_enable_35), .CK(SD_CLK_c), 
            .Q(rx_sd_data[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_data_i12.GSR = "DISABLED";
    FD1P3AX sd_data_i11 (.D(rx_dat1[3]), .SP(SD_CLK_c_enable_35), .CK(SD_CLK_c), 
            .Q(rx_sd_data[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_data_i11.GSR = "DISABLED";
    FD1P3AX sd_data_i10 (.D(rx_dat1[2]), .SP(SD_CLK_c_enable_35), .CK(SD_CLK_c), 
            .Q(rx_sd_data[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_data_i10.GSR = "DISABLED";
    FD1P3AX sd_data_i9 (.D(rx_dat1[1]), .SP(SD_CLK_c_enable_35), .CK(SD_CLK_c), 
            .Q(rx_sd_data[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_data_i9.GSR = "DISABLED";
    FD1P3AX sd_data_i8 (.D(rx_dat1[0]), .SP(SD_CLK_c_enable_35), .CK(SD_CLK_c), 
            .Q(rx_sd_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_data_i8.GSR = "DISABLED";
    FD1P3AX sd_data_i7 (.D(rx_dat1[7]), .SP(n110[6]), .CK(SD_CLK_c), .Q(rx_sd_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_data_i7.GSR = "DISABLED";
    FD1P3AX sd_data_i6 (.D(rx_dat1[6]), .SP(n110[6]), .CK(SD_CLK_c), .Q(rx_sd_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_data_i6.GSR = "DISABLED";
    FD1P3AX sd_data_i5 (.D(rx_dat1[5]), .SP(n110[6]), .CK(SD_CLK_c), .Q(rx_sd_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_data_i5.GSR = "DISABLED";
    FD1P3AX sd_data_i4 (.D(rx_dat1[4]), .SP(n110[6]), .CK(SD_CLK_c), .Q(rx_sd_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_data_i4.GSR = "DISABLED";
    FD1P3AX sd_data_i3 (.D(rx_dat1[3]), .SP(n110[6]), .CK(SD_CLK_c), .Q(rx_sd_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_data_i3.GSR = "DISABLED";
    FD1P3AX sd_data_i2 (.D(rx_dat1[2]), .SP(n110[6]), .CK(SD_CLK_c), .Q(rx_sd_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_data_i2.GSR = "DISABLED";
    FD1P3AX sd_data_i1 (.D(rx_dat1[1]), .SP(n110[6]), .CK(SD_CLK_c), .Q(rx_sd_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_data_i1.GSR = "DISABLED";
    FD1P3AX rd_wt_operation_i0_i1 (.D(next_state_2__N_275), .SP(n110[0]), 
            .CK(SD_CLK_c), .Q(\rd_wt_operation[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam rd_wt_operation_i0_i1.GSR = "DISABLED";
    FD1S3AY state_FSM_i0 (.D(n4291), .CK(SD_CLK_c), .Q(n110[0]));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(62[1] 72[8])
    defparam state_FSM_i0.GSR = "ENABLED";
    LUT4 o_stb_wt_I_7_2_lut_rep_74 (.A(o_stb_wt_N_291), .B(rd_wt_operation[0]), 
         .Z(n4861)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(41[19:55])
    defparam o_stb_wt_I_7_2_lut_rep_74.init = 16'h8888;
    LUT4 i1_3_lut_rep_63_4_lut (.A(o_stb_wt_N_291), .B(rd_wt_operation[0]), 
         .C(n4862), .D(o_stb_rd_N_289), .Z(n4850)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C (D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(41[19:55])
    defparam i1_3_lut_rep_63_4_lut.init = 16'hf080;
    LUT4 i2439_2_lut_3_lut_4_lut (.A(o_stb_wt_N_291), .B(rd_wt_operation[0]), 
         .C(n3503), .D(n4862), .Z(n53)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(41[19:55])
    defparam i2439_2_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 i3673_2_lut_2_lut_3_lut_4_lut (.A(o_stb_wt_N_291), .B(rd_wt_operation[0]), 
         .C(SD_CLK_c_enable_202), .D(n4862), .Z(n1673)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(41[19:55])
    defparam i3673_2_lut_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 i1_2_lut_3_lut (.A(n4842), .B(\rd_wt_operation[1] ), .C(i_ack_N_284), 
         .Z(n4559)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(67[15:42])
    defparam i1_2_lut_3_lut.init = 16'h7070;
    LUT4 i3709_2_lut (.A(n110[3]), .B(n110[2]), .Z(SD_CLK_c_enable_71)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(62[1] 72[8])
    defparam i3709_2_lut.init = 16'h4444;
    FD1P3AX sd_adr_i13 (.D(rx_dat1[5]), .SP(SD_CLK_c_enable_71), .CK(SD_CLK_c), 
            .Q(rx_sd_adr[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_adr_i13.GSR = "DISABLED";
    FD1P3AX sd_adr_i14 (.D(rx_dat1[6]), .SP(SD_CLK_c_enable_71), .CK(SD_CLK_c), 
            .Q(rx_sd_adr[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_adr_i14.GSR = "DISABLED";
    FD1P3AX sd_adr_i15 (.D(rx_dat1[7]), .SP(SD_CLK_c_enable_71), .CK(SD_CLK_c), 
            .Q(rx_sd_adr[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_adr_i15.GSR = "DISABLED";
    FD1P3AX sd_adr_i16 (.D(rx_dat1[0]), .SP(SD_CLK_c_enable_79), .CK(SD_CLK_c), 
            .Q(rx_sd_adr[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_adr_i16.GSR = "DISABLED";
    FD1P3AX sd_adr_i17 (.D(rx_dat1[1]), .SP(SD_CLK_c_enable_79), .CK(SD_CLK_c), 
            .Q(rx_sd_adr[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_adr_i17.GSR = "DISABLED";
    FD1P3AX sd_adr_i18 (.D(rx_dat1[2]), .SP(SD_CLK_c_enable_79), .CK(SD_CLK_c), 
            .Q(rx_sd_adr[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_adr_i18.GSR = "DISABLED";
    FD1P3AX sd_adr_i19 (.D(rx_dat1[3]), .SP(SD_CLK_c_enable_79), .CK(SD_CLK_c), 
            .Q(rx_sd_adr[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_adr_i19.GSR = "DISABLED";
    FD1P3AX sd_adr_i20 (.D(rx_dat1[4]), .SP(SD_CLK_c_enable_79), .CK(SD_CLK_c), 
            .Q(rx_sd_adr[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_adr_i20.GSR = "DISABLED";
    FD1P3AX sd_adr_i21 (.D(rx_dat1[5]), .SP(SD_CLK_c_enable_79), .CK(SD_CLK_c), 
            .Q(rx_sd_adr[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_adr_i21.GSR = "DISABLED";
    FD1P3AX sd_adr_i22 (.D(rx_dat1[6]), .SP(SD_CLK_c_enable_79), .CK(SD_CLK_c), 
            .Q(rx_sd_adr[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_adr_i22.GSR = "DISABLED";
    FD1P3AX sd_adr_i23 (.D(rx_dat1[7]), .SP(SD_CLK_c_enable_79), .CK(SD_CLK_c), 
            .Q(rx_sd_adr[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=65, LSE_RLINE=80 */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(47[8] 57[8])
    defparam sd_adr_i23.GSR = "DISABLED";
    LUT4 i1266_4_lut (.A(n110[1]), .B(next_state_2__N_273), .C(rx_stb1), 
         .D(n110[0]), .Z(n2170)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(62[1] 72[8])
    defparam i1266_4_lut.init = 16'hce0a;
    LUT4 i1255_4_lut (.A(rx_stb1), .B(n110[3]), .C(n4559), .D(rd_wt_operation[0]), 
         .Z(n2157)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (C)) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(62[1] 72[8])
    defparam i1255_4_lut.init = 16'hd8f8;
    LUT4 i_ack_N_284_I_0_2_lut (.A(i_ack_N_284), .B(\rd_wt_operation[1] ), 
         .Z(o_stb_rd_N_289)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(38[19:54])
    defparam i_ack_N_284_I_0_2_lut.init = 16'h8888;
    LUT4 i12_4_lut (.A(n110[5]), .B(rd_wt_operation[0]), .C(rx_stb1), 
         .D(n4559), .Z(n4411)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(62[1] 72[8])
    defparam i12_4_lut.init = 16'hca0a;
    LUT4 i1223_4_lut (.A(o_stb_wt_N_291), .B(rx_stb1), .C(n4842), .D(n110[6]), 
         .Z(n2123)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(62[1] 72[8])
    defparam i1223_4_lut.init = 16'hce0a;
    FD1S3AX state_FSM_i1 (.D(n2170), .CK(SD_CLK_c), .Q(n110[1]));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(62[1] 72[8])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1P3AX state_FSM_i2 (.D(n110[1]), .SP(rx_stb1), .CK(SD_CLK_c), .Q(n110[2]));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(62[1] 72[8])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1P3AX state_FSM_i3 (.D(n110[2]), .SP(rx_stb1), .CK(SD_CLK_c), .Q(n110[3]));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(62[1] 72[8])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i4 (.D(n2157), .CK(SD_CLK_c), .Q(i_ack_N_284));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(62[1] 72[8])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3AX state_FSM_i5 (.D(n4411), .CK(SD_CLK_c), .Q(n110[5]));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(62[1] 72[8])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1P3AX state_FSM_i6 (.D(n110[5]), .SP(rx_stb1), .CK(SD_CLK_c), .Q(n110[6]));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(62[1] 72[8])
    defparam state_FSM_i6.GSR = "ENABLED";
    FD1S3AX state_FSM_i7 (.D(n2123), .CK(SD_CLK_c), .Q(o_stb_wt_N_291));   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(62[1] 72[8])
    defparam state_FSM_i7.GSR = "ENABLED";
    LUT4 i3660_3_lut (.A(n2579), .B(rx_dat1[0]), .C(rx_dat1[2]), .Z(next_state_2__N_275)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(49[21:36])
    defparam i3660_3_lut.init = 16'h0101;
    LUT4 i2_3_lut_adj_106 (.A(n4842), .B(n4), .C(o_stb_wt_N_291), .Z(n4291)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(62[1] 72[8])
    defparam i2_3_lut_adj_106.init = 16'hecec;
    LUT4 i1_4_lut (.A(n4839), .B(n110[0]), .C(i_ack_N_284), .D(next_state_2__N_273), 
         .Z(n4)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(62[1] 72[8])
    defparam i1_4_lut.init = 16'ha0ec;
    LUT4 i2_4_lut (.A(rx_dat1[2]), .B(rx_stb1), .C(rx_dat1[0]), .D(n2579), 
         .Z(next_state_2__N_273)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((C+(D))+!B))) */ ;
    defparam i2_4_lut.init = 16'h0084;
    LUT4 i1302_2_lut (.A(n110[5]), .B(n110[6]), .Z(SD_CLK_c_enable_35)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(62[1] 72[8])
    defparam i1302_2_lut.init = 16'h2222;
    LUT4 i2_3_lut_adj_107 (.A(rx_dat1[2]), .B(n2579), .C(rx_dat1[0]), 
         .Z(rd_wt_operation_1__N_271[0])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i2_3_lut_adj_107.init = 16'h2020;
    LUT4 i3_4_lut (.A(rx_dat1[3]), .B(rx_dat1[5]), .C(rx_dat1[7]), .D(n4616), 
         .Z(n2579)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut.init = 16'hfeff;
    LUT4 i3623_3_lut (.A(rx_dat1[1]), .B(rx_dat1[6]), .C(rx_dat1[4]), 
         .Z(n4616)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3623_3_lut.init = 16'h8080;
    LUT4 i12_3_lut (.A(o_stb_wt_N_291), .B(rd_wt_operation[0]), .C(i_ack_N_284), 
         .Z(n3493)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_to_sdram.v(34[13] 35[67])
    defparam i12_3_lut.init = 16'hc5c5;
    
endmodule
//
// Verilog Description of module sdram_to_uart
//

module sdram_to_uart (nreset_c, full_N_199, \i_addr[0] , n8, SD_CLK_c, 
            tx_sd_data, SD_CLK_c_enable_130, n4872, tx_dat1, wt_o_stb1, 
            \rd_wt_operation_1__N_720[1] , tx_stb1) /* synthesis syn_module_defined=1 */ ;
    input nreset_c;
    input full_N_199;
    input \i_addr[0] ;
    output n8;
    input SD_CLK_c;
    input [15:0]tx_sd_data;
    output SD_CLK_c_enable_130;
    input n4872;
    output [7:0]tx_dat1;
    input wt_o_stb1;
    input \rd_wt_operation_1__N_720[1] ;
    output tx_stb1;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(31[6:16])
    wire [1:0]state;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(18[13:18])
    wire [15:0]sd_data_temp;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(20[13:25])
    
    wire SD_CLK_c_enable_145;
    wire [1:0]next_state;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(19[13:23])
    
    wire n1;
    wire [1:0]rd_wt_operation;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(21[13:28])
    
    wire n6, n6_adj_894, n10, n4551, n2422, SD_CLK_c_enable_146, 
        n8_adj_895, n10_adj_896;
    
    LUT4 i1202_2_lut_4_lut (.A(nreset_c), .B(full_N_199), .C(state[0]), 
         .D(\i_addr[0] ), .Z(n8)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(30[16] 31[76])
    defparam i1202_2_lut_4_lut.init = 16'h7f80;
    FD1P3AX sd_data_temp_i0 (.D(tx_sd_data[0]), .SP(SD_CLK_c_enable_145), 
            .CK(SD_CLK_c), .Q(sd_data_temp[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i0.GSR = "DISABLED";
    FD1S3AX state_i0 (.D(next_state[0]), .CK(SD_CLK_c), .Q(state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(35[9:29])
    defparam state_i0.GSR = "ENABLED";
    LUT4 i3_1_lut (.A(state[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(55[1] 60[8])
    defparam i3_1_lut.init = 16'h5555;
    LUT4 i2124_4_lut (.A(state[1]), .B(SD_CLK_c_enable_130), .C(state[0]), 
         .D(n4872), .Z(next_state[0])) /* synthesis lut_function=(!(A (B+!(C))+!A !(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(18[13:18])
    defparam i2124_4_lut.init = 16'h7570;
    LUT4 i1_3_lut (.A(state[0]), .B(rd_wt_operation[1]), .C(n6), .Z(tx_dat1[4])) /* synthesis lut_function=((B (C))+!A) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(55[1] 60[8])
    defparam i1_3_lut.init = 16'hd5d5;
    LUT4 i19_3_lut (.A(sd_data_temp[12]), .B(sd_data_temp[4]), .C(state[1]), 
         .Z(n6)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(55[1] 60[8])
    defparam i19_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_adj_99 (.A(state[0]), .B(rd_wt_operation[1]), .C(n6_adj_894), 
         .Z(tx_dat1[5])) /* synthesis lut_function=((B (C))+!A) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(55[1] 60[8])
    defparam i1_3_lut_adj_99.init = 16'hd5d5;
    LUT4 i19_3_lut_adj_100 (.A(sd_data_temp[13]), .B(sd_data_temp[5]), .C(state[1]), 
         .Z(n6_adj_894)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(55[1] 60[8])
    defparam i19_3_lut_adj_100.init = 16'hcaca;
    LUT4 i1_3_lut_adj_101 (.A(state[0]), .B(rd_wt_operation[1]), .C(n10), 
         .Z(tx_dat1[6])) /* synthesis lut_function=(A ((C)+!B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(55[1] 60[8])
    defparam i1_3_lut_adj_101.init = 16'ha2a2;
    LUT4 i17_3_lut (.A(sd_data_temp[14]), .B(sd_data_temp[6]), .C(state[1]), 
         .Z(n10)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(55[1] 60[8])
    defparam i17_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut (.A(sd_data_temp[15]), .B(n4551), .C(sd_data_temp[7]), 
         .D(state[1]), .Z(tx_dat1[7])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(55[1] 60[8])
    defparam i1_4_lut.init = 16'hc088;
    LUT4 i1_2_lut (.A(state[0]), .B(rd_wt_operation[1]), .Z(n4551)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(55[1] 60[8])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_rep_53 (.A(nreset_c), .B(full_N_199), .C(state[0]), 
         .Z(SD_CLK_c_enable_130)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(30[16] 31[76])
    defparam i1_4_lut_rep_53.init = 16'h8080;
    LUT4 i1516_2_lut_4_lut (.A(nreset_c), .B(full_N_199), .C(state[0]), 
         .D(state[1]), .Z(n2422)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(30[16] 31[76])
    defparam i1516_2_lut_4_lut.init = 16'h7f80;
    LUT4 i3655_2_lut_rep_86 (.A(state[0]), .B(state[1]), .Z(SD_CLK_c_enable_146)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(55[1] 60[8])
    defparam i3655_2_lut_rep_86.init = 16'h1111;
    LUT4 i1_2_lut_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(wt_o_stb1), 
         .D(\rd_wt_operation_1__N_720[1] ), .Z(SD_CLK_c_enable_145)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(55[1] 60[8])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h1110;
    FD1P3AX sd_data_temp_i1 (.D(tx_sd_data[1]), .SP(SD_CLK_c_enable_145), 
            .CK(SD_CLK_c), .Q(sd_data_temp[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i1.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i2 (.D(tx_sd_data[2]), .SP(SD_CLK_c_enable_145), 
            .CK(SD_CLK_c), .Q(sd_data_temp[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i2.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i3 (.D(tx_sd_data[3]), .SP(SD_CLK_c_enable_145), 
            .CK(SD_CLK_c), .Q(sd_data_temp[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i3.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i4 (.D(tx_sd_data[4]), .SP(SD_CLK_c_enable_145), 
            .CK(SD_CLK_c), .Q(sd_data_temp[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i4.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i5 (.D(tx_sd_data[5]), .SP(SD_CLK_c_enable_145), 
            .CK(SD_CLK_c), .Q(sd_data_temp[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i5.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i6 (.D(tx_sd_data[6]), .SP(SD_CLK_c_enable_145), 
            .CK(SD_CLK_c), .Q(sd_data_temp[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i6.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i7 (.D(tx_sd_data[7]), .SP(SD_CLK_c_enable_145), 
            .CK(SD_CLK_c), .Q(sd_data_temp[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i7.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i8 (.D(tx_sd_data[8]), .SP(SD_CLK_c_enable_145), 
            .CK(SD_CLK_c), .Q(sd_data_temp[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i8.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i9 (.D(tx_sd_data[9]), .SP(SD_CLK_c_enable_145), 
            .CK(SD_CLK_c), .Q(sd_data_temp[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i9.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i10 (.D(tx_sd_data[10]), .SP(SD_CLK_c_enable_145), 
            .CK(SD_CLK_c), .Q(sd_data_temp[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i10.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i11 (.D(tx_sd_data[11]), .SP(SD_CLK_c_enable_145), 
            .CK(SD_CLK_c), .Q(sd_data_temp[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i11.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i12 (.D(tx_sd_data[12]), .SP(SD_CLK_c_enable_145), 
            .CK(SD_CLK_c), .Q(sd_data_temp[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i12.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i13 (.D(tx_sd_data[13]), .SP(SD_CLK_c_enable_145), 
            .CK(SD_CLK_c), .Q(sd_data_temp[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i13.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i14 (.D(tx_sd_data[14]), .SP(SD_CLK_c_enable_145), 
            .CK(SD_CLK_c), .Q(sd_data_temp[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i14.GSR = "DISABLED";
    FD1P3AX sd_data_temp_i15 (.D(tx_sd_data[15]), .SP(SD_CLK_c_enable_145), 
            .CK(SD_CLK_c), .Q(sd_data_temp[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam sd_data_temp_i15.GSR = "DISABLED";
    FD1P3AX rd_wt_operation_i1 (.D(\rd_wt_operation_1__N_720[1] ), .SP(SD_CLK_c_enable_146), 
            .CK(SD_CLK_c), .Q(rd_wt_operation[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(37[8] 50[8])
    defparam rd_wt_operation_i1.GSR = "DISABLED";
    FD1S3IX state_i1 (.D(n2422), .CK(SD_CLK_c), .CD(n1), .Q(state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=136 */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(35[9:29])
    defparam state_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_102 (.A(state[0]), .B(n8_adj_895), .Z(tx_dat1[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(55[1] 60[8])
    defparam i1_2_lut_adj_102.init = 16'h8888;
    LUT4 i21_4_lut (.A(sd_data_temp[10]), .B(sd_data_temp[2]), .C(state[1]), 
         .D(rd_wt_operation[1]), .Z(n8_adj_895)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)+!C !(D))+!B !(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(55[1] 60[8])
    defparam i21_4_lut.init = 16'hca0f;
    LUT4 i1_2_lut_adj_103 (.A(state[0]), .B(nreset_c), .Z(tx_stb1)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(30[16] 31[76])
    defparam i1_2_lut_adj_103.init = 16'h8888;
    LUT4 i1_3_lut_adj_104 (.A(state[0]), .B(rd_wt_operation[1]), .C(n10_adj_896), 
         .Z(tx_dat1[3])) /* synthesis lut_function=(A ((C)+!B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(55[1] 60[8])
    defparam i1_3_lut_adj_104.init = 16'ha2a2;
    LUT4 i3657_4_lut (.A(sd_data_temp[9]), .B(n4551), .C(sd_data_temp[1]), 
         .D(state[1]), .Z(tx_dat1[1])) /* synthesis lut_function=(A ((C+!(D))+!B)+!A ((C (D))+!B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(55[1] 60[8])
    defparam i3657_4_lut.init = 16'hf3bb;
    LUT4 i3679_4_lut (.A(sd_data_temp[8]), .B(n4551), .C(sd_data_temp[0]), 
         .D(state[1]), .Z(tx_dat1[0])) /* synthesis lut_function=(A ((C+!(D))+!B)+!A ((C (D))+!B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(55[1] 60[8])
    defparam i3679_4_lut.init = 16'hf3bb;
    LUT4 i17_3_lut_adj_105 (.A(sd_data_temp[11]), .B(sd_data_temp[3]), .C(state[1]), 
         .Z(n10_adj_896)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_to_uart.v(55[1] 60[8])
    defparam i17_3_lut_adj_105.init = 16'hcaca;
    
endmodule
//
// Verilog Description of module SDRAM_Controller
//

module SDRAM_Controller (SD_CLK_c, SD_CLK_c_enable_202, n53, \count[2]_derived_14 , 
            tx_sd_data, DB_out_0, DQM_c, n370, \arb_delay_2__N_350[1] , 
            nRAS_c, rx_sd_adr, n3503, rd_i_ack_N_462, n4850, n4842, 
            n376, n5023, nreset_c, \rd_wt_operation[1] , n4839, wt_o_stb1, 
            n2246, n4862, \rd_wt_operation_1__N_720[1] , SD_DATA_TEMP, 
            n1673, rx_sd_data, ADR_c_3, ADR_c_2, n4872, ADR_c_12, 
            ADR_c_11, ADR_c_9, \count[0] , refresh_tim_reset, refresh_tim_flag, 
            ADR_c_1, DB_out_1, DB_out_2, DB_out_3, DB_out_4, DB_out_5, 
            DB_out_6, DB_out_7, DB_out_8, DB_out_9, DB_out_10, DB_out_11, 
            DB_out_12, DB_out_13, DB_out_14, DB_out_15, ADR_c_0, n4876, 
            nCAS_c, nWE_c, BA_c_1, BA_c_0, ADR_c_8, ADR_c_7, SD_P_DATA_15__N_308, 
            n12, ADR_c_4, n4861, o_stb_rd_N_289, ADR_c_10, ADR_c_6, 
            ADR_c_5, GND_net, SD_CLK_c_enable_117, n11, SD_CLK_c_enable_120) /* synthesis syn_module_defined=1 */ ;
    input SD_CLK_c;
    output SD_CLK_c_enable_202;
    input n53;
    output \count[2]_derived_14 ;
    output [15:0]tx_sd_data;
    input DB_out_0;
    output DQM_c;
    output n370;
    output \arb_delay_2__N_350[1] ;
    output nRAS_c;
    input [23:0]rx_sd_adr;
    output n3503;
    output rd_i_ack_N_462;
    input n4850;
    output n4842;
    output n376;
    input n5023;
    input nreset_c;
    input \rd_wt_operation[1] ;
    output n4839;
    output wt_o_stb1;
    output n2246;
    output n4862;
    output \rd_wt_operation_1__N_720[1] ;
    output [15:0]SD_DATA_TEMP;
    input n1673;
    input [15:0]rx_sd_data;
    output ADR_c_3;
    output ADR_c_2;
    output n4872;
    output ADR_c_12;
    output ADR_c_11;
    output ADR_c_9;
    output \count[0] ;
    output refresh_tim_reset;
    output refresh_tim_flag;
    output ADR_c_1;
    input DB_out_1;
    input DB_out_2;
    input DB_out_3;
    input DB_out_4;
    input DB_out_5;
    input DB_out_6;
    input DB_out_7;
    input DB_out_8;
    input DB_out_9;
    input DB_out_10;
    input DB_out_11;
    input DB_out_12;
    input DB_out_13;
    input DB_out_14;
    input DB_out_15;
    output ADR_c_0;
    output n4876;
    output nCAS_c;
    output nWE_c;
    output BA_c_1;
    output BA_c_0;
    output ADR_c_8;
    output ADR_c_7;
    output SD_P_DATA_15__N_308;
    output n12;
    output ADR_c_4;
    input n4861;
    input o_stb_rd_N_289;
    output ADR_c_10;
    output ADR_c_6;
    output ADR_c_5;
    input GND_net;
    input SD_CLK_c_enable_117;
    input n11;
    input SD_CLK_c_enable_120;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(31[6:16])
    wire \count[2]_derived_14  /* synthesis is_clock=1, SET_AS_NETWORK=\all_modules1/sdram_controller1/delayTimer/count[2]_derived_14 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(20[25:30])
    wire [1:0]n1651;
    wire [15:0]n362;
    
    wire repeat_tim_flag, n4837, SD_CLK_c_enable_94, n4874, n6, n4856;
    wire [2:0]arb_delay;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(59[20:29])
    
    wire n4857;
    wire [23:0]SD_ADR_TEMP;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(50[20:31])
    
    wire n1671, n2248;
    wire [13:0]repeat_tim_period;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(57[20:37])
    
    wire init_done_N_443, next_state_3__N_455, n4546, n396, n5011, 
        repeat_tim_reset, n1131, n19, n13, n16, n18, n4844, n2379, 
        n20, n17, n2391, n2385, n4836, n324;
    wire [3:0]count;   // c:/lscc/sd_ram_uart/src/timer.v(20[25:30])
    
    wire n9;
    wire [3:0]delay_tim_period;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(56[20:36])
    
    wire n4875, SD_CLK_c_enable_68, n4542, n9_adj_893, n2247, n2180, 
        n2185, n2187, n2189, n4407, n2191, delay_tim_flag_N_474, 
        count_2_derived_14_enable_14, n63, n4, n4625, n2725, n4556, 
        delay_tim_reset, n8;
    
    FD1P3AX rd_wt_operation_i0_i0 (.D(n53), .SP(SD_CLK_c_enable_202), .CK(SD_CLK_c), 
            .Q(n1651[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam rd_wt_operation_i0_i0.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_50_3_lut (.A(\count[2]_derived_14 ), .B(n362[4]), 
         .C(repeat_tim_flag), .Z(n4837)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(53[51:65])
    defparam i1_2_lut_rep_50_3_lut.init = 16'h8080;
    FD1P3AX RD_DATA_i0_i0 (.D(DB_out_0), .SP(SD_CLK_c_enable_94), .CK(SD_CLK_c), 
            .Q(tx_sd_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam RD_DATA_i0_i0.GSR = "DISABLED";
    LUT4 i3686_2_lut (.A(n1651[0]), .B(n1651[1]), .Z(DQM_c)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(339[30:56])
    defparam i3686_2_lut.init = 16'h1111;
    LUT4 i4_4_lut (.A(n370), .B(n4874), .C(\arb_delay_2__N_350[1] ), .D(n6), 
         .Z(nRAS_c)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(215[1] 272[8])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut (.A(n4856), .B(arb_delay[2]), .C(n362[7]), .D(n4857), 
         .Z(n6)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(215[1] 272[8])
    defparam i1_4_lut.init = 16'hcccd;
    FD1P3IX SD_ADR_TEMP__i0 (.D(rx_sd_adr[0]), .SP(SD_CLK_c_enable_202), 
            .CD(n1671), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_ADR_TEMP__i0.GSR = "DISABLED";
    LUT4 i2_3_lut_rep_55 (.A(n3503), .B(rd_i_ack_N_462), .C(n4850), .Z(n4842)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(134[11] 138[9])
    defparam i2_3_lut_rep_55.init = 16'h4040;
    LUT4 i1344_4_lut_4_lut (.A(n1651[1]), .B(n376), .C(\count[2]_derived_14 ), 
         .D(n1651[0]), .Z(n2248)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(338[30:56])
    defparam i1344_4_lut_4_lut.init = 16'hd0e0;
    FD1P3AX init_done_146 (.D(n5023), .SP(init_done_N_443), .CK(SD_CLK_c), 
            .Q(repeat_tim_period[13]));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam init_done_146.GSR = "ENABLED";
    LUT4 i2_3_lut_3_lut (.A(n1651[1]), .B(\count[2]_derived_14 ), .C(n1651[0]), 
         .Z(next_state_3__N_455)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(338[30:56])
    defparam i2_3_lut_3_lut.init = 16'h4040;
    LUT4 i2467_2_lut (.A(rd_i_ack_N_462), .B(nreset_c), .Z(SD_CLK_c_enable_202)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2467_2_lut.init = 16'h8888;
    LUT4 o_ack_I_0_2_lut_rep_52_4_lut (.A(n3503), .B(rd_i_ack_N_462), .C(n4850), 
         .D(\rd_wt_operation[1] ), .Z(n4839)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(134[11] 138[9])
    defparam o_ack_I_0_2_lut_rep_52_4_lut.init = 16'h4000;
    FD1S3AY state_FSM_i1 (.D(n4546), .CK(SD_CLK_c), .Q(rd_i_ack_N_462));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1P3AX wt_o_stb_147 (.D(arb_delay[2]), .SP(nreset_c), .CK(SD_CLK_c), 
            .Q(wt_o_stb1));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam wt_o_stb_147.GSR = "DISABLED";
    LUT4 i1342_2_lut (.A(n362[4]), .B(n376), .Z(n2246)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1342_2_lut.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_4_lut (.A(\count[2]_derived_14 ), .B(n376), .C(repeat_tim_flag), 
         .D(n362[4]), .Z(n396)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h8a88;
    LUT4 i1_2_lut_rep_75 (.A(nreset_c), .B(repeat_tim_period[13]), .Z(n4862)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(107[11] 111[9])
    defparam i1_2_lut_rep_75.init = 16'h8888;
    FD1P3AX rd_o_stb_148 (.D(\arb_delay_2__N_350[1] ), .SP(nreset_c), .CK(SD_CLK_c), 
            .Q(\rd_wt_operation_1__N_720[1] ));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam rd_o_stb_148.GSR = "DISABLED";
    LUT4 i2491_2_lut_rep_90 (.A(\arb_delay_2__N_350[1] ), .B(arb_delay[2]), 
         .Z(n5011)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(330[30] 331[77])
    defparam i2491_2_lut_rep_90.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut (.A(\count[2]_derived_14 ), .B(n376), 
         .C(repeat_tim_flag), .D(n362[4]), .Z(repeat_tim_reset)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A !(D)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'ha077;
    FD1P3IX SD_DATA_TEMP__i0 (.D(rx_sd_data[0]), .SP(SD_CLK_c_enable_202), 
            .CD(n1673), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_DATA_TEMP__i0.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(n362[1]), .B(init_done_N_443), .C(SD_ADR_TEMP[0]), 
         .D(n1131), .Z(n19)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_3_lut_4_lut (.A(n362[1]), .B(init_done_N_443), .C(SD_ADR_TEMP[4]), 
         .D(n1131), .Z(n13)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam i1_3_lut_4_lut.init = 16'heefe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_86 (.A(n362[1]), .B(init_done_N_443), 
         .C(SD_ADR_TEMP[1]), .D(n1131), .Z(n16)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam i1_2_lut_3_lut_4_lut_adj_86.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_87 (.A(n362[1]), .B(init_done_N_443), 
         .C(SD_ADR_TEMP[7]), .D(n1131), .Z(n18)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam i1_2_lut_3_lut_4_lut_adj_87.init = 16'h0010;
    LUT4 i2554_2_lut_rep_57_3_lut (.A(n362[1]), .B(init_done_N_443), .C(n1131), 
         .Z(n4844)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam i2554_2_lut_rep_57_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_88 (.A(n362[1]), .B(init_done_N_443), 
         .C(SD_ADR_TEMP[2]), .D(n1131), .Z(n2379)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam i1_2_lut_3_lut_4_lut_adj_88.init = 16'h0010;
    LUT4 i2523_4_lut (.A(n20), .B(n362[1]), .C(SD_ADR_TEMP[12]), .D(n362[7]), 
         .Z(ADR_c_3)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(215[1] 272[8])
    defparam i2523_4_lut.init = 16'h3022;
    LUT4 i1_2_lut_3_lut_4_lut_adj_89 (.A(n362[1]), .B(init_done_N_443), 
         .C(SD_ADR_TEMP[6]), .D(n1131), .Z(n17)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam i1_2_lut_3_lut_4_lut_adj_89.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_90 (.A(n362[1]), .B(init_done_N_443), 
         .C(SD_ADR_TEMP[8]), .D(n1131), .Z(n2391)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam i1_2_lut_3_lut_4_lut_adj_90.init = 16'h0010;
    LUT4 i2460_2_lut (.A(\arb_delay_2__N_350[1] ), .B(nreset_c), .Z(SD_CLK_c_enable_94)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2460_2_lut.init = 16'h8888;
    LUT4 i2522_4_lut (.A(n2379), .B(n362[1]), .C(SD_ADR_TEMP[11]), .D(n362[7]), 
         .Z(ADR_c_2)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(215[1] 272[8])
    defparam i2522_4_lut.init = 16'h3022;
    LUT4 i2533_3_lut_4_lut (.A(n362[1]), .B(init_done_N_443), .C(n1131), 
         .D(SD_ADR_TEMP[5]), .Z(n2385)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam i2533_3_lut_4_lut.init = 16'hefee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_91 (.A(n362[1]), .B(init_done_N_443), 
         .C(SD_ADR_TEMP[3]), .D(n1131), .Z(n20)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam i1_2_lut_3_lut_4_lut_adj_91.init = 16'h0010;
    LUT4 i1_2_lut_rep_85 (.A(\rd_wt_operation_1__N_720[1] ), .B(wt_o_stb1), 
         .Z(n4872)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam i1_2_lut_rep_85.init = 16'heeee;
    LUT4 i2546_2_lut_3_lut (.A(n362[7]), .B(n362[1]), .C(SD_ADR_TEMP[21]), 
         .Z(ADR_c_12)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(215[1] 272[8])
    defparam i2546_2_lut_3_lut.init = 16'h2020;
    LUT4 i114_4_lut_3_lut (.A(n4836), .B(n3503), .C(n4850), .Z(n324)) /* synthesis lut_function=(A (B+!(C))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(132[10:57])
    defparam i114_4_lut_3_lut.init = 16'h8a8a;
    LUT4 i2545_2_lut_3_lut (.A(n362[7]), .B(n362[1]), .C(SD_ADR_TEMP[20]), 
         .Z(ADR_c_11)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(215[1] 272[8])
    defparam i2545_2_lut_3_lut.init = 16'h2020;
    LUT4 i2544_2_lut_3_lut (.A(n362[7]), .B(n362[1]), .C(SD_ADR_TEMP[18]), 
         .Z(ADR_c_9)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(215[1] 272[8])
    defparam i2544_2_lut_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_rep_87 (.A(n362[10]), .B(n362[11]), .Z(n4874)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_87.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_92 (.A(n362[10]), .B(n362[11]), .C(\count[0] ), 
         .D(count[1]), .Z(n9)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (D))) */ ;
    defparam i1_3_lut_4_lut_adj_92.init = 16'hf100;
    LUT4 i1_3_lut_4_lut_adj_93 (.A(n362[10]), .B(n362[11]), .C(n362[4]), 
         .D(refresh_tim_reset), .Z(delay_tim_period[3])) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_93.init = 16'h1110;
    LUT4 i1_2_lut_rep_88 (.A(\arb_delay_2__N_350[1] ), .B(rd_i_ack_N_462), 
         .Z(n4875)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam i1_2_lut_rep_88.init = 16'heeee;
    LUT4 i1_2_lut_4_lut (.A(SD_CLK_c_enable_68), .B(refresh_tim_flag), .C(repeat_tim_period[13]), 
         .D(n4842), .Z(n4542)) /* synthesis lut_function=(!(A (B+!(D))+!A (B+!(C (D))))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(132[10:57])
    defparam i1_2_lut_4_lut.init = 16'h3200;
    LUT4 i1_4_lut_adj_94 (.A(n362[1]), .B(n16), .C(SD_ADR_TEMP[10]), .D(n362[7]), 
         .Z(ADR_c_1)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam i1_4_lut_adj_94.init = 16'h5044;
    LUT4 i3_2_lut_3_lut_4_lut (.A(\arb_delay_2__N_350[1] ), .B(rd_i_ack_N_462), 
         .C(n362[11]), .D(refresh_tim_reset), .Z(n9_adj_893)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam i3_2_lut_3_lut_4_lut.init = 16'hfffe;
    FD1P3AX RD_DATA_i0_i1 (.D(DB_out_1), .SP(SD_CLK_c_enable_94), .CK(SD_CLK_c), 
            .Q(tx_sd_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam RD_DATA_i0_i1.GSR = "DISABLED";
    FD1P3AX RD_DATA_i0_i2 (.D(DB_out_2), .SP(SD_CLK_c_enable_94), .CK(SD_CLK_c), 
            .Q(tx_sd_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam RD_DATA_i0_i2.GSR = "DISABLED";
    FD1P3AX RD_DATA_i0_i3 (.D(DB_out_3), .SP(SD_CLK_c_enable_94), .CK(SD_CLK_c), 
            .Q(tx_sd_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam RD_DATA_i0_i3.GSR = "DISABLED";
    FD1P3AX RD_DATA_i0_i4 (.D(DB_out_4), .SP(SD_CLK_c_enable_94), .CK(SD_CLK_c), 
            .Q(tx_sd_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam RD_DATA_i0_i4.GSR = "DISABLED";
    FD1P3AX RD_DATA_i0_i5 (.D(DB_out_5), .SP(SD_CLK_c_enable_94), .CK(SD_CLK_c), 
            .Q(tx_sd_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam RD_DATA_i0_i5.GSR = "DISABLED";
    FD1P3AX RD_DATA_i0_i6 (.D(DB_out_6), .SP(SD_CLK_c_enable_94), .CK(SD_CLK_c), 
            .Q(tx_sd_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam RD_DATA_i0_i6.GSR = "DISABLED";
    FD1P3AX RD_DATA_i0_i7 (.D(DB_out_7), .SP(SD_CLK_c_enable_94), .CK(SD_CLK_c), 
            .Q(tx_sd_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam RD_DATA_i0_i7.GSR = "DISABLED";
    FD1P3AX RD_DATA_i0_i8 (.D(DB_out_8), .SP(SD_CLK_c_enable_94), .CK(SD_CLK_c), 
            .Q(tx_sd_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam RD_DATA_i0_i8.GSR = "DISABLED";
    FD1P3AX RD_DATA_i0_i9 (.D(DB_out_9), .SP(SD_CLK_c_enable_94), .CK(SD_CLK_c), 
            .Q(tx_sd_data[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam RD_DATA_i0_i9.GSR = "DISABLED";
    FD1P3AX RD_DATA_i0_i10 (.D(DB_out_10), .SP(SD_CLK_c_enable_94), .CK(SD_CLK_c), 
            .Q(tx_sd_data[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam RD_DATA_i0_i10.GSR = "DISABLED";
    FD1P3AX RD_DATA_i0_i11 (.D(DB_out_11), .SP(SD_CLK_c_enable_94), .CK(SD_CLK_c), 
            .Q(tx_sd_data[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam RD_DATA_i0_i11.GSR = "DISABLED";
    FD1P3AX RD_DATA_i0_i12 (.D(DB_out_12), .SP(SD_CLK_c_enable_94), .CK(SD_CLK_c), 
            .Q(tx_sd_data[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam RD_DATA_i0_i12.GSR = "DISABLED";
    FD1P3AX RD_DATA_i0_i13 (.D(DB_out_13), .SP(SD_CLK_c_enable_94), .CK(SD_CLK_c), 
            .Q(tx_sd_data[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam RD_DATA_i0_i13.GSR = "DISABLED";
    FD1P3AX RD_DATA_i0_i14 (.D(DB_out_14), .SP(SD_CLK_c_enable_94), .CK(SD_CLK_c), 
            .Q(tx_sd_data[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam RD_DATA_i0_i14.GSR = "DISABLED";
    FD1P3AX RD_DATA_i0_i15 (.D(DB_out_15), .SP(SD_CLK_c_enable_94), .CK(SD_CLK_c), 
            .Q(tx_sd_data[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam RD_DATA_i0_i15.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_95 (.A(n362[1]), .B(n19), .C(SD_ADR_TEMP[9]), .D(n362[7]), 
         .Z(ADR_c_0)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam i1_4_lut_adj_95.init = 16'h5044;
    LUT4 i1_2_lut_rep_89 (.A(init_done_N_443), .B(arb_delay[2]), .Z(n4876)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_89.init = 16'heeee;
    LUT4 i3692_3_lut_4_lut (.A(init_done_N_443), .B(arb_delay[2]), .C(refresh_tim_reset), 
         .D(n362[10]), .Z(nCAS_c)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i3692_3_lut_4_lut.init = 16'h0001;
    LUT4 i3695_2_lut_3_lut (.A(init_done_N_443), .B(arb_delay[2]), .C(n362[1]), 
         .Z(nWE_c)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i3695_2_lut_3_lut.init = 16'h0101;
    LUT4 i2520_2_lut_4_lut (.A(n362[7]), .B(arb_delay[2]), .C(n362[10]), 
         .D(SD_ADR_TEMP[23]), .Z(BA_c_1)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i2520_2_lut_4_lut.init = 16'hfe00;
    LUT4 i2466_2_lut_4_lut (.A(n362[7]), .B(arb_delay[2]), .C(n362[10]), 
         .D(SD_ADR_TEMP[22]), .Z(BA_c_0)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i2466_2_lut_4_lut.init = 16'hfe00;
    FD1P3IX SD_ADR_TEMP__i1 (.D(rx_sd_adr[1]), .SP(SD_CLK_c_enable_202), 
            .CD(n1671), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_ADR_TEMP__i1.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i2 (.D(rx_sd_adr[2]), .SP(SD_CLK_c_enable_202), 
            .CD(n1671), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_ADR_TEMP__i2.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i3 (.D(rx_sd_adr[3]), .SP(SD_CLK_c_enable_202), 
            .CD(n1671), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_ADR_TEMP__i3.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i4 (.D(rx_sd_adr[4]), .SP(SD_CLK_c_enable_202), 
            .CD(n1671), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_ADR_TEMP__i4.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i5 (.D(rx_sd_adr[5]), .SP(SD_CLK_c_enable_202), 
            .CD(n1671), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_ADR_TEMP__i5.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i6 (.D(rx_sd_adr[6]), .SP(SD_CLK_c_enable_202), 
            .CD(n1671), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_ADR_TEMP__i6.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i7 (.D(rx_sd_adr[7]), .SP(SD_CLK_c_enable_202), 
            .CD(n1671), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_ADR_TEMP__i7.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i8 (.D(rx_sd_adr[8]), .SP(SD_CLK_c_enable_202), 
            .CD(n1671), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_ADR_TEMP__i8.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i9 (.D(rx_sd_adr[9]), .SP(SD_CLK_c_enable_202), 
            .CD(n1671), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_ADR_TEMP__i9.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i10 (.D(rx_sd_adr[10]), .SP(SD_CLK_c_enable_202), 
            .CD(n1671), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_ADR_TEMP__i10.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i11 (.D(rx_sd_adr[11]), .SP(SD_CLK_c_enable_202), 
            .CD(n1671), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_ADR_TEMP__i11.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i12 (.D(rx_sd_adr[12]), .SP(SD_CLK_c_enable_202), 
            .CD(n1671), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_ADR_TEMP__i12.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i13 (.D(rx_sd_adr[13]), .SP(SD_CLK_c_enable_202), 
            .CD(n1671), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_ADR_TEMP__i13.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i14 (.D(rx_sd_adr[14]), .SP(SD_CLK_c_enable_202), 
            .CD(n1671), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_ADR_TEMP__i14.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i15 (.D(rx_sd_adr[15]), .SP(SD_CLK_c_enable_202), 
            .CD(n1671), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_ADR_TEMP__i15.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i16 (.D(rx_sd_adr[16]), .SP(SD_CLK_c_enable_202), 
            .CD(n1671), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_ADR_TEMP__i16.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i17 (.D(rx_sd_adr[17]), .SP(SD_CLK_c_enable_202), 
            .CD(n1671), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_ADR_TEMP__i17.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i18 (.D(rx_sd_adr[18]), .SP(SD_CLK_c_enable_202), 
            .CD(n1671), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_ADR_TEMP__i18.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i19 (.D(rx_sd_adr[19]), .SP(SD_CLK_c_enable_202), 
            .CD(n1671), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_ADR_TEMP__i19.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i20 (.D(rx_sd_adr[20]), .SP(SD_CLK_c_enable_202), 
            .CD(n1671), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_ADR_TEMP__i20.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i21 (.D(rx_sd_adr[21]), .SP(SD_CLK_c_enable_202), 
            .CD(n1671), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_ADR_TEMP__i21.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i22 (.D(rx_sd_adr[22]), .SP(SD_CLK_c_enable_202), 
            .CD(n1671), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_ADR_TEMP__i22.GSR = "DISABLED";
    FD1P3IX SD_ADR_TEMP__i23 (.D(rx_sd_adr[23]), .SP(SD_CLK_c_enable_202), 
            .CD(n1671), .CK(SD_CLK_c), .Q(SD_ADR_TEMP[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_ADR_TEMP__i23.GSR = "DISABLED";
    LUT4 i2444_2_lut (.A(\arb_delay_2__N_350[1] ), .B(arb_delay[2]), .Z(arb_delay[0])) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(330[30] 331[77])
    defparam i2444_2_lut.init = 16'heeee;
    LUT4 i2064_4_lut_3_lut_4_lut (.A(n4876), .B(n4875), .C(\count[2]_derived_14 ), 
         .D(n2246), .Z(n2247)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam i2064_4_lut_3_lut_4_lut.init = 16'hf0ee;
    LUT4 i2528_4_lut (.A(n2391), .B(n362[1]), .C(SD_ADR_TEMP[17]), .D(n362[7]), 
         .Z(ADR_c_8)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(215[1] 272[8])
    defparam i2528_4_lut.init = 16'h3022;
    LUT4 i1276_3_lut (.A(\count[2]_derived_14 ), .B(n362[1]), .C(n376), 
         .Z(n2180)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam i1276_3_lut.init = 16'hdcdc;
    LUT4 i2527_4_lut (.A(n18), .B(n362[1]), .C(SD_ADR_TEMP[16]), .D(n362[7]), 
         .Z(ADR_c_7)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(215[1] 272[8])
    defparam i2527_4_lut.init = 16'h3022;
    FD1S3IX state_FSM_i2 (.D(rd_i_ack_N_462), .CK(SD_CLK_c), .CD(n4836), 
            .Q(n362[1]));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i3 (.D(n2180), .CK(SD_CLK_c), .Q(n376));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i4 (.D(n396), .CK(SD_CLK_c), .Q(refresh_tim_reset));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3AX state_FSM_i5 (.D(n2185), .CK(SD_CLK_c), .Q(n362[4]));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3IX state_FSM_i6 (.D(n4837), .CK(SD_CLK_c), .CD(repeat_tim_period[13]), 
            .Q(init_done_N_443));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam state_FSM_i6.GSR = "ENABLED";
    FD1S3AX state_FSM_i7 (.D(n2187), .CK(SD_CLK_c), .Q(n362[6]));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam state_FSM_i7.GSR = "ENABLED";
    FD1S3AX state_FSM_i8 (.D(n4542), .CK(SD_CLK_c), .Q(n362[7]));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam state_FSM_i8.GSR = "ENABLED";
    FD1S3AX state_FSM_i9 (.D(n2189), .CK(SD_CLK_c), .Q(n370));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam state_FSM_i9.GSR = "ENABLED";
    FD1S3AX state_FSM_i11 (.D(n4407), .CK(SD_CLK_c), .Q(n362[10]));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam state_FSM_i11.GSR = "ENABLED";
    FD1S3AX state_FSM_i12 (.D(n2191), .CK(SD_CLK_c), .Q(n362[11]));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam state_FSM_i12.GSR = "ENABLED";
    FD1S3IX state_FSM_i13 (.D(n362[11]), .CK(SD_CLK_c), .CD(delay_tim_flag_N_474), 
            .Q(\arb_delay_2__N_350[1] ));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam state_FSM_i13.GSR = "ENABLED";
    LUT4 i1_3_lut (.A(refresh_tim_reset), .B(\count[2]_derived_14 ), .C(n362[4]), 
         .Z(n2185)) /* synthesis lut_function=(A+!(B+!(C))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam i1_3_lut.init = 16'hbaba;
    LUT4 i1_3_lut_adj_96 (.A(\count[2]_derived_14 ), .B(init_done_N_443), 
         .C(n362[6]), .Z(n2187)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(53[51:65])
    defparam i1_3_lut_adj_96.init = 16'hdcdc;
    LUT4 delay_tim_flag_bdd_4_lut (.A(\count[2]_derived_14 ), .B(repeat_tim_flag), 
         .C(n376), .D(n362[4]), .Z(count_2_derived_14_enable_14)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A !(B (D))) */ ;
    defparam delay_tim_flag_bdd_4_lut.init = 16'hbb7f;
    LUT4 i3689_2_lut (.A(n1651[0]), .B(n1651[1]), .Z(SD_P_DATA_15__N_308)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(338[8:17])
    defparam i3689_2_lut.init = 16'h4444;
    LUT4 i1285_4_lut (.A(n370), .B(n362[7]), .C(\count[2]_derived_14 ), 
         .D(n12), .Z(n2189)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam i1285_4_lut.init = 16'heece;
    LUT4 i1_4_lut_adj_97 (.A(arb_delay[0]), .B(n63), .C(rd_i_ack_N_462), 
         .D(n324), .Z(n4546)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(53[51:65])
    defparam i1_4_lut_adj_97.init = 16'hfeee;
    LUT4 i23_2_lut (.A(n1651[0]), .B(n1651[1]), .Z(n12)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam i23_2_lut.init = 16'h9999;
    LUT4 i3_4_lut (.A(\count[2]_derived_14 ), .B(n1651[1]), .C(n370), 
         .D(n1651[0]), .Z(n4407)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam i3_4_lut.init = 16'h0080;
    LUT4 i80_4_lut (.A(\count[2]_derived_14 ), .B(n362[6]), .C(n362[4]), 
         .D(n4), .Z(n63)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(53[51:65])
    defparam i80_4_lut.init = 16'ha888;
    LUT4 i1287_3_lut (.A(n362[11]), .B(n362[10]), .C(\count[2]_derived_14 ), 
         .Z(n2191)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam i1287_3_lut.init = 16'hcece;
    LUT4 i3707_2_lut (.A(n376), .B(n370), .Z(n4625)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam i3707_2_lut.init = 16'heeee;
    LUT4 i2524_4_lut (.A(n13), .B(n362[1]), .C(SD_ADR_TEMP[13]), .D(n362[7]), 
         .Z(ADR_c_4)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(215[1] 272[8])
    defparam i2524_4_lut.init = 16'h3022;
    LUT4 i1_2_lut_rep_70 (.A(n362[1]), .B(init_done_N_443), .Z(n4857)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam i1_2_lut_rep_70.init = 16'heeee;
    LUT4 i1_2_lut (.A(repeat_tim_flag), .B(repeat_tim_period[13]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(57[20:37])
    defparam i1_2_lut.init = 16'h8888;
    FD1P3IX SD_DATA_TEMP__i1 (.D(rx_sd_data[1]), .SP(SD_CLK_c_enable_202), 
            .CD(n1673), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_DATA_TEMP__i1.GSR = "DISABLED";
    LUT4 i1774_1_lut (.A(n370), .Z(n2725)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam i1774_1_lut.init = 16'h5555;
    LUT4 i3_4_lut_adj_98 (.A(n3503), .B(n4861), .C(o_stb_rd_N_289), .D(n4862), 
         .Z(n4556)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(107[11] 111[9])
    defparam i3_4_lut_adj_98.init = 16'h1000;
    PFUMX mux_570_i1 (.BLUT(n2247), .ALUT(n2248), .C0(n4625), .Z(delay_tim_reset));
    FD1P3IX SD_DATA_TEMP__i2 (.D(rx_sd_data[2]), .SP(SD_CLK_c_enable_202), 
            .CD(n1673), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_DATA_TEMP__i2.GSR = "DISABLED";
    FD1P3IX SD_DATA_TEMP__i3 (.D(rx_sd_data[3]), .SP(SD_CLK_c_enable_202), 
            .CD(n1673), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_DATA_TEMP__i3.GSR = "DISABLED";
    FD1P3IX SD_DATA_TEMP__i4 (.D(rx_sd_data[4]), .SP(SD_CLK_c_enable_202), 
            .CD(n1673), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_DATA_TEMP__i4.GSR = "DISABLED";
    FD1P3IX SD_DATA_TEMP__i5 (.D(rx_sd_data[5]), .SP(SD_CLK_c_enable_202), 
            .CD(n1673), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_DATA_TEMP__i5.GSR = "DISABLED";
    FD1P3IX SD_DATA_TEMP__i6 (.D(rx_sd_data[6]), .SP(SD_CLK_c_enable_202), 
            .CD(n1673), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_DATA_TEMP__i6.GSR = "DISABLED";
    FD1P3IX SD_DATA_TEMP__i7 (.D(rx_sd_data[7]), .SP(SD_CLK_c_enable_202), 
            .CD(n1673), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_DATA_TEMP__i7.GSR = "DISABLED";
    FD1P3IX SD_DATA_TEMP__i8 (.D(rx_sd_data[8]), .SP(SD_CLK_c_enable_202), 
            .CD(n1673), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_DATA_TEMP__i8.GSR = "DISABLED";
    FD1P3IX SD_DATA_TEMP__i9 (.D(rx_sd_data[9]), .SP(SD_CLK_c_enable_202), 
            .CD(n1673), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_DATA_TEMP__i9.GSR = "DISABLED";
    FD1P3IX SD_DATA_TEMP__i10 (.D(rx_sd_data[10]), .SP(SD_CLK_c_enable_202), 
            .CD(n1673), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_DATA_TEMP__i10.GSR = "DISABLED";
    FD1P3IX SD_DATA_TEMP__i11 (.D(rx_sd_data[11]), .SP(SD_CLK_c_enable_202), 
            .CD(n1673), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_DATA_TEMP__i11.GSR = "DISABLED";
    FD1P3IX SD_DATA_TEMP__i12 (.D(rx_sd_data[12]), .SP(SD_CLK_c_enable_202), 
            .CD(n1673), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_DATA_TEMP__i12.GSR = "DISABLED";
    FD1P3IX SD_DATA_TEMP__i13 (.D(rx_sd_data[13]), .SP(SD_CLK_c_enable_202), 
            .CD(n1673), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_DATA_TEMP__i13.GSR = "DISABLED";
    FD1P3IX SD_DATA_TEMP__i14 (.D(rx_sd_data[14]), .SP(SD_CLK_c_enable_202), 
            .CD(n1673), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_DATA_TEMP__i14.GSR = "DISABLED";
    FD1P3IX SD_DATA_TEMP__i15 (.D(rx_sd_data[15]), .SP(SD_CLK_c_enable_202), 
            .CD(n1673), .CK(SD_CLK_c), .Q(SD_DATA_TEMP[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam SD_DATA_TEMP__i15.GSR = "DISABLED";
    LUT4 i3677_2_lut_2_lut_4_lut (.A(o_stb_rd_N_289), .B(n4862), .C(n4861), 
         .D(SD_CLK_c_enable_202), .Z(n1671)) /* synthesis lut_function=(!(A (B+!(D))+!A (B (C+!(D))+!B !(D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(107[11] 111[9])
    defparam i3677_2_lut_2_lut_4_lut.init = 16'h3700;
    LUT4 i2529_4_lut (.A(n4844), .B(n362[1]), .C(SD_ADR_TEMP[19]), .D(n362[7]), 
         .Z(ADR_c_10)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C+!(D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(215[1] 272[8])
    defparam i2529_4_lut.init = 16'hfcdd;
    LUT4 i2_2_lut (.A(n362[4]), .B(n370), .Z(n8)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(215[1] 272[8])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i5_4_lut (.A(n9_adj_893), .B(n362[6]), .C(n8), .D(n376), .Z(n1131)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(215[1] 272[8])
    defparam i5_4_lut.init = 16'hfffe;
    FD1S3IX state_FSM_i10 (.D(next_state_3__N_455), .CK(SD_CLK_c), .CD(n2725), 
            .Q(arb_delay[2]));   // c:/lscc/sd_ram_uart/src/sdram_controller.v(130[1] 210[8])
    defparam state_FSM_i10.GSR = "ENABLED";
    LUT4 i2526_4_lut (.A(n17), .B(n362[1]), .C(SD_ADR_TEMP[15]), .D(n362[7]), 
         .Z(ADR_c_6)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(215[1] 272[8])
    defparam i2526_4_lut.init = 16'h3022;
    LUT4 i2525_4_lut (.A(n2385), .B(n362[1]), .C(SD_ADR_TEMP[14]), .D(n362[7]), 
         .Z(ADR_c_5)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(215[1] 272[8])
    defparam i2525_4_lut.init = 16'h3022;
    LUT4 i1_2_lut_rep_69 (.A(refresh_tim_reset), .B(n362[11]), .Z(n4856)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(215[1] 272[8])
    defparam i1_2_lut_rep_69.init = 16'heeee;
    FD1P3AX rd_wt_operation_i0_i1 (.D(n4556), .SP(SD_CLK_c_enable_202), 
            .CK(SD_CLK_c), .Q(n1651[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=115 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(93[6] 120[4])
    defparam rd_wt_operation_i0_i1.GSR = "DISABLED";
    \Timer(SIZE=14)  repeatTimer (.\repeat_tim_period[13] (repeat_tim_period[13]), 
            .GND_net(GND_net), .\count[2]_derived_14 (\count[2]_derived_14 ), 
            .\count[2]_derived_14_enable_14 (count_2_derived_14_enable_14), 
            .repeat_tim_reset(repeat_tim_reset), .repeat_tim_flag(repeat_tim_flag)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(312[13] 319[2])
    \Timer(SIZE=24)  refreshTimer (.GND_net(GND_net), .SD_CLK_c(SD_CLK_c), 
            .SD_CLK_c_enable_117(SD_CLK_c_enable_117), .refresh_tim_reset(refresh_tim_reset), 
            .refresh_tim_flag(refresh_tim_flag)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(291[13] 298[2])
    Timer initTimer (.SD_CLK_c(SD_CLK_c), .SD_CLK_c_enable_68(SD_CLK_c_enable_68), 
          .GND_net(GND_net), .n5023(n5023), .\repeat_tim_period[13] (repeat_tim_period[13]), 
          .refresh_tim_flag(refresh_tim_flag), .n4836(n4836)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(282[13] 289[2])
    \Timer(SIZE=4)  delayTimer (.count({Open_3, Open_4, count[1], \count[0] }), 
            .SD_CLK_c(SD_CLK_c), .delay_tim_reset(delay_tim_reset), .n11(n11), 
            .SD_CLK_c_enable_120(SD_CLK_c_enable_120), .n9(n9), .\delay_tim_period[3] (delay_tim_period[3]), 
            .\count[2]_derived_14 (\count[2]_derived_14 ), .delay_tim_flag_N_474(delay_tim_flag_N_474)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(300[12] 307[2])
    bankArbiter arbBank (.SD_CLK_c(SD_CLK_c), .\SD_ADR_TEMP[22] (SD_ADR_TEMP[22]), 
            .\SD_ADR_TEMP[23] (SD_ADR_TEMP[23]), .\arb_delay[2] (arb_delay[2]), 
            .\arb_delay_2__N_350[1] (\arb_delay_2__N_350[1] ), .n5011(n5011), 
            .\arb_delay[0] (arb_delay[0]), .n3503(n3503)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(321[13] 327[2])
    
endmodule
//
// Verilog Description of module \Timer(SIZE=14) 
//

module \Timer(SIZE=14)  (\repeat_tim_period[13] , GND_net, \count[2]_derived_14 , 
            \count[2]_derived_14_enable_14 , repeat_tim_reset, repeat_tim_flag) /* synthesis syn_module_defined=1 */ ;
    input \repeat_tim_period[13] ;
    input GND_net;
    input \count[2]_derived_14 ;
    input \count[2]_derived_14_enable_14 ;
    input repeat_tim_reset;
    output repeat_tim_flag;
    
    wire \count[2]_derived_14  /* synthesis is_clock=1, SET_AS_NETWORK=\all_modules1/sdram_controller1/delayTimer/count[2]_derived_14 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(20[25:30])
    wire [13:0]count;   // c:/lscc/sd_ram_uart/src/timer.v(20[25:30])
    
    wire n4212, n4215, n4216;
    wire [13:0]n6;
    
    wire n4243, n4244, n4242, n4241, n4214, n4213, n4247, n4246, 
        n4245;
    
    CCU2D sub_604_add_2_2 (.A0(count[3]), .B0(\repeat_tim_period[13] ), 
          .C0(GND_net), .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n4212));
    defparam sub_604_add_2_2.INIT0 = 16'h1000;
    defparam sub_604_add_2_2.INIT1 = 16'h5555;
    defparam sub_604_add_2_2.INJECT1_0 = "NO";
    defparam sub_604_add_2_2.INJECT1_1 = "NO";
    CCU2D sub_604_add_2_10 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4215), .COUT(n4216));
    defparam sub_604_add_2_10.INIT0 = 16'h5555;
    defparam sub_604_add_2_10.INIT1 = 16'h5555;
    defparam sub_604_add_2_10.INJECT1_0 = "NO";
    defparam sub_604_add_2_10.INJECT1_1 = "NO";
    FD1P3IX count__i0 (.D(n6[0]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(repeat_tim_reset), .CK(\count[2]_derived_14 ), .Q(count[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=312, LSE_RLINE=319 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i0.GSR = "ENABLED";
    CCU2D add_6_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4243), 
          .COUT(n4244), .S0(n6[5]), .S1(n6[6]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_7.INIT0 = 16'h5aaa;
    defparam add_6_7.INIT1 = 16'h5aaa;
    defparam add_6_7.INJECT1_0 = "NO";
    defparam add_6_7.INJECT1_1 = "NO";
    CCU2D add_6_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4242), 
          .COUT(n4243), .S0(n6[3]), .S1(n6[4]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_5.INIT0 = 16'h5aaa;
    defparam add_6_5.INIT1 = 16'h5aaa;
    defparam add_6_5.INJECT1_0 = "NO";
    defparam add_6_5.INJECT1_1 = "NO";
    CCU2D add_6_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4241), 
          .COUT(n4242), .S0(n6[1]), .S1(n6[2]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_3.INIT0 = 16'h5aaa;
    defparam add_6_3.INIT1 = 16'h5aaa;
    defparam add_6_3.INJECT1_0 = "NO";
    defparam add_6_3.INJECT1_1 = "NO";
    CCU2D add_6_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n4241), 
          .S1(n6[0]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_1.INIT0 = 16'hF000;
    defparam add_6_1.INIT1 = 16'h5555;
    defparam add_6_1.INJECT1_0 = "NO";
    defparam add_6_1.INJECT1_1 = "NO";
    CCU2D sub_604_add_2_8 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4214), .COUT(n4215));
    defparam sub_604_add_2_8.INIT0 = 16'h5555;
    defparam sub_604_add_2_8.INIT1 = 16'h5555;
    defparam sub_604_add_2_8.INJECT1_0 = "NO";
    defparam sub_604_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_604_add_2_4 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4212), .COUT(n4213));
    defparam sub_604_add_2_4.INIT0 = 16'h5555;
    defparam sub_604_add_2_4.INIT1 = 16'h5555;
    defparam sub_604_add_2_4.INJECT1_0 = "NO";
    defparam sub_604_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_604_add_2_6 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4213), .COUT(n4214));
    defparam sub_604_add_2_6.INIT0 = 16'h5555;
    defparam sub_604_add_2_6.INIT1 = 16'h5555;
    defparam sub_604_add_2_6.INJECT1_0 = "NO";
    defparam sub_604_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_604_add_2_12 (.A0(count[13]), .B0(\repeat_tim_period[13] ), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4216), .S1(repeat_tim_flag));
    defparam sub_604_add_2_12.INIT0 = 16'h5999;
    defparam sub_604_add_2_12.INIT1 = 16'h0000;
    defparam sub_604_add_2_12.INJECT1_0 = "NO";
    defparam sub_604_add_2_12.INJECT1_1 = "NO";
    FD1P3IX count__i1 (.D(n6[1]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(repeat_tim_reset), .CK(\count[2]_derived_14 ), .Q(count[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=312, LSE_RLINE=319 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i1.GSR = "ENABLED";
    FD1P3IX count__i2 (.D(n6[2]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(repeat_tim_reset), .CK(\count[2]_derived_14 ), .Q(count[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=312, LSE_RLINE=319 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i2.GSR = "ENABLED";
    FD1P3IX count__i3 (.D(n6[3]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(repeat_tim_reset), .CK(\count[2]_derived_14 ), .Q(count[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=312, LSE_RLINE=319 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i3.GSR = "ENABLED";
    FD1P3IX count__i4 (.D(n6[4]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(repeat_tim_reset), .CK(\count[2]_derived_14 ), .Q(count[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=312, LSE_RLINE=319 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i4.GSR = "ENABLED";
    FD1P3IX count__i5 (.D(n6[5]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(repeat_tim_reset), .CK(\count[2]_derived_14 ), .Q(count[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=312, LSE_RLINE=319 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i5.GSR = "ENABLED";
    FD1P3IX count__i6 (.D(n6[6]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(repeat_tim_reset), .CK(\count[2]_derived_14 ), .Q(count[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=312, LSE_RLINE=319 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i6.GSR = "ENABLED";
    FD1P3IX count__i7 (.D(n6[7]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(repeat_tim_reset), .CK(\count[2]_derived_14 ), .Q(count[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=312, LSE_RLINE=319 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i7.GSR = "ENABLED";
    FD1P3IX count__i8 (.D(n6[8]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(repeat_tim_reset), .CK(\count[2]_derived_14 ), .Q(count[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=312, LSE_RLINE=319 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i8.GSR = "ENABLED";
    FD1P3IX count__i9 (.D(n6[9]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(repeat_tim_reset), .CK(\count[2]_derived_14 ), .Q(count[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=312, LSE_RLINE=319 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i9.GSR = "ENABLED";
    FD1P3IX count__i10 (.D(n6[10]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(repeat_tim_reset), .CK(\count[2]_derived_14 ), .Q(count[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=312, LSE_RLINE=319 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i10.GSR = "ENABLED";
    FD1P3IX count__i11 (.D(n6[11]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(repeat_tim_reset), .CK(\count[2]_derived_14 ), .Q(count[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=312, LSE_RLINE=319 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i11.GSR = "ENABLED";
    FD1P3IX count__i12 (.D(n6[12]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(repeat_tim_reset), .CK(\count[2]_derived_14 ), .Q(count[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=312, LSE_RLINE=319 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i12.GSR = "ENABLED";
    FD1P3IX count__i13 (.D(n6[13]), .SP(\count[2]_derived_14_enable_14 ), 
            .CD(repeat_tim_reset), .CK(\count[2]_derived_14 ), .Q(count[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=312, LSE_RLINE=319 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i13.GSR = "ENABLED";
    CCU2D add_6_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4247), 
          .S0(n6[13]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_15.INIT0 = 16'h5aaa;
    defparam add_6_15.INIT1 = 16'h0000;
    defparam add_6_15.INJECT1_0 = "NO";
    defparam add_6_15.INJECT1_1 = "NO";
    CCU2D add_6_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4246), .COUT(n4247), .S0(n6[11]), .S1(n6[12]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_13.INIT0 = 16'h5aaa;
    defparam add_6_13.INIT1 = 16'h5aaa;
    defparam add_6_13.INJECT1_0 = "NO";
    defparam add_6_13.INJECT1_1 = "NO";
    CCU2D add_6_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4245), .COUT(n4246), .S0(n6[9]), .S1(n6[10]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_11.INIT0 = 16'h5aaa;
    defparam add_6_11.INIT1 = 16'h5aaa;
    defparam add_6_11.INJECT1_0 = "NO";
    defparam add_6_11.INJECT1_1 = "NO";
    CCU2D add_6_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4244), 
          .COUT(n4245), .S0(n6[7]), .S1(n6[8]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_9.INIT0 = 16'h5aaa;
    defparam add_6_9.INIT1 = 16'h5aaa;
    defparam add_6_9.INJECT1_0 = "NO";
    defparam add_6_9.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module \Timer(SIZE=24) 
//

module \Timer(SIZE=24)  (GND_net, SD_CLK_c, SD_CLK_c_enable_117, refresh_tim_reset, 
            refresh_tim_flag) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input SD_CLK_c;
    input SD_CLK_c_enable_117;
    input refresh_tim_reset;
    output refresh_tim_flag;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(31[6:16])
    wire [23:0]count;   // c:/lscc/sd_ram_uart/src/timer.v(20[25:30])
    
    wire n10, n4232;
    wire [23:0]n6;
    
    wire n4233, n4231, n4230, n4240, n4239, n4238, n4237, n4229, 
        n4236, n9_adj_888, n14_adj_889, n10_adj_890, n5, n11_adj_891, 
        n12_adj_892, n4235, n4234;
    
    LUT4 i3_2_lut (.A(count[9]), .B(count[11]), .Z(n10)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3_2_lut.init = 16'h8888;
    CCU2D add_6_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4232), 
          .COUT(n4233), .S0(n6[7]), .S1(n6[8]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_9.INIT0 = 16'h5aaa;
    defparam add_6_9.INIT1 = 16'h5aaa;
    defparam add_6_9.INJECT1_0 = "NO";
    defparam add_6_9.INJECT1_1 = "NO";
    FD1P3IX count__i0 (.D(n6[0]), .SP(SD_CLK_c_enable_117), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=291, LSE_RLINE=298 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i0.GSR = "ENABLED";
    CCU2D add_6_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4231), 
          .COUT(n4232), .S0(n6[5]), .S1(n6[6]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_7.INIT0 = 16'h5aaa;
    defparam add_6_7.INIT1 = 16'h5aaa;
    defparam add_6_7.INJECT1_0 = "NO";
    defparam add_6_7.INJECT1_1 = "NO";
    CCU2D add_6_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4230), 
          .COUT(n4231), .S0(n6[3]), .S1(n6[4]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_5.INIT0 = 16'h5aaa;
    defparam add_6_5.INIT1 = 16'h5aaa;
    defparam add_6_5.INJECT1_0 = "NO";
    defparam add_6_5.INJECT1_1 = "NO";
    CCU2D add_6_25 (.A0(count[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4240), 
          .S0(n6[23]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_25.INIT0 = 16'h5aaa;
    defparam add_6_25.INIT1 = 16'h0000;
    defparam add_6_25.INJECT1_0 = "NO";
    defparam add_6_25.INJECT1_1 = "NO";
    CCU2D add_6_23 (.A0(count[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4239), .COUT(n4240), .S0(n6[21]), .S1(n6[22]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_23.INIT0 = 16'h5aaa;
    defparam add_6_23.INIT1 = 16'h5aaa;
    defparam add_6_23.INJECT1_0 = "NO";
    defparam add_6_23.INJECT1_1 = "NO";
    CCU2D add_6_21 (.A0(count[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4238), .COUT(n4239), .S0(n6[19]), .S1(n6[20]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_21.INIT0 = 16'h5aaa;
    defparam add_6_21.INIT1 = 16'h5aaa;
    defparam add_6_21.INJECT1_0 = "NO";
    defparam add_6_21.INJECT1_1 = "NO";
    CCU2D add_6_19 (.A0(count[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4237), .COUT(n4238), .S0(n6[17]), .S1(n6[18]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_19.INIT0 = 16'h5aaa;
    defparam add_6_19.INIT1 = 16'h5aaa;
    defparam add_6_19.INJECT1_0 = "NO";
    defparam add_6_19.INJECT1_1 = "NO";
    CCU2D add_6_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4229), 
          .COUT(n4230), .S0(n6[1]), .S1(n6[2]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_3.INIT0 = 16'h5aaa;
    defparam add_6_3.INIT1 = 16'h5aaa;
    defparam add_6_3.INJECT1_0 = "NO";
    defparam add_6_3.INJECT1_1 = "NO";
    CCU2D add_6_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n4229), 
          .S1(n6[0]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_1.INIT0 = 16'hF000;
    defparam add_6_1.INIT1 = 16'h5555;
    defparam add_6_1.INJECT1_0 = "NO";
    defparam add_6_1.INJECT1_1 = "NO";
    CCU2D add_6_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4236), .COUT(n4237), .S0(n6[15]), .S1(n6[16]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_17.INIT0 = 16'h5aaa;
    defparam add_6_17.INIT1 = 16'h5aaa;
    defparam add_6_17.INJECT1_0 = "NO";
    defparam add_6_17.INJECT1_1 = "NO";
    LUT4 i846_4_lut (.A(n9_adj_888), .B(count[23]), .C(n14_adj_889), .D(n10_adj_890), 
         .Z(refresh_tim_flag)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i846_4_lut.init = 16'hccc8;
    LUT4 i1_4_lut (.A(n5), .B(count[19]), .C(count[15]), .D(count[13]), 
         .Z(n9_adj_888)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut.init = 16'heccc;
    LUT4 i6_4_lut (.A(count[17]), .B(count[20]), .C(count[18]), .D(count[16]), 
         .Z(n14_adj_889)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(count[21]), .B(count[22]), .Z(n10_adj_890)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    FD1P3IX count__i1 (.D(n6[1]), .SP(SD_CLK_c_enable_117), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=291, LSE_RLINE=298 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_85 (.A(n11_adj_891), .B(count[14]), .C(count[12]), 
         .D(n12_adj_892), .Z(n5)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_85.init = 16'hc8c0;
    LUT4 i4_3_lut (.A(count[7]), .B(count[6]), .C(count[10]), .Z(n11_adj_891)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i4_3_lut.init = 16'h8080;
    FD1P3IX count__i2 (.D(n6[2]), .SP(SD_CLK_c_enable_117), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=291, LSE_RLINE=298 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i2.GSR = "ENABLED";
    FD1P3IX count__i3 (.D(n6[3]), .SP(SD_CLK_c_enable_117), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=291, LSE_RLINE=298 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i3.GSR = "ENABLED";
    FD1P3IX count__i4 (.D(n6[4]), .SP(SD_CLK_c_enable_117), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=291, LSE_RLINE=298 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i4.GSR = "ENABLED";
    FD1P3IX count__i5 (.D(n6[5]), .SP(SD_CLK_c_enable_117), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=291, LSE_RLINE=298 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i5.GSR = "ENABLED";
    FD1P3IX count__i6 (.D(n6[6]), .SP(SD_CLK_c_enable_117), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=291, LSE_RLINE=298 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i6.GSR = "ENABLED";
    FD1P3IX count__i7 (.D(n6[7]), .SP(SD_CLK_c_enable_117), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=291, LSE_RLINE=298 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i7.GSR = "ENABLED";
    FD1P3IX count__i8 (.D(n6[8]), .SP(SD_CLK_c_enable_117), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=291, LSE_RLINE=298 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i8.GSR = "ENABLED";
    FD1P3IX count__i9 (.D(n6[9]), .SP(SD_CLK_c_enable_117), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=291, LSE_RLINE=298 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i9.GSR = "ENABLED";
    FD1P3IX count__i10 (.D(n6[10]), .SP(SD_CLK_c_enable_117), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=291, LSE_RLINE=298 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i10.GSR = "ENABLED";
    FD1P3IX count__i11 (.D(n6[11]), .SP(SD_CLK_c_enable_117), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=291, LSE_RLINE=298 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i11.GSR = "ENABLED";
    FD1P3IX count__i12 (.D(n6[12]), .SP(SD_CLK_c_enable_117), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=291, LSE_RLINE=298 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i12.GSR = "ENABLED";
    FD1P3IX count__i13 (.D(n6[13]), .SP(SD_CLK_c_enable_117), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=291, LSE_RLINE=298 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i13.GSR = "ENABLED";
    FD1P3IX count__i14 (.D(n6[14]), .SP(SD_CLK_c_enable_117), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=291, LSE_RLINE=298 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i14.GSR = "ENABLED";
    FD1P3IX count__i15 (.D(n6[15]), .SP(SD_CLK_c_enable_117), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=291, LSE_RLINE=298 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i15.GSR = "ENABLED";
    FD1P3IX count__i16 (.D(n6[16]), .SP(SD_CLK_c_enable_117), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=291, LSE_RLINE=298 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i16.GSR = "ENABLED";
    FD1P3IX count__i17 (.D(n6[17]), .SP(SD_CLK_c_enable_117), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=291, LSE_RLINE=298 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i17.GSR = "ENABLED";
    FD1P3IX count__i18 (.D(n6[18]), .SP(SD_CLK_c_enable_117), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=291, LSE_RLINE=298 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i18.GSR = "ENABLED";
    FD1P3IX count__i19 (.D(n6[19]), .SP(SD_CLK_c_enable_117), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=291, LSE_RLINE=298 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i19.GSR = "ENABLED";
    FD1P3IX count__i20 (.D(n6[20]), .SP(SD_CLK_c_enable_117), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=291, LSE_RLINE=298 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i20.GSR = "ENABLED";
    FD1P3IX count__i21 (.D(n6[21]), .SP(SD_CLK_c_enable_117), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=291, LSE_RLINE=298 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i21.GSR = "ENABLED";
    FD1P3IX count__i22 (.D(n6[22]), .SP(SD_CLK_c_enable_117), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=291, LSE_RLINE=298 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i22.GSR = "ENABLED";
    FD1P3IX count__i23 (.D(n6[23]), .SP(SD_CLK_c_enable_117), .CD(refresh_tim_reset), 
            .CK(SD_CLK_c), .Q(count[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=291, LSE_RLINE=298 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i23.GSR = "ENABLED";
    LUT4 i5_4_lut (.A(count[4]), .B(n10), .C(count[8]), .D(count[5]), 
         .Z(n12_adj_892)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i5_4_lut.init = 16'hc080;
    CCU2D add_6_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4235), .COUT(n4236), .S0(n6[13]), .S1(n6[14]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_15.INIT0 = 16'h5aaa;
    defparam add_6_15.INIT1 = 16'h5aaa;
    defparam add_6_15.INJECT1_0 = "NO";
    defparam add_6_15.INJECT1_1 = "NO";
    CCU2D add_6_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4234), .COUT(n4235), .S0(n6[11]), .S1(n6[12]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_13.INIT0 = 16'h5aaa;
    defparam add_6_13.INIT1 = 16'h5aaa;
    defparam add_6_13.INJECT1_0 = "NO";
    defparam add_6_13.INJECT1_1 = "NO";
    CCU2D add_6_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4233), .COUT(n4234), .S0(n6[9]), .S1(n6[10]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam add_6_11.INIT0 = 16'h5aaa;
    defparam add_6_11.INIT1 = 16'h5aaa;
    defparam add_6_11.INJECT1_0 = "NO";
    defparam add_6_11.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module Timer
//

module Timer (SD_CLK_c, SD_CLK_c_enable_68, GND_net, n5023, \repeat_tim_period[13] , 
            refresh_tim_flag, n4836) /* synthesis syn_module_defined=1 */ ;
    input SD_CLK_c;
    output SD_CLK_c_enable_68;
    input GND_net;
    input n5023;
    input \repeat_tim_period[13] ;
    input refresh_tim_flag;
    output n4836;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(31[6:16])
    wire [15:0]count;   // c:/lscc/sd_ram_uart/src/timer.v(20[25:30])
    wire [15:0]n69;
    
    wire n4255, n30, n4254, n4253, n4252, n4251, n4250, SD_CLK_c_enable_51, 
        n4249, n4248, n24, n10, n12, n6;
    
    FD1P3AX count_769__i0 (.D(n69[0]), .SP(SD_CLK_c_enable_68), .CK(SD_CLK_c), 
            .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_769__i0.GSR = "ENABLED";
    CCU2D count_769_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4255), .S0(n69[15]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_769_add_4_17.INIT0 = 16'hfaaa;
    defparam count_769_add_4_17.INIT1 = 16'h0000;
    defparam count_769_add_4_17.INJECT1_0 = "NO";
    defparam count_769_add_4_17.INJECT1_1 = "NO";
    LUT4 i3671_2_lut_rep_51 (.A(n30), .B(count[15]), .Z(SD_CLK_c_enable_68)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(53[20:33])
    defparam i3671_2_lut_rep_51.init = 16'h1111;
    CCU2D count_769_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4254), .COUT(n4255), .S0(n69[13]), .S1(n69[14]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_769_add_4_15.INIT0 = 16'hfaaa;
    defparam count_769_add_4_15.INIT1 = 16'hfaaa;
    defparam count_769_add_4_15.INJECT1_0 = "NO";
    defparam count_769_add_4_15.INJECT1_1 = "NO";
    CCU2D count_769_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4253), .COUT(n4254), .S0(n69[11]), .S1(n69[12]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_769_add_4_13.INIT0 = 16'hfaaa;
    defparam count_769_add_4_13.INIT1 = 16'hfaaa;
    defparam count_769_add_4_13.INJECT1_0 = "NO";
    defparam count_769_add_4_13.INJECT1_1 = "NO";
    CCU2D count_769_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4252), .COUT(n4253), .S0(n69[9]), .S1(n69[10]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_769_add_4_11.INIT0 = 16'hfaaa;
    defparam count_769_add_4_11.INIT1 = 16'hfaaa;
    defparam count_769_add_4_11.INJECT1_0 = "NO";
    defparam count_769_add_4_11.INJECT1_1 = "NO";
    CCU2D count_769_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4251), .COUT(n4252), .S0(n69[7]), .S1(n69[8]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_769_add_4_9.INIT0 = 16'hfaaa;
    defparam count_769_add_4_9.INIT1 = 16'hfaaa;
    defparam count_769_add_4_9.INJECT1_0 = "NO";
    defparam count_769_add_4_9.INJECT1_1 = "NO";
    CCU2D count_769_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4250), .COUT(n4251), .S0(n69[5]), .S1(n69[6]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_769_add_4_7.INIT0 = 16'hfaaa;
    defparam count_769_add_4_7.INIT1 = 16'hfaaa;
    defparam count_769_add_4_7.INJECT1_0 = "NO";
    defparam count_769_add_4_7.INJECT1_1 = "NO";
    FD1P3AX count_769__i15 (.D(n5023), .SP(SD_CLK_c_enable_51), .CK(SD_CLK_c), 
            .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_769__i15.GSR = "ENABLED";
    FD1P3AX count_769__i14 (.D(n69[14]), .SP(SD_CLK_c_enable_68), .CK(SD_CLK_c), 
            .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_769__i14.GSR = "ENABLED";
    FD1P3AX count_769__i13 (.D(n69[13]), .SP(SD_CLK_c_enable_68), .CK(SD_CLK_c), 
            .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_769__i13.GSR = "ENABLED";
    FD1P3AX count_769__i12 (.D(n69[12]), .SP(SD_CLK_c_enable_68), .CK(SD_CLK_c), 
            .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_769__i12.GSR = "ENABLED";
    FD1P3AX count_769__i11 (.D(n69[11]), .SP(SD_CLK_c_enable_68), .CK(SD_CLK_c), 
            .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_769__i11.GSR = "ENABLED";
    FD1P3AX count_769__i10 (.D(n69[10]), .SP(SD_CLK_c_enable_68), .CK(SD_CLK_c), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_769__i10.GSR = "ENABLED";
    FD1P3AX count_769__i9 (.D(n69[9]), .SP(SD_CLK_c_enable_68), .CK(SD_CLK_c), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_769__i9.GSR = "ENABLED";
    FD1P3AX count_769__i8 (.D(n69[8]), .SP(SD_CLK_c_enable_68), .CK(SD_CLK_c), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_769__i8.GSR = "ENABLED";
    FD1P3AX count_769__i7 (.D(n69[7]), .SP(SD_CLK_c_enable_68), .CK(SD_CLK_c), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_769__i7.GSR = "ENABLED";
    FD1P3AX count_769__i6 (.D(n69[6]), .SP(SD_CLK_c_enable_68), .CK(SD_CLK_c), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_769__i6.GSR = "ENABLED";
    FD1P3AX count_769__i5 (.D(n69[5]), .SP(SD_CLK_c_enable_68), .CK(SD_CLK_c), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_769__i5.GSR = "ENABLED";
    FD1P3AX count_769__i4 (.D(n69[4]), .SP(SD_CLK_c_enable_68), .CK(SD_CLK_c), 
            .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_769__i4.GSR = "ENABLED";
    FD1P3AX count_769__i3 (.D(n69[3]), .SP(SD_CLK_c_enable_68), .CK(SD_CLK_c), 
            .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_769__i3.GSR = "ENABLED";
    FD1P3AX count_769__i2 (.D(n69[2]), .SP(SD_CLK_c_enable_68), .CK(SD_CLK_c), 
            .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_769__i2.GSR = "ENABLED";
    FD1P3AX count_769__i1 (.D(n69[1]), .SP(SD_CLK_c_enable_68), .CK(SD_CLK_c), 
            .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_769__i1.GSR = "ENABLED";
    LUT4 i3664_3_lut_rep_49_4_lut (.A(n30), .B(count[15]), .C(\repeat_tim_period[13] ), 
         .D(refresh_tim_flag), .Z(n4836)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B (D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(53[20:33])
    defparam i3664_3_lut_rep_49_4_lut.init = 16'h00f1;
    CCU2D count_769_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4249), .COUT(n4250), .S0(n69[3]), .S1(n69[4]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_769_add_4_5.INIT0 = 16'hfaaa;
    defparam count_769_add_4_5.INIT1 = 16'hfaaa;
    defparam count_769_add_4_5.INJECT1_0 = "NO";
    defparam count_769_add_4_5.INJECT1_1 = "NO";
    CCU2D count_769_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4248), .COUT(n4249), .S0(n69[1]), .S1(n69[2]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_769_add_4_3.INIT0 = 16'hfaaa;
    defparam count_769_add_4_3.INIT1 = 16'hfaaa;
    defparam count_769_add_4_3.INJECT1_0 = "NO";
    defparam count_769_add_4_3.INJECT1_1 = "NO";
    CCU2D count_769_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n4248), .S1(n69[0]));   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam count_769_add_4_1.INIT0 = 16'hF000;
    defparam count_769_add_4_1.INIT1 = 16'h0555;
    defparam count_769_add_4_1.INJECT1_0 = "NO";
    defparam count_769_add_4_1.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(count[14]), .B(count[13]), .C(n24), .D(count[12]), 
         .Z(n30)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2_4_lut.init = 16'h8880;
    LUT4 i861_4_lut (.A(count[10]), .B(count[11]), .C(n10), .D(count[8]), 
         .Z(n24)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i861_4_lut.init = 16'hccc8;
    LUT4 i4_4_lut (.A(count[7]), .B(count[6]), .C(n12), .D(count[9]), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i862_4_lut (.A(n6), .B(count[5]), .C(count[4]), .D(count[3]), 
         .Z(n12)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i862_4_lut.init = 16'hc8c0;
    LUT4 i826_3_lut (.A(count[0]), .B(count[2]), .C(count[1]), .Z(n6)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i826_3_lut.init = 16'hecec;
    LUT4 i1450_2_lut (.A(n30), .B(n69[15]), .Z(SD_CLK_c_enable_51)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam i1450_2_lut.init = 16'h4444;
    
endmodule
//
// Verilog Description of module \Timer(SIZE=4) 
//

module \Timer(SIZE=4)  (count, SD_CLK_c, delay_tim_reset, n11, SD_CLK_c_enable_120, 
            n9, \delay_tim_period[3] , \count[2]_derived_14 , delay_tim_flag_N_474) /* synthesis syn_module_defined=1 */ ;
    output [3:0]count;
    input SD_CLK_c;
    input delay_tim_reset;
    input n11;
    input SD_CLK_c_enable_120;
    input n9;
    input \delay_tim_period[3] ;
    output \count[2]_derived_14 ;
    output delay_tim_flag_N_474;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(31[6:16])
    wire \count[2]_derived_14  /* synthesis is_clock=1, SET_AS_NETWORK=\all_modules1/sdram_controller1/delayTimer/count[2]_derived_14 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(20[25:30])
    wire [3:0]n6;
    wire [3:0]count_c;   // c:/lscc/sd_ram_uart/src/timer.v(20[25:30])
    
    FD1S3IX count__i0 (.D(n11), .CK(SD_CLK_c), .CD(delay_tim_reset), .Q(count[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=307 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i0.GSR = "ENABLED";
    LUT4 i1044_2_lut (.A(count[1]), .B(count[0]), .Z(n6[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam i1044_2_lut.init = 16'h6666;
    FD1P3IX count__i1 (.D(n6[1]), .SP(SD_CLK_c_enable_120), .CD(delay_tim_reset), 
            .CK(SD_CLK_c), .Q(count[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=307 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i1.GSR = "ENABLED";
    FD1P3IX count__i2 (.D(n6[2]), .SP(SD_CLK_c_enable_120), .CD(delay_tim_reset), 
            .CK(SD_CLK_c), .Q(count_c[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=307 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i2.GSR = "ENABLED";
    FD1P3IX count__i3 (.D(n6[3]), .SP(SD_CLK_c_enable_120), .CD(delay_tim_reset), 
            .CK(SD_CLK_c), .Q(count_c[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=300, LSE_RLINE=307 */ ;   // c:/lscc/sd_ram_uart/src/timer.v(27[9] 28[53])
    defparam count__i3.GSR = "ENABLED";
    LUT4 i1051_2_lut_3_lut (.A(count[1]), .B(count[0]), .C(count_c[2]), 
         .Z(n6[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam i1051_2_lut_3_lut.init = 16'h7878;
    LUT4 i1058_3_lut_4_lut (.A(count[1]), .B(count[0]), .C(count_c[2]), 
         .D(count_c[3]), .Z(n6[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/lscc/sd_ram_uart/src/timer.v(28[40:52])
    defparam i1058_3_lut_4_lut.init = 16'h7f80;
    LUT4 period_3__I_0_i8_4_lut_rep_60 (.A(n9), .B(count_c[3]), .C(\delay_tim_period[3] ), 
         .D(count_c[2]), .Z(\count[2]_derived_14 )) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/lscc/sd_ram_uart/src/timer.v(22[23:40])
    defparam period_3__I_0_i8_4_lut_rep_60.init = 16'hcfce;
    LUT4 delay_tim_flag_I_0_1_lut_4_lut (.A(n9), .B(count_c[3]), .C(\delay_tim_period[3] ), 
         .D(count_c[2]), .Z(delay_tim_flag_N_474)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+!(C+!(D))))) */ ;   // c:/lscc/sd_ram_uart/src/timer.v(22[23:40])
    defparam delay_tim_flag_I_0_1_lut_4_lut.init = 16'h3031;
    
endmodule
//
// Verilog Description of module bankArbiter
//

module bankArbiter (SD_CLK_c, \SD_ADR_TEMP[22] , \SD_ADR_TEMP[23] , \arb_delay[2] , 
            \arb_delay_2__N_350[1] , n5011, \arb_delay[0] , n3503) /* synthesis syn_module_defined=1 */ ;
    input SD_CLK_c;
    input \SD_ADR_TEMP[22] ;
    input \SD_ADR_TEMP[23] ;
    input \arb_delay[2] ;
    input \arb_delay_2__N_350[1] ;
    input n5011;
    input \arb_delay[0] ;
    output n3503;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(31[6:16])
    wire [2:0]\delay[2] ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(352[11:16])
    
    wire n5019;
    wire [2:0]\delay[3] ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(352[11:16])
    
    wire n4858, n4961, delay_3__2__N_594;
    wire [2:0]\delay[1] ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(352[11:16])
    
    wire n4963;
    wire [2:0]\delay[0] ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(352[11:16])
    wire [2:0]n1747;
    
    wire n4964, n5012, n4863, n4877, n4788;
    wire [2:0]n1749;
    
    wire delay_3__2__N_622, n4865, n4878, n4866, n5016, delay_3__2__N_635, 
        n4350;
    wire [2:0]n1748;
    
    wire n5013, delay_3__2__N_609, n4352;
    wire [2:0]n1750;
    
    wire n5020, n4962, n4353, n4965;
    
    LUT4 i3745_else_2_lut (.A(\delay[2] [1]), .B(\delay[2] [0]), .C(\delay[2] [2]), 
         .Z(n5019)) /* synthesis lut_function=(A (B)+!A !(B+!(C))) */ ;
    defparam i3745_else_2_lut.init = 16'h9898;
    LUT4 i1_2_lut_rep_71 (.A(\delay[3] [1]), .B(\delay[3] [2]), .Z(n4858)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_71.init = 16'heeee;
    LUT4 delay_3__2__N_594_bdd_3_lut_3781 (.A(\delay[2] [2]), .B(\delay[2] [1]), 
         .C(\delay[2] [0]), .Z(n4961)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam delay_3__2__N_594_bdd_3_lut_3781.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut (.A(\delay[3] [1]), .B(\delay[3] [2]), .C(\delay[3] [0]), 
         .Z(delay_3__2__N_594)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 \delay_1[[1__bdd_3_lut_3776  (.A(\delay[1] [1]), .B(\delay[1] [0]), 
         .C(\delay[1] [2]), .Z(n4963)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam \delay_1[[1__bdd_3_lut_3776 .init = 16'hfefe;
    FD1S3AX delay_0__i1 (.D(n1747[0]), .CK(SD_CLK_c), .Q(\delay[0] [0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=327 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(354[8] 371[4])
    defparam delay_0__i1.GSR = "DISABLED";
    LUT4 \delay_1[[1__bdd_3_lut  (.A(\delay[0] [0]), .B(\delay[0] [1]), 
         .C(\delay[0] [2]), .Z(n4964)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam \delay_1[[1__bdd_3_lut .init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_4_lut_rep_91 (.A(\SD_ADR_TEMP[22] ), .B(\SD_ADR_TEMP[23] ), 
         .C(\arb_delay[2] ), .D(\arb_delay_2__N_350[1] ), .Z(n5012)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_rep_91.init = 16'h8880;
    LUT4 i1_2_lut_rep_76 (.A(\delay[1] [1]), .B(\delay[1] [0]), .Z(n4863)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(361[91:106])
    defparam i1_2_lut_rep_76.init = 16'heeee;
    LUT4 mux_874_i3_4_lut_else_4_lut_3_lut (.A(\SD_ADR_TEMP[22] ), .B(\SD_ADR_TEMP[23] ), 
         .C(\arb_delay[2] ), .Z(n4877)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam mux_874_i3_4_lut_else_4_lut_3_lut.init = 16'h8080;
    PFUMX i3720 (.BLUT(n4788), .ALUT(n5011), .C0(n5012), .Z(n1749[1]));
    LUT4 i1_2_lut_3_lut_4_lut (.A(\SD_ADR_TEMP[22] ), .B(\SD_ADR_TEMP[23] ), 
         .C(\arb_delay[2] ), .D(\arb_delay_2__N_350[1] ), .Z(delay_3__2__N_622)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(373[23:39])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h2220;
    LUT4 i1_2_lut_rep_78 (.A(\delay[2] [0]), .B(\delay[2] [1]), .Z(n4865)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(365[11:27])
    defparam i1_2_lut_rep_78.init = 16'heeee;
    LUT4 mux_874_i3_4_lut_then_4_lut (.A(\arb_delay[2] ), .B(n5012), .C(\delay[3] [1]), 
         .D(\delay[3] [0]), .Z(n4878)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+!(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(369[91:106])
    defparam mux_874_i3_4_lut_then_4_lut.init = 16'hbbb8;
    LUT4 i1_2_lut_rep_79 (.A(\delay[0] [0]), .B(\delay[0] [1]), .Z(n4866)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(357[11:27])
    defparam i1_2_lut_rep_79.init = 16'heeee;
    LUT4 i3747_else_2_lut (.A(\delay[1] [1]), .B(\delay[1] [2]), .C(\delay[1] [0]), 
         .Z(n5016)) /* synthesis lut_function=(A (C)+!A !((C)+!B)) */ ;
    defparam i3747_else_2_lut.init = 16'ha4a4;
    LUT4 mux_872_i3_4_lut (.A(\delay[0] [2]), .B(\arb_delay[2] ), .C(delay_3__2__N_635), 
         .D(n4866), .Z(n1747[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(357[91:106])
    defparam mux_872_i3_4_lut.init = 16'hcac0;
    LUT4 mux_873_i1_4_lut (.A(\delay[1] [0]), .B(\arb_delay[0] ), .C(delay_3__2__N_622), 
         .D(n4350), .Z(n1748[0])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(361[91:106])
    defparam mux_873_i1_4_lut.init = 16'hc5c0;
    LUT4 i1_2_lut (.A(\delay[1] [1]), .B(\delay[1] [2]), .Z(n4350)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i3749_else_2_lut (.A(\delay[0] [1]), .B(\delay[0] [0]), .C(\delay[0] [2]), 
         .Z(n5013)) /* synthesis lut_function=(A (B)+!A !(B+!(C))) */ ;
    defparam i3749_else_2_lut.init = 16'h9898;
    LUT4 i1_2_lut_3_lut_4_lut_adj_81 (.A(\SD_ADR_TEMP[22] ), .B(\SD_ADR_TEMP[23] ), 
         .C(\arb_delay[2] ), .D(\arb_delay_2__N_350[1] ), .Z(delay_3__2__N_609)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(374[23:39])
    defparam i1_2_lut_3_lut_4_lut_adj_81.init = 16'h4440;
    LUT4 mux_873_i3_4_lut (.A(\delay[1] [2]), .B(\arb_delay[2] ), .C(delay_3__2__N_622), 
         .D(n4863), .Z(n1748[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(361[91:106])
    defparam mux_873_i3_4_lut.init = 16'hcac0;
    LUT4 mux_875_i1_4_lut (.A(\delay[2] [0]), .B(\arb_delay[0] ), .C(delay_3__2__N_609), 
         .D(n4352), .Z(n1750[0])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(365[91:106])
    defparam mux_875_i1_4_lut.init = 16'hc5c0;
    LUT4 i1_2_lut_adj_82 (.A(\delay[2] [1]), .B(\delay[2] [2]), .Z(n4352)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_82.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_83 (.A(\SD_ADR_TEMP[22] ), .B(\SD_ADR_TEMP[23] ), 
         .C(\arb_delay[2] ), .D(\arb_delay_2__N_350[1] ), .Z(delay_3__2__N_635)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(372[23:39])
    defparam i1_2_lut_3_lut_4_lut_adj_83.init = 16'h1110;
    LUT4 mux_875_i3_4_lut (.A(\delay[2] [2]), .B(\arb_delay[2] ), .C(delay_3__2__N_609), 
         .D(n4865), .Z(n1750[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(365[91:106])
    defparam mux_875_i3_4_lut.init = 16'hcac0;
    LUT4 i3745_then_2_lut (.A(\arb_delay[2] ), .B(\arb_delay_2__N_350[1] ), 
         .Z(n5020)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i3745_then_2_lut.init = 16'h4444;
    LUT4 mux_874_i1_4_lut (.A(\delay[3] [0]), .B(\arb_delay[0] ), .C(n5012), 
         .D(n4858), .Z(n1749[0])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(369[91:106])
    defparam mux_874_i1_4_lut.init = 16'hc5c0;
    PFUMX i3774 (.BLUT(n4961), .ALUT(delay_3__2__N_594), .C0(\SD_ADR_TEMP[22] ), 
          .Z(n4962));
    LUT4 mux_872_i1_4_lut (.A(\delay[0] [0]), .B(\arb_delay[0] ), .C(delay_3__2__N_635), 
         .D(n4353), .Z(n1747[0])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(357[91:106])
    defparam mux_872_i1_4_lut.init = 16'hc5c0;
    LUT4 i1_2_lut_adj_84 (.A(\delay[0] [1]), .B(\delay[0] [2]), .Z(n4353)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_84.init = 16'heeee;
    FD1S3AX delay_0__i2 (.D(n1747[1]), .CK(SD_CLK_c), .Q(\delay[0] [1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=327 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(354[8] 371[4])
    defparam delay_0__i2.GSR = "DISABLED";
    FD1S3AX delay_0__i3 (.D(n1747[2]), .CK(SD_CLK_c), .Q(\delay[0] [2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=327 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(354[8] 371[4])
    defparam delay_0__i3.GSR = "DISABLED";
    FD1S3AX delay_0__i4 (.D(n1748[0]), .CK(SD_CLK_c), .Q(\delay[1] [0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=327 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(354[8] 371[4])
    defparam delay_0__i4.GSR = "DISABLED";
    FD1S3AX delay_0__i5 (.D(n1748[1]), .CK(SD_CLK_c), .Q(\delay[1] [1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=327 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(354[8] 371[4])
    defparam delay_0__i5.GSR = "DISABLED";
    FD1S3AX delay_0__i6 (.D(n1748[2]), .CK(SD_CLK_c), .Q(\delay[1] [2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=327 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(354[8] 371[4])
    defparam delay_0__i6.GSR = "DISABLED";
    FD1S3AX delay_0__i7 (.D(n1750[0]), .CK(SD_CLK_c), .Q(\delay[2] [0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=327 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(354[8] 371[4])
    defparam delay_0__i7.GSR = "DISABLED";
    FD1S3AX delay_0__i8 (.D(n1750[1]), .CK(SD_CLK_c), .Q(\delay[2] [1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=327 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(354[8] 371[4])
    defparam delay_0__i8.GSR = "DISABLED";
    FD1S3AX delay_0__i9 (.D(n1750[2]), .CK(SD_CLK_c), .Q(\delay[2] [2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=327 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(354[8] 371[4])
    defparam delay_0__i9.GSR = "DISABLED";
    FD1S3AX delay_0__i10 (.D(n1749[0]), .CK(SD_CLK_c), .Q(\delay[3] [0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=327 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(354[8] 371[4])
    defparam delay_0__i10.GSR = "DISABLED";
    FD1S3AX delay_0__i11 (.D(n1749[1]), .CK(SD_CLK_c), .Q(\delay[3] [1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=327 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(354[8] 371[4])
    defparam delay_0__i11.GSR = "DISABLED";
    FD1S3AX delay_0__i12 (.D(n1749[2]), .CK(SD_CLK_c), .Q(\delay[3] [2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=327 */ ;   // c:/lscc/sd_ram_uart/src/sdram_controller.v(354[8] 371[4])
    defparam delay_0__i12.GSR = "DISABLED";
    LUT4 \delay_3[[1__bdd_3_lut  (.A(\delay[3] [1]), .B(\delay[3] [0]), 
         .C(\delay[3] [2]), .Z(n4788)) /* synthesis lut_function=(A (B)+!A !(B+!(C))) */ ;
    defparam \delay_3[[1__bdd_3_lut .init = 16'h9898;
    L6MUX21 i3779 (.D0(n4965), .D1(n4962), .SD(\SD_ADR_TEMP[23] ), .Z(n3503));
    PFUMX i3777 (.BLUT(n4964), .ALUT(n4963), .C0(\SD_ADR_TEMP[22] ), .Z(n4965));
    PFUMX i3802 (.BLUT(n5019), .ALUT(n5020), .C0(delay_3__2__N_609), .Z(n1750[1]));
    PFUMX i3798 (.BLUT(n5013), .ALUT(n5020), .C0(delay_3__2__N_635), .Z(n1747[1]));
    PFUMX i3800 (.BLUT(n5016), .ALUT(n5020), .C0(delay_3__2__N_622), .Z(n1748[1]));
    PFUMX i3743 (.BLUT(n4877), .ALUT(n4878), .C0(\delay[3] [2]), .Z(n1749[2]));
    
endmodule
//
// Verilog Description of module fifo
//

module fifo (SD_CLK_c, \i_addr[0] , tx_dat1, SD_CLK_c_enable_130, tx_dat, 
            n8, tx_stb, tx_ack, full_N_199) /* synthesis syn_module_defined=1 */ ;
    input SD_CLK_c;
    output \i_addr[0] ;
    input [7:0]tx_dat1;
    input SD_CLK_c_enable_130;
    output [7:0]tx_dat;
    input n8;
    output tx_stb;
    input tx_ack;
    output full_N_199;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(31[6:16])
    wire [3:0]o_addr;   // c:/lscc/sd_ram_uart/src/fifo.v(23[23:29])
    wire [3:0]n32;
    wire [3:0]i_addr;   // c:/lscc/sd_ram_uart/src/fifo.v(22[23:29])
    
    wire n2;
    wire [7:0]o_data_7__N_190;
    
    wire SD_CLK_c_enable_127;
    wire [3:0]n21;
    
    wire SD_CLK_c_enable_17;
    wire [3:0]n1;   // c:/lscc/sd_ram_uart/src/fifo.v(25[24:32])
    
    wire empty_N_203, n4854, n6, n6_adj_885, n4319;
    
    FD1S3AX o_addr_768__i0 (.D(n32[0]), .CK(SD_CLK_c), .Q(o_addr[0]));   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_768__i0.GSR = "ENABLED";
    LUT4 i_addr_3__I_0_i2_2_lut (.A(i_addr[1]), .B(o_addr[1]), .Z(n2)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(27[16:32])
    defparam i_addr_3__I_0_i2_2_lut.init = 16'h6666;
    DPR16X4C m_RAM1 (.DI0(tx_dat1[0]), .DI1(tx_dat1[1]), .DI2(tx_dat1[2]), 
            .DI3(tx_dat1[3]), .WAD0(\i_addr[0] ), .WAD1(i_addr[1]), .WAD2(i_addr[2]), 
            .WAD3(i_addr[3]), .WCK(SD_CLK_c), .WRE(SD_CLK_c_enable_130), 
            .RAD0(o_addr[0]), .RAD1(o_addr[1]), .RAD2(o_addr[2]), .RAD3(o_addr[3]), 
            .DO0(o_data_7__N_190[0]), .DO1(o_data_7__N_190[1]), .DO2(o_data_7__N_190[2]), 
            .DO3(o_data_7__N_190[3]));
    defparam m_RAM1.initval = "0x0000000000000000";
    FD1P3AX s_RAM_i0_i0 (.D(o_data_7__N_190[0]), .SP(SD_CLK_c_enable_127), 
            .CK(SD_CLK_c), .Q(tx_dat[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=143, LSE_RLINE=155 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(58[9] 60[24])
    defparam s_RAM_i0_i0.GSR = "DISABLED";
    LUT4 i1079_2_lut_3_lut (.A(o_addr[1]), .B(o_addr[0]), .C(o_addr[2]), 
         .Z(n21[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam i1079_2_lut_3_lut.init = 16'h7878;
    FD1S3AX i_addr_i0_i0 (.D(n8), .CK(SD_CLK_c), .Q(\i_addr[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=143, LSE_RLINE=155 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(37[9] 38[26])
    defparam i_addr_i0_i0.GSR = "ENABLED";
    LUT4 i1086_3_lut_4_lut (.A(o_addr[1]), .B(o_addr[0]), .C(o_addr[2]), 
         .D(o_addr[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam i1086_3_lut_4_lut.init = 16'h7f80;
    DPR16X4C m_RAM0 (.DI0(tx_dat1[4]), .DI1(tx_dat1[5]), .DI2(tx_dat1[6]), 
            .DI3(tx_dat1[7]), .WAD0(\i_addr[0] ), .WAD1(i_addr[1]), .WAD2(i_addr[2]), 
            .WAD3(i_addr[3]), .WCK(SD_CLK_c), .WRE(SD_CLK_c_enable_130), 
            .RAD0(o_addr[0]), .RAD1(o_addr[1]), .RAD2(o_addr[2]), .RAD3(o_addr[3]), 
            .DO0(o_data_7__N_190[4]), .DO1(o_data_7__N_190[5]), .DO2(o_data_7__N_190[6]), 
            .DO3(o_data_7__N_190[7]));
    defparam m_RAM0.initval = "0x0000000000000000";
    FD1P3AX s_stb_33 (.D(SD_CLK_c_enable_127), .SP(SD_CLK_c_enable_17), 
            .CK(SD_CLK_c), .Q(tx_stb)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=143, LSE_RLINE=155 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(65[7] 67[22])
    defparam s_stb_33.GSR = "ENABLED";
    LUT4 i991_2_lut (.A(i_addr[1]), .B(\i_addr[0] ), .Z(n1[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(25[35:47])
    defparam i991_2_lut.init = 16'h6666;
    LUT4 i1_3_lut (.A(tx_ack), .B(tx_stb), .C(empty_N_203), .Z(SD_CLK_c_enable_17)) /* synthesis lut_function=(A+!(B+!(C))) */ ;
    defparam i1_3_lut.init = 16'hbaba;
    FD1P3AX o_addr_768__i3 (.D(n21[3]), .SP(SD_CLK_c_enable_127), .CK(SD_CLK_c), 
            .Q(o_addr[3]));   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_768__i3.GSR = "ENABLED";
    FD1P3AX o_addr_768__i2 (.D(n21[2]), .SP(SD_CLK_c_enable_127), .CK(SD_CLK_c), 
            .Q(o_addr[2]));   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_768__i2.GSR = "ENABLED";
    FD1P3AX o_addr_768__i1 (.D(n21[1]), .SP(SD_CLK_c_enable_127), .CK(SD_CLK_c), 
            .Q(o_addr[1]));   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_768__i1.GSR = "ENABLED";
    FD1P3AX s_RAM_i0_i1 (.D(o_data_7__N_190[1]), .SP(SD_CLK_c_enable_127), 
            .CK(SD_CLK_c), .Q(tx_dat[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=143, LSE_RLINE=155 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(58[9] 60[24])
    defparam s_RAM_i0_i1.GSR = "DISABLED";
    FD1P3AX s_RAM_i0_i2 (.D(o_data_7__N_190[2]), .SP(SD_CLK_c_enable_127), 
            .CK(SD_CLK_c), .Q(tx_dat[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=143, LSE_RLINE=155 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(58[9] 60[24])
    defparam s_RAM_i0_i2.GSR = "DISABLED";
    FD1P3AX s_RAM_i0_i3 (.D(o_data_7__N_190[3]), .SP(SD_CLK_c_enable_127), 
            .CK(SD_CLK_c), .Q(tx_dat[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=143, LSE_RLINE=155 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(58[9] 60[24])
    defparam s_RAM_i0_i3.GSR = "DISABLED";
    FD1P3AX s_RAM_i0_i4 (.D(o_data_7__N_190[4]), .SP(SD_CLK_c_enable_127), 
            .CK(SD_CLK_c), .Q(tx_dat[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=143, LSE_RLINE=155 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(58[9] 60[24])
    defparam s_RAM_i0_i4.GSR = "DISABLED";
    FD1P3AX s_RAM_i0_i5 (.D(o_data_7__N_190[5]), .SP(SD_CLK_c_enable_127), 
            .CK(SD_CLK_c), .Q(tx_dat[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=143, LSE_RLINE=155 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(58[9] 60[24])
    defparam s_RAM_i0_i5.GSR = "DISABLED";
    FD1P3AX s_RAM_i0_i6 (.D(o_data_7__N_190[6]), .SP(SD_CLK_c_enable_127), 
            .CK(SD_CLK_c), .Q(tx_dat[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=143, LSE_RLINE=155 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(58[9] 60[24])
    defparam s_RAM_i0_i6.GSR = "DISABLED";
    FD1P3AX s_RAM_i0_i7 (.D(o_data_7__N_190[7]), .SP(SD_CLK_c_enable_127), 
            .CK(SD_CLK_c), .Q(tx_dat[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=143, LSE_RLINE=155 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(58[9] 60[24])
    defparam s_RAM_i0_i7.GSR = "DISABLED";
    FD1P3AX i_addr_i0_i1 (.D(n1[1]), .SP(SD_CLK_c_enable_130), .CK(SD_CLK_c), 
            .Q(i_addr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=143, LSE_RLINE=155 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(37[9] 38[26])
    defparam i_addr_i0_i1.GSR = "ENABLED";
    FD1P3AX i_addr_i0_i2 (.D(n1[2]), .SP(SD_CLK_c_enable_130), .CK(SD_CLK_c), 
            .Q(i_addr[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=143, LSE_RLINE=155 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(37[9] 38[26])
    defparam i_addr_i0_i2.GSR = "ENABLED";
    FD1P3AX i_addr_i0_i3 (.D(n1[3]), .SP(SD_CLK_c_enable_130), .CK(SD_CLK_c), 
            .Q(i_addr[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=143, LSE_RLINE=155 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(37[9] 38[26])
    defparam i_addr_i0_i3.GSR = "ENABLED";
    LUT4 i1000_2_lut_rep_67_3_lut (.A(i_addr[1]), .B(\i_addr[0] ), .C(i_addr[2]), 
         .Z(n4854)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(25[35:47])
    defparam i1000_2_lut_rep_67_3_lut.init = 16'h8080;
    LUT4 i1005_2_lut_3_lut_4_lut (.A(i_addr[1]), .B(\i_addr[0] ), .C(i_addr[3]), 
         .D(i_addr[2]), .Z(n1[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(25[35:47])
    defparam i1005_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i998_2_lut_3_lut (.A(i_addr[1]), .B(\i_addr[0] ), .C(i_addr[2]), 
         .Z(n1[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(25[35:47])
    defparam i998_2_lut_3_lut.init = 16'h7878;
    LUT4 i1253_3_lut_rep_59 (.A(tx_stb), .B(empty_N_203), .C(tx_ack), 
         .Z(SD_CLK_c_enable_127)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(50[17:50])
    defparam i1253_3_lut_rep_59.init = 16'hc4c4;
    LUT4 i1197_2_lut_4_lut (.A(tx_stb), .B(empty_N_203), .C(tx_ack), .D(o_addr[0]), 
         .Z(n32[0])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A (B (D)+!B !(D)))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(50[17:50])
    defparam i1197_2_lut_4_lut.init = 16'h3bc4;
    LUT4 i1072_2_lut (.A(o_addr[1]), .B(o_addr[0]), .Z(n21[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam i1072_2_lut.init = 16'h6666;
    LUT4 i3_4_lut (.A(\i_addr[0] ), .B(n6), .C(n2), .D(o_addr[0]), .Z(empty_N_203)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(27[16:32])
    defparam i3_4_lut.init = 16'hfdfe;
    LUT4 i2_4_lut (.A(i_addr[2]), .B(i_addr[3]), .C(o_addr[2]), .D(o_addr[3]), 
         .Z(n6)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D))))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(27[16:32])
    defparam i2_4_lut.init = 16'h7bde;
    LUT4 i3_4_lut_adj_78 (.A(\i_addr[0] ), .B(n6_adj_885), .C(n2), .D(o_addr[0]), 
         .Z(full_N_199)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(C+!(D)))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(28[16:34])
    defparam i3_4_lut_adj_78.init = 16'hfedf;
    LUT4 i2_4_lut_adj_79 (.A(i_addr[1]), .B(i_addr[2]), .C(\i_addr[0] ), 
         .D(o_addr[2]), .Z(n4319)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(25[35:47])
    defparam i2_4_lut_adj_79.init = 16'h936c;
    LUT4 i2_4_lut_adj_80 (.A(n4319), .B(n4854), .C(i_addr[3]), .D(o_addr[3]), 
         .Z(n6_adj_885)) /* synthesis lut_function=(A+(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(28[16:34])
    defparam i2_4_lut_adj_80.init = 16'hebbe;
    
endmodule
//
// Verilog Description of module fifo_U0
//

module fifo_U0 (rx_dat1, SD_CLK_c, i_addr, n4642, rx_stb1, rx_dat, 
            rx_ack, n4605, nreset_c, n3493, n2541, n4318) /* synthesis syn_module_defined=1 */ ;
    output [7:0]rx_dat1;
    input SD_CLK_c;
    output [3:0]i_addr;
    input n4642;
    output rx_stb1;
    input [7:0]rx_dat;
    input rx_ack;
    output n4605;
    input nreset_c;
    input n3493;
    output n2541;
    output n4318;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(31[6:16])
    
    wire SD_CLK_c_enable_186;
    wire [7:0]o_data_7__N_190;
    
    wire n6;
    wire [3:0]i_addr_c;   // c:/lscc/sd_ram_uart/src/fifo.v(22[23:29])
    wire [3:0]o_addr;   // c:/lscc/sd_ram_uart/src/fifo.v(23[23:29])
    wire [3:0]n32;
    wire [3:0]n21;
    
    wire n4849, empty_N_203;
    wire [3:0]n1;   // c:/lscc/sd_ram_uart/src/fifo.v(25[24:32])
    
    wire n4316, n4855, n6_adj_884, n2;
    
    FD1P3AX s_RAM_i0_i0 (.D(o_data_7__N_190[0]), .SP(SD_CLK_c_enable_186), 
            .CK(SD_CLK_c), .Q(rx_dat1[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=36, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(58[9] 60[24])
    defparam s_RAM_i0_i0.GSR = "DISABLED";
    FD1S3AX i_addr_i0_i0 (.D(n4642), .CK(SD_CLK_c), .Q(i_addr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=36, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(37[9] 38[26])
    defparam i_addr_i0_i0.GSR = "ENABLED";
    FD1S3AX s_stb_33 (.D(n6), .CK(SD_CLK_c), .Q(rx_stb1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=36, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(65[7] 67[22])
    defparam s_stb_33.GSR = "ENABLED";
    FD1P3AX s_RAM_i0_i7 (.D(o_data_7__N_190[7]), .SP(SD_CLK_c_enable_186), 
            .CK(SD_CLK_c), .Q(rx_dat1[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=36, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(58[9] 60[24])
    defparam s_RAM_i0_i7.GSR = "DISABLED";
    FD1P3AX s_RAM_i0_i6 (.D(o_data_7__N_190[6]), .SP(SD_CLK_c_enable_186), 
            .CK(SD_CLK_c), .Q(rx_dat1[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=36, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(58[9] 60[24])
    defparam s_RAM_i0_i6.GSR = "DISABLED";
    DPR16X4C m_RAM1 (.DI0(rx_dat[0]), .DI1(rx_dat[1]), .DI2(rx_dat[2]), 
            .DI3(rx_dat[3]), .WAD0(i_addr[0]), .WAD1(i_addr_c[1]), .WAD2(i_addr_c[2]), 
            .WAD3(i_addr_c[3]), .WCK(SD_CLK_c), .WRE(rx_ack), .RAD0(o_addr[0]), 
            .RAD1(o_addr[1]), .RAD2(o_addr[2]), .RAD3(o_addr[3]), .DO0(o_data_7__N_190[0]), 
            .DO1(o_data_7__N_190[1]), .DO2(o_data_7__N_190[2]), .DO3(o_data_7__N_190[3]));
    defparam m_RAM1.initval = "0x0000000000000000";
    FD1P3AX s_RAM_i0_i5 (.D(o_data_7__N_190[5]), .SP(SD_CLK_c_enable_186), 
            .CK(SD_CLK_c), .Q(rx_dat1[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=36, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(58[9] 60[24])
    defparam s_RAM_i0_i5.GSR = "DISABLED";
    FD1S3AX o_addr_767__i0 (.D(n32[0]), .CK(SD_CLK_c), .Q(o_addr[0]));   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_767__i0.GSR = "ENABLED";
    LUT4 i899_3_lut_4_lut (.A(o_addr[1]), .B(o_addr[0]), .C(o_addr[2]), 
         .D(o_addr[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam i899_3_lut_4_lut.init = 16'h7f80;
    FD1P3AX s_RAM_i0_i4 (.D(o_data_7__N_190[4]), .SP(SD_CLK_c_enable_186), 
            .CK(SD_CLK_c), .Q(rx_dat1[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=36, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(58[9] 60[24])
    defparam s_RAM_i0_i4.GSR = "DISABLED";
    LUT4 i892_2_lut_3_lut (.A(o_addr[1]), .B(o_addr[0]), .C(o_addr[2]), 
         .Z(n21[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam i892_2_lut_3_lut.init = 16'h7878;
    FD1P3AX s_RAM_i0_i3 (.D(o_data_7__N_190[3]), .SP(SD_CLK_c_enable_186), 
            .CK(SD_CLK_c), .Q(rx_dat1[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=36, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(58[9] 60[24])
    defparam s_RAM_i0_i3.GSR = "DISABLED";
    FD1P3AX s_RAM_i0_i2 (.D(o_data_7__N_190[2]), .SP(SD_CLK_c_enable_186), 
            .CK(SD_CLK_c), .Q(rx_dat1[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=36, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(58[9] 60[24])
    defparam s_RAM_i0_i2.GSR = "DISABLED";
    FD1P3AX s_RAM_i0_i1 (.D(o_data_7__N_190[1]), .SP(SD_CLK_c_enable_186), 
            .CK(SD_CLK_c), .Q(rx_dat1[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=36, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(58[9] 60[24])
    defparam s_RAM_i0_i1.GSR = "DISABLED";
    DPR16X4C m_RAM0 (.DI0(rx_dat[4]), .DI1(rx_dat[5]), .DI2(rx_dat[6]), 
            .DI3(rx_dat[7]), .WAD0(i_addr[0]), .WAD1(i_addr_c[1]), .WAD2(i_addr_c[2]), 
            .WAD3(i_addr_c[3]), .WCK(SD_CLK_c), .WRE(rx_ack), .RAD0(o_addr[0]), 
            .RAD1(o_addr[1]), .RAD2(o_addr[2]), .RAD3(o_addr[3]), .DO0(o_data_7__N_190[4]), 
            .DO1(o_data_7__N_190[5]), .DO2(o_data_7__N_190[6]), .DO3(o_data_7__N_190[7]));
    defparam m_RAM0.initval = "0x0000000000000000";
    LUT4 i1201_2_lut_3_lut (.A(n4849), .B(empty_N_203), .C(o_addr[0]), 
         .Z(n32[0])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(50[17:50])
    defparam i1201_2_lut_3_lut.init = 16'h7878;
    FD1P3AX i_addr_i0_i3 (.D(n1[3]), .SP(rx_ack), .CK(SD_CLK_c), .Q(i_addr_c[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=36, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(37[9] 38[26])
    defparam i_addr_i0_i3.GSR = "ENABLED";
    FD1P3AX i_addr_i0_i2 (.D(n1[2]), .SP(rx_ack), .CK(SD_CLK_c), .Q(i_addr_c[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=36, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(37[9] 38[26])
    defparam i_addr_i0_i2.GSR = "ENABLED";
    FD1P3AX i_addr_i0_i1 (.D(n1[1]), .SP(rx_ack), .CK(SD_CLK_c), .Q(i_addr_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=36, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(37[9] 38[26])
    defparam i_addr_i0_i1.GSR = "ENABLED";
    LUT4 i3613_4_lut (.A(n4316), .B(i_addr[0]), .C(i_addr_c[1]), .D(o_addr[1]), 
         .Z(n4605)) /* synthesis lut_function=(A+(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam i3613_4_lut.init = 16'hebbe;
    FD1P3AX o_addr_767__i1 (.D(n21[1]), .SP(SD_CLK_c_enable_186), .CK(SD_CLK_c), 
            .Q(o_addr[1]));   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_767__i1.GSR = "ENABLED";
    LUT4 i885_2_lut (.A(o_addr[1]), .B(o_addr[0]), .Z(n21[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam i885_2_lut.init = 16'h6666;
    LUT4 i2_4_lut (.A(i_addr_c[2]), .B(i_addr_c[3]), .C(n4855), .D(o_addr[3]), 
         .Z(n4316)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(25[35:47])
    defparam i2_4_lut.init = 16'h936c;
    FD1P3AX o_addr_767__i2 (.D(n21[2]), .SP(SD_CLK_c_enable_186), .CK(SD_CLK_c), 
            .Q(o_addr[2]));   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_767__i2.GSR = "ENABLED";
    FD1P3AX o_addr_767__i3 (.D(n21[3]), .SP(SD_CLK_c_enable_186), .CK(SD_CLK_c), 
            .Q(o_addr[3]));   // c:/lscc/sd_ram_uart/src/fifo.v(54[30:42])
    defparam o_addr_767__i3.GSR = "ENABLED";
    LUT4 i1217_3_lut_rep_62 (.A(rx_stb1), .B(nreset_c), .C(n3493), .Z(n4849)) /* synthesis lut_function=((B (C))+!A) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(50[17:50])
    defparam i1217_3_lut_rep_62.init = 16'hd5d5;
    LUT4 i1218_2_lut_rep_58_4_lut (.A(rx_stb1), .B(nreset_c), .C(n3493), 
         .D(empty_N_203), .Z(SD_CLK_c_enable_186)) /* synthesis lut_function=(A (B (C (D)))+!A (D)) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(50[17:50])
    defparam i1218_2_lut_rep_58_4_lut.init = 16'hd500;
    LUT4 i916_2_lut_rep_68 (.A(i_addr_c[1]), .B(i_addr[0]), .Z(n4855)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(25[35:47])
    defparam i916_2_lut_rep_68.init = 16'h8888;
    LUT4 i914_2_lut (.A(i_addr_c[1]), .B(i_addr[0]), .Z(n1[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(25[35:47])
    defparam i914_2_lut.init = 16'h6666;
    LUT4 i3706_2_lut_2_lut_4_lut (.A(rx_stb1), .B(nreset_c), .C(n3493), 
         .D(empty_N_203), .Z(n6)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (D)) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(50[17:50])
    defparam i3706_2_lut_2_lut_4_lut.init = 16'hff2a;
    LUT4 i1_2_lut (.A(i_addr[0]), .B(o_addr[0]), .Z(n2541)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i2_3_lut_4_lut (.A(i_addr_c[1]), .B(i_addr[0]), .C(o_addr[2]), 
         .D(i_addr_c[2]), .Z(n4318)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(25[35:47])
    defparam i2_3_lut_4_lut.init = 16'h8778;
    LUT4 i928_3_lut_4_lut (.A(i_addr_c[1]), .B(i_addr[0]), .C(i_addr_c[2]), 
         .D(i_addr_c[3]), .Z(n1[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(25[35:47])
    defparam i928_3_lut_4_lut.init = 16'h7f80;
    LUT4 i3_4_lut (.A(i_addr[0]), .B(n6_adj_884), .C(n2), .D(o_addr[0]), 
         .Z(empty_N_203)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(27[16:32])
    defparam i3_4_lut.init = 16'hfdfe;
    LUT4 i921_2_lut_3_lut (.A(i_addr_c[1]), .B(i_addr[0]), .C(i_addr_c[2]), 
         .Z(n1[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(25[35:47])
    defparam i921_2_lut_3_lut.init = 16'h7878;
    LUT4 i2_4_lut_adj_77 (.A(i_addr_c[2]), .B(i_addr_c[3]), .C(o_addr[2]), 
         .D(o_addr[3]), .Z(n6_adj_884)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D))))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(27[16:32])
    defparam i2_4_lut_adj_77.init = 16'h7bde;
    LUT4 i_addr_3__I_0_i2_2_lut (.A(i_addr_c[1]), .B(o_addr[1]), .Z(n2)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(27[16:32])
    defparam i_addr_3__I_0_i2_2_lut.init = 16'h6666;
    
endmodule
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
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module uart_rx
//

module uart_rx (SD_CLK_c, uart_rx_c, rx_ack, rx_dat, GND_net, \i_addr[0] , 
            n4642, n2541, n4605, n4318) /* synthesis syn_module_defined=1 */ ;
    input SD_CLK_c;
    input uart_rx_c;
    output rx_ack;
    output [7:0]rx_dat;
    input GND_net;
    input \i_addr[0] ;
    output n4642;
    input n2541;
    input n4605;
    input n4318;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(31[6:16])
    
    wire RXDc, RXDb, SMPL, PS_10__N_48;
    wire [10:0]PS;   // c:/lscc/sd_ram_uart/src/uart_rx.v(51[12:14])
    
    wire n2106;
    wire [10:0]n52;
    
    wire rx_stb, STBo_N_161, RXDa, n16, FSM_7__N_49;
    wire [10:0]PS_10__N_37;
    
    wire FSM_7__N_50, n2145, FSM_7__N_60, n4841, n18, n2855, FSM_7__N_59;
    wire [7:0]DAT;   // c:/lscc/sd_ram_uart/src/uart_rx.v(55[11:14])
    
    wire SD_CLK_c_enable_153, n2651, SD_CLK_c_enable_183, n2153, FSM_7__N_52, 
        n4590, n2645, FSM_7__N_53, n4591, n2639, FSM_7__N_54, n4567, 
        n2636, FSM_7__N_55, n4566, n2654, n4227, n4226, FSM_7__N_56, 
        n4585, n2648, FSM_7__N_57, n4577, n2642, FSM_7__N_58, n4867, 
        FSM_7__N_51, n4582, n4852, n4576, n2633, n4868, n20, n4225, 
        n4224, n4223, n4869, n4853;
    
    FD1S3AX RXDc_69 (.D(RXDb), .CK(SD_CLK_c), .Q(RXDc)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(64[8:36])
    defparam RXDc_69.GSR = "DISABLED";
    FD1S3AX SMPL_72 (.D(PS_10__N_48), .CK(SD_CLK_c), .Q(SMPL)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(78[8:26])
    defparam SMPL_72.GSR = "ENABLED";
    FD1S3IX PS_i0 (.D(n52[0]), .CK(SD_CLK_c), .CD(n2106), .Q(PS[0])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(69[7] 73[5])
    defparam PS_i0.GSR = "ENABLED";
    FD1S3AX STBo_76 (.D(STBo_N_161), .CK(SD_CLK_c), .Q(rx_stb)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(123[7] 127[9])
    defparam STBo_76.GSR = "ENABLED";
    FD1S3AX RXDa_67 (.D(uart_rx_c), .CK(SD_CLK_c), .Q(RXDa)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(62[8:35])
    defparam RXDa_67.GSR = "DISABLED";
    LUT4 i5_2_lut (.A(PS[1]), .B(PS[5]), .Z(n16)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(78[16:25])
    defparam i5_2_lut.init = 16'heeee;
    FD1S3AX RXDb_68 (.D(RXDa), .CK(SD_CLK_c), .Q(RXDb)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(63[8:36])
    defparam RXDb_68.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut (.A(RXDc), .B(FSM_7__N_49), .C(n52[1]), .Z(PS_10__N_37[1])) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(64[8:36])
    defparam i1_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i1_3_lut_4_lut (.A(RXDc), .B(FSM_7__N_49), .C(FSM_7__N_50), .D(SMPL), 
         .Z(n2145)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(64[8:36])
    defparam i1_3_lut_4_lut.init = 16'h44f4;
    LUT4 i1_2_lut_rep_54 (.A(FSM_7__N_60), .B(rx_ack), .Z(n4841)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(83[7] 97[9])
    defparam i1_2_lut_rep_54.init = 16'h2222;
    LUT4 i7_4_lut (.A(PS[7]), .B(PS[2]), .C(PS[9]), .D(PS[0]), .Z(n18)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(78[16:25])
    defparam i7_4_lut.init = 16'hfffe;
    FD1S3AX FSM_FSM_i1 (.D(n2855), .CK(SD_CLK_c), .Q(FSM_7__N_60));   // c:/lscc/sd_ram_uart/src/uart_rx.v(83[7] 97[9])
    defparam FSM_FSM_i1.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_57 (.A(FSM_7__N_60), .B(rx_ack), .C(FSM_7__N_59), 
         .D(SMPL), .Z(n2855)) /* synthesis lut_function=(A ((C (D))+!B)+!A (C (D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(83[7] 97[9])
    defparam i1_3_lut_4_lut_adj_57.init = 16'hf222;
    FD1P3AX DAT_i0_i0 (.D(n2651), .SP(SD_CLK_c_enable_153), .CK(SD_CLK_c), 
            .Q(DAT[0])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam DAT_i0_i0.GSR = "ENABLED";
    FD1P3AX DATo_i0_i0 (.D(DAT[0]), .SP(SD_CLK_c_enable_183), .CK(SD_CLK_c), 
            .Q(rx_dat[0])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(116[7] 118[9])
    defparam DATo_i0_i0.GSR = "ENABLED";
    LUT4 i58_4_lut (.A(RXDc), .B(FSM_7__N_60), .C(FSM_7__N_49), .D(rx_ack), 
         .Z(n2153)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(59[7:11])
    defparam i58_4_lut.init = 16'heca0;
    LUT4 i1_4_lut (.A(RXDc), .B(DAT[1]), .C(FSM_7__N_52), .D(n4590), 
         .Z(n2645)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_4_lut.init = 16'heca0;
    LUT4 i1_4_lut_adj_58 (.A(RXDc), .B(DAT[2]), .C(FSM_7__N_53), .D(n4591), 
         .Z(n2639)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_4_lut_adj_58.init = 16'heca0;
    LUT4 i1_4_lut_adj_59 (.A(RXDc), .B(DAT[3]), .C(FSM_7__N_54), .D(n4567), 
         .Z(n2636)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_4_lut_adj_59.init = 16'heca0;
    FD1S3JX PS_i10 (.D(PS_10__N_37[10]), .CK(SD_CLK_c), .PD(PS_10__N_48), 
            .Q(PS[10])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(69[7] 73[5])
    defparam PS_i10.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_60 (.A(RXDc), .B(DAT[4]), .C(FSM_7__N_55), .D(n4566), 
         .Z(n2654)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_4_lut_adj_60.init = 16'heca0;
    CCU2D sub_7_add_2_11 (.A0(PS[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PS[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4227), 
          .S0(n52[9]), .S1(n52[10]));   // c:/lscc/sd_ram_uart/src/uart_rx.v(72[16:22])
    defparam sub_7_add_2_11.INIT0 = 16'h5555;
    defparam sub_7_add_2_11.INIT1 = 16'h5555;
    defparam sub_7_add_2_11.INJECT1_0 = "NO";
    defparam sub_7_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_9 (.A0(PS[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PS[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4226), 
          .COUT(n4227), .S0(n52[7]), .S1(n52[8]));   // c:/lscc/sd_ram_uart/src/uart_rx.v(72[16:22])
    defparam sub_7_add_2_9.INIT0 = 16'h5555;
    defparam sub_7_add_2_9.INIT1 = 16'h5555;
    defparam sub_7_add_2_9.INJECT1_0 = "NO";
    defparam sub_7_add_2_9.INJECT1_1 = "NO";
    FD1S3IX PS_i9 (.D(PS_10__N_37[9]), .CK(SD_CLK_c), .CD(PS_10__N_48), 
            .Q(PS[9])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(69[7] 73[5])
    defparam PS_i9.GSR = "ENABLED";
    FD1S3IX PS_i8 (.D(n52[8]), .CK(SD_CLK_c), .CD(n2106), .Q(PS[8])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(69[7] 73[5])
    defparam PS_i8.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_61 (.A(RXDc), .B(DAT[5]), .C(FSM_7__N_56), .D(n4585), 
         .Z(n2648)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_4_lut_adj_61.init = 16'heca0;
    LUT4 i1_4_lut_adj_62 (.A(RXDc), .B(DAT[6]), .C(FSM_7__N_57), .D(n4577), 
         .Z(n2642)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_4_lut_adj_62.init = 16'heca0;
    FD1S3JX PS_i7 (.D(PS_10__N_37[7]), .CK(SD_CLK_c), .PD(PS_10__N_48), 
            .Q(PS[7])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(69[7] 73[5])
    defparam PS_i7.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_80 (.A(FSM_7__N_57), .B(FSM_7__N_58), .Z(n4867)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_2_lut_rep_80.init = 16'heeee;
    LUT4 i3704_4_lut (.A(FSM_7__N_59), .B(FSM_7__N_60), .C(FSM_7__N_50), 
         .D(FSM_7__N_49), .Z(SD_CLK_c_enable_153)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i3704_4_lut.init = 16'h0001;
    LUT4 i1_4_lut_adj_63 (.A(RXDc), .B(DAT[0]), .C(FSM_7__N_51), .D(n4582), 
         .Z(n2651)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_4_lut_adj_63.init = 16'heca0;
    LUT4 i1_2_lut_rep_65_3_lut (.A(FSM_7__N_57), .B(FSM_7__N_58), .C(FSM_7__N_56), 
         .Z(n4852)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_2_lut_rep_65_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_64 (.A(RXDc), .B(DAT[7]), .C(FSM_7__N_58), .D(n4576), 
         .Z(n2633)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_4_lut_adj_64.init = 16'heca0;
    FD1S3IX PS_i6 (.D(PS_10__N_37[6]), .CK(SD_CLK_c), .CD(PS_10__N_48), 
            .Q(PS[6])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(69[7] 73[5])
    defparam PS_i6.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_81 (.A(FSM_7__N_55), .B(FSM_7__N_54), .Z(n4868)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_2_lut_rep_81.init = 16'heeee;
    LUT4 i3682_4_lut (.A(PS[4]), .B(n20), .C(n16), .D(PS[8]), .Z(PS_10__N_48)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(78[16:25])
    defparam i3682_4_lut.init = 16'h0001;
    FD1S3IX PS_i5 (.D(n52[5]), .CK(SD_CLK_c), .CD(n2106), .Q(PS[5])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(69[7] 73[5])
    defparam PS_i5.GSR = "ENABLED";
    FD1S3IX PS_i4 (.D(n52[4]), .CK(SD_CLK_c), .CD(n2106), .Q(PS[4])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(69[7] 73[5])
    defparam PS_i4.GSR = "ENABLED";
    LUT4 i9_4_lut (.A(PS[6]), .B(n18), .C(PS[3]), .D(PS[10]), .Z(n20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(78[16:25])
    defparam i9_4_lut.init = 16'hfffe;
    CCU2D sub_7_add_2_7 (.A0(PS[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PS[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4225), 
          .COUT(n4226), .S0(n52[5]), .S1(n52[6]));   // c:/lscc/sd_ram_uart/src/uart_rx.v(72[16:22])
    defparam sub_7_add_2_7.INIT0 = 16'h5555;
    defparam sub_7_add_2_7.INIT1 = 16'h5555;
    defparam sub_7_add_2_7.INJECT1_0 = "NO";
    defparam sub_7_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_5 (.A0(PS[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PS[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4224), 
          .COUT(n4225), .S0(n52[3]), .S1(n52[4]));   // c:/lscc/sd_ram_uart/src/uart_rx.v(72[16:22])
    defparam sub_7_add_2_5.INIT0 = 16'h5555;
    defparam sub_7_add_2_5.INIT1 = 16'h5555;
    defparam sub_7_add_2_5.INJECT1_0 = "NO";
    defparam sub_7_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_3 (.A0(PS[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PS[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4223), 
          .COUT(n4224), .S0(n52[1]), .S1(n52[2]));   // c:/lscc/sd_ram_uart/src/uart_rx.v(72[16:22])
    defparam sub_7_add_2_3.INIT0 = 16'h5555;
    defparam sub_7_add_2_3.INIT1 = 16'h5555;
    defparam sub_7_add_2_3.INJECT1_0 = "NO";
    defparam sub_7_add_2_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_82 (.A(FSM_7__N_52), .B(FSM_7__N_53), .Z(n4869)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_2_lut_rep_82.init = 16'heeee;
    LUT4 i1_2_lut_rep_66_3_lut (.A(FSM_7__N_52), .B(FSM_7__N_53), .C(FSM_7__N_51), 
         .Z(n4853)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_2_lut_rep_66_3_lut.init = 16'hfefe;
    FD1S3IX PS_i3 (.D(n52[3]), .CK(SD_CLK_c), .CD(n2106), .Q(PS[3])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(69[7] 73[5])
    defparam PS_i3.GSR = "ENABLED";
    FD1S3IX PS_i2 (.D(n52[2]), .CK(SD_CLK_c), .CD(n2106), .Q(PS[2])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(69[7] 73[5])
    defparam PS_i2.GSR = "ENABLED";
    FD1S3JX PS_i1 (.D(PS_10__N_37[1]), .CK(SD_CLK_c), .PD(PS_10__N_48), 
            .Q(PS[1])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(69[7] 73[5])
    defparam PS_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_65 (.A(RXDc), .B(FSM_7__N_49), .C(PS_10__N_48), 
         .Z(n2106)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(64[8:36])
    defparam i1_2_lut_3_lut_adj_65.init = 16'hf4f4;
    LUT4 i1_2_lut_3_lut_adj_66 (.A(RXDc), .B(FSM_7__N_49), .C(n52[10]), 
         .Z(PS_10__N_37[10])) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(64[8:36])
    defparam i1_2_lut_3_lut_adj_66.init = 16'hb0b0;
    LUT4 i1_2_lut_3_lut_adj_67 (.A(RXDc), .B(FSM_7__N_49), .C(n52[9]), 
         .Z(PS_10__N_37[9])) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(64[8:36])
    defparam i1_2_lut_3_lut_adj_67.init = 16'hf4f4;
    LUT4 i1_2_lut_3_lut_adj_68 (.A(RXDc), .B(FSM_7__N_49), .C(n52[7]), 
         .Z(PS_10__N_37[7])) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(64[8:36])
    defparam i1_2_lut_3_lut_adj_68.init = 16'hb0b0;
    LUT4 i1_2_lut_3_lut_adj_69 (.A(RXDc), .B(FSM_7__N_49), .C(n52[6]), 
         .Z(PS_10__N_37[6])) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(64[8:36])
    defparam i1_2_lut_3_lut_adj_69.init = 16'hf4f4;
    LUT4 i1_2_lut_3_lut_4_lut (.A(FSM_7__N_51), .B(n4869), .C(n4867), 
         .D(n4868), .Z(n4585)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1739_1_lut (.A(FSM_7__N_59), .Z(SD_CLK_c_enable_183)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(83[7] 97[9])
    defparam i1739_1_lut.init = 16'h5555;
    FD1P3AX FSM_FSM_i2 (.D(FSM_7__N_58), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_59));   // c:/lscc/sd_ram_uart/src/uart_rx.v(83[7] 97[9])
    defparam FSM_FSM_i2.GSR = "ENABLED";
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
    FD1S3AX FSM_FSM_i11 (.D(n2145), .CK(SD_CLK_c), .Q(FSM_7__N_50));   // c:/lscc/sd_ram_uart/src/uart_rx.v(83[7] 97[9])
    defparam FSM_FSM_i11.GSR = "ENABLED";
    FD1S3AY FSM_FSM_i12 (.D(n2153), .CK(SD_CLK_c), .Q(FSM_7__N_49));   // c:/lscc/sd_ram_uart/src/uart_rx.v(83[7] 97[9])
    defparam FSM_FSM_i12.GSR = "ENABLED";
    FD1P3AX DAT_i0_i1 (.D(n2645), .SP(SD_CLK_c_enable_153), .CK(SD_CLK_c), 
            .Q(DAT[1])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam DAT_i0_i1.GSR = "ENABLED";
    FD1P3AX DAT_i0_i2 (.D(n2639), .SP(SD_CLK_c_enable_153), .CK(SD_CLK_c), 
            .Q(DAT[2])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam DAT_i0_i2.GSR = "ENABLED";
    FD1P3AX DAT_i0_i3 (.D(n2636), .SP(SD_CLK_c_enable_153), .CK(SD_CLK_c), 
            .Q(DAT[3])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam DAT_i0_i3.GSR = "ENABLED";
    FD1P3AX DAT_i0_i4 (.D(n2654), .SP(SD_CLK_c_enable_153), .CK(SD_CLK_c), 
            .Q(DAT[4])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam DAT_i0_i4.GSR = "ENABLED";
    FD1P3AX DAT_i0_i5 (.D(n2648), .SP(SD_CLK_c_enable_153), .CK(SD_CLK_c), 
            .Q(DAT[5])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam DAT_i0_i5.GSR = "ENABLED";
    FD1P3AX DAT_i0_i6 (.D(n2642), .SP(SD_CLK_c_enable_153), .CK(SD_CLK_c), 
            .Q(DAT[6])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam DAT_i0_i6.GSR = "ENABLED";
    FD1P3AX DAT_i0_i7 (.D(n2633), .SP(SD_CLK_c_enable_153), .CK(SD_CLK_c), 
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
    CCU2D sub_7_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PS[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n4223), 
          .S1(n52[0]));   // c:/lscc/sd_ram_uart/src/uart_rx.v(72[16:22])
    defparam sub_7_add_2_1.INIT0 = 16'hF000;
    defparam sub_7_add_2_1.INIT1 = 16'h5555;
    defparam sub_7_add_2_1.INJECT1_0 = "NO";
    defparam sub_7_add_2_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_70 (.A(n4852), .B(n4868), .C(FSM_7__N_53), 
         .D(FSM_7__N_51), .Z(n4590)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_2_lut_3_lut_4_lut_adj_70.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_71 (.A(n4852), .B(n4868), .C(FSM_7__N_52), 
         .D(FSM_7__N_51), .Z(n4591)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_2_lut_3_lut_4_lut_adj_71.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_72 (.A(n4853), .B(n4868), .C(FSM_7__N_57), 
         .D(FSM_7__N_56), .Z(n4576)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_2_lut_3_lut_4_lut_adj_72.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_73 (.A(n4853), .B(n4868), .C(FSM_7__N_58), 
         .D(FSM_7__N_56), .Z(n4577)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_2_lut_3_lut_4_lut_adj_73.init = 16'hfffe;
    LUT4 i3649_2_lut (.A(rx_ack), .B(\i_addr[0] ), .Z(n4642)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/lscc/sd_ram_uart/src/fifo.v(22[23:29])
    defparam i3649_2_lut.init = 16'h6666;
    LUT4 i2_4_lut (.A(n4841), .B(FSM_7__N_59), .C(rx_stb), .D(SMPL), 
         .Z(STBo_N_161)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(52[7:11])
    defparam i2_4_lut.init = 16'heeea;
    LUT4 i1_2_lut_3_lut_4_lut_adj_74 (.A(FSM_7__N_56), .B(n4867), .C(n4869), 
         .D(n4868), .Z(n4582)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_2_lut_3_lut_4_lut_adj_74.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_75 (.A(FSM_7__N_56), .B(n4867), .C(FSM_7__N_55), 
         .D(n4853), .Z(n4567)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_2_lut_3_lut_4_lut_adj_75.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_76 (.A(FSM_7__N_56), .B(n4867), .C(FSM_7__N_54), 
         .D(n4853), .Z(n4566)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(102[7] 111[9])
    defparam i1_2_lut_3_lut_4_lut_adj_76.init = 16'hfffe;
    LUT4 i3701_4_lut (.A(rx_stb), .B(n2541), .C(n4605), .D(n4318), .Z(rx_ack)) /* synthesis lut_function=(A ((C+(D))+!B)) */ ;   // c:/lscc/sd_ram_uart/src/uart_rx.v(123[7] 127[9])
    defparam i3701_4_lut.init = 16'haaa2;
    
endmodule
//
// Verilog Description of module uart_tx
//

module uart_tx (SD_CLK_c, tx_dat, tx_ack, uart_tx_c, GND_net, tx_stb) /* synthesis syn_module_defined=1 */ ;
    input SD_CLK_c;
    input [7:0]tx_dat;
    output tx_ack;
    output uart_tx_c;
    input GND_net;
    input tx_stb;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/lscc/sd_ram_uart/src/top_module.v(31[6:16])
    wire [10:0]PS;   // c:/lscc/sd_ram_uart/src/uart_tx.v(35[12:14])
    
    wire n18;
    wire [7:0]DAT;   // c:/lscc/sd_ram_uart/src/uart_tx.v(39[11:14])
    
    wire DAT_7__N_878, SMPL, PS_10__N_767;
    wire [11:0]PS_10__N_755;
    
    wire n4302, n4775, n16, n20, n17, FSM_7__N_777, FSM_7__N_776, 
        n4772, n4220, n4221, FSM_7__N_780, FSM_7__N_779, n4219, 
        n4218, n4774, FSM_7__N_771, n4217;
    wire [0:0]n1538;
    
    wire FSM_7__N_772, n4771, FSM_7__N_778, FSM_7__N_768, FSM_7__N_770, 
        FSM_7__N_769, n2218, n2213, FSM_7__N_773, FSM_7__N_774, n4632, 
        FSM_7__N_775, n4773, n20_adj_883;
    
    LUT4 i7_4_lut (.A(PS[7]), .B(PS[2]), .C(PS[9]), .D(PS[0]), .Z(n18)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(49[16:25])
    defparam i7_4_lut.init = 16'hfffe;
    FD1P3AX DAT_i0_i0 (.D(tx_dat[0]), .SP(DAT_7__N_878), .CK(SD_CLK_c), 
            .Q(DAT[0])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(75[7:47])
    defparam DAT_i0_i0.GSR = "ENABLED";
    FD1S3AX SMPL_61 (.D(PS_10__N_767), .CK(SD_CLK_c), .Q(SMPL)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(49[8:26])
    defparam SMPL_61.GSR = "ENABLED";
    FD1S3IX PS_i0 (.D(PS_10__N_755[0]), .CK(SD_CLK_c), .CD(PS_10__N_767), 
            .Q(PS[0])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[11:50])
    defparam PS_i0.GSR = "ENABLED";
    FD1S3AX ACKi_64 (.D(DAT_7__N_878), .CK(SD_CLK_c), .Q(tx_ack)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(80[7] 82[17])
    defparam ACKi_64.GSR = "ENABLED";
    FD1S3JX TXD_65 (.D(n4775), .CK(SD_CLK_c), .PD(n4302), .Q(uart_tx_c)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(87[7] 99[9])
    defparam TXD_65.GSR = "ENABLED";
    LUT4 i5_2_lut (.A(PS[1]), .B(PS[5]), .Z(n16)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(49[16:25])
    defparam i5_2_lut.init = 16'heeee;
    LUT4 n20_bdd_4_lut_3723 (.A(n20), .B(n17), .C(FSM_7__N_777), .D(FSM_7__N_776), 
         .Z(n4772)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B (C+(D))))) */ ;
    defparam n20_bdd_4_lut_3723.init = 16'h3335;
    CCU2D add_568_9 (.A0(PS[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PS[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4220), 
          .COUT(n4221), .S0(PS_10__N_755[7]), .S1(PS_10__N_755[8]));   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[43:49])
    defparam add_568_9.INIT0 = 16'h5555;
    defparam add_568_9.INIT1 = 16'h5555;
    defparam add_568_9.INJECT1_0 = "NO";
    defparam add_568_9.INJECT1_1 = "NO";
    FD1P3AX DAT_i0_i7 (.D(tx_dat[7]), .SP(DAT_7__N_878), .CK(SD_CLK_c), 
            .Q(DAT[7])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(75[7:47])
    defparam DAT_i0_i7.GSR = "ENABLED";
    FD1P3AX DAT_i0_i6 (.D(tx_dat[6]), .SP(DAT_7__N_878), .CK(SD_CLK_c), 
            .Q(DAT[6])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(75[7:47])
    defparam DAT_i0_i6.GSR = "ENABLED";
    FD1P3AX DAT_i0_i5 (.D(tx_dat[5]), .SP(DAT_7__N_878), .CK(SD_CLK_c), 
            .Q(DAT[5])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(75[7:47])
    defparam DAT_i0_i5.GSR = "ENABLED";
    FD1P3AX DAT_i0_i4 (.D(tx_dat[4]), .SP(DAT_7__N_878), .CK(SD_CLK_c), 
            .Q(DAT[4])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(75[7:47])
    defparam DAT_i0_i4.GSR = "ENABLED";
    FD1P3AX DAT_i0_i3 (.D(tx_dat[3]), .SP(DAT_7__N_878), .CK(SD_CLK_c), 
            .Q(DAT[3])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(75[7:47])
    defparam DAT_i0_i3.GSR = "ENABLED";
    FD1P3AX DAT_i0_i2 (.D(tx_dat[2]), .SP(DAT_7__N_878), .CK(SD_CLK_c), 
            .Q(DAT[2])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(75[7:47])
    defparam DAT_i0_i2.GSR = "ENABLED";
    FD1P3AX DAT_i0_i1 (.D(tx_dat[1]), .SP(DAT_7__N_878), .CK(SD_CLK_c), 
            .Q(DAT[1])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(75[7:47])
    defparam DAT_i0_i1.GSR = "ENABLED";
    FD1P3AX FSM_FSM_i1 (.D(FSM_7__N_779), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_780));   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam FSM_FSM_i1.GSR = "ENABLED";
    CCU2D add_568_7 (.A0(PS[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PS[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4219), 
          .COUT(n4220), .S0(PS_10__N_755[5]), .S1(PS_10__N_755[6]));   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[43:49])
    defparam add_568_7.INIT0 = 16'h5555;
    defparam add_568_7.INIT1 = 16'h5555;
    defparam add_568_7.INJECT1_0 = "NO";
    defparam add_568_7.INJECT1_1 = "NO";
    CCU2D add_568_5 (.A0(PS[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PS[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4218), 
          .COUT(n4219), .S0(PS_10__N_755[3]), .S1(PS_10__N_755[4]));   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[43:49])
    defparam add_568_5.INIT0 = 16'h5555;
    defparam add_568_5.INIT1 = 16'h5555;
    defparam add_568_5.INJECT1_0 = "NO";
    defparam add_568_5.INJECT1_1 = "NO";
    LUT4 n4774_bdd_2_lut (.A(n4774), .B(FSM_7__N_771), .Z(n4775)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n4774_bdd_2_lut.init = 16'h2222;
    CCU2D add_568_3 (.A0(PS[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PS[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4217), 
          .COUT(n4218), .S0(PS_10__N_755[1]), .S1(PS_10__N_755[2]));   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[43:49])
    defparam add_568_3.INIT0 = 16'h5555;
    defparam add_568_3.INIT1 = 16'h5555;
    defparam add_568_3.INJECT1_0 = "NO";
    defparam add_568_3.INJECT1_1 = "NO";
    CCU2D add_568_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PS[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n4217), 
          .S1(PS_10__N_755[0]));   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[43:49])
    defparam add_568_1.INIT0 = 16'hF000;
    defparam add_568_1.INIT1 = 16'h5555;
    defparam add_568_1.INJECT1_0 = "NO";
    defparam add_568_1.INJECT1_1 = "NO";
    FD1S3JX PS_i10 (.D(PS_10__N_755[10]), .CK(SD_CLK_c), .PD(PS_10__N_767), 
            .Q(PS[10])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[11:50])
    defparam PS_i10.GSR = "ENABLED";
    FD1S3IX PS_i9 (.D(PS_10__N_755[9]), .CK(SD_CLK_c), .CD(PS_10__N_767), 
            .Q(PS[9])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[11:50])
    defparam PS_i9.GSR = "ENABLED";
    FD1S3IX PS_i8 (.D(PS_10__N_755[8]), .CK(SD_CLK_c), .CD(PS_10__N_767), 
            .Q(PS[8])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[11:50])
    defparam PS_i8.GSR = "ENABLED";
    FD1S3JX PS_i7 (.D(PS_10__N_755[7]), .CK(SD_CLK_c), .PD(PS_10__N_767), 
            .Q(PS[7])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[11:50])
    defparam PS_i7.GSR = "ENABLED";
    FD1S3IX PS_i6 (.D(PS_10__N_755[6]), .CK(SD_CLK_c), .CD(PS_10__N_767), 
            .Q(PS[6])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[11:50])
    defparam PS_i6.GSR = "ENABLED";
    FD1S3IX PS_i5 (.D(PS_10__N_755[5]), .CK(SD_CLK_c), .CD(PS_10__N_767), 
            .Q(PS[5])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[11:50])
    defparam PS_i5.GSR = "ENABLED";
    FD1S3IX PS_i4 (.D(PS_10__N_755[4]), .CK(SD_CLK_c), .CD(PS_10__N_767), 
            .Q(PS[4])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[11:50])
    defparam PS_i4.GSR = "ENABLED";
    FD1S3IX PS_i3 (.D(PS_10__N_755[3]), .CK(SD_CLK_c), .CD(PS_10__N_767), 
            .Q(PS[3])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[11:50])
    defparam PS_i3.GSR = "ENABLED";
    FD1S3IX PS_i2 (.D(PS_10__N_755[2]), .CK(SD_CLK_c), .CD(PS_10__N_767), 
            .Q(PS[2])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[11:50])
    defparam PS_i2.GSR = "ENABLED";
    FD1S3JX PS_i1 (.D(PS_10__N_755[1]), .CK(SD_CLK_c), .PD(PS_10__N_767), 
            .Q(PS[1])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=87 */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[11:50])
    defparam PS_i1.GSR = "ENABLED";
    LUT4 i36_3_lut (.A(DAT[5]), .B(DAT[4]), .C(FSM_7__N_776), .Z(n17)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(87[7] 99[9])
    defparam i36_3_lut.init = 16'h3535;
    LUT4 n20_bdd_3_lut_3722 (.A(n1538[0]), .B(DAT[0]), .C(FSM_7__N_772), 
         .Z(n4771)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n20_bdd_3_lut_3722.init = 16'hcaca;
    FD1P3AX FSM_FSM_i2 (.D(FSM_7__N_778), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_779));   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam FSM_FSM_i2.GSR = "ENABLED";
    LUT4 DAT_7__I_56_2_lut (.A(FSM_7__N_768), .B(tx_stb), .Z(DAT_7__N_878)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(80[10:33])
    defparam DAT_7__I_56_2_lut.init = 16'h8888;
    LUT4 i1314_3_lut (.A(FSM_7__N_770), .B(FSM_7__N_769), .C(SMPL), .Z(n2218)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam i1314_3_lut.init = 16'hcece;
    LUT4 i1309_4_lut (.A(FSM_7__N_768), .B(SMPL), .C(tx_stb), .D(FSM_7__N_780), 
         .Z(n2213)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam i1309_4_lut.init = 16'hce0a;
    LUT4 i1524_3_lut (.A(DAT[2]), .B(DAT[1]), .C(FSM_7__N_773), .Z(n1538[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(87[7] 99[9])
    defparam i1524_3_lut.init = 16'hcaca;
    LUT4 i3675_3_lut (.A(FSM_7__N_772), .B(FSM_7__N_773), .C(FSM_7__N_774), 
         .Z(n4632)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(87[7] 99[9])
    defparam i3675_3_lut.init = 16'hfefe;
    FD1P3AX FSM_FSM_i3 (.D(FSM_7__N_777), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_778));   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam FSM_FSM_i3.GSR = "ENABLED";
    FD1P3AX FSM_FSM_i4 (.D(FSM_7__N_776), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_777));   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam FSM_FSM_i4.GSR = "ENABLED";
    FD1P3AX FSM_FSM_i5 (.D(FSM_7__N_775), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_776));   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam FSM_FSM_i5.GSR = "ENABLED";
    FD1P3AX FSM_FSM_i6 (.D(FSM_7__N_774), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_775));   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam FSM_FSM_i6.GSR = "ENABLED";
    FD1P3AX FSM_FSM_i7 (.D(FSM_7__N_773), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_774));   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam FSM_FSM_i7.GSR = "ENABLED";
    FD1P3AX FSM_FSM_i8 (.D(FSM_7__N_772), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_773));   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam FSM_FSM_i8.GSR = "ENABLED";
    FD1P3AX FSM_FSM_i9 (.D(FSM_7__N_771), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_772));   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam FSM_FSM_i9.GSR = "ENABLED";
    FD1P3AX FSM_FSM_i10 (.D(FSM_7__N_770), .SP(SMPL), .CK(SD_CLK_c), .Q(FSM_7__N_771));   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam FSM_FSM_i10.GSR = "ENABLED";
    FD1S3AX FSM_FSM_i11 (.D(n2218), .CK(SD_CLK_c), .Q(FSM_7__N_770));   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam FSM_FSM_i11.GSR = "ENABLED";
    FD1S3AX FSM_FSM_i12 (.D(DAT_7__N_878), .CK(SD_CLK_c), .Q(FSM_7__N_769));   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam FSM_FSM_i12.GSR = "ENABLED";
    FD1S3AY FSM_FSM_i13 (.D(n2213), .CK(SD_CLK_c), .Q(FSM_7__N_768));   // c:/lscc/sd_ram_uart/src/uart_tx.v(54[7] 70[9])
    defparam FSM_FSM_i13.GSR = "ENABLED";
    LUT4 n4772_bdd_3_lut (.A(n4772), .B(DAT[3]), .C(FSM_7__N_775), .Z(n4773)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n4772_bdd_3_lut.init = 16'hcaca;
    PFUMX i3718 (.BLUT(n4773), .ALUT(n4771), .C0(n4632), .Z(n4774));
    CCU2D add_568_11 (.A0(PS[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PS[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4221), 
          .S0(PS_10__N_755[9]), .S1(PS_10__N_755[10]));   // c:/lscc/sd_ram_uart/src/uart_tx.v(44[43:49])
    defparam add_568_11.INIT0 = 16'h5555;
    defparam add_568_11.INIT1 = 16'h5555;
    defparam add_568_11.INJECT1_0 = "NO";
    defparam add_568_11.INJECT1_1 = "NO";
    LUT4 i2_3_lut (.A(FSM_7__N_769), .B(FSM_7__N_768), .C(FSM_7__N_770), 
         .Z(n4302)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i35_4_lut (.A(DAT[7]), .B(DAT[6]), .C(FSM_7__N_778), .D(FSM_7__N_779), 
         .Z(n20)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(87[7] 99[9])
    defparam i35_4_lut.init = 16'h3530;
    LUT4 i3667_4_lut (.A(PS[4]), .B(n20_adj_883), .C(n16), .D(PS[8]), 
         .Z(PS_10__N_767)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(49[16:25])
    defparam i3667_4_lut.init = 16'h0001;
    LUT4 i9_4_lut (.A(PS[6]), .B(n18), .C(PS[3]), .D(PS[10]), .Z(n20_adj_883)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/sd_ram_uart/src/uart_tx.v(49[16:25])
    defparam i9_4_lut.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

