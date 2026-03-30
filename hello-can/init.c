// in arm/tms570lc4357_hdk/testsuite/samples/hello-can
// built with ./waf build

// https://docs.rtems.org/docs/main/c-user/config/intro.html
// these are used to calculate the workspace area
// during sysinit
#define CONFIGURE_MAXIMUM_TASKS 1

// to tell rtems "we will need larger stacks"
// add these many bytes to the calculated task stack size.
// https://docs.rtems.org/docs/main/c-user/config/intro.html
#define CONFIGURE_EXTRA_TASK_STACKS 0 * RTEMS_MINIMUM_STACK_SIZE

// results in a configuration of an application
// which will begin execution of a single
// initialization task named Init which is
// non-preemptible and at priority one (1).
#define CONFIGURE_RTEMS_INIT_TASKS_TABLE

#define CONFIGURE_INIT

#define CONFIGURE_APPLICATION_NEEDS_SIMPLE_CONSOLE_DRIVER

// one of needs, not needs, needs timer is reqd
#define CONFIGURE_APPLICATION_DOES_NOT_NEED_CLOCK_DRIVER

/* #define CONFIGURE_INITIAL_EXTENSIONS RTEMS_TEST_INITIAL_EXTENSION */

// this exact identifier is needed by test_end and test_begin
const char rtems_test_name[] = "HELLO_CAN";

#include <bsp.h>
#include <bsp/tms570.h>
#include <rtems.h>
#include <rtems/bspIo.h>
#include <rtems/confdefs.h>
#include <tmacros.h>

// DCAN2 base is 0xFFF7DE00
//  pins soldered onto j9 12 13
//  direct access
#define DCAN TMS570_DCAN2

// vclk clock: 75Mhz
// needs to be scaled to 500kbps bitrate to
// match tm4c123 side
static void dcan_init(void) {
    DCAN.CTL = TMS570_DCAN_CTL_Init | TMS570_DCAN_CTL_CCE;
    while (!(DCAN.CTL & TMS570_DCAN_CTL_Init))
        ;

    DCAN.BTR = TMS570_DCAN_BTR_BRP(9) | TMS570_DCAN_BTR_TSeg1(10) |
               TMS570_DCAN_BTR_TSeg2(2) | TMS570_DCAN_BTR_SJW(0);

    DCAN.TIOC = TMS570_DCAN_TIOC_Func;
    DCAN.RIOC = TMS570_DCAN_RIOC_Func;

    DCAN.CTL &= ~(TMS570_DCAN_CTL_Init | TMS570_DCAN_CTL_CCE);
    while (DCAN.CTL & TMS570_DCAN_CTL_Init)
        ;
}

// forward decl is necessary to prevent warning
rtems_task Init(rtems_task_argument arg);

rtems_task Init(rtems_task_argument arg) {
    (void)arg;
    TEST_BEGIN();

    dcan_init();

    printk("DCAN2: on bus, ES=0x%08x\n", DCAN.ES);

    // stay alive so RTEMS doesn't shut down and
    // reset the DCAN peripheral
    for (;;) {
    }
}
