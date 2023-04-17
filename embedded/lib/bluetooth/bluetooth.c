#include <stdint.h>
#include <stdio.h>

#include "uart.h"

int is_connected(){
    char c = getchar();

    if (c == 'Y'){
        puts("Y");

        return 1;
    }else{
        return 0;
    }
}