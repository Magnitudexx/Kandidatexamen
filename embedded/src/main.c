#include <stdlib.h>
#include <string.h>

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

#include <avr_debugger.h>
#include <avr8-stub.h>

#include "uart.h"
#include "bluetooth.h"
#include "spi.h"
#include "memory.h"

int main(void)
{
    debug_init();
    //sei();
    uart_init();
    //spi_init();
    //DDRB |= _BV(DDB5);
    //breakpoint();
    //set_pagesize_binary();
    /*while(!is_connected()){

    }*/
    //uint8_t *buf1 = malloc(1*sizeof(uint8_t));
    //uint8_t *buf2 = malloc(1*sizeof(uint8_t));
    //uint8_t buf1 = 8;
    //uint8_t buf2;
    //write_page(0, buf1, 1);
    //read_page(0, buf2, 1);
    //int equal = memcmp(buf1, buf2, 1);
    while (1)
    {
        _delay_ms(500);
        puts("hello");
        //PORTB |= _BV(PORTB5);

        /*Set to zero the fifth bit of PORTB
        **Set to LOW the pin 13 */
        //PORTB &= ~_BV(PORTB5);
    }
    return 0;
}
