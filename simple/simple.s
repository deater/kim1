.include "../kim.inc"


; just displays 5555 55 on display

start:

	lda	#$55		; load 55 into F9..FB
	sta	$FB
	sta	$FA
	sta	$F9
loop:
	jsr	SCANDS		; call the LED display code
	jmp	loop



