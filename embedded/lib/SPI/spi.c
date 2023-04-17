#include <avr/io.h>

#include "spi.h"

void spi_init(void)					/* SPI Initialize function */
{
    
	DDRB |= SPI_MOSI|SPI_SCK|SPI_SS;	/* Make MOSI, SCK, SS 
						as Output pin */
	DDRB &= ~SPI_MISO;			/* Make MISO pin as input pin */
	SPCR = (1<<SPE)|(1<<MSTR)|(1<<SPR1)|(1<<SPR0);	/* Enable SPI in master mode
						with Fosc/16 */
	SPSR &= ~(1<<SPI2X);			/* Disable speed doubler */
}
uint8_t spi_write(uint8_t data)		/* SPI write data function */
{
	uint8_t flush_buffer = 0;
	SPDR = data;			/* Write data to SPI data register */
	while(!(SPSR & (1<<SPIF)));	/* Wait till transmission complete */
	flush_buffer = (uint8_t) SPDR;
	return flush_buffer;		/* Flush received data */
/* Note: SPIF flag is cleared by first reading SPSR (with SPIF set) and then accessing SPDR hence flush buffer used here to access SPDR after SPSR read */
}
uint8_t spi_read(void)				/* SPI read data function */
{
	SPDR = 0xFF;
	while(!(SPSR & (1<<SPIF)));	/* Wait till transmission complete */
	return(SPDR);			/* Return received data */
}