LINKER_SCRIPT = ../linker_script

all:	simple.rom

###

simple.rom:	simple.o
	ld65 -o simple.rom simple.o -C $(LINKER_SCRIPT)/kim1_200.inc

simple.o:	simple.s
	ca65 -o simple.o simple.s -l simple.lst

###

clean:	
	rm -f *~ *.o *.lst simple.rom


