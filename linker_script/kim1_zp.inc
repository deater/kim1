MEMORY {
	ZP: start = $00, size = $EE, type = rw;
	RAM: start = $0000, size = $0400, file = %O;
	
}

SEGMENTS {
ZEROPAGE: load = ZP, type = rw;
}

