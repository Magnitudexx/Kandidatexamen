#include <stdint.h>
#include <avr/io.h>

#include "memory.h"
#include "spi.h"

void write_page(uint32_t addr, uint8_t *buf, uint32_t size)
{

    uint8_t     opcode[4];
    uint32_t    i;

    // load buffer code and toggle buffer
    opcode[0] = BUF1_PAGE_WRITE;
    opcode[1] = (uint8_t)((addr >> 16) & 0xff);
    opcode[2] = (uint8_t)((addr >> 8) & 0xff);
    opcode[3] = (uint8_t)(addr & 0xff);
    // now send data the chip
    PORTB &= ~SPI_SS;
    for (i=0; i<4; i++) {
        spi_write(opcode[i]) ;
    }
    for (i=0; i<size; i++) {
        spi_write(buf[i]) ;
    }
    PORTB |= SPI_SS;
}
void read_page(uint32_t addr, uint8_t *buf, uint32_t size)
{
    uint8_t     opcode[8];
    uint32_t    i;
    
    opcode[0] = PAGE_READ;
    opcode[1] = (uint8_t)((addr >> 16) & 0xff);
    opcode[2] = (uint8_t)((addr >> 8) & 0xff);
    opcode[3] = (uint8_t)(addr & 0xff);
    opcode[4] = opcode[5] = opcode[6] = opcode[7] = DUMMY;
    // now send command to chip and read back data
    PORTB &= ~SPI_SS;
    for (i=0; i<8; i++) {
        spi_write(opcode[i]) ;
    }
    for (i=0; i<size; i++) {
        buf[i] = spi_read();
    }
    PORTB |= SPI_SS;
}
void set_pagesize_binary(void)
{
    uint16_t status;
    uint8_t devcmd[] = {0x3D, 0x2A, 0x80, 0xA6};

    status = get_status();
    if (!STATUS_BINARY(status)) {
        PORTB &= ~SPI_SS;
        spi_write(devcmd[0]) ;
        spi_write(devcmd[1]) ;
        spi_write(devcmd[2]) ;
        spi_write(devcmd[3]) ;
        PORTB |= SPI_SS;
        do {
            status = get_status();
        } while (!STATUS_READY(status));
    }
}
uint16_t get_status(void)
{
    uint16_t data;
    uint16_t dataval;
    
    PORTB &= ~SPI_SS;
    //spi_write(STATUS_READ);
    dataval = spi_write(STATUS);              // first byte
    data = dataval << 8;
    dataval = spi_write(DUMMY) ;              // second byte
    data |= dataval;
    PORTB |= SPI_SS ;
    return data ;
}