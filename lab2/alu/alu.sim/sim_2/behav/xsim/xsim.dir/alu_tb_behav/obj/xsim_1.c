/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_2(char*, char *);
IKI_DLLESPEC extern void execute_3(char*, char *);
IKI_DLLESPEC extern void execute_4(char*, char *);
IKI_DLLESPEC extern void execute_1995(char*, char *);
IKI_DLLESPEC extern void execute_1996(char*, char *);
IKI_DLLESPEC extern void execute_1997(char*, char *);
IKI_DLLESPEC extern void execute_1998(char*, char *);
IKI_DLLESPEC extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_1960(char*, char *);
IKI_DLLESPEC extern void execute_1961(char*, char *);
IKI_DLLESPEC extern void execute_1963(char*, char *);
IKI_DLLESPEC extern void execute_1964(char*, char *);
IKI_DLLESPEC extern void execute_1967(char*, char *);
IKI_DLLESPEC extern void execute_1968(char*, char *);
IKI_DLLESPEC extern void execute_1971(char*, char *);
IKI_DLLESPEC extern void execute_1972(char*, char *);
IKI_DLLESPEC extern void execute_1975(char*, char *);
IKI_DLLESPEC extern void execute_1978(char*, char *);
IKI_DLLESPEC extern void execute_1981(char*, char *);
IKI_DLLESPEC extern void execute_1984(char*, char *);
IKI_DLLESPEC extern void execute_1987(char*, char *);
IKI_DLLESPEC extern void execute_1988(char*, char *);
IKI_DLLESPEC extern void execute_1989(char*, char *);
IKI_DLLESPEC extern void execute_1990(char*, char *);
IKI_DLLESPEC extern void execute_1992(char*, char *);
IKI_DLLESPEC extern void execute_1993(char*, char *);
IKI_DLLESPEC extern void execute_1994(char*, char *);
IKI_DLLESPEC extern void execute_620(char*, char *);
IKI_DLLESPEC extern void execute_621(char*, char *);
IKI_DLLESPEC extern void execute_618(char*, char *);
IKI_DLLESPEC extern void execute_619(char*, char *);
IKI_DLLESPEC extern void execute_520(char*, char *);
IKI_DLLESPEC extern void execute_521(char*, char *);
IKI_DLLESPEC extern void execute_522(char*, char *);
IKI_DLLESPEC extern void execute_523(char*, char *);
IKI_DLLESPEC extern void execute_524(char*, char *);
IKI_DLLESPEC extern void execute_444(char*, char *);
IKI_DLLESPEC extern void execute_445(char*, char *);
IKI_DLLESPEC extern void execute_446(char*, char *);
IKI_DLLESPEC extern void execute_447(char*, char *);
IKI_DLLESPEC extern void execute_448(char*, char *);
IKI_DLLESPEC extern void execute_449(char*, char *);
IKI_DLLESPEC extern void execute_450(char*, char *);
IKI_DLLESPEC extern void execute_451(char*, char *);
IKI_DLLESPEC extern void execute_452(char*, char *);
IKI_DLLESPEC extern void execute_453(char*, char *);
IKI_DLLESPEC extern void execute_432(char*, char *);
IKI_DLLESPEC extern void execute_433(char*, char *);
IKI_DLLESPEC extern void execute_440(char*, char *);
IKI_DLLESPEC extern void execute_441(char*, char *);
IKI_DLLESPEC extern void execute_442(char*, char *);
IKI_DLLESPEC extern void execute_443(char*, char *);
IKI_DLLESPEC extern void execute_810(char*, char *);
IKI_DLLESPEC extern void execute_999(char*, char *);
IKI_DLLESPEC extern void execute_1000(char*, char *);
IKI_DLLESPEC extern void execute_1001(char*, char *);
IKI_DLLESPEC extern void execute_1002(char*, char *);
IKI_DLLESPEC extern void execute_1003(char*, char *);
IKI_DLLESPEC extern void execute_1380(char*, char *);
IKI_DLLESPEC extern void execute_1381(char*, char *);
IKI_DLLESPEC extern void execute_1382(char*, char *);
IKI_DLLESPEC extern void execute_1383(char*, char *);
IKI_DLLESPEC extern void execute_1384(char*, char *);
IKI_DLLESPEC extern void execute_1965(char*, char *);
IKI_DLLESPEC extern void execute_1966(char*, char *);
IKI_DLLESPEC extern void execute_1973(char*, char *);
IKI_DLLESPEC extern void execute_1974(char*, char *);
IKI_DLLESPEC extern void execute_1976(char*, char *);
IKI_DLLESPEC extern void execute_1977(char*, char *);
IKI_DLLESPEC extern void execute_1979(char*, char *);
IKI_DLLESPEC extern void execute_1980(char*, char *);
IKI_DLLESPEC extern void execute_1982(char*, char *);
IKI_DLLESPEC extern void execute_1983(char*, char *);
IKI_DLLESPEC extern void execute_1985(char*, char *);
IKI_DLLESPEC extern void execute_1986(char*, char *);
IKI_DLLESPEC extern void execute_428(char*, char *);
IKI_DLLESPEC extern void execute_429(char*, char *);
IKI_DLLESPEC extern void execute_430(char*, char *);
IKI_DLLESPEC extern void execute_431(char*, char *);
IKI_DLLESPEC extern void execute_1999(char*, char *);
IKI_DLLESPEC extern void execute_2000(char*, char *);
IKI_DLLESPEC extern void execute_2001(char*, char *);
IKI_DLLESPEC extern void execute_2002(char*, char *);
IKI_DLLESPEC extern void execute_2003(char*, char *);
IKI_DLLESPEC extern void execute_2004(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[86] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_1995, (funcp)execute_1996, (funcp)execute_1997, (funcp)execute_1998, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_1960, (funcp)execute_1961, (funcp)execute_1963, (funcp)execute_1964, (funcp)execute_1967, (funcp)execute_1968, (funcp)execute_1971, (funcp)execute_1972, (funcp)execute_1975, (funcp)execute_1978, (funcp)execute_1981, (funcp)execute_1984, (funcp)execute_1987, (funcp)execute_1988, (funcp)execute_1989, (funcp)execute_1990, (funcp)execute_1992, (funcp)execute_1993, (funcp)execute_1994, (funcp)execute_620, (funcp)execute_621, (funcp)execute_618, (funcp)execute_619, (funcp)execute_520, (funcp)execute_521, (funcp)execute_522, (funcp)execute_523, (funcp)execute_524, (funcp)execute_444, (funcp)execute_445, (funcp)execute_446, (funcp)execute_447, (funcp)execute_448, (funcp)execute_449, (funcp)execute_450, (funcp)execute_451, (funcp)execute_452, (funcp)execute_453, (funcp)execute_432, (funcp)execute_433, (funcp)execute_440, (funcp)execute_441, (funcp)execute_442, (funcp)execute_443, (funcp)execute_810, (funcp)execute_999, (funcp)execute_1000, (funcp)execute_1001, (funcp)execute_1002, (funcp)execute_1003, (funcp)execute_1380, (funcp)execute_1381, (funcp)execute_1382, (funcp)execute_1383, (funcp)execute_1384, (funcp)execute_1965, (funcp)execute_1966, (funcp)execute_1973, (funcp)execute_1974, (funcp)execute_1976, (funcp)execute_1977, (funcp)execute_1979, (funcp)execute_1980, (funcp)execute_1982, (funcp)execute_1983, (funcp)execute_1985, (funcp)execute_1986, (funcp)execute_428, (funcp)execute_429, (funcp)execute_430, (funcp)execute_431, (funcp)execute_1999, (funcp)execute_2000, (funcp)execute_2001, (funcp)execute_2002, (funcp)execute_2003, (funcp)execute_2004, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 86;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/alu_tb_behav/xsim.reloc",  (void **)funcTab, 86);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/alu_tb_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/alu_tb_behav/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/alu_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/alu_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/alu_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
