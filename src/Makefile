# makefile for CAN loopback test on tm4c123
# Every project must have a project-specific makefile
# that includes symbols and definitions from the toolchain/
# depending on the board being programmed.
#

TARGET    := tm4c123_can_tx.c
# override with: make BOARD=other
BOARD     ?= TM4C123GH6PM
TOOLCHAIN := $(HOME)/arm-toolchain

# collect all project-specific source files
SRCS := $(wildcard $(CURDIR)/*.c) \
        $(wildcard $(CURDIR)/src/*.c)

SRCS += $(TIVAWARE)/utils/uartstdio.c
# project-specific includes
# in inc/<proj-inc>.h can be included
# via #include <proj-inc>.h
#  # += so board.mk can append SDK includes
INCLUDES  += -I$(CURDIR)/inc

# board.mk must come before toolchain/Makefile — variables must be defined
# before the rules that consume them
include $(TOOLCHAIN)/boards/$(BOARD)/board.mk
include $(TOOLCHAIN)/Makefile
