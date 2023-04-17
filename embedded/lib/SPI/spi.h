#ifndef SPI_H_
#define SPI_H_

#define SPI_SCK     (1 << 5)
#define SPI_MISO    (1 << 4)
#define SPI_MOSI    (1 << 3)
#define SPI_SS      (1 << 2)
#define SPI_CS      (1 << 1)

void spi_init(void);
uint8_t spi_write(uint8_t data);
uint8_t spi_read(void);
#endif
