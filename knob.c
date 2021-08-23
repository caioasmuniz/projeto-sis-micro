#include <xc.h>

void knobInit(void){  
  TRISAbits.TRISA1 = 1; // AN1 é entrada 
  ADCON1 = 0b00001101; // Habilita AN0 e AN1, Vref+=Vcc e Vref‐=Vss
  ADCON0 = 0b00000101; // Seleciona AN1 e liga módulo A/D 
  ADCON2 = 0b10010101; // Resultado alinhado à direita
  
  Delay10TCYx(5); // Delay de 50 ciclos de máquina
}

int knobRead(){
  ADCON0bits.GO_DONE = 1;
  while (ADCON0bits.GO_DONE); 
  return 256 * ADRESH + ADRESL;
}