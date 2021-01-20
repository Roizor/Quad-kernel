bits    32
section         .text
        align   4
        dd      0x1BADB002
        dd      0x00
        dd      - (0x1BADB002+0x00)
        
global start
extern init            ; this function is gonna be located in our c code(kernel.c)
extern advertise        ; yum
start:
        cli             ;clears the interrupts 
        call init      ;send processor to continue execution from the kamin funtion in c code
        call advertise
        hlt             ; halt the cpu(pause it from executing from this address
