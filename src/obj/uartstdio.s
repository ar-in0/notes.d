	.cpu cortex-m4
	.arch armv7e-m
	.fpu fpv4-sp-d16
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"uartstdio.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "/home/armaan/ti/tivaware/utils/uartstdio.c"
	.align	1
	.global	UARTStdioConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	UARTStdioConfig, %function
UARTStdioConfig:
.LVL0:
.LFB0:
	.loc 1 335 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 340 31 view .LVU1
	.loc 1 352 5 view .LVU2
	.loc 1 335 1 is_stmt 0 view .LVU3
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
	.loc 1 352 102 view .LVU4
	ldr	r5, .L3
	.loc 1 352 81 view .LVU5
	mov	r4, #16777216
	.loc 1 352 102 view .LVU6
	ldr	r10, [r5, r0, lsl #2]
	.loc 1 352 81 view .LVU7
	ldr	r3, [r4, #68]
	.loc 1 335 1 view .LVU8
	mov	r6, r0
	.loc 1 352 10 view .LVU9
	ldr	r3, [r3, #16]
	mov	r0, r10
.LVL1:
	.loc 1 335 1 view .LVU10
	mov	r9, r1
	mov	r8, r2
	.loc 1 352 10 view .LVU11
	blx	r3
.LVL2:
	.loc 1 352 7 discriminator 1 view .LVU12
	cbz	r0, .L1
	.loc 1 360 5 is_stmt 1 view .LVU13
	.loc 1 360 32 is_stmt 0 view .LVU14
	add	r5, r5, r6, lsl #2
	.loc 1 360 16 view .LVU15
	ldr	r7, .L3+4
	ldr	r3, [r5, #12]
	str	r3, [r7]
	.loc 1 365 5 is_stmt 1 view .LVU16
	.loc 1 365 85 is_stmt 0 view .LVU17
	ldr	r3, [r4, #68]
	.loc 1 365 6 view .LVU18
	mov	r0, r10
	ldr	r3, [r3, #24]
	blx	r3
.LVL3:
	.loc 1 370 5 is_stmt 1 view .LVU19
	.loc 1 370 140 is_stmt 0 view .LVU20
	ldr	r3, [r4, #20]
	.loc 1 370 6 view .LVU21
	ldr	r0, [r7]
	ldr	r5, [r3, #20]
	mov	r2, r9
	movs	r3, #96
	mov	r1, r8
	blx	r5
.LVL4:
	.loc 1 406 5 is_stmt 1 view .LVU22
	.loc 1 406 78 is_stmt 0 view .LVU23
	ldr	r3, [r4, #20]
	.loc 1 406 6 view .LVU24
	ldr	r0, [r7]
	ldr	r3, [r3, #28]
	.loc 1 407 1 view .LVU25
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL5:
	.loc 1 406 6 view .LVU26
	bx	r3	@ indirect register sibling call
.LVL6:
.L1:
	.cfi_restore_state
	.loc 1 407 1 view .LVU27
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.LVL7:
.L4:
	.loc 1 407 1 view .LVU28
	.align	2
.L3:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.cfi_endproc
.LFE0:
	.size	UARTStdioConfig, .-UARTStdioConfig
	.align	1
	.global	UARTwrite
	.syntax unified
	.thumb
	.thumb_func
	.type	UARTwrite, %function
UARTwrite:
.LVL8:
.LFB1:
	.loc 1 437 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 508 5 view .LVU30
	.loc 1 513 5 view .LVU31
	.loc 1 514 5 view .LVU32
	.loc 1 519 5 view .LVU33
	.loc 1 437 1 is_stmt 0 view .LVU34
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 527 14 view .LVU35
	ldr	r7, .L12
	.loc 1 437 1 view .LVU36
	mov	r5, r0
	adds	r6, r0, r1
	.loc 1 519 5 view .LVU37
	mov	r4, r0
	.loc 1 527 103 view .LVU38
	mov	r8, #16777216
.LVL9:
.L6:
	.loc 1 519 24 is_stmt 1 discriminator 1 view .LVU39
	cmp	r4, r6
	beq	.L10
	.loc 1 525 9 view .LVU40
	.loc 1 525 17 is_stmt 0 view .LVU41
	ldrb	r3, [r4]	@ zero_extendqisi2
	.loc 1 525 11 view .LVU42
	cmp	r3, #10
	mov	r9, r4
	bne	.L7
	.loc 1 527 13 is_stmt 1 view .LVU43
	.loc 1 527 108 is_stmt 0 view .LVU44
	ldr	r3, [r8, #20]
	.loc 1 527 14 view .LVU45
	ldr	r0, [r7]
	ldr	r3, [r3]
	movs	r1, #13
	blx	r3
.LVL10:
.L8:
	.loc 1 537 9 is_stmt 1 view .LVU46
	.loc 1 537 104 is_stmt 0 view .LVU47
	ldr	r3, [r8, #20]
	.loc 1 537 10 view .LVU48
	ldrb	r1, [r9]	@ zero_extendqisi2
	ldr	r3, [r3]
	ldr	r0, [r7]
	adds	r4, r4, #1
	blx	r3
.LVL11:
	.loc 1 519 39 is_stmt 1 discriminator 2 view .LVU49
	.loc 1 519 39 is_stmt 0 discriminator 2 view .LVU50
	b	.L6
.LVL12:
.L7:
	.loc 1 529 14 is_stmt 1 view .LVU51
	.loc 1 529 16 is_stmt 0 view .LVU52
	cmp	r3, #0
	bne	.L8
.L10:
	.loc 1 543 5 is_stmt 1 view .LVU53
	.loc 1 543 11 is_stmt 0 view .LVU54
	subs	r0, r4, r5
	.loc 1 545 1 view .LVU55
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.LVL13:
.L13:
	.loc 1 545 1 view .LVU56
	.align	2
.L12:
	.word	.LANCHOR1
	.cfi_endproc
.LFE1:
	.size	UARTwrite, .-UARTwrite
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC0:
	.ascii	"\010 \010\000"
.LC1:
	.ascii	"\015\012\000"
	.text
	.align	1
	.global	UARTgets
	.syntax unified
	.thumb
	.thumb_func
	.type	UARTgets, %function
UARTgets:
.LVL14:
.LFB2:
	.loc 1 578 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 651 5 view .LVU58
	.loc 1 652 5 view .LVU59
	.loc 1 653 5 view .LVU60
	.loc 1 658 5 view .LVU61
	.loc 1 659 5 view .LVU62
	.loc 1 660 5 view .LVU63
	.loc 1 666 5 view .LVU64
	.loc 1 578 1 is_stmt 0 view .LVU65
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 676 18 view .LVU66
	ldr	r5, .L33
	.loc 1 578 1 view .LVU67
	mov	r6, r0
	.loc 1 666 12 view .LVU68
	subs	r7, r1, #1
.LVL15:
	.loc 1 651 14 view .LVU69
	movs	r4, #0
	.loc 1 676 93 view .LVU70
	mov	r8, #16777216
.LVL16:
.L15:
	.loc 1 671 5 is_stmt 1 view .LVU71
	.loc 1 676 9 view .LVU72
	.loc 1 676 93 is_stmt 0 view .LVU73
	ldr	r3, [r8, #20]
	.loc 1 676 18 view .LVU74
	ldr	r0, [r5]
	ldr	r3, [r3, #56]
	blx	r3
.LVL17:
	.loc 1 676 15 discriminator 1 view .LVU75
	sxtb	r3, r0
.LVL18:
	.loc 1 681 9 is_stmt 1 view .LVU76
	.loc 1 681 11 is_stmt 0 view .LVU77
	cmp	r3, #8
	bne	.L16
	.loc 1 687 13 is_stmt 1 view .LVU78
	.loc 1 687 15 is_stmt 0 view .LVU79
	cmp	r4, #0
	beq	.L15
	.loc 1 692 17 is_stmt 1 view .LVU80
	ldr	r0, .L33+4
	movs	r1, #3
	bl	UARTwrite
.LVL19:
	.loc 1 697 17 view .LVU81
	.loc 1 697 26 is_stmt 0 view .LVU82
	subs	r4, r4, #1
.LVL20:
	.loc 1 697 26 view .LVU83
	b	.L15
.LVL21:
.L16:
	.loc 1 710 9 is_stmt 1 view .LVU84
	.loc 1 710 11 is_stmt 0 view .LVU85
	cmp	r3, #10
	bne	.L18
	.loc 1 710 28 discriminator 1 view .LVU86
	ldrsb	r3, [r5, #4]
.LVL22:
	.loc 1 710 28 discriminator 1 view .LVU87
	cbz	r3, .L19
	.loc 1 712 13 is_stmt 1 view .LVU88
	.loc 1 712 24 is_stmt 0 view .LVU89
	movs	r3, #0
	strb	r3, [r5, #4]
	.loc 1 713 13 is_stmt 1 view .LVU90
	b	.L15
.LVL23:
.L18:
	.loc 1 719 9 view .LVU91
	cmp	r3, #13
	beq	.L20
	cmp	r3, #27
	bne	.L32
.LVL24:
.L19:
	.loc 1 734 13 view .LVU92
	.loc 1 764 5 view .LVU93
	.loc 1 764 22 is_stmt 0 view .LVU94
	movs	r3, #0
	strb	r3, [r6, r4]
	.loc 1 769 5 is_stmt 1 view .LVU95
	movs	r1, #2
	ldr	r0, .L33+8
.LVL25:
	.loc 1 769 5 is_stmt 0 view .LVU96
	bl	UARTwrite
.LVL26:
	.loc 1 774 5 is_stmt 1 view .LVU97
	.loc 1 776 1 is_stmt 0 view .LVU98
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, pc}
.LVL27:
.L20:
	.loc 1 726 13 is_stmt 1 view .LVU99
	.loc 1 728 17 view .LVU100
	.loc 1 728 28 is_stmt 0 view .LVU101
	movs	r3, #1
.LVL28:
	.loc 1 728 28 view .LVU102
	strb	r3, [r5, #4]
	b	.L19
.LVL29:
.L32:
	.loc 1 742 9 is_stmt 1 view .LVU103
	.loc 1 742 11 is_stmt 0 view .LVU104
	cmp	r4, r7
	bcs	.L15
	.loc 1 747 13 is_stmt 1 view .LVU105
	.loc 1 747 30 is_stmt 0 view .LVU106
	uxtb	r1, r0
	strb	r1, [r6, r4]
	.loc 1 752 13 is_stmt 1 view .LVU107
	.loc 1 757 108 is_stmt 0 view .LVU108
	ldr	r3, [r8, #20]
.LVL30:
	.loc 1 757 14 view .LVU109
	ldr	r0, [r5]
.LVL31:
	.loc 1 757 14 view .LVU110
	ldr	r3, [r3]
	.loc 1 752 22 view .LVU111
	adds	r4, r4, #1
.LVL32:
	.loc 1 757 13 is_stmt 1 view .LVU112
	.loc 1 757 14 is_stmt 0 view .LVU113
	blx	r3
.LVL33:
	.loc 1 757 14 view .LVU114
	b	.L15
.L34:
	.align	2
.L33:
	.word	.LANCHOR1
	.word	.LC0
	.word	.LC1
	.cfi_endproc
.LFE2:
	.size	UARTgets, .-UARTgets
	.align	1
	.global	UARTgetc
	.syntax unified
	.thumb
	.thumb_func
	.type	UARTgetc, %function
UARTgetc:
.LFB3:
	.loc 1 795 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 825 5 view .LVU116
	.loc 1 795 1 is_stmt 0 view .LVU117
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 825 88 view .LVU118
	mov	r3, #16777216
	.loc 1 825 13 view .LVU119
	ldr	r2, .L36
	.loc 1 825 88 view .LVU120
	ldr	r3, [r3, #20]
	.loc 1 825 13 view .LVU121
	ldr	r0, [r2]
	ldr	r3, [r3, #56]
	blx	r3
.LVL34:
	.loc 1 827 1 view .LVU122
	uxtb	r0, r0
	pop	{r3, pc}
.L37:
	.align	2
.L36:
	.word	.LANCHOR1
	.cfi_endproc
.LFE3:
	.size	UARTgetc, .-UARTgetc
	.section	.rodata.str1.1
.LC2:
	.ascii	" \000"
.LC3:
	.ascii	"0123456789abcdef\000"
.LC4:
	.ascii	"ERROR\000"
	.text
	.align	1
	.global	UARTvprintf
	.syntax unified
	.thumb
	.thumb_func
	.type	UARTvprintf, %function
UARTvprintf:
.LVL35:
.LFB4:
	.loc 1 869 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 869 1 is_stmt 0 view .LVU124
	push	{r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	mov	r5, r0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 56
	mov	r4, r1
.LVL36:
	.loc 1 870 5 is_stmt 1 view .LVU125
	.loc 1 871 5 view .LVU126
	.loc 1 876 5 view .LVU127
	.loc 1 881 5 view .LVU128
.L42:
	.loc 1 881 11 view .LVU129
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L38
	.loc 1 881 11 is_stmt 0 view .LVU130
	mov	r3, r5
	b	.L43
.LVL37:
.L40:
	.loc 1 887 40 discriminator 1 view .LVU131
	cbz	r2, .L44
.LVL38:
.L43:
	.loc 1 887 40 is_stmt 1 view .LVU132
	.loc 1 887 22 is_stmt 0 view .LVU133
	ldrb	r2, [r3]	@ zero_extendqisi2
	.loc 1 887 40 view .LVU134
	cmp	r2, #37
	.loc 1 887 22 view .LVU135
	mov	r6, r3
	mov	r1, r3
.LVL39:
	.loc 1 887 22 view .LVU136
	add	r3, r3, #1
	.loc 1 887 40 view .LVU137
	bne	.L40
.L44:
	.loc 1 895 9 is_stmt 1 view .LVU138
	subs	r1, r1, r5
	mov	r0, r5
	bl	UARTwrite
.LVL40:
	.loc 1 900 9 view .LVU139
	.loc 1 905 9 view .LVU140
	.loc 1 905 11 is_stmt 0 view .LVU141
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #37
	beq	.L41
	.loc 1 900 18 view .LVU142
	mov	r5, r6
	b	.L42
.L41:
	.loc 1 910 13 is_stmt 1 view .LVU143
	.loc 1 910 21 is_stmt 0 view .LVU144
	adds	r0, r6, #1
.LVL41:
	.loc 1 916 13 is_stmt 1 view .LVU145
	.loc 1 917 13 view .LVU146
	.loc 1 917 19 is_stmt 0 view .LVU147
	mov	lr, #32
	.loc 1 916 23 view .LVU148
	movs	r7, #0
.LVL42:
.L45:
	.loc 1 929 13 is_stmt 1 view .LVU149
	.loc 1 929 29 is_stmt 0 view .LVU150
	mov	r5, r0
.LVL43:
	.loc 1 929 20 view .LVU151
	ldrb	r3, [r5], #1	@ zero_extendqisi2
.LVL44:
	.loc 1 929 13 view .LVU152
	cmp	r3, #100
	beq	.L46
	bhi	.L47
	cmp	r3, #57
	bhi	.L48
	cmp	r3, #47
	bhi	.L49
	cmp	r3, #37
	beq	.L50
.L51:
	.loc 1 1249 21 is_stmt 1 view .LVU153
	ldr	r0, .L102
	movs	r1, #5
	b	.L101
.L48:
	.loc 1 929 13 is_stmt 0 view .LVU154
	cmp	r3, #88
	beq	.L52
	cmp	r3, #99
	bne	.L51
	.loc 1 974 21 is_stmt 1 view .LVU155
.LVL45:
	.loc 1 974 31 is_stmt 0 discriminator 1 view .LVU156
	ldr	r3, [r4], #4
.LVL46:
	.loc 1 974 31 discriminator 1 view .LVU157
	str	r3, [sp, #4]
	.loc 1 979 21 is_stmt 1 view .LVU158
	movs	r1, #1
	add	r0, sp, #4
.LVL47:
.L101:
	.loc 1 1249 21 is_stmt 0 view .LVU159
	bl	UARTwrite
.LVL48:
	.loc 1 1254 21 is_stmt 1 view .LVU160
	.loc 1 1254 21 is_stmt 0 view .LVU161
	b	.L42
.LVL49:
.L47:
	.loc 1 929 13 view .LVU162
	cmp	r3, #105
	beq	.L46
	subs	r3, r3, #112
	uxtb	r2, r3
	cmp	r2, #8
	bhi	.L51
	cmp	r3, #8
	bhi	.L51
	adr	r2, .L53
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L53:
	.word	.L52+1
	.word	.L51+1
	.word	.L51+1
	.word	.L55+1
	.word	.L51+1
	.word	.L54+1
	.word	.L51+1
	.word	.L51+1
	.word	.L52+1
	.p2align 1
.L49:
	.loc 1 949 21 is_stmt 1 view .LVU163
	.loc 1 949 23 is_stmt 0 view .LVU164
	cmp	r3, #48
	bne	.L58
	.loc 1 951 31 view .LVU165
	cmp	r7, #0
	it	eq
	moveq	lr, #48
.LVL50:
.L58:
	.loc 1 957 21 is_stmt 1 view .LVU166
	.loc 1 958 21 view .LVU167
	movs	r2, #10
	mla	r3, r2, r7, r3
	.loc 1 958 31 is_stmt 0 view .LVU168
	sub	r7, r3, #48
.LVL51:
	.loc 1 963 21 is_stmt 1 view .LVU169
	.loc 1 929 29 is_stmt 0 view .LVU170
	mov	r0, r5
	.loc 1 963 21 view .LVU171
	b	.L45
.L46:
	.loc 1 996 21 is_stmt 1 view .LVU172
.LVL52:
	.loc 1 996 32 is_stmt 0 view .LVU173
	ldr	r3, [r4], #4
.LVL53:
	.loc 1 1001 21 is_stmt 1 view .LVU174
	.loc 1 1007 21 view .LVU175
	.loc 1 1007 23 is_stmt 0 view .LVU176
	cmp	r3, #0
	bge	.L80
	.loc 1 1012 25 is_stmt 1 view .LVU177
	.loc 1 1012 37 is_stmt 0 view .LVU178
	rsbs	r3, r3, #0
	.loc 1 1017 25 is_stmt 1 view .LVU179
.LVL54:
	.loc 1 1017 33 is_stmt 0 view .LVU180
	movs	r6, #1
.LVL55:
.L100:
	.loc 1 1031 30 view .LVU181
	movs	r2, #10
	b	.L60
.LVL56:
.L55:
	.loc 1 1047 21 is_stmt 1 view .LVU182
	.loc 1 1047 27 is_stmt 0 view .LVU183
	ldr	r0, [r4]
	.loc 1 1052 21 is_stmt 1 view .LVU184
.LVL57:
	.loc 1 1052 33 is_stmt 0 view .LVU185
	movs	r6, #0
.LVL58:
.L61:
	.loc 1 1052 53 is_stmt 1 discriminator 1 view .LVU186
	ldrb	r3, [r0, r6]	@ zero_extendqisi2
	cbnz	r3, .L62
	.loc 1 1059 21 view .LVU187
	mov	r1, r6
	bl	UARTwrite
.LVL59:
	.loc 1 1064 21 view .LVU188
	.loc 1 1064 23 is_stmt 0 view .LVU189
	cmp	r6, r7
	bcc	.L63
.LVL60:
.L65:
	.loc 1 1047 27 view .LVU190
	adds	r4, r4, #4
.LVL61:
	.loc 1 1047 27 view .LVU191
	b	.L42
.LVL62:
.L62:
	.loc 1 1054 21 is_stmt 1 view .LVU192
	.loc 1 1052 69 discriminator 3 view .LVU193
	adds	r6, r6, #1
.LVL63:
	.loc 1 1052 69 is_stmt 0 discriminator 3 view .LVU194
	b	.L61
.LVL64:
.L63:
	.loc 1 1066 25 is_stmt 1 view .LVU195
	.loc 1 1066 35 is_stmt 0 view .LVU196
	subs	r6, r7, r6
.LVL65:
	.loc 1 1067 25 is_stmt 1 view .LVU197
	.loc 1 1067 31 view .LVU198
	.loc 1 1069 29 is_stmt 0 view .LVU199
	ldr	r7, .L102+4
.LVL66:
.L64:
	.loc 1 1069 29 is_stmt 1 view .LVU200
	movs	r1, #1
	mov	r0, r7
	bl	UARTwrite
.LVL67:
	.loc 1 1067 31 view .LVU201
	.loc 1 1067 31 is_stmt 0 view .LVU202
	subs	r6, r6, #1
.LVL68:
	.loc 1 1067 31 view .LVU203
	bne	.L64
	b	.L65
.LVL69:
.L54:
	.loc 1 1087 21 is_stmt 1 view .LVU204
	.loc 1 1087 32 is_stmt 0 view .LVU205
	ldr	r3, [r4], #4
.LVL70:
	.loc 1 1092 21 is_stmt 1 view .LVU206
	.loc 1 1097 21 view .LVU207
	.loc 1 1103 21 view .LVU208
	.loc 1 1108 21 view .LVU209
.L80:
	.loc 1 1025 33 is_stmt 0 view .LVU210
	movs	r6, #0
	b	.L100
.LVL71:
.L52:
	.loc 1 1124 21 is_stmt 1 view .LVU211
	.loc 1 1124 32 is_stmt 0 view .LVU212
	ldr	r3, [r4], #4
.LVL72:
	.loc 1 1129 21 is_stmt 1 view .LVU213
	.loc 1 1134 21 view .LVU214
	.loc 1 1140 21 view .LVU215
	.loc 1 1140 29 is_stmt 0 view .LVU216
	movs	r6, #0
	.loc 1 1134 30 view .LVU217
	movs	r2, #16
.LVL73:
.L60:
	.loc 1 996 31 discriminator 1 view .LVU218
	str	r3, [sp, #4]
.LVL74:
	.loc 1 1147 21 is_stmt 1 view .LVU219
	.loc 1 1147 33 is_stmt 0 view .LVU220
	mov	ip, #1
.LVL75:
.L66:
	.loc 1 1148 62 is_stmt 1 view .LVU221
	.loc 1 1148 36 is_stmt 0 view .LVU222
	mul	r1, r2, ip
	.loc 1 1148 62 view .LVU223
	cmp	r1, r3
	bls	.L67
.L71:
	.loc 1 1158 21 is_stmt 1 view .LVU224
	.loc 1 1158 23 is_stmt 0 view .LVU225
	cbnz	r6, .L68
.L81:
	.loc 1 1158 23 view .LVU226
	movs	r1, #0
	b	.L69
.L67:
	.loc 1 1149 49 view .LVU227
	udiv	r0, r1, r2
	.loc 1 1148 62 discriminator 1 view .LVU228
	cmp	r0, ip
	bne	.L71
	.loc 1 1152 21 is_stmt 1 view .LVU229
	.loc 1 1150 44 view .LVU230
.LVL76:
	.loc 1 1150 55 is_stmt 0 view .LVU231
	subs	r7, r7, #1
.LVL77:
	.loc 1 1150 33 view .LVU232
	mov	ip, r1
	b	.L66
.LVL78:
.L68:
	.loc 1 1160 25 is_stmt 1 view .LVU233
	.loc 1 1167 32 is_stmt 0 discriminator 1 view .LVU234
	cmp	lr, #48
	.loc 1 1160 34 view .LVU235
	add	r7, r7, #-1
.LVL79:
	.loc 1 1167 21 is_stmt 1 view .LVU236
	.loc 1 1167 32 is_stmt 0 discriminator 1 view .LVU237
	bne	.L81
	.loc 1 1172 25 is_stmt 1 view .LVU238
.LVL80:
	.loc 1 1172 42 is_stmt 0 view .LVU239
	movs	r1, #45
	strb	r1, [sp, #8]
	.loc 1 1178 25 is_stmt 1 view .LVU240
.LVL81:
	.loc 1 1172 38 is_stmt 0 view .LVU241
	mov	r1, r6
	.loc 1 1178 33 view .LVU242
	movs	r6, #0
.LVL82:
.L69:
	.loc 1 1185 21 is_stmt 1 view .LVU243
	.loc 1 1185 40 is_stmt 0 view .LVU244
	subs	r0, r7, #2
	.loc 1 1185 23 view .LVU245
	cmp	r0, #13
	add	r0, sp, #8
	bhi	.L72
	.loc 1 1187 25 is_stmt 1 view .LVU246
	.loc 1 1187 38 is_stmt 0 view .LVU247
	add	r8, r7, #-1
.LVL83:
	.loc 1 1187 42 is_stmt 1 discriminator 1 view .LVU248
	add	r9, r0, r1
.LVL84:
.L73:
	.loc 1 1189 29 view .LVU249
	.loc 1 1187 42 is_stmt 0 discriminator 1 view .LVU250
	subs	r8, r8, #1
.LVL85:
	.loc 1 1189 46 view .LVU251
	strb	lr, [r9], #1
.LVL86:
	.loc 1 1187 62 is_stmt 1 discriminator 3 view .LVU252
	.loc 1 1187 42 discriminator 1 view .LVU253
	bne	.L73
	.loc 1 1187 42 is_stmt 0 discriminator 1 view .LVU254
	add	r1, r1, r7
	subs	r1, r1, #1
.LVL87:
.L72:
	.loc 1 1197 21 is_stmt 1 view .LVU255
	.loc 1 1197 23 is_stmt 0 view .LVU256
	cbz	r6, .L74
	.loc 1 1202 25 is_stmt 1 view .LVU257
.LVL88:
	.loc 1 1202 42 is_stmt 0 view .LVU258
	add	r6, r1, #24
.LVL89:
	.loc 1 1202 42 view .LVU259
	add	r6, sp, r6
	movs	r7, #45
	strb	r7, [r6, #-16]
	.loc 1 1202 38 view .LVU260
	adds	r1, r1, #1
.LVL90:
.L74:
	.loc 1 1211 36 view .LVU261
	ldr	r7, .L102+8
.LVL91:
.L75:
	.loc 1 1208 27 is_stmt 1 discriminator 1 view .LVU262
	cmp	ip, #0
	beq	.L101
	.loc 1 1210 25 view .LVU263
.LVL92:
	.loc 1 1211 48 is_stmt 0 view .LVU264
	udiv	r6, r3, ip
	.loc 1 1211 59 view .LVU265
	udiv	lr, r6, r2
	mls	r6, r2, lr, r6
	.loc 1 1208 44 discriminator 2 view .LVU266
	udiv	ip, ip, r2
.LVL93:
	.loc 1 1210 42 view .LVU267
	ldrb	r6, [r7, r6]	@ zero_extendqisi2
	strb	r6, [r0, r1]
	.loc 1 1208 44 is_stmt 1 discriminator 2 view .LVU268
.LVL94:
	.loc 1 1208 44 is_stmt 0 discriminator 2 view .LVU269
	adds	r1, r1, #1
.LVL95:
	.loc 1 1208 44 discriminator 2 view .LVU270
	b	.L75
.LVL96:
.L50:
	.loc 1 1233 21 is_stmt 1 view .LVU271
	movs	r1, #1
	b	.L101
.LVL97:
.L38:
	.loc 1 1259 1 is_stmt 0 view .LVU272
	add	sp, sp, #28
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.LVL98:
.L103:
	.loc 1 1259 1 view .LVU273
	.align	2
.L102:
	.word	.LC4
	.word	.LC2
	.word	.LC3
	.cfi_endproc
.LFE4:
	.size	UARTvprintf, .-UARTvprintf
	.align	1
	.global	UARTprintf
	.syntax unified
	.thumb
	.thumb_func
	.type	UARTprintf, %function
UARTprintf:
.LVL99:
.LFB5:
	.loc 1 1301 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 4, pretend = 16, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
	.loc 1 1302 5 view .LVU275
	.loc 1 1307 4 view .LVU276
	.loc 1 1301 1 is_stmt 0 view .LVU277
	push	{r0, r1, r2, r3}
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	push	{r0, r1, r2, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -20
	.loc 1 1301 1 view .LVU278
	add	r1, sp, #16
	ldr	r0, [r1], #4
	.loc 1 1307 4 view .LVU279
	str	r1, [sp, #4]
	.loc 1 1309 5 is_stmt 1 view .LVU280
	bl	UARTvprintf
.LVL100:
	.loc 1 1314 4 view .LVU281
	.loc 1 1315 1 is_stmt 0 view .LVU282
	add	sp, sp, #12
	.cfi_def_cfa_offset 20
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	add	sp, sp, #16
	.cfi_restore 3
	.cfi_restore 2
	.cfi_restore 1
	.cfi_restore 0
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE5:
	.size	UARTprintf, .-UARTprintf
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_ui32UARTPeriph, %object
	.size	g_ui32UARTPeriph, 12
g_ui32UARTPeriph:
	.word	-268429312
	.word	-268429311
	.word	-268429310
	.type	g_ui32UARTBase, %object
	.size	g_ui32UARTBase, 12
g_ui32UARTBase:
	.word	1073790976
	.word	1073795072
	.word	1073799168
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_ui32Base, %object
	.size	g_ui32Base, 4
g_ui32Base:
	.space	4
	.type	bLastWasCR.0, %object
	.size	bLastWasCR.0, 1
bLastWasCR.0:
	.space	1
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stdint.h"
	.file 3 "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stdarg.h"
	.file 4 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x489
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0xc
	.4byte	.LASF43
	.4byte	.LASF44
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x40
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x5
	.4byte	.LASF5
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x87
	.uleb128 0x7
	.4byte	0x76
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x3
	.byte	0x28
	.byte	0x1b
	.4byte	0xa1
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x4
	.byte	0x4
	.byte	0
	.4byte	0xb8
	.uleb128 0x15
	.4byte	.LASF46
	.4byte	0xb8
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x3
	.byte	0x67
	.byte	0x18
	.4byte	0x95
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x7e
	.byte	0x11
	.4byte	0x76
	.uleb128 0x5
	.byte	0x3
	.4byte	g_ui32Base
	.uleb128 0x17
	.4byte	.LASF47
	.byte	0x1
	.byte	0x86
	.byte	0x1b
	.4byte	0xe8
	.uleb128 0xb
	.4byte	0xf4
	.uleb128 0x7
	.4byte	0xe3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x7
	.4byte	0xed
	.uleb128 0xc
	.4byte	0x82
	.4byte	0x109
	.uleb128 0xd
	.4byte	0x2d
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	0xf9
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x8d
	.byte	0x17
	.4byte	0x109
	.uleb128 0x5
	.byte	0x3
	.4byte	g_ui32UARTBase
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0xaa
	.byte	0x17
	.4byte	0x109
	.uleb128 0x5
	.byte	0x3
	.4byte	g_ui32UARTPeriph
	.uleb128 0xe
	.4byte	.LASF19
	.2byte	0x514
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17d
	.uleb128 0x18
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x514
	.byte	0x18
	.4byte	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x19
	.uleb128 0x6
	.4byte	.LASF18
	.2byte	0x516
	.byte	0xd
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LVL100
	.4byte	0x17d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF20
	.2byte	0x364
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c4
	.uleb128 0x3
	.4byte	.LASF21
	.2byte	0x364
	.byte	0x19
	.4byte	0xe3
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x3
	.4byte	.LASF18
	.2byte	0x364
	.byte	0x2b
	.4byte	0xba
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x4
	.4byte	.LASF23
	.2byte	0x366
	.byte	0xe
	.4byte	0x76
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x6
	.4byte	.LASF22
	.2byte	0x366
	.byte	0x17
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF24
	.2byte	0x366
	.byte	0x22
	.4byte	0x76
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x4
	.4byte	.LASF25
	.2byte	0x366
	.byte	0x2b
	.4byte	0x76
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x4
	.4byte	.LASF26
	.2byte	0x366
	.byte	0x36
	.4byte	0x76
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x4
	.4byte	.LASF27
	.2byte	0x366
	.byte	0x40
	.4byte	0x76
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x6
	.4byte	.LASF28
	.2byte	0x367
	.byte	0xb
	.4byte	0x2c4
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x6
	.4byte	.LASF29
	.2byte	0x367
	.byte	0x12
	.4byte	0x2c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF30
	.2byte	0x367
	.byte	0x1d
	.4byte	0xed
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0xf
	.4byte	.LASF31
	.2byte	0x39c
	.4byte	.L45
	.uleb128 0xf
	.4byte	.LASF32
	.2byte	0x47a
	.4byte	.L60
	.uleb128 0xa
	.4byte	.LVL40
	.4byte	0x3a0
	.4byte	0x291
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x76
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL48
	.4byte	0x3a0
	.uleb128 0xa
	.4byte	.LVL59
	.4byte	0x3a0
	.4byte	0x2ae
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.4byte	.LVL67
	.4byte	0x3a0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xed
	.uleb128 0xc
	.4byte	0xed
	.4byte	0x2d9
	.uleb128 0xd
	.4byte	0x2d
	.byte	0xf
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x31a
	.byte	0x1
	.4byte	0x68
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF36
	.2byte	0x241
	.4byte	0x8e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a0
	.uleb128 0x3
	.4byte	.LASF29
	.2byte	0x241
	.byte	0x10
	.4byte	0x2c4
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x3
	.4byte	.LASF33
	.2byte	0x241
	.byte	0x20
	.4byte	0x76
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x4
	.4byte	.LASF25
	.2byte	0x28b
	.byte	0xe
	.4byte	0x76
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x4
	.4byte	.LASF34
	.2byte	0x28c
	.byte	0xc
	.4byte	0x34
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x6
	.4byte	.LASF35
	.2byte	0x28d
	.byte	0x13
	.4byte	0x34
	.uleb128 0x5
	.byte	0x3
	.4byte	bLastWasCR.0
	.uleb128 0xa
	.4byte	.LVL19
	.4byte	0x3a0
	.4byte	0x387
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x9
	.4byte	.LVL26
	.4byte	0x3a0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF37
	.2byte	0x1b4
	.4byte	0x8e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x401
	.uleb128 0x3
	.4byte	.LASF29
	.2byte	0x1b4
	.byte	0x17
	.4byte	0xe3
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x3
	.4byte	.LASF33
	.2byte	0x1b4
	.byte	0x27
	.4byte	0x76
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x4
	.4byte	.LASF38
	.2byte	0x1fc
	.byte	0x12
	.4byte	0x2d
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x1c
	.4byte	.LVL10
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3d
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x14e
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.4byte	.LASF39
	.2byte	0x14e
	.byte	0x1a
	.4byte	0x76
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x3
	.4byte	.LASF40
	.2byte	0x14e
	.byte	0x30
	.4byte	0x76
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x3
	.4byte	.LASF41
	.2byte	0x14e
	.byte	0x43
	.4byte	0x76
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x11
	.4byte	.LVL2
	.4byte	0x460
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL3
	.4byte	0x470
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL4
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x60
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x83
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",%progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS10:
	.uleb128 0
	.uleb128 .LVU129
	.uleb128 .LVU129
	.uleb128 .LVU140
	.uleb128 .LVU140
	.uleb128 .LVU145
	.uleb128 .LVU145
	.uleb128 .LVU151
	.uleb128 .LVU151
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU273
.LLST10:
	.byte	0x4
	.uleb128 .LVL35-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL40-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL40-.Ltext0
	.uleb128 .LVL41-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LVL43-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL44-.Ltext0
	.uleb128 .LVL98-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 .LVU129
	.uleb128 .LVU132
	.uleb128 .LVU136
	.uleb128 .LVU156
	.uleb128 .LVU157
	.uleb128 .LVU157
	.uleb128 .LVU159
	.uleb128 .LVU161
	.uleb128 .LVU162
	.uleb128 .LVU173
	.uleb128 .LVU174
	.uleb128 .LVU174
	.uleb128 .LVU182
	.uleb128 .LVU183
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 .LVU204
	.uleb128 .LVU205
	.uleb128 .LVU206
	.uleb128 .LVU206
	.uleb128 .LVU211
	.uleb128 .LVU212
	.uleb128 .LVU213
	.uleb128 .LVU213
	.uleb128 .LVU271
	.uleb128 .LVU272
	.uleb128 0
.LLST11:
	.byte	0x4
	.uleb128 .LVL35-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0x3
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL39-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL45-.Ltext0
	.uleb128 .LVL46-.Ltext0
	.uleb128 0x5
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL46-.Ltext0
	.uleb128 .LVL47-.Ltext0
	.uleb128 0x3
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL48-.Ltext0
	.uleb128 .LVL49-.Ltext0
	.uleb128 0x3
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL52-.Ltext0
	.uleb128 .LVL53-.Ltext0
	.uleb128 0x5
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL53-.Ltext0
	.uleb128 .LVL56-.Ltext0
	.uleb128 0x3
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL56-.Ltext0
	.uleb128 .LVL61-.Ltext0
	.uleb128 0x5
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL61-.Ltext0
	.uleb128 .LVL62-.Ltext0
	.uleb128 0x3
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL62-.Ltext0
	.uleb128 .LVL69-.Ltext0
	.uleb128 0x5
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL69-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x5
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LVL71-.Ltext0
	.uleb128 0x3
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL71-.Ltext0
	.uleb128 .LVL72-.Ltext0
	.uleb128 0x5
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LVL96-.Ltext0
	.uleb128 0x3
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL97-.Ltext0
	.uleb128 .LFE4-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS12:
	.uleb128 .LVU185
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 .LVU190
	.uleb128 .LVU192
	.uleb128 .LVU197
	.uleb128 .LVU220
	.uleb128 .LVU221
	.uleb128 .LVU221
	.uleb128 .LVU231
	.uleb128 .LVU231
	.uleb128 .LVU233
	.uleb128 .LVU233
	.uleb128 .LVU267
	.uleb128 .LVU269
	.uleb128 .LVU271
.LLST12:
	.byte	0x4
	.uleb128 .LVL57-.Ltext0
	.uleb128 .LVL58-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL58-.Ltext0
	.uleb128 .LVL60-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL62-.Ltext0
	.uleb128 .LVL65-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL74-.Ltext0
	.uleb128 .LVL75-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL75-.Ltext0
	.uleb128 .LVL76-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL76-.Ltext0
	.uleb128 .LVL78-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL78-.Ltext0
	.uleb128 .LVL93-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL94-.Ltext0
	.uleb128 .LVL96-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS13:
	.uleb128 .LVU175
	.uleb128 .LVU182
	.uleb128 .LVU207
	.uleb128 .LVU211
	.uleb128 .LVU214
	.uleb128 .LVU239
	.uleb128 .LVU239
	.uleb128 .LVU243
	.uleb128 .LVU243
	.uleb128 .LVU249
	.uleb128 .LVU249
	.uleb128 .LVU250
	.uleb128 .LVU250
	.uleb128 .LVU252
	.uleb128 .LVU252
	.uleb128 .LVU255
	.uleb128 .LVU255
	.uleb128 .LVU258
	.uleb128 .LVU258
	.uleb128 .LVU261
	.uleb128 .LVU261
	.uleb128 .LVU264
	.uleb128 .LVU264
	.uleb128 .LVU270
	.uleb128 .LVU270
	.uleb128 .LVU271
.LLST13:
	.byte	0x4
	.uleb128 .LVL53-.Ltext0
	.uleb128 .LVL56-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LVL71-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LVL80-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL80-.Ltext0
	.uleb128 .LVL82-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL82-.Ltext0
	.uleb128 .LVL84-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL84-.Ltext0
	.uleb128 .LVL84-.Ltext0
	.uleb128 0x8
	.byte	0x79
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL84-.Ltext0
	.uleb128 .LVL86-.Ltext0
	.uleb128 0x8
	.byte	0x79
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL86-.Ltext0
	.uleb128 .LVL87-.Ltext0
	.uleb128 0x8
	.byte	0x79
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL87-.Ltext0
	.uleb128 .LVL88-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL88-.Ltext0
	.uleb128 .LVL90-.Ltext0
	.uleb128 0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL90-.Ltext0
	.uleb128 .LVL92-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL92-.Ltext0
	.uleb128 .LVL95-.Ltext0
	.uleb128 0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL95-.Ltext0
	.uleb128 .LVL96-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS14:
	.uleb128 .LVU146
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 .LVU159
	.uleb128 .LVU162
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 .LVU169
	.uleb128 .LVU169
	.uleb128 .LVU190
	.uleb128 .LVU192
	.uleb128 .LVU197
	.uleb128 .LVU197
	.uleb128 .LVU199
	.uleb128 .LVU199
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 .LVU203
	.uleb128 .LVU203
	.uleb128 .LVU204
	.uleb128 .LVU204
	.uleb128 .LVU243
	.uleb128 .LVU248
	.uleb128 .LVU251
	.uleb128 .LVU251
	.uleb128 .LVU253
	.uleb128 .LVU271
	.uleb128 .LVU272
.LLST14:
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LVL42-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL47-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL49-.Ltext0
	.uleb128 .LVL50-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL50-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0x5
	.byte	0x77
	.sleb128 0
	.byte	0x3a
	.byte	0x1e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL60-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL62-.Ltext0
	.uleb128 .LVL65-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL65-.Ltext0
	.uleb128 .LVL65-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL65-.Ltext0
	.uleb128 .LVL67-.Ltext0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL67-.Ltext0
	.uleb128 .LVL68-.Ltext0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -2
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL68-.Ltext0
	.uleb128 .LVL69-.Ltext0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL69-.Ltext0
	.uleb128 .LVL82-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL83-.Ltext0
	.uleb128 .LVL85-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL85-.Ltext0
	.uleb128 .LVL86-.Ltext0
	.uleb128 0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL96-.Ltext0
	.uleb128 .LVL97-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS15:
	.uleb128 .LVU208
	.uleb128 .LVU210
	.uleb128 .LVU215
	.uleb128 .LVU218
	.uleb128 .LVU219
	.uleb128 .LVU271
.LLST15:
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x2
	.byte	0x3a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LVL73-.Ltext0
	.uleb128 0x2
	.byte	0x40
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL74-.Ltext0
	.uleb128 .LVL96-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS16:
	.uleb128 .LVU180
	.uleb128 .LVU181
	.uleb128 .LVU209
	.uleb128 .LVU210
	.uleb128 .LVU216
	.uleb128 .LVU218
	.uleb128 .LVU219
	.uleb128 .LVU241
	.uleb128 .LVU241
	.uleb128 .LVU243
	.uleb128 .LVU243
	.uleb128 .LVU259
.LLST16:
	.byte	0x4
	.uleb128 .LVL54-.Ltext0
	.uleb128 .LVL55-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LVL73-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL74-.Ltext0
	.uleb128 .LVL81-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LVL82-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL82-.Ltext0
	.uleb128 .LVL89-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS17:
	.uleb128 .LVU147
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 .LVU159
	.uleb128 .LVU162
	.uleb128 .LVU188
	.uleb128 .LVU192
	.uleb128 .LVU195
	.uleb128 .LVU204
	.uleb128 .LVU262
	.uleb128 .LVU271
	.uleb128 .LVU272
.LLST17:
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LVL42-.Ltext0
	.uleb128 0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL47-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL49-.Ltext0
	.uleb128 .LVL59-1-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL62-.Ltext0
	.uleb128 .LVL64-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL69-.Ltext0
	.uleb128 .LVL91-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL96-.Ltext0
	.uleb128 .LVL97-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 0
.LLST6:
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL16-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LFE2-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 0
.LLST7:
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LFE2-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS8:
	.uleb128 .LVU59
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 0
.LLST8:
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL16-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LFE2-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS9:
	.uleb128 .LVU76
	.uleb128 .LVU81
	.uleb128 .LVU84
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 .LVU96
	.uleb128 .LVU99
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 .LVU114
.LLST9:
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LVL19-1-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL27-.Ltext0
	.uleb128 .LVL28-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL28-.Ltext0
	.uleb128 .LVL29-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL30-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL33-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 0
.LLST3:
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LFE1-.Ltext0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 0
.LLST4:
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LFE1-.Ltext0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x1
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 .LVU34
	.uleb128 .LVU39
	.uleb128 .LVU50
	.uleb128 .LVU51
.LLST5:
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LFE0-.Ltext0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL2-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL2-1-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x1
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LFE0-.Ltext0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x1
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL2-1-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL2-1-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x2
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LFE0-.Ltext0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x2
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF25:
	.ascii	"ui32Count\000"
.LASF44:
	.ascii	"/home/armaan/Fun-CS/g26/notes.d/src\000"
.LASF28:
	.ascii	"pcStr\000"
.LASF21:
	.ascii	"pcString\000"
.LASF26:
	.ascii	"ui32Base\000"
.LASF22:
	.ascii	"ui32Value\000"
.LASF40:
	.ascii	"ui32Baud\000"
.LASF33:
	.ascii	"ui32Len\000"
.LASF4:
	.ascii	"int8_t\000"
.LASF31:
	.ascii	"again\000"
.LASF38:
	.ascii	"uIdx\000"
.LASF39:
	.ascii	"ui32PortNum\000"
.LASF12:
	.ascii	"__gnuc_va_list\000"
.LASF8:
	.ascii	"unsigned char\000"
.LASF42:
	.ascii	"GNU C99 13.2.1 20231009 -mcpu=cortex-m4 -mthumb -mf"
	.ascii	"pu=fpv4-sp-d16 -mfloat-abi=hard -march=armv7e-m+fp "
	.ascii	"-ggdb -Os -std=c99 -ffreestanding\000"
.LASF18:
	.ascii	"vaArgP\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF9:
	.ascii	"short unsigned int\000"
.LASF34:
	.ascii	"cChar\000"
.LASF13:
	.ascii	"va_list\000"
.LASF35:
	.ascii	"bLastWasCR\000"
.LASF19:
	.ascii	"UARTprintf\000"
.LASF17:
	.ascii	"g_ui32UARTPeriph\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF15:
	.ascii	"g_ui32Base\000"
.LASF48:
	.ascii	"UARTgetc\000"
.LASF49:
	.ascii	"UARTStdioConfig\000"
.LASF0:
	.ascii	"long long unsigned int\000"
.LASF27:
	.ascii	"ui32Neg\000"
.LASF46:
	.ascii	"__ap\000"
.LASF36:
	.ascii	"UARTgets\000"
.LASF43:
	.ascii	"/home/armaan/ti/tivaware/utils/uartstdio.c\000"
.LASF29:
	.ascii	"pcBuf\000"
.LASF5:
	.ascii	"int32_t\000"
.LASF16:
	.ascii	"g_ui32UARTBase\000"
.LASF45:
	.ascii	"__va_list\000"
.LASF7:
	.ascii	"long long int\000"
.LASF41:
	.ascii	"ui32SrcClock\000"
.LASF23:
	.ascii	"ui32Idx\000"
.LASF14:
	.ascii	"char\000"
.LASF30:
	.ascii	"cFill\000"
.LASF3:
	.ascii	"short int\000"
.LASF37:
	.ascii	"UARTwrite\000"
.LASF47:
	.ascii	"g_pcHex\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF6:
	.ascii	"long int\000"
.LASF2:
	.ascii	"signed char\000"
.LASF24:
	.ascii	"ui32Pos\000"
.LASF32:
	.ascii	"convert\000"
.LASF20:
	.ascii	"UARTvprintf\000"
	.ident	"GCC: (15:13.2.rel1-2) 13.2.1 20231009"
