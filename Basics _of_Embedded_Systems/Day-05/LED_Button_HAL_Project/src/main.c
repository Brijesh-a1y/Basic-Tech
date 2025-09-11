#include "../config/pin_config.h"
#include<utils.h>

int main(void){
  HAL_GPIO_Init(LED_PORT,LED_PIN,OUTPUT);
  HAL_GPIO_Init(BUTTON_PORT,BUTTON_PIN,INPUT);
}