/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Xilinx/XProject/SDRAM_Controller/Src/LED_Driver.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {62U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {61U, 0U};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {59U, 0U};
static unsigned int ng7[] = {3U, 0U};
static unsigned int ng8[] = {55U, 0U};
static unsigned int ng9[] = {4U, 0U};
static unsigned int ng10[] = {47U, 0U};
static unsigned int ng11[] = {5U, 0U};
static unsigned int ng12[] = {31U, 0U};
static unsigned int ng13[] = {63U, 0U};
static int ng14[] = {7, 0};
static int ng15[] = {1, 0};
static unsigned int ng16[] = {79U, 0U};
static unsigned int ng17[] = {18U, 0U};
static unsigned int ng18[] = {6U, 0U};
static unsigned int ng19[] = {76U, 0U};
static unsigned int ng20[] = {36U, 0U};
static unsigned int ng21[] = {32U, 0U};
static unsigned int ng22[] = {7U, 0U};
static unsigned int ng23[] = {15U, 0U};
static unsigned int ng24[] = {8U, 0U};
static unsigned int ng25[] = {9U, 0U};
static unsigned int ng26[] = {10U, 0U};
static unsigned int ng27[] = {11U, 0U};
static unsigned int ng28[] = {96U, 0U};
static unsigned int ng29[] = {12U, 0U};
static unsigned int ng30[] = {49U, 0U};
static unsigned int ng31[] = {13U, 0U};
static unsigned int ng32[] = {66U, 0U};
static unsigned int ng33[] = {14U, 0U};
static unsigned int ng34[] = {48U, 0U};
static unsigned int ng35[] = {127U, 0U};
static int ng36[] = {0, 0};
static unsigned int ng37[] = {393210U, 0U};



static void Always_32_0(char *t0)
{
    char t7[8];
    char t18[8];
    char t19[8];
    char t53[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    int t25;
    char *t26;
    int t27;
    int t28;
    char *t29;
    int t30;
    int t31;
    int t32;
    int t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t54;
    char *t55;
    char *t56;
    unsigned int t57;

LAB0:    t1 = (t0 + 3808U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 4872);
    *((int *)t2) = 1;
    t3 = (t0 + 3840);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);

LAB5:    xsi_set_current_line(34, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 4);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB17;

LAB18:
LAB20:
LAB19:    xsi_set_current_line(59, ng0);

LAB28:    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);

LAB21:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB29:    t8 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t8, 4);
    if (t6 == 1)
        goto LAB30;

LAB31:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB32;

LAB33:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB34;

LAB35:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB36;

LAB37:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB38;

LAB39:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB40;

LAB41:    t2 = ((char*)((ng18)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB42;

LAB43:    t2 = ((char*)((ng22)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB44;

LAB45:    t2 = ((char*)((ng24)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB46;

LAB47:    t2 = ((char*)((ng25)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB48;

LAB49:    t2 = ((char*)((ng26)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB50;

LAB51:    t2 = ((char*)((ng27)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB52;

LAB53:    t2 = ((char*)((ng29)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB54;

LAB55:    t2 = ((char*)((ng31)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB56;

LAB57:    t2 = ((char*)((ng33)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB58;

LAB59:    t2 = ((char*)((ng23)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t6 == 1)
        goto LAB60;

LAB61:
LAB62:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 1528U);
    t8 = *((char **)t2);
    memset(t19, 0, 8);
    t2 = (t3 + 4);
    t9 = (t8 + 4);
    t11 = *((unsigned int *)t3);
    t12 = *((unsigned int *)t8);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t2);
    t15 = *((unsigned int *)t9);
    t16 = (t14 ^ t15);
    t35 = (t13 | t16);
    t36 = *((unsigned int *)t2);
    t37 = *((unsigned int *)t9);
    t38 = (t36 | t37);
    t39 = (~(t38));
    t40 = (t35 & t39);
    if (t40 != 0)
        goto LAB98;

LAB95:    if (t38 != 0)
        goto LAB97;

LAB96:    *((unsigned int *)t19) = 1;

LAB98:    memset(t18, 0, 8);
    t17 = (t19 + 4);
    t41 = *((unsigned int *)t17);
    t42 = (~(t41));
    t43 = *((unsigned int *)t19);
    t44 = (t43 & t42);
    t45 = (t44 & 1U);
    if (t45 != 0)
        goto LAB99;

LAB100:    if (*((unsigned int *)t17) != 0)
        goto LAB101;

LAB102:    t21 = (t18 + 4);
    t46 = *((unsigned int *)t18);
    t47 = *((unsigned int *)t21);
    t48 = (t46 || t47);
    if (t48 > 0)
        goto LAB103;

LAB104:    t49 = *((unsigned int *)t18);
    t50 = (~(t49));
    t51 = *((unsigned int *)t21);
    t52 = (t50 || t51);
    if (t52 > 0)
        goto LAB105;

LAB106:    if (*((unsigned int *)t21) > 0)
        goto LAB107;

LAB108:    if (*((unsigned int *)t18) > 0)
        goto LAB109;

LAB110:    memcpy(t7, t23, 8);

LAB111:    t24 = (t0 + 2568);
    t26 = (t0 + 2568);
    t29 = (t26 + 72U);
    t54 = *((char **)t29);
    t55 = ((char*)((ng36)));
    xsi_vlog_generic_convert_bit_index(t53, t54, 2, t55, 32, 1);
    t56 = (t53 + 4);
    t57 = *((unsigned int *)t56);
    t6 = (!(t57));
    if (t6 == 1)
        goto LAB112;

LAB113:    goto LAB2;

LAB7:    xsi_set_current_line(35, ng0);

LAB22:    xsi_set_current_line(36, ng0);
    t8 = (t0 + 1368U);
    t9 = *((char **)t8);
    memset(t7, 0, 8);
    t8 = (t7 + 4);
    t10 = (t9 + 4);
    t11 = *((unsigned int *)t9);
    t12 = (t11 >> 0);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t10);
    t14 = (t13 >> 0);
    *((unsigned int *)t8) = t14;
    t15 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t15 & 15U);
    t16 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t16 & 15U);
    t17 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t17, t7, 0, 0, 4, 0LL);
    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    goto LAB21;

LAB9:    xsi_set_current_line(39, ng0);

LAB23:    xsi_set_current_line(40, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    memset(t7, 0, 8);
    t3 = (t7 + 4);
    t8 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 4);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t8);
    t14 = (t13 >> 4);
    *((unsigned int *)t3) = t14;
    t15 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t15 & 15U);
    t16 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t16 & 15U);
    t9 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t9, t7, 0, 0, 4, 0LL);
    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    goto LAB21;

LAB11:    xsi_set_current_line(43, ng0);

LAB24:    xsi_set_current_line(44, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    memset(t7, 0, 8);
    t3 = (t7 + 4);
    t8 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 8);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t8);
    t14 = (t13 >> 8);
    *((unsigned int *)t3) = t14;
    t15 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t15 & 15U);
    t16 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t16 & 15U);
    t9 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t9, t7, 0, 0, 4, 0LL);
    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    goto LAB21;

LAB13:    xsi_set_current_line(47, ng0);

LAB25:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    memset(t7, 0, 8);
    t3 = (t7 + 4);
    t8 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 12);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t8);
    t14 = (t13 >> 12);
    *((unsigned int *)t3) = t14;
    t15 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t15 & 15U);
    t16 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t16 & 15U);
    t9 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t9, t7, 0, 0, 4, 0LL);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    goto LAB21;

LAB15:    xsi_set_current_line(51, ng0);

LAB26:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    memset(t7, 0, 8);
    t3 = (t7 + 4);
    t8 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 16);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t8);
    t14 = (t13 >> 16);
    *((unsigned int *)t3) = t14;
    t15 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t15 & 15U);
    t16 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t16 & 15U);
    t9 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t9, t7, 0, 0, 4, 0LL);
    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    goto LAB21;

LAB17:    xsi_set_current_line(55, ng0);

LAB27:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    memset(t7, 0, 8);
    t3 = (t7 + 4);
    t8 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 20);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t8);
    t14 = (t13 >> 20);
    *((unsigned int *)t3) = t14;
    t15 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t15 & 15U);
    t16 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t16 & 15U);
    t9 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t9, t7, 0, 0, 4, 0LL);
    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    goto LAB21;

LAB30:    xsi_set_current_line(66, ng0);
    t9 = ((char*)((ng3)));
    t10 = (t0 + 2568);
    t17 = (t0 + 2568);
    t20 = (t17 + 72U);
    t21 = *((char **)t20);
    t22 = ((char*)((ng14)));
    t23 = ((char*)((ng15)));
    xsi_vlog_convert_partindices(t7, t18, t19, ((int*)(t21)), 2, t22, 32, 1, t23, 32, 1);
    t24 = (t7 + 4);
    t11 = *((unsigned int *)t24);
    t25 = (!(t11));
    t26 = (t18 + 4);
    t12 = *((unsigned int *)t26);
    t27 = (!(t12));
    t28 = (t25 && t27);
    t29 = (t19 + 4);
    t13 = *((unsigned int *)t29);
    t30 = (!(t13));
    t31 = (t28 && t30);
    if (t31 == 1)
        goto LAB63;

LAB64:    goto LAB62;

LAB32:    xsi_set_current_line(67, ng0);
    t3 = ((char*)((ng16)));
    t8 = (t0 + 2568);
    t9 = (t0 + 2568);
    t10 = (t9 + 72U);
    t17 = *((char **)t10);
    t20 = ((char*)((ng14)));
    t21 = ((char*)((ng15)));
    xsi_vlog_convert_partindices(t7, t18, t19, ((int*)(t17)), 2, t20, 32, 1, t21, 32, 1);
    t22 = (t7 + 4);
    t11 = *((unsigned int *)t22);
    t25 = (!(t11));
    t23 = (t18 + 4);
    t12 = *((unsigned int *)t23);
    t27 = (!(t12));
    t28 = (t25 && t27);
    t24 = (t19 + 4);
    t13 = *((unsigned int *)t24);
    t30 = (!(t13));
    t31 = (t28 && t30);
    if (t31 == 1)
        goto LAB65;

LAB66:    goto LAB62;

LAB34:    xsi_set_current_line(68, ng0);
    t3 = ((char*)((ng17)));
    t8 = (t0 + 2568);
    t9 = (t0 + 2568);
    t10 = (t9 + 72U);
    t17 = *((char **)t10);
    t20 = ((char*)((ng14)));
    t21 = ((char*)((ng15)));
    xsi_vlog_convert_partindices(t7, t18, t19, ((int*)(t17)), 2, t20, 32, 1, t21, 32, 1);
    t22 = (t7 + 4);
    t11 = *((unsigned int *)t22);
    t25 = (!(t11));
    t23 = (t18 + 4);
    t12 = *((unsigned int *)t23);
    t27 = (!(t12));
    t28 = (t25 && t27);
    t24 = (t19 + 4);
    t13 = *((unsigned int *)t24);
    t30 = (!(t13));
    t31 = (t28 && t30);
    if (t31 == 1)
        goto LAB67;

LAB68:    goto LAB62;

LAB36:    xsi_set_current_line(69, ng0);
    t3 = ((char*)((ng18)));
    t8 = (t0 + 2568);
    t9 = (t0 + 2568);
    t10 = (t9 + 72U);
    t17 = *((char **)t10);
    t20 = ((char*)((ng14)));
    t21 = ((char*)((ng15)));
    xsi_vlog_convert_partindices(t7, t18, t19, ((int*)(t17)), 2, t20, 32, 1, t21, 32, 1);
    t22 = (t7 + 4);
    t11 = *((unsigned int *)t22);
    t25 = (!(t11));
    t23 = (t18 + 4);
    t12 = *((unsigned int *)t23);
    t27 = (!(t12));
    t28 = (t25 && t27);
    t24 = (t19 + 4);
    t13 = *((unsigned int *)t24);
    t30 = (!(t13));
    t31 = (t28 && t30);
    if (t31 == 1)
        goto LAB69;

LAB70:    goto LAB62;

LAB38:    xsi_set_current_line(70, ng0);
    t3 = ((char*)((ng19)));
    t8 = (t0 + 2568);
    t9 = (t0 + 2568);
    t10 = (t9 + 72U);
    t17 = *((char **)t10);
    t20 = ((char*)((ng14)));
    t21 = ((char*)((ng15)));
    xsi_vlog_convert_partindices(t7, t18, t19, ((int*)(t17)), 2, t20, 32, 1, t21, 32, 1);
    t22 = (t7 + 4);
    t11 = *((unsigned int *)t22);
    t25 = (!(t11));
    t23 = (t18 + 4);
    t12 = *((unsigned int *)t23);
    t27 = (!(t12));
    t28 = (t25 && t27);
    t24 = (t19 + 4);
    t13 = *((unsigned int *)t24);
    t30 = (!(t13));
    t31 = (t28 && t30);
    if (t31 == 1)
        goto LAB71;

LAB72:    goto LAB62;

LAB40:    xsi_set_current_line(71, ng0);
    t3 = ((char*)((ng20)));
    t8 = (t0 + 2568);
    t9 = (t0 + 2568);
    t10 = (t9 + 72U);
    t17 = *((char **)t10);
    t20 = ((char*)((ng14)));
    t21 = ((char*)((ng15)));
    xsi_vlog_convert_partindices(t7, t18, t19, ((int*)(t17)), 2, t20, 32, 1, t21, 32, 1);
    t22 = (t7 + 4);
    t11 = *((unsigned int *)t22);
    t25 = (!(t11));
    t23 = (t18 + 4);
    t12 = *((unsigned int *)t23);
    t27 = (!(t12));
    t28 = (t25 && t27);
    t24 = (t19 + 4);
    t13 = *((unsigned int *)t24);
    t30 = (!(t13));
    t31 = (t28 && t30);
    if (t31 == 1)
        goto LAB73;

LAB74:    goto LAB62;

LAB42:    xsi_set_current_line(72, ng0);
    t3 = ((char*)((ng21)));
    t8 = (t0 + 2568);
    t9 = (t0 + 2568);
    t10 = (t9 + 72U);
    t17 = *((char **)t10);
    t20 = ((char*)((ng14)));
    t21 = ((char*)((ng15)));
    xsi_vlog_convert_partindices(t7, t18, t19, ((int*)(t17)), 2, t20, 32, 1, t21, 32, 1);
    t22 = (t7 + 4);
    t11 = *((unsigned int *)t22);
    t25 = (!(t11));
    t23 = (t18 + 4);
    t12 = *((unsigned int *)t23);
    t27 = (!(t12));
    t28 = (t25 && t27);
    t24 = (t19 + 4);
    t13 = *((unsigned int *)t24);
    t30 = (!(t13));
    t31 = (t28 && t30);
    if (t31 == 1)
        goto LAB75;

LAB76:    goto LAB62;

LAB44:    xsi_set_current_line(73, ng0);
    t3 = ((char*)((ng23)));
    t8 = (t0 + 2568);
    t9 = (t0 + 2568);
    t10 = (t9 + 72U);
    t17 = *((char **)t10);
    t20 = ((char*)((ng14)));
    t21 = ((char*)((ng15)));
    xsi_vlog_convert_partindices(t7, t18, t19, ((int*)(t17)), 2, t20, 32, 1, t21, 32, 1);
    t22 = (t7 + 4);
    t11 = *((unsigned int *)t22);
    t25 = (!(t11));
    t23 = (t18 + 4);
    t12 = *((unsigned int *)t23);
    t27 = (!(t12));
    t28 = (t25 && t27);
    t24 = (t19 + 4);
    t13 = *((unsigned int *)t24);
    t30 = (!(t13));
    t31 = (t28 && t30);
    if (t31 == 1)
        goto LAB77;

LAB78:    goto LAB62;

LAB46:    xsi_set_current_line(74, ng0);
    t3 = ((char*)((ng1)));
    t8 = (t0 + 2568);
    t9 = (t0 + 2568);
    t10 = (t9 + 72U);
    t17 = *((char **)t10);
    t20 = ((char*)((ng14)));
    t21 = ((char*)((ng15)));
    xsi_vlog_convert_partindices(t7, t18, t19, ((int*)(t17)), 2, t20, 32, 1, t21, 32, 1);
    t22 = (t7 + 4);
    t11 = *((unsigned int *)t22);
    t25 = (!(t11));
    t23 = (t18 + 4);
    t12 = *((unsigned int *)t23);
    t27 = (!(t12));
    t28 = (t25 && t27);
    t24 = (t19 + 4);
    t13 = *((unsigned int *)t24);
    t30 = (!(t13));
    t31 = (t28 && t30);
    if (t31 == 1)
        goto LAB79;

LAB80:    goto LAB62;

LAB48:    xsi_set_current_line(75, ng0);
    t3 = ((char*)((ng9)));
    t8 = (t0 + 2568);
    t9 = (t0 + 2568);
    t10 = (t9 + 72U);
    t17 = *((char **)t10);
    t20 = ((char*)((ng14)));
    t21 = ((char*)((ng15)));
    xsi_vlog_convert_partindices(t7, t18, t19, ((int*)(t17)), 2, t20, 32, 1, t21, 32, 1);
    t22 = (t7 + 4);
    t11 = *((unsigned int *)t22);
    t25 = (!(t11));
    t23 = (t18 + 4);
    t12 = *((unsigned int *)t23);
    t27 = (!(t12));
    t28 = (t25 && t27);
    t24 = (t19 + 4);
    t13 = *((unsigned int *)t24);
    t30 = (!(t13));
    t31 = (t28 && t30);
    if (t31 == 1)
        goto LAB81;

LAB82:    goto LAB62;

LAB50:    xsi_set_current_line(76, ng0);
    t3 = ((char*)((ng24)));
    t8 = (t0 + 2568);
    t9 = (t0 + 2568);
    t10 = (t9 + 72U);
    t17 = *((char **)t10);
    t20 = ((char*)((ng14)));
    t21 = ((char*)((ng15)));
    xsi_vlog_convert_partindices(t7, t18, t19, ((int*)(t17)), 2, t20, 32, 1, t21, 32, 1);
    t22 = (t7 + 4);
    t11 = *((unsigned int *)t22);
    t25 = (!(t11));
    t23 = (t18 + 4);
    t12 = *((unsigned int *)t23);
    t27 = (!(t12));
    t28 = (t25 && t27);
    t24 = (t19 + 4);
    t13 = *((unsigned int *)t24);
    t30 = (!(t13));
    t31 = (t28 && t30);
    if (t31 == 1)
        goto LAB83;

LAB84:    goto LAB62;

LAB52:    xsi_set_current_line(77, ng0);
    t3 = ((char*)((ng28)));
    t8 = (t0 + 2568);
    t9 = (t0 + 2568);
    t10 = (t9 + 72U);
    t17 = *((char **)t10);
    t20 = ((char*)((ng14)));
    t21 = ((char*)((ng15)));
    xsi_vlog_convert_partindices(t7, t18, t19, ((int*)(t17)), 2, t20, 32, 1, t21, 32, 1);
    t22 = (t7 + 4);
    t11 = *((unsigned int *)t22);
    t25 = (!(t11));
    t23 = (t18 + 4);
    t12 = *((unsigned int *)t23);
    t27 = (!(t12));
    t28 = (t25 && t27);
    t24 = (t19 + 4);
    t13 = *((unsigned int *)t24);
    t30 = (!(t13));
    t31 = (t28 && t30);
    if (t31 == 1)
        goto LAB85;

LAB86:    goto LAB62;

LAB54:    xsi_set_current_line(78, ng0);
    t3 = ((char*)((ng30)));
    t8 = (t0 + 2568);
    t9 = (t0 + 2568);
    t10 = (t9 + 72U);
    t17 = *((char **)t10);
    t20 = ((char*)((ng14)));
    t21 = ((char*)((ng15)));
    xsi_vlog_convert_partindices(t7, t18, t19, ((int*)(t17)), 2, t20, 32, 1, t21, 32, 1);
    t22 = (t7 + 4);
    t11 = *((unsigned int *)t22);
    t25 = (!(t11));
    t23 = (t18 + 4);
    t12 = *((unsigned int *)t23);
    t27 = (!(t12));
    t28 = (t25 && t27);
    t24 = (t19 + 4);
    t13 = *((unsigned int *)t24);
    t30 = (!(t13));
    t31 = (t28 && t30);
    if (t31 == 1)
        goto LAB87;

LAB88:    goto LAB62;

LAB56:    xsi_set_current_line(79, ng0);
    t3 = ((char*)((ng32)));
    t8 = (t0 + 2568);
    t9 = (t0 + 2568);
    t10 = (t9 + 72U);
    t17 = *((char **)t10);
    t20 = ((char*)((ng14)));
    t21 = ((char*)((ng15)));
    xsi_vlog_convert_partindices(t7, t18, t19, ((int*)(t17)), 2, t20, 32, 1, t21, 32, 1);
    t22 = (t7 + 4);
    t11 = *((unsigned int *)t22);
    t25 = (!(t11));
    t23 = (t18 + 4);
    t12 = *((unsigned int *)t23);
    t27 = (!(t12));
    t28 = (t25 && t27);
    t24 = (t19 + 4);
    t13 = *((unsigned int *)t24);
    t30 = (!(t13));
    t31 = (t28 && t30);
    if (t31 == 1)
        goto LAB89;

LAB90:    goto LAB62;

LAB58:    xsi_set_current_line(80, ng0);
    t3 = ((char*)((ng34)));
    t8 = (t0 + 2568);
    t9 = (t0 + 2568);
    t10 = (t9 + 72U);
    t17 = *((char **)t10);
    t20 = ((char*)((ng14)));
    t21 = ((char*)((ng15)));
    xsi_vlog_convert_partindices(t7, t18, t19, ((int*)(t17)), 2, t20, 32, 1, t21, 32, 1);
    t22 = (t7 + 4);
    t11 = *((unsigned int *)t22);
    t25 = (!(t11));
    t23 = (t18 + 4);
    t12 = *((unsigned int *)t23);
    t27 = (!(t12));
    t28 = (t25 && t27);
    t24 = (t19 + 4);
    t13 = *((unsigned int *)t24);
    t30 = (!(t13));
    t31 = (t28 && t30);
    if (t31 == 1)
        goto LAB91;

LAB92:    goto LAB62;

LAB60:    xsi_set_current_line(81, ng0);
    t3 = ((char*)((ng35)));
    t8 = (t0 + 2568);
    t9 = (t0 + 2568);
    t10 = (t9 + 72U);
    t17 = *((char **)t10);
    t20 = ((char*)((ng14)));
    t21 = ((char*)((ng15)));
    xsi_vlog_convert_partindices(t7, t18, t19, ((int*)(t17)), 2, t20, 32, 1, t21, 32, 1);
    t22 = (t7 + 4);
    t11 = *((unsigned int *)t22);
    t25 = (!(t11));
    t23 = (t18 + 4);
    t12 = *((unsigned int *)t23);
    t27 = (!(t12));
    t28 = (t25 && t27);
    t24 = (t19 + 4);
    t13 = *((unsigned int *)t24);
    t30 = (!(t13));
    t31 = (t28 && t30);
    if (t31 == 1)
        goto LAB93;

LAB94:    goto LAB62;

LAB63:    t14 = *((unsigned int *)t19);
    t32 = (t14 + 0);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t18);
    t33 = (t15 - t16);
    t34 = (t33 + 1);
    xsi_vlogvar_wait_assign_value(t10, t9, t32, *((unsigned int *)t18), t34, 0LL);
    goto LAB64;

LAB65:    t14 = *((unsigned int *)t19);
    t32 = (t14 + 0);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t18);
    t33 = (t15 - t16);
    t34 = (t33 + 1);
    xsi_vlogvar_wait_assign_value(t8, t3, t32, *((unsigned int *)t18), t34, 0LL);
    goto LAB66;

LAB67:    t14 = *((unsigned int *)t19);
    t32 = (t14 + 0);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t18);
    t33 = (t15 - t16);
    t34 = (t33 + 1);
    xsi_vlogvar_wait_assign_value(t8, t3, t32, *((unsigned int *)t18), t34, 0LL);
    goto LAB68;

LAB69:    t14 = *((unsigned int *)t19);
    t32 = (t14 + 0);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t18);
    t33 = (t15 - t16);
    t34 = (t33 + 1);
    xsi_vlogvar_wait_assign_value(t8, t3, t32, *((unsigned int *)t18), t34, 0LL);
    goto LAB70;

LAB71:    t14 = *((unsigned int *)t19);
    t32 = (t14 + 0);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t18);
    t33 = (t15 - t16);
    t34 = (t33 + 1);
    xsi_vlogvar_wait_assign_value(t8, t3, t32, *((unsigned int *)t18), t34, 0LL);
    goto LAB72;

LAB73:    t14 = *((unsigned int *)t19);
    t32 = (t14 + 0);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t18);
    t33 = (t15 - t16);
    t34 = (t33 + 1);
    xsi_vlogvar_wait_assign_value(t8, t3, t32, *((unsigned int *)t18), t34, 0LL);
    goto LAB74;

LAB75:    t14 = *((unsigned int *)t19);
    t32 = (t14 + 0);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t18);
    t33 = (t15 - t16);
    t34 = (t33 + 1);
    xsi_vlogvar_wait_assign_value(t8, t3, t32, *((unsigned int *)t18), t34, 0LL);
    goto LAB76;

LAB77:    t14 = *((unsigned int *)t19);
    t32 = (t14 + 0);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t18);
    t33 = (t15 - t16);
    t34 = (t33 + 1);
    xsi_vlogvar_wait_assign_value(t8, t3, t32, *((unsigned int *)t18), t34, 0LL);
    goto LAB78;

LAB79:    t14 = *((unsigned int *)t19);
    t32 = (t14 + 0);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t18);
    t33 = (t15 - t16);
    t34 = (t33 + 1);
    xsi_vlogvar_wait_assign_value(t8, t3, t32, *((unsigned int *)t18), t34, 0LL);
    goto LAB80;

LAB81:    t14 = *((unsigned int *)t19);
    t32 = (t14 + 0);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t18);
    t33 = (t15 - t16);
    t34 = (t33 + 1);
    xsi_vlogvar_wait_assign_value(t8, t3, t32, *((unsigned int *)t18), t34, 0LL);
    goto LAB82;

LAB83:    t14 = *((unsigned int *)t19);
    t32 = (t14 + 0);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t18);
    t33 = (t15 - t16);
    t34 = (t33 + 1);
    xsi_vlogvar_wait_assign_value(t8, t3, t32, *((unsigned int *)t18), t34, 0LL);
    goto LAB84;

LAB85:    t14 = *((unsigned int *)t19);
    t32 = (t14 + 0);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t18);
    t33 = (t15 - t16);
    t34 = (t33 + 1);
    xsi_vlogvar_wait_assign_value(t8, t3, t32, *((unsigned int *)t18), t34, 0LL);
    goto LAB86;

LAB87:    t14 = *((unsigned int *)t19);
    t32 = (t14 + 0);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t18);
    t33 = (t15 - t16);
    t34 = (t33 + 1);
    xsi_vlogvar_wait_assign_value(t8, t3, t32, *((unsigned int *)t18), t34, 0LL);
    goto LAB88;

LAB89:    t14 = *((unsigned int *)t19);
    t32 = (t14 + 0);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t18);
    t33 = (t15 - t16);
    t34 = (t33 + 1);
    xsi_vlogvar_wait_assign_value(t8, t3, t32, *((unsigned int *)t18), t34, 0LL);
    goto LAB90;

LAB91:    t14 = *((unsigned int *)t19);
    t32 = (t14 + 0);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t18);
    t33 = (t15 - t16);
    t34 = (t33 + 1);
    xsi_vlogvar_wait_assign_value(t8, t3, t32, *((unsigned int *)t18), t34, 0LL);
    goto LAB92;

LAB93:    t14 = *((unsigned int *)t19);
    t32 = (t14 + 0);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t18);
    t33 = (t15 - t16);
    t34 = (t33 + 1);
    xsi_vlogvar_wait_assign_value(t8, t3, t32, *((unsigned int *)t18), t34, 0LL);
    goto LAB94;

LAB97:    t10 = (t19 + 4);
    *((unsigned int *)t19) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB98;

LAB99:    *((unsigned int *)t18) = 1;
    goto LAB102;

LAB101:    t20 = (t18 + 4);
    *((unsigned int *)t18) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB102;

LAB103:    t22 = ((char*)((ng1)));
    goto LAB104;

LAB105:    t23 = ((char*)((ng3)));
    goto LAB106;

LAB107:    xsi_vlog_unsigned_bit_combine(t7, 1, t22, 1, t23, 1);
    goto LAB111;

LAB109:    memcpy(t7, t22, 8);
    goto LAB111;

LAB112:    xsi_vlogvar_wait_assign_value(t24, t7, 0, *((unsigned int *)t53), 1, 0LL);
    goto LAB113;

}

static void Cont_85_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 4056U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 4984);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 0);
    t16 = (t0 + 4888);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Cont_86_2(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 4304U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 1688U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 16);
    *((unsigned int *)t3) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 16);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t10 & 7U);
    t11 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t11 & 7U);
    t12 = (t0 + 5048);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memset(t16, 0, 8);
    t17 = 15U;
    t18 = t17;
    t19 = (t3 + 4);
    t20 = *((unsigned int *)t3);
    t17 = (t17 & t20);
    t21 = *((unsigned int *)t19);
    t18 = (t18 & t21);
    t22 = (t16 + 4);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 | t17);
    t24 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t24 | t18);
    xsi_driver_vfirst_trans(t12, 0, 3);
    t25 = (t0 + 4904);
    *((int *)t25) = 1;

LAB1:    return;
}

static void implSig1_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 4552U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng37)));
    t3 = (t0 + 5112);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1048575U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 19);

LAB1:    return;
}


extern void work_m_00000000003750697327_3638803626_init()
{
	static char *pe[] = {(void *)Always_32_0,(void *)Cont_85_1,(void *)Cont_86_2,(void *)implSig1_execute};
	xsi_register_didat("work_m_00000000003750697327_3638803626", "isim/SDRAM_Testbench_isim_beh.exe.sim/work/m_00000000003750697327_3638803626.didat");
	xsi_register_executes(pe);
}
