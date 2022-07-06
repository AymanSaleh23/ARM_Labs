MEMORY{
	FLASH (rx): ORIGIN = 0x00000000 , LENGTH = 0x00001000
	SRAM  (rxw): ORIGIN = 0x01000000 , LENGTH = 0x00008000
}

SECTIONS{
	PROVIDE (_base_start = 0x00000010);
	PROVIDE (_ro_start = 0x00000156);
	PROVIDE (_intvects_base_addr = 0x00000000);
	PROVIDE (_sprints_addr = 0x00001000);
	
	.intvects (_intvects_base_addr): AT (_intvects_base_addr) {
		KEEP(*(.intvects))
	} > FLASH
	
	.sprints (_sprints_addr):AT(_sprints_addr){
		_sprint_start = .;
		KEEP(*(.sprints))
		_sprint_end = .;
	} > FLASH
	
	.text (_base_start) : AT(_base_start){
		CREATE_OBJECT_SYMBOLS;
		_text_start_ = .;
		*(.text)
		_text_end_ = .;
	} > FLASH
	
	.rodata (_ro_start): AT(_ro_start) {
		_rodata_start_ = .;
		*(.rodata)
		_rodata_end_ = .;
	} > FLASH
	
	.data : ALIGN (4) {
		__data_load = LOADADDR (.data);
		_data_start_ = .;
		*(.data)
		_data_end_ = .;
	} > SRAM AT > FLASH

	.bss : {
		_bss_start_ = .;
		*(.shbss)
		*(.bss)
		*(.bss.*)
		*(COMMON)
		. = ALIGN(4);
		_bss_end_ = .;
	} > SRAM
	
	.stack : ALIGN(0x8) {
		_stack = .;
		_stack_start_ = .;
		KEEP(*(.stack))
	} > SRAM
}