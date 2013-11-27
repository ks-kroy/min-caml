.section	".rodata"
.align	8
#l.18:	 0x3f8ccccd
#l.16:	 0x3f000000
.section	".text"
.global	min_caml_start
min_caml_start:
	mov	%28, 4096
	mov	%0, 5
	add	%30, %29, 4
	st	%27, %30
	add	%29, %29, 8
	call	%27, g.5
	sub	%29, %29, 8
	add	%30, %29, 4
	ld	%27, %30
	call	%30, min_caml_end
f.8:
	fadd	%0, %0, %1
g.5:
	fmov	%0, #l.16
	fmov	%1, #l.18
	add	%30, %29, 0
	st	%0, %30
	add	%30, %29, 4
	st	%27, %30
	add	%29, %29, 8
	call	%27, f.8
	sub	%29, %29, 8
	add	%30, %29, 4
	ld	%27, %30
	add	%30, %29, 4
	st	%27, %30
	add	%29, %29, 8
	call	%27, min_caml_int_of_float
	sub	%29, %29, 8
	add	%30, %29, 4
	ld	%27, %30
	add	%30, %29, 0
	ld	%1, %30
	add	%0, %0, %1
	call	%30, min_caml_print_int
.global min_caml_print_int
min_caml_print_int:
	inout	%30, -1, %0
	call	%30, %27
.global min_caml_print_float
min_caml_print_float:
	finout	%30, -1, %0
	call	%30, %27
.global min_caml_create_array
min_caml_create_array:
	mov	%30, %0
	mov	%0, %28
create_array_loop:
	cmp	%26, %30, 0
	breq	create_array_exit, %26
create_array_cont:
	st	%28, %1
	sub	%30, %30, 1
	add	%28, %28, 4
	breq	create_array_loop, 0
create_array_exit:
	call	%30, %27
min_caml_end: