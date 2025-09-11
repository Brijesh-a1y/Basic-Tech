#include "hal_gpio.h"

void HAL_GPIO_Init(volatile uint8_t *port, uint8_t pin,uint8_t direction){
    DDRD |= (1<<LED_PIN);
    DDRD &= ~(1<<BUTTON_PIN);

    /*
    volatile uint8_t *ddr = port-1;
    */
    
}
void HAL_GPIO_Write(){
    if(value)   *port |= (1<<pin);
    else *port &= ~(1<<pin);
}
void HAL_GPIO_Toggle(){
    *port ^=(1<<pin);
}

uint8_t HAL_GPIO_Read(volatile uint8_t *port, uint8_t pin){
    volatile uint8_t *pin_reg = port-2;
    return ((*pin_reg) & (1<<pin))?1:0;
}











void hal_init(){
    DDRD |= (1<<LED_PIN);
    DDRD &= ~(1<<BUTTON_PIN);
    PORTD |= (1 << BUTTON_PIN);
}
void hal_set(){
    DDRD |= (1<<LED_PIN)
}
void hal_reset(){
    PORTB &= ~(1<<LED_PIN)
    PORTD &= ~(1<<BUTTON_PIN)
}
void hal_toggle(){

}
void HAL_GPIO_H(){

}

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