LINKER_SCRIPT = ../linker_script

all:	6502_scroll.rom 6502_bounce.rom

###

6502_bounce.rom:	6502_bounce.o
	ld65 -o 6502_bounce.rom 6502_bounce.o -C $(LINKER_SCRIPT)/kim1_zp.inc

6502_bounce.o:	6502_bounce.s
	ca65 -o 6502_bounce.o 6502_bounce.s -l 6502_bounce.lst


###

6502_scroll.rom:	6502_scroll.o
	ld65 -o 6502_scroll.rom 6502_scroll.o -C $(LINKER_SCRIPT)/kim1_zp.inc

6502_scroll.o:	6502_scroll.s
	ca65 -o 6502_scroll.o 6502_scroll.s -l 6502_scroll.lst


###

clean:	
	rm -f *~ *.o *.lst *.rom


