#include "measure.h"
#include <avr/interrupt.h>
void measure_init(void)
{
    //set timer1 interrupt at 1Hz
  TCCR1A = 0;// set entire TCCR1A register to 0
  TCCR1B = 0;// same for TCCR1B
  TCNT1  = 0;//initialize counter value to 0
  // Set CS11 for 8 bit prescaler
}
void set_cmr_ps(int cmr, int prescaler)
{
    TCCR1B |= prescaler;
    //set compare match register for given value
    OCR1A = cmr;
}
void enable_measurement(void)
{
  // turn on CTC mode
  TCCR1B |= (1 << WGM12);
  // enable timer compare interrupt
  TIMSK1 |= (1 << OCIE1A);
}
void meassure_800hz(void)
{
  // set compare match register for 1,25 ms increments
  set_cmr_ps(2499,PS_8);
  enable_measurement();
}
void meassure_100hz(void)
{
  // set compare match register for 10 ms increments
  set_cmr_ps(19999,PS_8);// = (16*10^6) / (100*8) - 1 (must be <65536)
  enable_measurement();
}
void meassure_25hz(void)
{
  // set compare match register for 10 ms increments
  set_cmr_ps(9999, PS_64);// = (16*10^6) / (100*8) - 1 (must be <65536)
  enable_measurement();
}
void meassure_625hz(void)
{
  // set compare match register for 10 ms increments
  set_cmr_ps(39999, PS_64);// = (16*10^6) / (100*8) - 1 (must be <65536)
  enable_measurement();
}