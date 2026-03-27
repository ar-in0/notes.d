# TMS570LC43x datasheet notes
file:///home/armaan/Downloads/tms570-datasheet.pdf

This MCU has some architecural features that improve *safety*.
- CPUs (dual core) in lockstep
- dual VIM in lockstep

"Safe Island Region": Made of various features,
1. Lockstep safety in the VIM (vector interrupt module). 2 VIMs present.
Q. Whats the significance of having VIMs in lockstep? (afaik lockstep cpus = at each clock cycle, same instruction is on both cpus). How does it help with "safety"
- ECC (error-correcting code) RAM used to store the vector addresses in the VIM. (ecc memory: https://en.wikipedia.org/wiki/ECC_memory)
Reduces the risk of data corruption. (I imagine bit flips would be detected, but what are the other kinds of errors?). A unique hardware ECC module
exists for L1 cache, l2 SRAM AND flash at each cycle. 
* Location of ECC module: In R5F core
Q. How is this an advantage? (i believe each module inside the core will also be counted as a peripheral, and connected to the ahb/apb. 
ECC checks can happen on addresses on bus at each clock cycle.)
Q. "ECC logic itself is checked at each clock cycle": how? via "Hardware BIST controllers" - automated digital logic testers, some fancy stuff

2. Memory Tracing!

3. swapping of the CPU instruction memory (flash) and data memory (RAM)
Key mcu constraint: flash cannot be reprogrammed while the CPU is running/executing code stored in flash.
Solution: 

@gedare 
(From [lc43x schematic](https://www.ti.com/lit/df/sprr397/sprr397.pdf?ts=1774097779943), sheets 7, 9)
It turns out the TMS570LC43x has 4 DCAN controllers, and the launchpad makes one of them (DCAN4 tx/rx) available via gpio header pins. DCAN1-3 need soldering work and it should be possible to run multi-controller tests on a single mcu as @ppisa described for the BBB. Can skip tm4c work entirely.

Regarding the flash wear problem, wrt [@ppisa notes](https://users.rtems.org/t/help-with-flashing-tms570/702/5?u=ar-in0):
I'm using the lc43x launchpad and not the hdk, so no sdcard.

- The lc43x has 512KB RAM compared to the ls31 256KB. lc43x lets us swap the mappings between ram and flash ([lc43x datasheet](https://www.ti.com/lit/ug/spnu563a/spnu563a.pdf?ts=1774137784860&ref_url=https%253A%252F%252Fwww.google.com%252F), page 120). For binaries < 512KB we could use regular openocd load to internal sram -> set BMMCR1 via openocd -> run as unmodified. 

- For larger binaries, are sources for the xcp + freertos bootloader method available?


@22 march
POM: Parameters Overlay Module 

During bootup, l1 caches are flushed, using inline asm defined per architecture. 
