
// show ack error on tm4c when peer CAN node
// not initialized. Using tivaware api which
// is a thin wrapper over tm4c register operations.

#include <stdbool.h>
#include <stdint.h>
#include "inc/hw_can.h"
#include "inc/hw_ints.h"
#include "inc/hw_memmap.h"
#include "inc/hw_types.h"
#include "driverlib/can.h"
#include "driverlib/gpio.h"
#include "driverlib/interrupt.h"
#include "driverlib/pin_map.h"
#include "driverlib/sysctl.h"
#include "driverlib/uart.h"
#include "utils/uartstdio.h"

// TM4C123 datasheet page 1069
/*
 * from tivaware hw_can.h
#define CAN_STS_LEC_M           0x00000007  // Last Error Code
#define CAN_STS_LEC_NONE        0x00000000  // No Error
#define CAN_STS_LEC_STUFF       0x00000001  // Stuff Error
#define CAN_STS_LEC_FORM        0x00000002  // Format Error
#define CAN_STS_LEC_ACK         0x00000003  // ACK Error
#define CAN_STS_LEC_BIT1        0x00000004  // Bit 1 Error
#define CAN_STS_LEC_BIT0        0x00000005  // Bit 0 Error
#define CAN_STS_LEC_CRC         0x00000006  // CRC Error
#define CAN_STS_LEC_NOEVENT     0x00000007  // No Event
*/ 
static const char *lec_str[] = {
    "none",           // 0: no error
    "stuff error",    // more than 5 consecutive equal bits detected
    "format error",     // fixed-format part of frame has wrong format
    "ack error",      // transmitted message not acknowledged by any node
    "bit1 error",     // device wanted to send recessive, but bus was dominant
    "bit0 error",     // device wanted to send dominant, but bus was recessive
    "crc error",      // CRC of received message did not match
    "unused",         // 7
};

volatile uint32_t g_ui32MsgCount = 0;
volatile bool g_bErrFlag = 0;
volatile bool g_bTxDone = 0;
volatile uint32_t g_ui32ErrStatus = 0;

void delay(void) {
    SysCtlDelay(16000000 / 3);  // ~1 second at 16 MHz
}

void CANIntHandler(void) {
    uint32_t ui32Status = CANIntStatus(CAN0_BASE, CAN_INT_STS_CAUSE);

    if (ui32Status == CAN_INT_INTID_STATUS) {
        g_ui32ErrStatus = CANStatusGet(CAN0_BASE, CAN_STS_CONTROL);
        g_bErrFlag = 1;
    } else if (ui32Status == 1) {
        CANIntClear(CAN0_BASE, 1);
        g_ui32MsgCount++;
        g_bTxDone = 1;
    }
}

void ConfigureUART(void) {
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOA);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_UART0);
    GPIOPinConfigure(GPIO_PA0_U0RX);
    GPIOPinConfigure(GPIO_PA1_U0TX);
    GPIOPinTypeUART(GPIO_PORTA_BASE, GPIO_PIN_0 | GPIO_PIN_1);
    UARTClockSourceSet(UART0_BASE, UART_CLOCK_PIOSC);
    UARTStdioConfig(0, 115200, 16000000);
}

void initCAN(void) {
    SysCtlClockSet(SYSCTL_SYSDIV_1 | SYSCTL_USE_OSC | SYSCTL_OSC_MAIN |
                   SYSCTL_XTAL_16MHZ);

    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOB);
    while (!SysCtlPeripheralReady(SYSCTL_PERIPH_GPIOB)) {}
    GPIOPinConfigure(GPIO_PB4_CAN0RX);
    GPIOPinConfigure(GPIO_PB5_CAN0TX);
    GPIOPinTypeCAN(GPIO_PORTB_BASE, GPIO_PIN_4 | GPIO_PIN_5);

    SysCtlPeripheralEnable(SYSCTL_PERIPH_CAN0);
    while (!SysCtlPeripheralReady(SYSCTL_PERIPH_CAN0)) {}

    CANInit(CAN0_BASE);
    CANBitRateSet(CAN0_BASE, SysCtlClockGet(), 500000);

    CANIntRegister(CAN0_BASE, CANIntHandler);
    IntMasterEnable();
    IntEnable(INT_CAN0);
    CANIntEnable(CAN0_BASE, CAN_INT_MASTER | CAN_INT_ERROR | CAN_INT_STATUS);

    CANEnable(CAN0_BASE);
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
    sCANMessage.ui32Flags = MSG_OBJ_TX_INT_ENABLE;
    sCANMessage.ui32MsgLen = sizeof(ui32MsgData);
    sCANMessage.pui8MsgData = pui8MsgData;

    while (1) {
        g_bErrFlag = 0;
        g_bTxDone = 0;

        CANMessageSet(CAN0_BASE, 1, &sCANMessage, MSG_OBJ_TYPE_TX);

        delay();
        uint32_t err = HWREG(CAN0_BASE + CAN_O_ERR);
        UARTprintf("ERR REG = 0x%08X\n", err);
        
        if (g_bErrFlag) {
            uint32_t lec = g_ui32ErrStatus & 0x7;
            UARTprintf("TX 0x%08X  ERR: %s", ui32MsgData, lec_str[lec]);
            if (g_ui32ErrStatus & CAN_STATUS_BUS_OFF)
                UARTprintf(" [BUS-OFF]");
            if (g_ui32ErrStatus & CAN_STATUS_EPASS)
                UARTprintf(" [ERR-PASSIVE]");
            if (g_ui32ErrStatus & CAN_STATUS_EWARN)
                UARTprintf(" [WARN]");
            UARTprintf("\n");
        } else if (g_bTxDone) {
            UARTprintf("TX 0x%08X  OK (%u)\n", ui32MsgData, g_ui32MsgCount);
        }

        ui32MsgData++;
    }
}
