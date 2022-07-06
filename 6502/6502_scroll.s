; displays left scroll 6502

.include "../kim.inc"

; 36 bytes -- original
; 35 bytes -- use ASL to get top bit

; zero page (on KIM can use 00..EE)

COUNT	=	$81

.zeropage
;.globalzp       offsets
.globalzp       value

start:
	lda	#$00
	sta	$FB
	lda	#$65
	sta	$FA
	lda	#$02
	sta	$F9

;	ldx	#2
;l:
;	lda	value,X
;	sta	$F9,X
;	dex
;	bpl	l

loop:

	ldx	#4
roll_loop:
	lda	$FB
	asl		; put high bit in carry

	rol	$F9
	rol	$FA
	rol	$FB
	dex
	bne	roll_loop

display_loop_outer:


display_loop_inner:
	jsr	SCANDS		; only displays while being callled
				; screen is blanked at exit

	dec	COUNT
	bne	display_loop_inner

	beq	loop

value:
;	.byte $00,$65,$02
