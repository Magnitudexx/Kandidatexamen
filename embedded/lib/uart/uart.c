#define BAUD 9600

#include <avr/io.h>
#include <avr/sfr_defs.h>
#include <util/setbaud.h>

#include "uart.h"
FILE uart_str = FDEV_SETUP_STREAM(uart_putchar, uart_getchar, _FDEV_SETUP_RW);

int uart_putchar(char c, FILE *stream){
    if (c == '\n'){
        uart_putchar('\r', stream);
    }
    loop_until_bit_is_set(UCSR0A,UDRE0);
    UDR0 = c;
return 0;
}

int uart_getchar(FILE *stream){
    char c = 0;
    loop_until_bit_is_set(UCSR0A,RXC0);
    c = UDR0;
    return c;
}
void uart_init(void)
{
    stdout = stdin = &uart_str;
    UBRR0H = UBRRH_VALUE;
    UBRR0L = UBRRL_VALUE;
    
    #if USE_2X
        UCSR0A |= _BV(U2X0);
    #else
        UCSR0A &= ~(_BV(U2X0));
    #endif

    UCSR0C = _BV(UCSZ01) | _BV(UCSZ00);
    UCSR0B = _BV(RXEN0) | _BV(TXEN0);
    
    
    //redirect by default
}