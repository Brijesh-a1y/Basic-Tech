// #include<avr/io.h>
// #include<util/delay.h>

// #define LED_PIN PD4

// int main(void){
//   DDRD |= (1<<LED_PIN);

//   while(1){
//     // turn on LED
//     PORTD |= (1<<LED_PIN);
//     _delay_ms(500);

//     // turn off LED
//     PORTD &= ~(1<<LED_PIN);
//     _delay_ms(500);

//   }
// }


#include <avr/io.h>
#include <util/delay.h>

#define LED_PIN PD4
#define BUTTON_PIN PD2 

int main(void) {

  DDRD |= (1 << LED_PIN);


  DDRD &= ~(1 << BUTTON_PIN);
  PORTD |= (1 << BUTTON_PIN);

  while (1) {
    
    // if button is continuously pressed then it blink
      if (!(PIND & (1 << BUTTON_PIN))) {
    
       PORTD |= (1 << LED_PIN);  // Turn on LED
      _delay_ms(500);
      PORTD &= ~(1 << LED_PIN); // Turn off LED
      _delay_ms(500);
    } else {
      // Button is not pressed, keep LED off
      PORTD &= ~(1 << LED_PIN);
    }
  }
}