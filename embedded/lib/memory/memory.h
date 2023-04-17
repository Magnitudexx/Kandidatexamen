#ifndef MEMORY_H_
#define MEMORY_H_

#define STATUS_READY(status)            (((status) >> 8) & 0x80)
#define STATUS_BINARY(status)           (((status) >> 8) & 0x01)


#define STATUS 0xD7 /* NB: this is a block erase command on most other chips(!). */
#define PAGE_READ                   0xD2
#define READ_PROTECT                0x32
#define READ_LOCKDOWN               0x35
#define PAGE_ERASE                  0x81
#define BLOCK_ERASE                 0x50
#define SECTOR_ERASE                0x7C
#define CHIP_ERASE                  0xC7
#define BUF1_BUF_WRITE              0x84
#define BUF1_PAGE_WRITE             0x82
#define STATUS_READ                 0xD7

#define PAGE_SIZE           512

#define DUMMY               0x00
void write_page(uint32_t addr, uint8_t *buf, uint32_t size);
void read_page(uint32_t addr, uint8_t *buf, uint32_t size);
void set_pagesize_binary(void);
uint16_t get_status(void);

#endif