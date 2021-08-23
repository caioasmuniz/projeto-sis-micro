#include <xc.h>
#include "knob.c"
#include "configBits.h"
#include "display.h"
#define _XTAL_FREQ 20000000


void main(void)
{
  lcdInit();
  while (1){
    lcdWrite(0x00, "teste");
  };
}