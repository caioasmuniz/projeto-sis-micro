#pragma config PLLDIV = 2         // 8 mhz input          

#pragma config CPUDIV = OSC1_PLL2 //no CPU postscaling                  

#pragma config USBDIV = 2         //USB clock src is PLL              

#pragma config FOSC = HS          //internal ocsillator   

#pragma config FCMEN = OFF        //fail safe clock monitor                                          

#pragma config IESO = OFF         //internal/external switch over                        

#pragma config PWRT = OFF         //power up timer off     

#pragma config BOR = OFF           //enable brownout reset      

#pragma config BORV = 0           //brown out reset voltage table 28.1 data sheet for values 0, 1, 2, 3.              

#pragma config VREGEN = OFF       //USB voltage regulation.                            

#pragma config WDT = OFF          //turn off WDT          

#pragma config WDTPS = 32768      // WDT postscale         

#pragma config CCP2MX = OFF       //CCP2 MUX bit          

#pragma config PBADEN = OFF       //port B enable

#pragma config LPT1OSC = OFF      // Enable LP timer 1 OSC        

#pragma config MCLRE = OFF        //tie MCLR to Vdd, free up      

#pragma config STVREN = OFF       //Enable underflow reset          

#pragma config LVP = OFF          //turn off LVP           

#pragma config ICPRT = OFF          //turn in-IC Debug port    

#pragma config XINST = OFF          //turn extended instructions          

#pragma config CP0 = OFF          //Code protection bit          

#pragma config CP1 = OFF          //Code protection bit          

#pragma config CP2 = OFF          //Code protection bit          

#pragma config CP3 = OFF          //Code protection bit          

#pragma config CPB = OFF          //boot block code protection bit          

#pragma config CPD = OFF           //eeprom protect    

#pragma config WRT0 = OFF          //Write protection bit          

#pragma config WRT1 = OFF          //Write protection bit          

#pragma config WRT2 = OFF          //Write protection bit          

#pragma config WRT3 = OFF          //Write protection bit          

#pragma config WRTC = OFF          //Write protection bit          

#pragma config WRTB = OFF          //config register protection bit          

#pragma config WRTD = OFF          //boot block Write protection bit          
          
#pragma config EBTR0 = OFF          //Table read protection bit          
          
#pragma config EBTR1 = OFF          //Table read protection bit          
          
#pragma config EBTR2 = OFF          //Table read protection bit          
          
#pragma config EBTR3 = OFF          //Table read protection bit          
          
#pragma config EBTRB = OFF          //boot block table read protection bit          