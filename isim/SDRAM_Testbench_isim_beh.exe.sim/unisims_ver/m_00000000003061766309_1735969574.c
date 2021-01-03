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
static int ng0[] = {5001047, 0, 0, 0, 0, 0};
static int ng1[] = {1380794700, 0, 20047, 0, 0, 0};
static int ng2[] = {1128354373, 0, 1330533471, 0, 68, 0};
static const char *ng3 = "Attribute Syntax Error : The attribute CAPACITANCE on OBUF instance %m is set to %s.  Legal values for this attribute are DONT_CARE, LOW or NORMAL.";



static void NetDecl_35_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 3072U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 5556);
    t3 = *((char **)t2);
    t4 = ((((char*)(t3))) + 40U);
    t5 = *((char **)t4);
    t4 = (t0 + 3984);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t5 + 4);
    t13 = *((unsigned int *)t5);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t4, 0, 0U);
    t18 = (t0 + 3888);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Gate_37_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 3320U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1752U);
    t3 = *((char **)t2);
    t2 = (t0 + 1912U);
    t4 = *((char **)t2);
    t2 = (t0 + 4048);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    xsi_vlog_bufIf0Gate(t8, t3, t4);
    t9 = (t0 + 4048);
    xsi_driver_vfirst_trans_bufif(t9, 0, 0);
    t10 = (t0 + 3904);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Initial_39_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    int t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;

LAB0:
LAB2:    t1 = (t0 + 472);
    t2 = *((char **)t1);

LAB3:    t1 = ((char*)((ng0)));
    t3 = xsi_vlog_unsigned_case_compare(t2, 72, t1, 72);
    if (t3 == 1)
        goto LAB4;

LAB5:    t4 = ((char*)((ng1)));
    t5 = xsi_vlog_unsigned_case_compare(t2, 72, t4, 72);
    if (t5 == 1)
        goto LAB6;

LAB7:    t6 = ((char*)((ng2)));
    t7 = xsi_vlog_unsigned_case_compare(t2, 72, t6, 72);
    if (t7 == 1)
        goto LAB8;

LAB9:
LAB11:
LAB10:
LAB13:    t8 = (t0 + 472);
    t9 = *((char **)t8);
    xsi_vlogfile_write(1, 0, 0, ng3, 2, t0, (char)118, t9, 72);
    xsi_vlog_finish(1);

LAB12:
LAB1:    return;
LAB4:    goto LAB12;

LAB6:    goto LAB4;

LAB8:    goto LAB4;

}


extern void unisims_ver_m_00000000003061766309_1735969574_init()
{
	static char *pe[] = {(void *)NetDecl_35_0,(void *)Gate_37_1,(void *)Initial_39_2};
	xsi_register_didat("unisims_ver_m_00000000003061766309_1735969574", "isim/SDRAM_Testbench_isim_beh.exe.sim/unisims_ver/m_00000000003061766309_1735969574.didat");
	xsi_register_executes(pe);
}
