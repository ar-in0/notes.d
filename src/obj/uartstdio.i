# 0 "/home/armaan/ti/tivaware/utils/uartstdio.c"
# 1 "/home/armaan/Fun-CS/g26/notes.d/src//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/armaan/ti/tivaware/utils/uartstdio.c"
# 25 "/home/armaan/ti/tivaware/utils/uartstdio.c"
# 1 "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stdbool.h" 1 3 4
# 26 "/home/armaan/ti/tivaware/utils/uartstdio.c" 2
# 1 "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stdint.h" 1 3 4
# 34 "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stdint.h" 3 4

# 34 "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stdint.h" 3 4
typedef signed char int8_t;


typedef short int int16_t;


typedef long int int32_t;


typedef long long int int64_t;


typedef unsigned char uint8_t;


typedef short unsigned int uint16_t;


typedef long unsigned int uint32_t;


typedef long long unsigned int uint64_t;




typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef long int int_least32_t;
typedef long long int int_least64_t;
typedef unsigned char uint_least8_t;
typedef short unsigned int uint_least16_t;
typedef long unsigned int uint_least32_t;
typedef long long unsigned int uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef long long unsigned int uint_fast64_t;




typedef int intptr_t;


typedef unsigned int uintptr_t;




typedef long long int intmax_t;
typedef long long unsigned int uintmax_t;
# 27 "/home/armaan/ti/tivaware/utils/uartstdio.c" 2
# 1 "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stdarg.h" 1 3 4
# 40 "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 103 "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 28 "/home/armaan/ti/tivaware/utils/uartstdio.c" 2
# 1 "/home/armaan/ti/tivaware/inc/hw_ints.h" 1
# 29 "/home/armaan/ti/tivaware/utils/uartstdio.c" 2
# 1 "/home/armaan/ti/tivaware/inc/hw_memmap.h" 1
# 30 "/home/armaan/ti/tivaware/utils/uartstdio.c" 2
# 1 "/home/armaan/ti/tivaware/inc/hw_types.h" 1
# 31 "/home/armaan/ti/tivaware/utils/uartstdio.c" 2
# 1 "/home/armaan/ti/tivaware/inc/hw_uart.h" 1
# 32 "/home/armaan/ti/tivaware/utils/uartstdio.c" 2
# 1 "/home/armaan/ti/tivaware/driverlib/debug.h" 1
# 49 "/home/armaan/ti/tivaware/driverlib/debug.h"

# 49 "/home/armaan/ti/tivaware/driverlib/debug.h"
extern void __error__(char *pcFilename, uint32_t ui32Line);
# 33 "/home/armaan/ti/tivaware/utils/uartstdio.c" 2
# 1 "/home/armaan/ti/tivaware/driverlib/interrupt.h" 1
# 67 "/home/armaan/ti/tivaware/driverlib/interrupt.h"
extern 
# 67 "/home/armaan/ti/tivaware/driverlib/interrupt.h" 3 4
      _Bool 
# 67 "/home/armaan/ti/tivaware/driverlib/interrupt.h"
           IntMasterEnable(void);
extern 
# 68 "/home/armaan/ti/tivaware/driverlib/interrupt.h" 3 4
      _Bool 
# 68 "/home/armaan/ti/tivaware/driverlib/interrupt.h"
           IntMasterDisable(void);
extern void IntRegister(uint32_t ui32Interrupt, void (*pfnHandler)(void));
extern void IntUnregister(uint32_t ui32Interrupt);
extern void IntPriorityGroupingSet(uint32_t ui32Bits);
extern uint32_t IntPriorityGroupingGet(void);
extern void IntPrioritySet(uint32_t ui32Interrupt,
                           uint8_t ui8Priority);
extern int32_t IntPriorityGet(uint32_t ui32Interrupt);
extern void IntEnable(uint32_t ui32Interrupt);
extern void IntDisable(uint32_t ui32Interrupt);
extern uint32_t IntIsEnabled(uint32_t ui32Interrupt);
extern void IntPendSet(uint32_t ui32Interrupt);
extern void IntPendClear(uint32_t ui32Interrupt);
extern void IntPriorityMaskSet(uint32_t ui32PriorityMask);
extern uint32_t IntPriorityMaskGet(void);
extern void IntTrigger(uint32_t ui32Interrupt);
# 34 "/home/armaan/ti/tivaware/utils/uartstdio.c" 2
# 1 "/home/armaan/ti/tivaware/driverlib/rom.h" 1
# 35 "/home/armaan/ti/tivaware/utils/uartstdio.c" 2
# 1 "/home/armaan/ti/tivaware/driverlib/rom_map.h" 1
# 36 "/home/armaan/ti/tivaware/utils/uartstdio.c" 2
# 1 "/home/armaan/ti/tivaware/driverlib/sysctl.h" 1
# 597 "/home/armaan/ti/tivaware/driverlib/sysctl.h"
extern uint32_t SysCtlSRAMSizeGet(void);
extern uint32_t SysCtlFlashSizeGet(void);
extern uint32_t SysCtlFlashSectorSizeGet(void);
extern 
# 600 "/home/armaan/ti/tivaware/driverlib/sysctl.h" 3 4
      _Bool 
# 600 "/home/armaan/ti/tivaware/driverlib/sysctl.h"
           SysCtlPeripheralPresent(uint32_t ui32Peripheral);
extern 
# 601 "/home/armaan/ti/tivaware/driverlib/sysctl.h" 3 4
      _Bool 
# 601 "/home/armaan/ti/tivaware/driverlib/sysctl.h"
           SysCtlPeripheralReady(uint32_t ui32Peripheral);
extern void SysCtlPeripheralPowerOn(uint32_t ui32Peripheral);
extern void SysCtlPeripheralPowerOff(uint32_t ui32Peripheral);
extern void SysCtlPeripheralReset(uint32_t ui32Peripheral);
extern void SysCtlPeripheralEnable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralDisable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralSleepEnable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralSleepDisable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralDeepSleepEnable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralDeepSleepDisable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralClockGating(
# 611 "/home/armaan/ti/tivaware/driverlib/sysctl.h" 3 4
                                       _Bool 
# 611 "/home/armaan/ti/tivaware/driverlib/sysctl.h"
                                            bEnable);
extern void SysCtlIntRegister(void (*pfnHandler)(void));
extern void SysCtlIntUnregister(void);
extern void SysCtlIntEnable(uint32_t ui32Ints);
extern void SysCtlIntDisable(uint32_t ui32Ints);
extern void SysCtlIntClear(uint32_t ui32Ints);
extern uint32_t SysCtlIntStatus(
# 617 "/home/armaan/ti/tivaware/driverlib/sysctl.h" 3 4
                               _Bool 
# 617 "/home/armaan/ti/tivaware/driverlib/sysctl.h"
                                    bMasked);
extern void SysCtlLDOSleepSet(uint32_t ui32Voltage);
extern uint32_t SysCtlLDOSleepGet(void);
extern void SysCtlLDODeepSleepSet(uint32_t ui32Voltage);
extern uint32_t SysCtlLDODeepSleepGet(void);
extern void SysCtlSleepPowerSet(uint32_t ui32Config);
extern void SysCtlDeepSleepPowerSet(uint32_t ui32Config);
extern void SysCtlReset(void);
extern void SysCtlSleep(void);
extern void SysCtlDeepSleep(void);
extern uint32_t SysCtlResetCauseGet(void);
extern void SysCtlResetCauseClear(uint32_t ui32Causes);
extern void SysCtlBrownOutConfigSet(uint32_t ui32Config,
                                    uint32_t ui32Delay);
extern void SysCtlDelay(uint32_t ui32Count);
extern void SysCtlMOSCConfigSet(uint32_t ui32Config);
extern uint32_t SysCtlPIOSCCalibrate(uint32_t ui32Type);
extern void SysCtlClockSet(uint32_t ui32Config);
extern uint32_t SysCtlClockGet(void);
extern void SysCtlDeepSleepClockSet(uint32_t ui32Config);
extern void SysCtlDeepSleepClockConfigSet(uint32_t ui32Div,
                                          uint32_t ui32Config);
extern void SysCtlPWMClockSet(uint32_t ui32Config);
extern uint32_t SysCtlPWMClockGet(void);
extern void SysCtlIOSCVerificationSet(
# 641 "/home/armaan/ti/tivaware/driverlib/sysctl.h" 3 4
                                     _Bool 
# 641 "/home/armaan/ti/tivaware/driverlib/sysctl.h"
                                          bEnable);
extern void SysCtlMOSCVerificationSet(
# 642 "/home/armaan/ti/tivaware/driverlib/sysctl.h" 3 4
                                     _Bool 
# 642 "/home/armaan/ti/tivaware/driverlib/sysctl.h"
                                          bEnable);
extern void SysCtlPLLVerificationSet(
# 643 "/home/armaan/ti/tivaware/driverlib/sysctl.h" 3 4
                                    _Bool 
# 643 "/home/armaan/ti/tivaware/driverlib/sysctl.h"
                                         bEnable);
extern void SysCtlClkVerificationClear(void);
extern void SysCtlGPIOAHBEnable(uint32_t ui32GPIOPeripheral);
extern void SysCtlGPIOAHBDisable(uint32_t ui32GPIOPeripheral);
extern void SysCtlUSBPLLEnable(void);
extern void SysCtlUSBPLLDisable(void);
extern uint32_t SysCtlClockFreqSet(uint32_t ui32Config,
                                   uint32_t ui32SysClock);
extern void SysCtlResetBehaviorSet(uint32_t ui32Behavior);
extern uint32_t SysCtlResetBehaviorGet(void);
extern void SysCtlClockOutConfig(uint32_t ui32Config, uint32_t ui32Div);
extern void SysCtlAltClkConfig(uint32_t ui32Config);
extern uint32_t SysCtlNMIStatus(void);
extern void SysCtlNMIClear(uint32_t ui32Status);
extern void SysCtlVoltageEventConfig(uint32_t ui32Config);
extern uint32_t SysCtlVoltageEventStatus(void);
extern void SysCtlVoltageEventClear(uint32_t ui32Status);
extern 
# 660 "/home/armaan/ti/tivaware/driverlib/sysctl.h" 3 4
      _Bool 
# 660 "/home/armaan/ti/tivaware/driverlib/sysctl.h"
           SysCtlVCOGet(uint32_t ui32Crystal, uint32_t *pui32VCOFrequency);
# 37 "/home/armaan/ti/tivaware/utils/uartstdio.c" 2
# 1 "/home/armaan/ti/tivaware/driverlib/uart.h" 1
# 195 "/home/armaan/ti/tivaware/driverlib/uart.h"
extern void UARTParityModeSet(uint32_t ui32Base, uint32_t ui32Parity);
extern uint32_t UARTParityModeGet(uint32_t ui32Base);
extern void UARTFIFOLevelSet(uint32_t ui32Base, uint32_t ui32TxLevel,
                             uint32_t ui32RxLevel);
extern void UARTFIFOLevelGet(uint32_t ui32Base, uint32_t *pui32TxLevel,
                             uint32_t *pui32RxLevel);
extern void UARTConfigSetExpClk(uint32_t ui32Base, uint32_t ui32UARTClk,
                                uint32_t ui32Baud, uint32_t ui32Config);
extern void UARTConfigGetExpClk(uint32_t ui32Base, uint32_t ui32UARTClk,
                                uint32_t *pui32Baud, uint32_t *pui32Config);
extern void UARTEnable(uint32_t ui32Base);
extern void UARTDisable(uint32_t ui32Base);
extern void UARTFIFOEnable(uint32_t ui32Base);
extern void UARTFIFODisable(uint32_t ui32Base);
extern void UARTEnableSIR(uint32_t ui32Base, 
# 209 "/home/armaan/ti/tivaware/driverlib/uart.h" 3 4
                                            _Bool 
# 209 "/home/armaan/ti/tivaware/driverlib/uart.h"
                                                 bLowPower);
extern void UARTDisableSIR(uint32_t ui32Base);
extern 
# 211 "/home/armaan/ti/tivaware/driverlib/uart.h" 3 4
      _Bool 
# 211 "/home/armaan/ti/tivaware/driverlib/uart.h"
           UARTCharsAvail(uint32_t ui32Base);
extern 
# 212 "/home/armaan/ti/tivaware/driverlib/uart.h" 3 4
      _Bool 
# 212 "/home/armaan/ti/tivaware/driverlib/uart.h"
           UARTSpaceAvail(uint32_t ui32Base);
extern int32_t UARTCharGetNonBlocking(uint32_t ui32Base);
extern int32_t UARTCharGet(uint32_t ui32Base);
extern 
# 215 "/home/armaan/ti/tivaware/driverlib/uart.h" 3 4
      _Bool 
# 215 "/home/armaan/ti/tivaware/driverlib/uart.h"
           UARTCharPutNonBlocking(uint32_t ui32Base, unsigned char ucData);
extern void UARTCharPut(uint32_t ui32Base, unsigned char ucData);
extern void UARTBreakCtl(uint32_t ui32Base, 
# 217 "/home/armaan/ti/tivaware/driverlib/uart.h" 3 4
                                           _Bool 
# 217 "/home/armaan/ti/tivaware/driverlib/uart.h"
                                                bBreakState);
extern 
# 218 "/home/armaan/ti/tivaware/driverlib/uart.h" 3 4
      _Bool 
# 218 "/home/armaan/ti/tivaware/driverlib/uart.h"
           UARTBusy(uint32_t ui32Base);
extern void UARTIntRegister(uint32_t ui32Base, void (*pfnHandler)(void));
extern void UARTIntUnregister(uint32_t ui32Base);
extern void UARTIntEnable(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void UARTIntDisable(uint32_t ui32Base, uint32_t ui32IntFlags);
extern uint32_t UARTIntStatus(uint32_t ui32Base, 
# 223 "/home/armaan/ti/tivaware/driverlib/uart.h" 3 4
                                                _Bool 
# 223 "/home/armaan/ti/tivaware/driverlib/uart.h"
                                                     bMasked);
extern void UARTIntClear(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void UARTDMAEnable(uint32_t ui32Base, uint32_t ui32DMAFlags);
extern void UARTDMADisable(uint32_t ui32Base, uint32_t ui32DMAFlags);
extern uint32_t UARTRxErrorGet(uint32_t ui32Base);
extern void UARTRxErrorClear(uint32_t ui32Base);
extern void UARTSmartCardEnable(uint32_t ui32Base);
extern void UARTSmartCardDisable(uint32_t ui32Base);
extern void UARTModemControlSet(uint32_t ui32Base, uint32_t ui32Control);
extern void UARTModemControlClear(uint32_t ui32Base, uint32_t ui32Control);
extern uint32_t UARTModemControlGet(uint32_t ui32Base);
extern uint32_t UARTModemStatusGet(uint32_t ui32Base);
extern void UARTFlowControlSet(uint32_t ui32Base, uint32_t ui32Mode);
extern uint32_t UARTFlowControlGet(uint32_t ui32Base);
extern void UARTTxIntModeSet(uint32_t ui32Base, uint32_t ui32Mode);
extern uint32_t UARTTxIntModeGet(uint32_t ui32Base);
extern void UARTClockSourceSet(uint32_t ui32Base, uint32_t ui32Source);
extern uint32_t UARTClockSourceGet(uint32_t ui32Base);
extern void UART9BitEnable(uint32_t ui32Base);
extern void UART9BitDisable(uint32_t ui32Base);
extern void UART9BitAddrSet(uint32_t ui32Base, uint8_t ui8Addr,
                            uint8_t ui8Mask);
extern void UART9BitAddrSend(uint32_t ui32Base, uint8_t ui8Addr);
extern void UARTLoopbackEnable(uint32_t ui32Base);
# 38 "/home/armaan/ti/tivaware/utils/uartstdio.c" 2
# 1 "/home/armaan/ti/tivaware/utils/uartstdio.h" 1
# 61 "/home/armaan/ti/tivaware/utils/uartstdio.h"
extern void UARTStdioConfig(uint32_t ui32Port, uint32_t ui32Baud,
                            uint32_t ui32SrcClock);
extern int UARTgets(char *pcBuf, uint32_t ui32Len);
extern unsigned char UARTgetc(void);
extern void UARTprintf(const char *pcString, ...);
extern void UARTvprintf(const char *pcString, va_list vaArgP);
extern int UARTwrite(const char *pcBuf, uint32_t ui32Len);
# 39 "/home/armaan/ti/tivaware/utils/uartstdio.c" 2
# 126 "/home/armaan/ti/tivaware/utils/uartstdio.c"
static uint32_t g_ui32Base = 0;







static const char * const g_pcHex = "0123456789abcdef";






static const uint32_t g_ui32UARTBase[3] =
{
    0x4000C000, 0x4000D000, 0x4000E000
};
# 170 "/home/armaan/ti/tivaware/utils/uartstdio.c"
static const uint32_t g_ui32UARTPeriph[3] =
{
    0xf0001800, 0xf0001801, 0xf0001802
};
# 333 "/home/armaan/ti/tivaware/utils/uartstdio.c"
void
UARTStdioConfig(uint32_t ui32PortNum, uint32_t ui32Baud, uint32_t ui32SrcClock)
{



   
                              ;
# 352 "/home/armaan/ti/tivaware/utils/uartstdio.c"
    if(!((
# 352 "/home/armaan/ti/tivaware/utils/uartstdio.c" 3 4
       _Bool 
# 352 "/home/armaan/ti/tivaware/utils/uartstdio.c"
       (*)(uint32_t ui32Peripheral))((uint32_t *)(((uint32_t *)0x01000010)[13]))[4])(g_ui32UARTPeriph[ui32PortNum]))
    {
        return;
    }




    g_ui32Base = g_ui32UARTBase[ui32PortNum];




    ((void (*)(uint32_t ui32Peripheral))((uint32_t *)(((uint32_t *)0x01000010)[13]))[6])(g_ui32UARTPeriph[ui32PortNum]);




    ((void (*)(uint32_t ui32Base, uint32_t ui32UARTClk, uint32_t ui32Baud, uint32_t ui32Config))((uint32_t *)(((uint32_t *)0x01000010)[1]))[5])(g_ui32Base, ui32SrcClock, ui32Baud,
                            (0x00000000 | 0x00000000 |
                             0x00000060));
# 406 "/home/armaan/ti/tivaware/utils/uartstdio.c"
    ((void (*)(uint32_t ui32Base))((uint32_t *)(((uint32_t *)0x01000010)[1]))[7])(g_ui32Base);
}
# 435 "/home/armaan/ti/tivaware/utils/uartstdio.c"
int
UARTwrite(const char *pcBuf, uint32_t ui32Len)
{
# 508 "/home/armaan/ti/tivaware/utils/uartstdio.c"
    unsigned int uIdx;




    ;
    ;




    for(uIdx = 0; uIdx < ui32Len; uIdx++)
    {




        if(pcBuf[uIdx] == '\n')
        {
            ((void (*)(uint32_t ui32Base, unsigned char ucData))((uint32_t *)(((uint32_t *)0x01000010)[1]))[0])(g_ui32Base, '\r');
        }
        else if(pcBuf[uIdx] == 0)
  {
         break;
  }




        ((void (*)(uint32_t ui32Base, unsigned char ucData))((uint32_t *)(((uint32_t *)0x01000010)[1]))[0])(g_ui32Base, pcBuf[uIdx]);
    }




    return(uIdx);

}
# 576 "/home/armaan/ti/tivaware/utils/uartstdio.c"
int
UARTgets(char *pcBuf, uint32_t ui32Len)
{
# 651 "/home/armaan/ti/tivaware/utils/uartstdio.c"
    uint32_t ui32Count = 0;
    int8_t cChar;
    static int8_t bLastWasCR = 0;




    ;
    ;
    ;





    ui32Len--;




    while(1)
    {



        cChar = ((int32_t (*)(uint32_t ui32Base))((uint32_t *)(((uint32_t *)0x01000010)[1]))[14])(g_ui32Base);




        if(cChar == '\b')
        {




            if(ui32Count)
            {



                UARTwrite("\b \b", 3);




                ui32Count--;
            }




            continue;
        }





        if((cChar == '\n') && bLastWasCR)
        {
            bLastWasCR = 0;
            continue;
        }




        if((cChar == '\r') || (cChar == '\n') || (cChar == 0x1b))
        {





            if(cChar == '\r')
            {
                bLastWasCR = 1;
            }




            break;
        }






        if(ui32Count < ui32Len)
        {



            pcBuf[ui32Count] = cChar;




            ui32Count++;




            ((void (*)(uint32_t ui32Base, unsigned char ucData))((uint32_t *)(((uint32_t *)0x01000010)[1]))[0])(g_ui32Base, cChar);
        }
    }




    pcBuf[ui32Count] = 0;




    UARTwrite("\r\n", 2);




    return(ui32Count);

}
# 793 "/home/armaan/ti/tivaware/utils/uartstdio.c"
unsigned char
UARTgetc(void)
{
# 825 "/home/armaan/ti/tivaware/utils/uartstdio.c"
    return(((int32_t (*)(uint32_t ui32Base))((uint32_t *)(((uint32_t *)0x01000010)[1]))[14])(g_ui32Base));

}
# 867 "/home/armaan/ti/tivaware/utils/uartstdio.c"
void
UARTvprintf(const char *pcString, va_list vaArgP)
{
    uint32_t ui32Idx, ui32Value, ui32Pos, ui32Count, ui32Base, ui32Neg;
    char *pcStr, pcBuf[16], cFill;




    ;




    while(*pcString)
    {



        for(ui32Idx = 0;
            (pcString[ui32Idx] != '%') && (pcString[ui32Idx] != '\0');
            ui32Idx++)
        {
        }




        UARTwrite(pcString, ui32Idx);




        pcString += ui32Idx;




        if(*pcString == '%')
        {



            pcString++;





            ui32Count = 0;
            cFill = ' ';






again:




            switch(*pcString++)
            {



                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                case '8':
                case '9':
                {




                    if((pcString[-1] == '0') && (ui32Count == 0))
                    {
                        cFill = '0';
                    }




                    ui32Count *= 10;
                    ui32Count += pcString[-1] - '0';




                    goto again;
                }




                case 'c':
                {



                    ui32Value = 
# 974 "/home/armaan/ti/tivaware/utils/uartstdio.c" 3 4
                               __builtin_va_arg(
# 974 "/home/armaan/ti/tivaware/utils/uartstdio.c"
                               vaArgP
# 974 "/home/armaan/ti/tivaware/utils/uartstdio.c" 3 4
                               ,
# 974 "/home/armaan/ti/tivaware/utils/uartstdio.c"
                               uint32_t
# 974 "/home/armaan/ti/tivaware/utils/uartstdio.c" 3 4
                               )
# 974 "/home/armaan/ti/tivaware/utils/uartstdio.c"
                                                       ;




                    UARTwrite((char *)&ui32Value, 1);




                    break;
                }




                case 'd':
                case 'i':
                {



                    ui32Value = 
# 996 "/home/armaan/ti/tivaware/utils/uartstdio.c" 3 4
                               __builtin_va_arg(
# 996 "/home/armaan/ti/tivaware/utils/uartstdio.c"
                               vaArgP
# 996 "/home/armaan/ti/tivaware/utils/uartstdio.c" 3 4
                               ,
# 996 "/home/armaan/ti/tivaware/utils/uartstdio.c"
                               uint32_t
# 996 "/home/armaan/ti/tivaware/utils/uartstdio.c" 3 4
                               )
# 996 "/home/armaan/ti/tivaware/utils/uartstdio.c"
                                                       ;




                    ui32Pos = 0;





                    if((int32_t)ui32Value < 0)
                    {



                        ui32Value = -(int32_t)ui32Value;




                        ui32Neg = 1;
                    }
                    else
                    {




                        ui32Neg = 0;
                    }




                    ui32Base = 10;




                    goto convert;
                }




                case 's':
                {



                    pcStr = 
# 1047 "/home/armaan/ti/tivaware/utils/uartstdio.c" 3 4
                           __builtin_va_arg(
# 1047 "/home/armaan/ti/tivaware/utils/uartstdio.c"
                           vaArgP
# 1047 "/home/armaan/ti/tivaware/utils/uartstdio.c" 3 4
                           ,
# 1047 "/home/armaan/ti/tivaware/utils/uartstdio.c"
                           char *
# 1047 "/home/armaan/ti/tivaware/utils/uartstdio.c" 3 4
                           )
# 1047 "/home/armaan/ti/tivaware/utils/uartstdio.c"
                                                 ;




                    for(ui32Idx = 0; pcStr[ui32Idx] != '\0'; ui32Idx++)
                    {
                    }




                    UARTwrite(pcStr, ui32Idx);




                    if(ui32Count > ui32Idx)
                    {
                        ui32Count -= ui32Idx;
                        while(ui32Count--)
                        {
                            UARTwrite(" ", 1);
                        }
                    }




                    break;
                }




                case 'u':
                {



                    ui32Value = 
# 1087 "/home/armaan/ti/tivaware/utils/uartstdio.c" 3 4
                               __builtin_va_arg(
# 1087 "/home/armaan/ti/tivaware/utils/uartstdio.c"
                               vaArgP
# 1087 "/home/armaan/ti/tivaware/utils/uartstdio.c" 3 4
                               ,
# 1087 "/home/armaan/ti/tivaware/utils/uartstdio.c"
                               uint32_t
# 1087 "/home/armaan/ti/tivaware/utils/uartstdio.c" 3 4
                               )
# 1087 "/home/armaan/ti/tivaware/utils/uartstdio.c"
                                                       ;




                    ui32Pos = 0;




                    ui32Base = 10;





                    ui32Neg = 0;




                    goto convert;
                }







                case 'x':
                case 'X':
                case 'p':
                {



                    ui32Value = 
# 1124 "/home/armaan/ti/tivaware/utils/uartstdio.c" 3 4
                               __builtin_va_arg(
# 1124 "/home/armaan/ti/tivaware/utils/uartstdio.c"
                               vaArgP
# 1124 "/home/armaan/ti/tivaware/utils/uartstdio.c" 3 4
                               ,
# 1124 "/home/armaan/ti/tivaware/utils/uartstdio.c"
                               uint32_t
# 1124 "/home/armaan/ti/tivaware/utils/uartstdio.c" 3 4
                               )
# 1124 "/home/armaan/ti/tivaware/utils/uartstdio.c"
                                                       ;




                    ui32Pos = 0;




                    ui32Base = 16;





                    ui32Neg = 0;





convert:
                    for(ui32Idx = 1;
                        (((ui32Idx * ui32Base) <= ui32Value) &&
                         (((ui32Idx * ui32Base) / ui32Base) == ui32Idx));
                        ui32Idx *= ui32Base, ui32Count--)
                    {
                    }





                    if(ui32Neg)
                    {
                        ui32Count--;
                    }





                    if(ui32Neg && (cFill == '0'))
                    {



                        pcBuf[ui32Pos++] = '-';





                        ui32Neg = 0;
                    }





                    if((ui32Count > 1) && (ui32Count < 16))
                    {
                        for(ui32Count--; ui32Count; ui32Count--)
                        {
                            pcBuf[ui32Pos++] = cFill;
                        }
                    }





                    if(ui32Neg)
                    {



                        pcBuf[ui32Pos++] = '-';
                    }




                    for(; ui32Idx; ui32Idx /= ui32Base)
                    {
                        pcBuf[ui32Pos++] =
                            g_pcHex[(ui32Value / ui32Idx) % ui32Base];
                    }




                    UARTwrite(pcBuf, ui32Pos);




                    break;
                }




                case '%':
                {



                    UARTwrite(pcString - 1, 1);




                    break;
                }




                default:
                {



                    UARTwrite("ERROR", 5);




                    break;
                }
            }
        }
    }
}
# 1299 "/home/armaan/ti/tivaware/utils/uartstdio.c"
void
UARTprintf(const char *pcString, ...)
{
    va_list vaArgP;




    
# 1307 "/home/armaan/ti/tivaware/utils/uartstdio.c" 3 4
   __builtin_va_start(
# 1307 "/home/armaan/ti/tivaware/utils/uartstdio.c"
   vaArgP
# 1307 "/home/armaan/ti/tivaware/utils/uartstdio.c" 3 4
   ,
# 1307 "/home/armaan/ti/tivaware/utils/uartstdio.c"
   pcString
# 1307 "/home/armaan/ti/tivaware/utils/uartstdio.c" 3 4
   )
# 1307 "/home/armaan/ti/tivaware/utils/uartstdio.c"
                             ;

    UARTvprintf(pcString, vaArgP);




    
# 1314 "/home/armaan/ti/tivaware/utils/uartstdio.c" 3 4
   __builtin_va_end(
# 1314 "/home/armaan/ti/tivaware/utils/uartstdio.c"
   vaArgP
# 1314 "/home/armaan/ti/tivaware/utils/uartstdio.c" 3 4
   )
# 1314 "/home/armaan/ti/tivaware/utils/uartstdio.c"
                 ;
}
