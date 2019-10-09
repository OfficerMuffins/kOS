OUTPUT_FORMAT(binary)
ENTRY(bootmain)

SECTIONS
{
    . = 0x8000;

    .text : {
        bootsect_begin = .;
        KEEP(*(.entry*))
        KEEP(*(.text*))
    }

    .data : {
        KEEP(*(.data*))
        KEEP(*(.bss*))
        . += 2048 - (. - bootsect_begin); /*only 4 setors are loaded after stage2*/
    }
}
