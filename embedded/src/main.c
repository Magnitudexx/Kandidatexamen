#include <avr/io.h>
#include <util/delay.h>
#include <avr8-stub.h>

#include "uart.h"

int main(void)
{
    debug_init();
    //breakpoint();
    uart_init();
    DDRB = 1 << 5;

    while (1)
    {
        _delay_ms(500);
        puts("Hello phone!");
        // toggle the LED
        PORTB ^= 1 << 5;
    }

    return 0;
}
