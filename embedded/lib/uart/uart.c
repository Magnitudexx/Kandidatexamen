#define F_CPU 16000000UL
#define BAUD 9600

#include <stdio.h>
#include <avr/io.h>
#include <avr/sfr_defs.h>
#include <util/setbaud.h>

static int uart_putchar(char c, FILE *stream);

static FILE mystdout = FDEV_SETUP_STREAM(uart_putchar, NULL, _FDEV_SETUP_WRITE);

static int uart_putchar(char c, FILE *stream)
{
    if (c == '\n'){
        uart_putchar('\r', stream);
    }
    loop_until_bit_is_set(UCSR0A,UDRE0);
    UDR0 = c;
return 0;
}
static int uart_getchar(FILE *stream){
    loop_until_bit_is_set(UCSR0A,RXC0);
    
    return UDR0;
}
void uart_init(void)
{
    UBRR0H = UBRRH_VALUE;
    UBRR0L = UBRRL_VALUE;
    
    #if USE_2X
        UCSR0A |= _BV(U2X0);
    #else
        UCSR0A &= ~(_BV(U2X0));
    #endif

    UCSR0C = _BV(UCSZ01) | _BV(UCSZ00);
    UCSR0B |= (1 << RXEN0) | (1 << TXEN0);
    
    
    //redirect by default
    #ifndef NO_UART_STD
        stdout = &uart_out;
        stdin = &uart_in;
    #endif
}
