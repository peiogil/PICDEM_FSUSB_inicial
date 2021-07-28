
#include "timers.h"

extern bool TIMER0_CONTANDO;

void __interrupt(__low_priority) ISR_TIMER_0(void)    
                                                    // Low priority interrupt
                                                    //High priority interrupt ya está ocupada
{
    if (INTCONbits.TMR0IF)
    {
        timerCounter++;
                if (timerCounter>13)
                {
        timerCounter=0;          
        TIMER0_CONTANDO=false;
        T0CONbits.TMR0ON = 0; //No vuelvas a contar hasta nueva orden
                }
    }
    INTCONbits.TMR0IF=0;
}
 

