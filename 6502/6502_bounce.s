; displays animated 6502

.include "../kim.inc"

; 51 bytes -- original
; 50 bytes -- jmp to beq
; 49 bytes -- share zero in data
; 48 bytes -- make sure use ZP addressing
; 39 bytes -- redo how delay worked

; zero page (on KIM can use 00..EE)

FRAME	=	$80
COUNT	=	$81

.zeropage
.globalzp       offsets
.globalzp       data

start:
	inc	FRAME
	lda	FRAME
	and	#$3
	tax
	ldy	offsets,X

	; copy 3 bytes to display over

	ldx	#2
loop:
	lda	data,Y
	sta	$F9,X
	iny
	dex
	bpl	loop

display_loop_outer:


display_loop_inner:
	jsr	SCANDS		; only displays while being callled
				; screen is blanked at exit

	dec	COUNT
	bne	display_loop_inner

	beq	start



offsets:
.byte 4,1,4	; ,0 get zero from following data

data:
.byte $00,$65,$02,$00
.byte $06,$50,$20


