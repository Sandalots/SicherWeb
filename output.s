	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0
	.globl	_main
	.p2align	2
_main:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x20, x19, [sp, #16]
	stp	x29, x30, [sp, #32]
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
Lloh0:
	adrp	x0, _.str.1@GOTPAGE
Lloh1:
	adrp	x19, _printf@GOTPAGE
Lloh2:
	ldr	x0, [x0, _.str.1@GOTPAGEOFF]
Lloh3:
	ldr	x19, [x19, _printf@GOTPAGEOFF]
	blr	x19
Lloh4:
	adrp	x0, _.str.2@GOTPAGE
Lloh5:
	ldr	x0, [x0, _.str.2@GOTPAGEOFF]
	blr	x19
Lloh6:
	adrp	x0, _.str.3@GOTPAGE
Lloh7:
	ldr	x0, [x0, _.str.3@GOTPAGEOFF]
	blr	x19
Lloh8:
	adrp	x0, _.str.4@GOTPAGE
Lloh9:
	ldr	x0, [x0, _.str.4@GOTPAGEOFF]
	blr	x19
Lloh10:
	adrp	x0, _.str.5@GOTPAGE
Lloh11:
	ldr	x0, [x0, _.str.5@GOTPAGEOFF]
	str	wzr, [sp, #12]
	str	xzr, [sp]
	blr	x19
Lloh12:
	adrp	x0, _.str.6@GOTPAGE
Lloh13:
	ldr	x0, [x0, _.str.6@GOTPAGEOFF]
	blr	x19
	ldp	x29, x30, [sp, #32]
	mov	w0, wzr
	ldp	x20, x19, [sp, #16]
	add	sp, sp, #48
	ret
	.loh AdrpLdrGot	Lloh12, Lloh13
	.loh AdrpLdrGot	Lloh10, Lloh11
	.loh AdrpLdrGot	Lloh8, Lloh9
	.loh AdrpLdrGot	Lloh6, Lloh7
	.loh AdrpLdrGot	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh1, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh2
	.cfi_endproc

	.section	__TEXT,__const
_.str.1:
	.asciz	"A fools' thought, stemming from the beginning and bit shifting down to dark. This was his tale, a tale as short as time itself."

_.str.2:
	.asciz	"\n"

_.str.3:
	.asciz	"Food for thought."

_.str.4:
	.asciz	"\n"

_.str.5:
	.asciz	"%d"

_.str.6:
	.asciz	"\n"

.subsections_via_symbols
