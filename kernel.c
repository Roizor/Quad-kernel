init()
{

        char* vidmem=(char*)0xb8000;
        vidmem[0] = 'S';
        vidmem[1] = 0x0f;
        vidmem[2] = 'a';
        vidmem[3] = 0x0f;        
        vidmem[4] = 'x';
        vidmem[5] = 0x0f;

}