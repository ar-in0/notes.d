# 0 "tm4c123_can_tx.c"
# 1 "/home/armaan/Fun-CS/g26/notes.d/src//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "tm4c123_can_tx.c"







# 1 "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stdbool.h" 1 3 4
# 9 "tm4c123_can_tx.c" 2
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
# 10 "tm4c123_can_tx.c" 2
# 1 "/home/armaan/ti/tivaware/inc/hw_can.h" 1
# 11 "tm4c123_can_tx.c" 2
# 1 "/home/armaan/ti/tivaware/inc/hw_ints.h" 1
# 12 "tm4c123_can_tx.c" 2
# 1 "/home/armaan/ti/tivaware/inc/hw_memmap.h" 1
# 13 "tm4c123_can_tx.c" 2
# 1 "/home/armaan/ti/tivaware/inc/hw_types.h" 1
# 14 "tm4c123_can_tx.c" 2
# 1 "/home/armaan/ti/tivaware/driverlib/can.h" 1
# 150 "/home/armaan/ti/tivaware/driverlib/can.h"

# 150 "/home/armaan/ti/tivaware/driverlib/can.h"
typedef struct
{



    uint32_t ui32MsgID;




    uint32_t ui32MsgIDMask;





    uint32_t ui32Flags;




    uint32_t ui32MsgLen;




    uint8_t *pui8MsgData;
}
tCANMsgObject;
# 187 "/home/armaan/ti/tivaware/driverlib/can.h"
typedef struct
{





    uint32_t ui32SyncPropPhase1Seg;





    uint32_t ui32Phase2Seg;





    uint32_t ui32SJW;





    uint32_t ui32QuantumPrescaler;
}
tCANBitClkParms;







typedef enum
{



    CAN_INT_STS_CAUSE,




    CAN_INT_STS_OBJECT
}
tCANIntStsReg;







typedef enum
{



    CAN_STS_CONTROL,





    CAN_STS_TXREQUEST,




    CAN_STS_NEWDAT,




    CAN_STS_MSGVAL
}
tCANStsReg;
# 298 "/home/armaan/ti/tivaware/driverlib/can.h"
typedef enum
{



    MSG_OBJ_TYPE_TX,




    MSG_OBJ_TYPE_TX_REMOTE,




    MSG_OBJ_TYPE_RX,




    MSG_OBJ_TYPE_RX_REMOTE,




    MSG_OBJ_TYPE_RXTX_REMOTE
}
tMsgObjType;
# 416 "/home/armaan/ti/tivaware/driverlib/can.h"
extern void CANBitTimingGet(uint32_t ui32Base, tCANBitClkParms *psClkParms);
extern void CANBitTimingSet(uint32_t ui32Base, tCANBitClkParms *psClkParms);
extern uint32_t CANBitRateSet(uint32_t ui32Base, uint32_t ui32SourceClock,
                              uint32_t ui32BitRate);
extern void CANDisable(uint32_t ui32Base);
extern void CANEnable(uint32_t ui32Base);
extern 
# 422 "/home/armaan/ti/tivaware/driverlib/can.h" 3 4
      _Bool 
# 422 "/home/armaan/ti/tivaware/driverlib/can.h"
           CANErrCntrGet(uint32_t ui32Base, uint32_t *pui32RxCount,
                          uint32_t *pui32TxCount);
extern void CANInit(uint32_t ui32Base);
extern void CANIntClear(uint32_t ui32Base, uint32_t ui32IntClr);
extern void CANIntDisable(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void CANIntEnable(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void CANIntRegister(uint32_t ui32Base, void (*pfnHandler)(void));
extern uint32_t CANIntStatus(uint32_t ui32Base, tCANIntStsReg eIntStsReg);
extern void CANIntUnregister(uint32_t ui32Base);
extern void CANMessageClear(uint32_t ui32Base, uint32_t ui32ObjID);
extern void CANMessageGet(uint32_t ui32Base, uint32_t ui32ObjID,
                          tCANMsgObject *psMsgObject, 
# 433 "/home/armaan/ti/tivaware/driverlib/can.h" 3 4
                                                     _Bool 
# 433 "/home/armaan/ti/tivaware/driverlib/can.h"
                                                          bClrPendingInt);
extern void CANMessageSet(uint32_t ui32Base, uint32_t ui32ObjID,
                          tCANMsgObject *psMsgObject, tMsgObjType eMsgType);
extern 
# 436 "/home/armaan/ti/tivaware/driverlib/can.h" 3 4
      _Bool 
# 436 "/home/armaan/ti/tivaware/driverlib/can.h"
           CANRetryGet(uint32_t ui32Base);
extern void CANRetrySet(uint32_t ui32Base, 
# 437 "/home/armaan/ti/tivaware/driverlib/can.h" 3 4
                                          _Bool 
# 437 "/home/armaan/ti/tivaware/driverlib/can.h"
                                               bAutoRetry);
extern uint32_t CANStatusGet(uint32_t ui32Base, tCANStsReg eStatusReg);
# 15 "tm4c123_can_tx.c" 2
# 1 "/home/armaan/ti/tivaware/driverlib/gpio.h" 1
# 140 "/home/armaan/ti/tivaware/driverlib/gpio.h"
extern void GPIODirModeSet(uint32_t ui32Port, uint8_t ui8Pins,
                           uint32_t ui32PinIO);
extern uint32_t GPIODirModeGet(uint32_t ui32Port, uint8_t ui8Pin);
extern void GPIOIntTypeSet(uint32_t ui32Port, uint8_t ui8Pins,
                           uint32_t ui32IntType);
extern uint32_t GPIOIntTypeGet(uint32_t ui32Port, uint8_t ui8Pin);
extern void GPIOPadConfigSet(uint32_t ui32Port, uint8_t ui8Pins,
                             uint32_t ui32Strength, uint32_t ui32PadType);
extern void GPIOPadConfigGet(uint32_t ui32Port, uint8_t ui8Pin,
                             uint32_t *pui32Strength, uint32_t *pui32PadType);
extern void GPIOIntEnable(uint32_t ui32Port, uint32_t ui32IntFlags);
extern void GPIOIntDisable(uint32_t ui32Port, uint32_t ui32IntFlags);
extern uint32_t GPIOIntStatus(uint32_t ui32Port, 
# 152 "/home/armaan/ti/tivaware/driverlib/gpio.h" 3 4
                                                _Bool 
# 152 "/home/armaan/ti/tivaware/driverlib/gpio.h"
                                                     bMasked);
extern void GPIOIntClear(uint32_t ui32Port, uint32_t ui32IntFlags);
extern void GPIOIntRegister(uint32_t ui32Port, void (*pfnIntHandler)(void));
extern void GPIOIntUnregister(uint32_t ui32Port);
extern void GPIOIntRegisterPin(uint32_t ui32Port, uint32_t ui32Pin,
                               void (*pfnIntHandler)(void));
extern void GPIOIntUnregisterPin(uint32_t ui32Port, uint32_t ui32Pin);
extern int32_t GPIOPinRead(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinWrite(uint32_t ui32Port, uint8_t ui8Pins, uint8_t ui8Val);
extern void GPIOPinConfigure(uint32_t ui32PinConfig);
extern void GPIOPinTypeADC(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeCAN(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeComparator(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeComparatorOutput(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeDIVSCLK(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeEPI(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeEthernetLED(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeEthernetMII(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeGPIOInput(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeGPIOOutput(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeGPIOOutputOD(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeHibernateRTCCLK(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeI2C(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeI2CSCL(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeLCD(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeOneWire(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypePWM(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeQEI(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeSSI(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeTimer(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeTrace(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeUART(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeUSBAnalog(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeUSBDigital(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeWakeHigh(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeWakeLow(uint32_t ui32Port, uint8_t ui8Pins);
extern uint32_t GPIOPinWakeStatus(uint32_t ui32Port);
extern void GPIODMATriggerEnable(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIODMATriggerDisable(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOADCTriggerEnable(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOADCTriggerDisable(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOUnlockPin(uint32_t ui32Port, uint8_t ui8Pins);
# 16 "tm4c123_can_tx.c" 2
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
# 17 "tm4c123_can_tx.c" 2
# 1 "/home/armaan/ti/tivaware/driverlib/pin_map.h" 1
# 18 "tm4c123_can_tx.c" 2
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
# 19 "tm4c123_can_tx.c" 2
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
# 20 "tm4c123_can_tx.c" 2
# 1 "/home/armaan/ti/tivaware/utils/uartstdio.h" 1
# 28 "/home/armaan/ti/tivaware/utils/uartstdio.h"
# 1 "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stdarg.h" 1 3 4
# 40 "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stdarg.h" 3 4

# 40 "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 103 "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 29 "/home/armaan/ti/tivaware/utils/uartstdio.h" 2
# 61 "/home/armaan/ti/tivaware/utils/uartstdio.h"

# 61 "/home/armaan/ti/tivaware/utils/uartstdio.h"
extern void UARTStdioConfig(uint32_t ui32Port, uint32_t ui32Baud,
                            uint32_t ui32SrcClock);
extern int UARTgets(char *pcBuf, uint32_t ui32Len);
extern unsigned char UARTgetc(void);
extern void UARTprintf(const char *pcString, ...);
extern void UARTvprintf(const char *pcString, va_list vaArgP);
extern int UARTwrite(const char *pcBuf, uint32_t ui32Len);
# 21 "tm4c123_can_tx.c" 2
# 35 "tm4c123_can_tx.c"
static const char *lec_str[] = {
    "none",
    "stuff error",
    "format error",
    "ack error",
    "bit1 error",
    "bit0 error",
    "crc error",
    "unused",
};

volatile uint32_t g_ui32MsgCount = 0;
volatile 
# 47 "tm4c123_can_tx.c" 3 4
        _Bool 
# 47 "tm4c123_can_tx.c"
             g_bErrFlag = 0;
volatile 
# 48 "tm4c123_can_tx.c" 3 4
        _Bool 
# 48 "tm4c123_can_tx.c"
             g_bTxDone = 0;
volatile uint32_t g_ui32ErrStatus = 0;

void delay(void) {
    SysCtlDelay(16000000 / 3);
}

void CANIntHandler(void) {
    uint32_t ui32Status = CANIntStatus(0x40040000, CAN_INT_STS_CAUSE);

    if (ui32Status == 0x00008000) {
        g_ui32ErrStatus = CANStatusGet(0x40040000, CAN_STS_CONTROL);
        g_bErrFlag = 1;
    } else if (ui32Status == 1) {
        CANIntClear(0x40040000, 1);
        g_ui32MsgCount++;
        g_bTxDone = 1;
    }
}

void ConfigureUART(void) {
    SysCtlPeripheralEnable(0xf0000800);
    SysCtlPeripheralEnable(0xf0001800);
    GPIOPinConfigure(0x00000001);
    GPIOPinConfigure(0x00000401);
    GPIOPinTypeUART(0x40004000, 0x00000001 | 0x00000002);
    UARTClockSourceSet(0x4000C000, 0x00000005);
    UARTStdioConfig(0, 115200, 16000000);
}

void initCAN(void) {
    SysCtlClockSet(0x07800000 | 0x00003800 | 0x00000000 |
                   0x00000540);

    SysCtlPeripheralEnable(0xf0000801);
    while (!SysCtlPeripheralReady(0xf0000801)) {}
    GPIOPinConfigure(0x00011008);
    GPIOPinConfigure(0x00011408);
    GPIOPinTypeCAN(0x40005000, 0x00000010 | 0x00000020);

    SysCtlPeripheralEnable(0xf0003400);
    while (!SysCtlPeripheralReady(0xf0003400)) {}

    CANInit(0x40040000);
    CANBitRateSet(0x40040000, SysCtlClockGet(), 500000);

    CANIntRegister(0x40040000, CANIntHandler);
    IntMasterEnable();
    IntEnable(55);
    CANIntEnable(0x40040000, 0x00000002 | 0x00000008 | 0x00000004);

    CANEnable(0x40040000);
}

int main(void) {
    ConfigureUART();
    UARTprintf("\n\tTM4C123 CAN TX (500kbps)\n\n");

    initCAN();

    tCANMsgObject sCANMessage;
    uint32_t ui32MsgData = 0;
    uint8_t *pui8MsgData = (uint8_t *)&ui32MsgData;

    sCANMessage.ui32MsgID = 1;
    sCANMessage.ui32MsgIDMask = 0;
    sCANMessage.ui32Flags = 0x00000001;
    sCANMessage.ui32MsgLen = sizeof(ui32MsgData);
    sCANMessage.pui8MsgData = pui8MsgData;

    while (1) {
        g_bErrFlag = 0;
        g_bTxDone = 0;

        CANMessageSet(0x40040000, 1, &sCANMessage, MSG_OBJ_TYPE_TX);

        delay();
        uint32_t err = (*((volatile uint32_t *)(0x40040000 + 0x00000008)));
        UARTprintf("ERR REG = 0x%08X\n", err);

        if (g_bErrFlag) {
            uint32_t lec = g_ui32ErrStatus & 0x7;
            UARTprintf("TX 0x%08X  ERR: %s", ui32MsgData, lec_str[lec]);
            if (g_ui32ErrStatus & 0x00000080)
                UARTprintf(" [BUS-OFF]");
            if (g_ui32ErrStatus & 0x00000020)
                UARTprintf(" [ERR-PASSIVE]");
            if (g_ui32ErrStatus & 0x00000040)
                UARTprintf(" [WARN]");
            UARTprintf("\n");
        } else if (g_bTxDone) {
            UARTprintf("TX 0x%08X  OK (%u)\n", ui32MsgData, g_ui32MsgCount);
        }

        ui32MsgData++;
    }
}
