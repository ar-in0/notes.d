target remote :3333

# **NOT** monitor halt. On a factory board
# flash has pre-installed vectors from TI. On power-on
# many flash->RAM and RAM -> Cache transfers occur.
# `monitor halt` pauses execution with dirty cache lines.
# stepi/continue after load causes writeback to SRAM addresses
# and our binary gets clobbered. Hard bug to trace, causes weird
# behaviour.
#
# reset disables caches, fixes this bug
monitor reset halt

# load elf sections onto mcu according to
# their link addresses. Loading to flash
# requires flash controller, usually proprietary
# and will fail
load

# Modify SRAM memory region permissions to allow execution.
# By default instruction fetch from these addresses
# causes a fault (pc jumps to prefetch exception vector 0xc),
# so we get an immediate fault after `stepi` from _start.
monitor arm mrc 15 0 6 2 0 2
monitor arm mcr 15 0 6 1 4 779
