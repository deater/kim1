MEMORY {
       ZP: start = $00, size = $EE, type = rw;
       RAM: start = $200, size = $200, file = %O;
}

SEGMENTS {
CODE: load = RAM, type = ro, align = $100;
RODATA: load = RAM, type = ro;
DATA: load = RAM, type = rw;
BSS: load = RAM, type = bss, define = yes;
ZEROPAGE: load = ZP, type = zp;
}
