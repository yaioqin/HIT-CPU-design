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
IKI_DLLESPEC extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_4886(char*, char *);
IKI_DLLESPEC extern void execute_4887(char*, char *);
IKI_DLLESPEC extern void execute_4889(char*, char *);
IKI_DLLESPEC extern void execute_4890(char*, char *);
IKI_DLLESPEC extern void execute_4893(char*, char *);
IKI_DLLESPEC extern void execute_4894(char*, char *);
IKI_DLLESPEC extern void execute_4897(char*, char *);
IKI_DLLESPEC extern void execute_4898(char*, char *);
IKI_DLLESPEC extern void execute_4901(char*, char *);
IKI_DLLESPEC extern void execute_4904(char*, char *);
IKI_DLLESPEC extern void execute_4907(char*, char *);
IKI_DLLESPEC extern void execute_4910(char*, char *);
IKI_DLLESPEC extern void execute_4913(char*, char *);
IKI_DLLESPEC extern void execute_4914(char*, char *);
IKI_DLLESPEC extern void execute_4915(char*, char *);
IKI_DLLESPEC extern void execute_4916(char*, char *);
IKI_DLLESPEC extern void execute_4918(char*, char *);
IKI_DLLESPEC extern void execute_4919(char*, char *);
IKI_DLLESPEC extern void execute_4920(char*, char *);
IKI_DLLESPEC extern void execute_1240(char*, char *);
IKI_DLLESPEC extern void execute_1241(char*, char *);
IKI_DLLESPEC extern void execute_1238(char*, char *);
IKI_DLLESPEC extern void execute_1239(char*, char *);
IKI_DLLESPEC extern void execute_1140(char*, char *);
IKI_DLLESPEC extern void execute_1141(char*, char *);
IKI_DLLESPEC extern void execute_1142(char*, char *);
IKI_DLLESPEC extern void execute_1143(char*, char *);
IKI_DLLESPEC extern void execute_1144(char*, char *);
IKI_DLLESPEC extern void execute_1064(char*, char *);
IKI_DLLESPEC extern void execute_1065(char*, char *);
IKI_DLLESPEC extern void execute_1066(char*, char *);
IKI_DLLESPEC extern void execute_1067(char*, char *);
IKI_DLLESPEC extern void execute_1068(char*, char *);
IKI_DLLESPEC extern void execute_1069(char*, char *);
IKI_DLLESPEC extern void execute_1070(char*, char *);
IKI_DLLESPEC extern void execute_1071(char*, char *);
IKI_DLLESPEC extern void execute_1072(char*, char *);
IKI_DLLESPEC extern void execute_1073(char*, char *);
IKI_DLLESPEC extern void execute_1052(char*, char *);
IKI_DLLESPEC extern void execute_1053(char*, char *);
IKI_DLLESPEC extern void execute_1060(char*, char *);
IKI_DLLESPEC extern void execute_1061(char*, char *);
IKI_DLLESPEC extern void execute_1062(char*, char *);
IKI_DLLESPEC extern void execute_1063(char*, char *);
IKI_DLLESPEC extern void execute_1430(char*, char *);
IKI_DLLESPEC extern void execute_1623(char*, char *);
IKI_DLLESPEC extern void execute_2196(char*, char *);
IKI_DLLESPEC extern void execute_2197(char*, char *);
IKI_DLLESPEC extern void execute_2198(char*, char *);
IKI_DLLESPEC extern void execute_2199(char*, char *);
IKI_DLLESPEC extern void execute_1431(char*, char *);
IKI_DLLESPEC extern void execute_1620(char*, char *);
IKI_DLLESPEC extern void execute_1621(char*, char *);
IKI_DLLESPEC extern void execute_1622(char*, char *);
IKI_DLLESPEC extern void execute_2392(char*, char *);
IKI_DLLESPEC extern void execute_2585(char*, char *);
IKI_DLLESPEC extern void execute_3154(char*, char *);
IKI_DLLESPEC extern void execute_3155(char*, char *);
IKI_DLLESPEC extern void execute_3156(char*, char *);
IKI_DLLESPEC extern void execute_3157(char*, char *);
IKI_DLLESPEC extern void execute_4891(char*, char *);
IKI_DLLESPEC extern void execute_4892(char*, char *);
IKI_DLLESPEC extern void execute_4899(char*, char *);
IKI_DLLESPEC extern void execute_4900(char*, char *);
IKI_DLLESPEC extern void execute_4902(char*, char *);
IKI_DLLESPEC extern void execute_4903(char*, char *);
IKI_DLLESPEC extern void execute_4905(char*, char *);
IKI_DLLESPEC extern void execute_4906(char*, char *);
IKI_DLLESPEC extern void execute_4908(char*, char *);
IKI_DLLESPEC extern void execute_4909(char*, char *);
IKI_DLLESPEC extern void execute_4911(char*, char *);
IKI_DLLESPEC extern void execute_4912(char*, char *);
IKI_DLLESPEC extern void execute_1048(char*, char *);
IKI_DLLESPEC extern void execute_1049(char*, char *);
IKI_DLLESPEC extern void execute_1050(char*, char *);
IKI_DLLESPEC extern void execute_1051(char*, char *);
IKI_DLLESPEC extern void execute_4921(char*, char *);
IKI_DLLESPEC extern void execute_4922(char*, char *);
IKI_DLLESPEC extern void execute_4923(char*, char *);
IKI_DLLESPEC extern void execute_4924(char*, char *);
IKI_DLLESPEC extern void execute_4925(char*, char *);
IKI_DLLESPEC extern void execute_4926(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_337(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_341(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_344(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_666(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_983(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_992(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1784(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1788(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1791(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2113(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2430(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2439(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[96] = {(funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_4886, (funcp)execute_4887, (funcp)execute_4889, (funcp)execute_4890, (funcp)execute_4893, (funcp)execute_4894, (funcp)execute_4897, (funcp)execute_4898, (funcp)execute_4901, (funcp)execute_4904, (funcp)execute_4907, (funcp)execute_4910, (funcp)execute_4913, (funcp)execute_4914, (funcp)execute_4915, (funcp)execute_4916, (funcp)execute_4918, (funcp)execute_4919, (funcp)execute_4920, (funcp)execute_1240, (funcp)execute_1241, (funcp)execute_1238, (funcp)execute_1239, (funcp)execute_1140, (funcp)execute_1141, (funcp)execute_1142, (funcp)execute_1143, (funcp)execute_1144, (funcp)execute_1064, (funcp)execute_1065, (funcp)execute_1066, (funcp)execute_1067, (funcp)execute_1068, (funcp)execute_1069, (funcp)execute_1070, (funcp)execute_1071, (funcp)execute_1072, (funcp)execute_1073, (funcp)execute_1052, (funcp)execute_1053, (funcp)execute_1060, (funcp)execute_1061, (funcp)execute_1062, (funcp)execute_1063, (funcp)execute_1430, (funcp)execute_1623, (funcp)execute_2196, (funcp)execute_2197, (funcp)execute_2198, (funcp)execute_2199, (funcp)execute_1431, (funcp)execute_1620, (funcp)execute_1621, (funcp)execute_1622, (funcp)execute_2392, (funcp)execute_2585, (funcp)execute_3154, (funcp)execute_3155, (funcp)execute_3156, (funcp)execute_3157, (funcp)execute_4891, (funcp)execute_4892, (funcp)execute_4899, (funcp)execute_4900, (funcp)execute_4902, (funcp)execute_4903, (funcp)execute_4905, (funcp)execute_4906, (funcp)execute_4908, (funcp)execute_4909, (funcp)execute_4911, (funcp)execute_4912, (funcp)execute_1048, (funcp)execute_1049, (funcp)execute_1050, (funcp)execute_1051, (funcp)execute_4921, (funcp)execute_4922, (funcp)execute_4923, (funcp)execute_4924, (funcp)execute_4925, (funcp)execute_4926, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_337, (funcp)transaction_341, (funcp)transaction_344, (funcp)transaction_666, (funcp)transaction_983, (funcp)transaction_992, (funcp)transaction_1784, (funcp)transaction_1788, (funcp)transaction_1791, (funcp)transaction_2113, (funcp)transaction_2430, (funcp)transaction_2439};
const int NumRelocateId= 96;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/alu_behav/xsim.reloc",  (void **)funcTab, 96);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/alu_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/alu_behav/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/alu_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/alu_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/alu_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
