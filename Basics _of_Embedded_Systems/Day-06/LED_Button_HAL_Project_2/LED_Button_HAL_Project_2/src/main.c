#include <util/delay.h>

#include "hal_gpio.h"
#include "pin_config.h"



int main(void) {
    uint8_t mode = 0;   
    uint8_t button_state, last_button = 1; 

    HAL_INIT(LED_PIN, BUTTON_PIN);

    while (1) {
      button_state = HAL_READ(BUTTON_PIN);

      if (button_state == 0 && last_button == 1) {
        mode = (mode + 1) % 3; 
      }
      last_button = button_state;

      if (mode == 1) {     
        HAL_TOGGLE(LED_PIN);
        _delay_ms(150); 
      }
      else if (mode == 0) {          
                 
        HAL_TOGGLE(LED_PIN);
        _delay_ms(2000);
      }
      else {                        
        HAL_SET(LED_PIN);
        _delay_ms(30);           
        }
    }
}