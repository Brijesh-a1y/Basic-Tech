#include<avr/io.h>
#include<util/delay.h>

#define LED_PIN PD4

int main(void){
  DDRD |= (1<<LED_PIN);

  while(1){
    // turn on LED
    PORTD |= (1<<LED_PIN);
    _delay_ms(500);

    // turn off LED
    PORTD &= ~(1<<LED_PIN);
    _delay_ms(500);

  }
}