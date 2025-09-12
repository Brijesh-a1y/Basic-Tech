#include "hal_gpio.h"



void HAL_TOGGLE(uint8_t led_pin){
    PORTD ^= (1<<led_pin);
    
}

uint8_t HAL_READ(uint8_t button_pin){
    return (PIND & (1<<button_pin))?1:0;
    
}
void HAL_INIT(uint8_t led_pin,uint8_t button_pin){
    DDRD |= (1<<led_pin);
    DDRD &= ~(1<<button_pin);
    PORTD |= (1<<button_pin);
}

void HAL_SET(uint8_t led_pin){
    PORTD |= (1<<led_pin);
}
