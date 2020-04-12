#define FCY 30000000
#define NUM_SAMPLES 650
 
#include <xc.h>
#include <stdio.h>
#include <libpic30.h>
#include <math.h>
#include <p30F4011.h>
#include "ADC.c"


 
_FOSC(CSW_FSCM_OFF & FRC_PLL16);  // Fosc=16x7.5MHz, i.e. 30 MIPS
_FWDT(WDT_OFF);                  // Watchdog timer off
_FBORPOR(MCLR_DIS);

int x[NUM_SAMPLES];
int *ptr = x;

char edge_detected = 0;



int cnt=0;

 
void UART_Init ( void )
{
    _TRISF3 = 0;           //Look for the exact TX/RX pins of your pic device
    _TRISF2 = 1;           //TX pin must be set as output port and RX input
    
   
     
     
    U1BRG = 15;             // 115000 baud rate @ 30 MIPS
    U1MODEbits.UARTEN = 1; // Enable UART
}

void INT0_Init(){
    _TRISE8 = 1;            // e8 input
    INTCON2bits.INT0EP = 1;  //interrupt on negative edge
    IFS0bits.INT0IF    = 0;  //clear int flag bit
    IEC0bits.INT0IE    = 1;  //int0 interrupt enabled
 
}

void _ISR _INT0Interrupt(void) {
    //printf("edge detected");
    
    ADCON1bits.ADON = 1;
    edge_detected = 1;
    IFS0bits.INT0IF    = 0;  //clear int flag bit

}
 
int main( void )
{
    UART_Init();
    ADC_Init();
    INT0_Init();
    
    _TRISD2 = 0;
 
    while( 1 )
    {
        int i=0;
        if( edge_detected == 1) {
            __delay_ms(100); // wait for samples to get collected
             ptr = &x[0];
            for(i=0; i<NUM_SAMPLES ; i++){
                printf("%d\r\n", x[i]);
                

            }
             
             printf("pausing program\r\n");
             while(1);
        
        }
       
        //printf("%u\t%u\r\n", ADCBUF0, ADCBUF1);
        
        
        printf("in main loop\r\n");
       
         __delay_ms(1000);
    }
}

