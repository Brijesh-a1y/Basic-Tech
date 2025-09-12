#ifndef HAL_GPIO_H
#define HAL_GPIO_H

#include "../config/pin_config.h"
#include<avr/io.h>
void HAL_INIT(uint8_t led_pin,uint8_t button_pin );
uint8_t HAL_READ(uint8_t button_pin);
void HAL_SET(uint8_t led_pin);
void HAL_TOGGLE(uint8_t led_pin);

#endif




