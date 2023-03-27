#include <avr/io.h>
#include <util/delay.h>
#include "avr8-stub.h"

int main(void)
{
    debug_init();
    breakpoint();
    // make the LED pin an output for PORTB5
    DDRB = 1 << 5;

    while (1)
    {
        _delay_ms(250);

        // toggle the LED
        PORTB ^= 1 << 5;
    }

    return 0;
}
