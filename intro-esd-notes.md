# Embedded Systems
**Clock Frequency:** Flip-flops wh
**Memory-Mapped IO**: Shared address and data bus for all peripherals (including registers). When CPU writes an address to adress bus, all peripherals receive that address. 
Each peripheral has an address decoder, decides if the input address is in range for this peripheral. (no routing)
- If an input address matches, the chip-enable line is asserted to activate the peripheral



# Making Embedded Systems
Q. Explain what happens before "hello world" program main()
> In general, I want them to know that the program requires initialization beyond
>what we see in the source, no matter what the platform is. I like to hear mention of
>setting the exception vectors to handle interrupts, initializing critical peripherals, ini‐
>tializing the stack, initializing variables, and if there are any C++ objects, calling con‐
>structors for those. It is great if they can describe what happens implicitly (by the
> compiler) and what happens explicitly (in initialization code).
Answer: (For general purpose Linux)
```
// Steps:
// 1. Compiler dumps header file contents into the .c source file, then
// generates assembly code .s from the C code in the current file. Next, it
// generates a .o binary (1s and 0s) from the .s file in a standard format known
// as ELF. The ELF format marks symbols used in the program as
// defined/undefined. If every symbol used in the C file is defined in that very
// C file, the .o file can be considered executable. Otherwise (more likely),
// the linker is invoked on a set of similar ELF .o (object files), and symbols
// status is changed to Defined (i.e. symbol name resolution), to create a
// single executable. Initialized variables are replaced by their values in assembly
// itself. Static libraries .o files are used to sequentially resolve names.
//---
// Once the program is run via ./test, the syscall execve() triggers
// creation of kernel structures to represent the process in execution. Not sure
// about how interrupts are handled, but the kernel setup allocates a struct
// task_struct, maps ld.so to process address space, maps code section of executable into address space (actual data is later loaded into ram upon page fault), 
// initializes the stack pointer and IP (to virtual address of init method of ld.so, which then jumps to _start in glibc crt1.o (this was linked statically), which calls _libc_start_main().
// This is userspace glibc function that calls constructors i.e. init(), and then jumps to main()), 
// in the task_struct, and finally if there's an OS, adds it to the pool of schedulable (running) processes.
// When a process is scheduled onto a CPU core,
// the register values are copied into actual HW registers, and shared lib code
// is lazy-loaded into process address space by ld.so at program runtime, following the same page-fault->retrieve page flow for
// regular pages. ld.so actually does address space randomization
// --
// Default signal handlers are set at task_struct creation time.
```

Answer: (For Baremetal Embedded Systems, no OS)
```
Key differences from Linux:
- No ld.so to dynamically load libraries. All dependencies must be resolved at compile time.
- No virtual addresses, no pages/lazy-loading of code at runtime, no virtual address-space mappings.
- Typically uses newlib (or custom minimal libc) instead of glibc, statically linked at compile time.
- No OS process context. Stack and heap do exist but, USER defines them not OS (stack pointer set in a linker script, 
  heap is either a static array defined in linker script, or malloc-enabled via newlib).
- In linux, glibc contains startup code. For baremetal embedded, the startup code is minimal - (linker script for memory,
reset_vector for a. IP initialization and copy to RAM, b. peripheral enable via SystemInit() - i.e. clock, peripheral timers.
- The linker script in linux is default `ldd --verbose`, but for embedded system need to have a custom script with physical addresses.
Usually the stack address is set to top of RAM (since it always grows down.)

On a baremetal embedded system, the program is either running (mcu powered on) or not running (mcu powered off).
A compiled program is stored in flash memory (non-volatile). Instead of kernel indirection, each mcu has a 
startup script (Reset_Handler written in assembly/C, stored in flash) that runs at boot time. 

Boot sequence:
1. On power-on/reset, CPU reads a fixed memory address (the "reset vector table") - e.g., on ARM Cortex-M, 
   address 0x00000004 contains the address of Reset_Handler
2. CPU jumps to Reset_Handler, which does:
   - Sets stack pointer register (SP) to top of RAM (_estack, defined in linker script)
   - Copies .data section from Flash → RAM (initialized globals need to be in writable memory)
   - Zeros out .bss section in RAM (uninitialized globals)
   - Calls SystemInit() to initialize critical peripherals:
     * Configure system clock (PLL, oscillators) - default clock is often slow/unstable
     * Set flash wait states (needed for higher clock speeds)
     * Disable or configure watchdog timer (prevents unwanted resets)
     * Enable peripheral clocks as needed
   - Calls C++ global constructors (if any, via __libc_init_array)
   - Jumps to main()
3. Program runs continuously until power-off, reset, or watchdog/software reset

The interrupt vector table (IVT) is set up at compile time and stored at the start of Flash (address 0x00).
It contains function pointers to all interrupt handlers (Reset_Handler, NMI_Handler, USART_IRQHandler, etc.).
CPU uses this table to find the right handler when interrupts occur.
```
---
Ch2
**Designing Embedded Systems:**
Use diagrams:
1. Context-Diagram - very high level. Inputs/outputs to your system, users, the communication flows, relationships between users and any other intermediate modules of your system etc.
- What problem its solving? Focus on world use-cases. "Big-Picture" goals of the device, before getting embroiled in the software details.

2. (Software) Block Diagram: Blocks for all the elements of the system that code will have to be written for.
   - Peripheral devices, on-chip communication interfaces, no details.
   - More boxes is better.  
3. Organigram: Hierarchical Flow-diagram to modularize a CODE BASE. Start with the main(), and connect modules if one relies on another. Sharing modules may be necessary but 
   result in contention that will have to be managed. [Keeping track of shared resources is V imp.]. Best way is to use debugger, get a feel for the "flow" of the code - backtrace, step through, inspect various threads etc. (you've been doing this by instinct for larger codebases ex. Mixxx, good job)
4. Layering Diagram: Using the components in the software block diagram, group boxes in horizontal layers, top-to-bottom is **input-to-output direction**. for 2 given modules, same upper module -> same input; same lower module -> same outputs. This makes it possible to combine these modules

The boxes represent ideals of components, rather than implementation details 

Drivers for embedded systems:
- No File interface, but model according to unix drivers. (module objects .open, close, write, read, ioctl). Try to make drivers posix-compliant.

**OOP in C**
Singleton pattern: A single instance of a class, which can be used freely by different modules. Ex.  Logging
MVC: Model-View-Controller

---
Ch3

---
Ch4
**Switches**: Temporarily connect a pin to ground. For an ideal switch, the transition from high to low on button press is immediate, followed by 50ms in low while the button is momentarily pressed, followed by an immediate return to high. 
- If we interpret low as signal on while polling a GPIO pin register, we may get sevveral samples of the low pin, ...(why is this a problem again? Is it because the function that is supposed to run on button press will run several times?) Therefore it is better to assign rising edge (i.e. the time when the button is released).
BUTTT real signals deviate from the ideal. 
- There is "switch-bouncing" - i.e. rapid up-down jitter when pressing and releasing the switch. A fast poll may interpret this noise as button activation.
- The signal change on button press may be gradual - analog signal could be in an indeterminate value (outside threshold of both HIGH and LOW) for a period of time. 
In either case, it is important to disregard the edges.
> Debouncing is a technique to eliminate the spurious edges.
See comments in pdf debouncing algorithm.

**Timers**
Implemented in hardware as a 8 bit or 16 bit counter that is incremented periodically. Value stored in the *Timer Counter Register*. The oscillator/clock crystal in your
mcu triggers a timer counter register value increment.
- Oscillators are too slow frequency, so they are connected to a PLL (Phase-Locked Loop) circuit to increase frequency to drive the computation circuits.
- clock is too fast to be used as a one-to-one incrementor for the timer counter register. So, to slow down the update rate (and ensure counter values can be stored), 
the clock uses the value in the *prescaler register* to reduce frequency, before entering the register counter. Prescaler register informs the counter how many ticks to
count towards a single counter increment.

To "set a timer", i.e. to inform the system to do something after some time has passed, we store the appropriate value in the *compare register aka capture register aka match register*.
Action is taken when the *timer counter* value equals this register. There may be multiple compare registers for a single timer.
- There are 4 possible actions on a match - interrupt, stop/continue count, reload counter, set output pin value. These are preconfigured in the *action register aka auto-reload register*,
indicating the action that must occur when a counter value matches a certain *compare register*.

There are other registers associated with a hardware timer: 
- multiple `interrupt registers` - enable register set by user, status register by hardware. The status flag is SET on fire, then firmware reset it in the ISR.The interrupt registers form part of hardware logic circuit that activate a status line - which goes to the NVIC as an "interrupt"
`clock configure register` - to choose the clock signal associated with the timer (system clock or peripheral)
- `control register`: global timer control. sets it on or off(enable/disable)


Pulse-Width Modulation (PWM)
- determines how long a pin stays high or low before toggling
GPIO pins i.e output can either be gnd 0v or vcc 3.3v corresponding to LOW and HIGH respectively. Often we prefer that the peripheral is not being driven 
by the full power output 3.3v, but somewhere in the middle. Since digital signals are 0 or 1, the only solution is periodically switching off and on the signal that;s
driving the peripheral in question.
- PWM is a timer peripheral that enables/disables a certain pin based on a pre-confgured requirement. The requirement is quantified in terms of %HIGH time in a given cycle 
  (usually, the %HIGH is 100% i.e. the gpio pin has a fixed value). The %HIGH is termed as `duty cycle`.
- timer peripheral, uses 2 compare registers, sets compare values in such a way that the signal is changed according to duty cycle requirements.


VMA, LMA
VMA (VIrtual Memory Address): Address where the bytes (in the elf section being inspected) are actually placed at runtime.
LMA (Load Memory Address): Address where the bytes (of the elf section being inspected) are stored in the binary/flash (start of bin/flash = 0x000)

Linker script specifies where each section will live at runtime
For most sections, VMA = LMA (ex. code section is not copied to the RAM)
- .data is copied i.e. via RAM < AT < FLASH at runtime - its LMA != VMA


Linker script specifies how to create the .text section of the final elf, by combining .text sections of various
input object files.
`arm-none-eabi-objdump -h libname.a` gives the various sections and type (READONLY, LOAD, ALLOC, etc.) of the consitituent .o files of the library.
In general, READONLY data should be in flash, but occasionally some libraries have sections that need to be placed in RAM for speed (due to absence of flash buffer).
In such cases, the datasheet should provide info/a linker script advice


## Interrupts
Multiple sources for one interrrupt: Interrupt Service Routine (ISR) must first check the peripheral's status register to decide what event occured to pick the handling logic.

Systemtick: interrupt measuring (approx) unit of time, usually millisecodn, but there is jitter. 

- **Ebalbe/disabble interrupts**: these calls disable every interrupt in the system to prevent ndesting. (disabling single interrupt may cause priority inversion)
- **Jitter**:deviation from expected timing of any time-sensitive event. 
Example: The difference between intended delay and wall-clock delay. Jitter occurs since delays are impleented by reading a value updated by the systick and using the fact that 
the value increments on each systick. The jitter arises because the first value read is never exactly at a tick boundary. A <= condition is used to exit the spinloop. A system that can ensure 
jitter~ns scale is considered realtime.

### TIVA - C
**Writing to console** i.e. how to view printf data?
- uartprintf()


Good catch. On the TM4C123, if you don't call ADCClockConfigSet(), the default behavior kicks in: with the PLL enabled, the ADC clock is automatically PLL/25 = 400/25 = 16 MHz. That's exactly the frequency the ADC needs.
So it works by default in your case. You'd only need to explicitly configure it if you were using a different clock source or had the PLL disabled.

ctags -R -e --languages=C,C++ --exclude=build --exclude=.git .
- emacs compatible tags file


Hardware comparator, combinational logic (no cpu)


Ch7: Communicating with peripherals
**Synchronous/Asynchronous Communication**
Synchronous pathway: A data transfer pathway where the clock explicit. At each clock trigger (by crystel+pll), data is transmitted. SHARED CLOCK BETWEEN
SENDER AND RECEIVER. data vs. clock propagation skew: "early read" by the receiver. solution: make one end rising-edge triggered, other end falling edge so theres allowance = time of pulse
> Often the generator of the clock also controls the bus, making it an asymmetric pathway. Usually only the bus controller can initiate data transfers.

Asnyc: Clock is implicit. start bits+stop bits used to indicate transfer --> Who triggers the start/stop bit sends? Is this what the "baud" in uart is? Isnt baud rate also measured by clock, 
so how is this not synchronous?
- baud is actually 2 independent clocks in the peripheral - an agreed contract, frequency trcked by independent clocks. drift is likely

**Peripheral and Controller**
Both are located on the main board. The controller is usually a part of the mcu processor, and the peripheral is an Integrated Circuit (IC). 
Peripherals are "driven/controlled" by the controller, i.e. a typical master-slave configuration. The physical layer protocol (spi, uart, i2c etc.) determines
how the controller is connected to the peripheral. 
- The peripheral is the interface to the external world, or may be fully contained on the board. It can output messages created by processor over a wire, and can receive messages from other peripherals (when connected - ex. usb-to-uart)
- eeprom is a peripheral. ram is a peripheral. uart is a peripheral. protocols may be board-level (contained within components on a single board - spi, i2c, so they can share a clock), or system-to-system (cross mcu, shared clock between mcus is not feasible, so most such protocols have to be asynchronous - uart, CAN, each peripheral has its own internal oscillator). System-to-sytem protocols also define the controller->peripheral->external world details.



