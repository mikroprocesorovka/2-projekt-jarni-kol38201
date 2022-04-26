#include "stm8s.h"
#include "milis.h"
#include <stdio.h>

#include "uart1.h"

#define _ISOC99_SOURCE
#define _GNU_SOURCE


#define BTN_PORT GPIOE
#define BTN_PIN  GPIO_PIN_4
#define BTN_PUSH (GPIO_ReadInputPin(BTN_PORT, BTN_PIN)==RESET) 


void setup(void)
{
    CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);      // taktovani MCU na 16MHz
    GPIO_Init(BTN_PORT, BTN_PIN, GPIO_MODE_IN_FL_NO_IT);

    init_uart1();

    TIM2_TimeBaseInit(TIM2_PRESCALER_4, 7000 - 1 ); 
    TIM2_OC1Init(TIM2_OCMODE_PWM1,TIM2_OUTPUTSTATE_ENABLE,5000,TIM2_OCPOLARITY_HIGH);// inicializujeme kanál 1 (TM2_CH1)
    TIM2_OC1PreloadConfig(ENABLE);
    TIM2_Cmd(ENABLE);

}

int main(void)
{

    uint8_t aktual_stav = 0;
    uint8_t minuly_stav = 0;


    setup();

    while (1) {



        if (BTN_PUSH){
            aktual_stav = 1;
        }
        else{
            aktual_stav = 0;
        }

        if (aktual_stav == 1 && minuly_stav == 0){

                TIM2_SetCompare1(5000);
                printf("LED je zaplý\r\n");
            }
        if (aktual_stav == 0 && minuly_stav == 1){
                TIM2_SetCompare1(0);
                printf("LED je vyplý\r\n");
            }
        

        minuly_stav = aktual_stav;



    }
}


/*-------------------------------  Assert -----------------------------------*/
#include "__assert__.h"
