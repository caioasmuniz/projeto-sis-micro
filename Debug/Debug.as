subtitle "Microchip MPLAB XC8 C Compiler v2.32 (Free license) build 20210201212658 Og9 "

pagewidth 120

	opt flic

	processor	18F4550
include "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\18f4550.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 55 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 75 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 152 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 226 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPCON equ 0F65h ;# 
# 252 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UFRM equ 0F66h ;# 
# 259 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UFRML equ 0F66h ;# 
# 337 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UFRMH equ 0F67h ;# 
# 377 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UIR equ 0F68h ;# 
# 433 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UIE equ 0F69h ;# 
# 489 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 540 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 591 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 651 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UCON equ 0F6Dh ;# 
# 702 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 766 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 845 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP0 equ 0F70h ;# 
# 953 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1061 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1169 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1277 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1385 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1493 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1601 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1709 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1785 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1861 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1937 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2013 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2089 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2165 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2241 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2317 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTA equ 0F80h ;# 
# 2456 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTB equ 0F81h ;# 
# 2566 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTC equ 0F82h ;# 
# 2708 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTD equ 0F83h ;# 
# 2829 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTE equ 0F84h ;# 
# 2976 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATA equ 0F89h ;# 
# 3076 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3188 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3266 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3378 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3430 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISA equ 0F92h ;# 
# 3435 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRA equ 0F92h ;# 
# 3628 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISB equ 0F93h ;# 
# 3633 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRB equ 0F93h ;# 
# 3850 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISC equ 0F94h ;# 
# 3855 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRC equ 0F94h ;# 
# 4004 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISD equ 0F95h ;# 
# 4009 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRD equ 0F95h ;# 
# 4226 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISE equ 0F96h ;# 
# 4231 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRE equ 0F96h ;# 
# 4328 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4387 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4471 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4555 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4639 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4710 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4781 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4852 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4918 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4925 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4932 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4939 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4944 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5149 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5154 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5405 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXREG equ 0FADh ;# 
# 5410 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5417 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5422 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5429 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5434 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5441 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5448 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5569 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5576 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5583 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5590 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5680 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5765 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5770 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5927 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5932 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6065 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6070 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6245 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6309 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6316 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6323 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6330 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6335 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6492 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6499 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6506 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6513 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6584 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6669 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6788 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6795 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6802 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6809 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6871 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6941 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7189 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7196 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7203 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7301 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7306 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7411 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7418 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7521 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7528 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7535 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7542 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCON equ 0FD0h ;# 
# 7691 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7719 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7724 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7989 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8072 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8142 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8149 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8156 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8163 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8234 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8241 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8248 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8255 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8262 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8269 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8276 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8283 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8290 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
BSR equ 0FE0h ;# 
# 8297 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8304 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8311 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8318 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8325 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8332 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8339 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8346 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8353 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
WREG equ 0FE8h ;# 
# 8360 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8367 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8374 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8381 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8388 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8395 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8402 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8409 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8508 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8585 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8702 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PROD equ 0FF3h ;# 
# 8709 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8716 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8723 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8732 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8739 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8746 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8753 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8762 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8769 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PC equ 0FF9h ;# 
# 8776 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCL equ 0FF9h ;# 
# 8783 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8790 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8797 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8873 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOS equ 0FFDh ;# 
# 8880 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8887 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8894 "C:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOSU equ 0FFFh ;# 
	debug_source C
	FNCALL	_main,_lcdInit
	FNCALL	_main,_lcdWrite
	FNROOT	_main
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	
STR_1:
	db	116	;'t'
	db	101	;'e'
	db	115	;'s'
	db	116	;'t'
	db	101	;'e'
	db	0
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config PLLDIV = "2"
	config CPUDIV = "OSC1_PLL2"
	config USBDIV = "2"
	config FOSC = "HS"
	config FCMEN = "OFF"
	config IESO = "OFF"
	config PWRT = "OFF"
	config BOR = "OFF"
	config BORV = "0"
	config VREGEN = "OFF"
	config WDT = "OFF"
	config WDTPS = "32768"
	config CCP2MX = "OFF"
	config PBADEN = "OFF"
	config LPT1OSC = "OFF"
	config MCLRE = "OFF"
	config STVREN = "OFF"
	config LVP = "OFF"
	config ICPRT = "OFF"
	config XINST = "OFF"
	config CP0 = "OFF"
	config CP1 = "OFF"
	config CP2 = "OFF"
	config CP3 = "OFF"
	config CPB = "OFF"
	config CPD = "OFF"
	config WRT0 = "OFF"
	config WRT1 = "OFF"
	config WRT2 = "OFF"
	config WRT3 = "OFF"
	config WRTC = "OFF"
	config WRTB = "OFF"
	config WRTD = "OFF"
	config EBTR0 = "OFF"
	config EBTR1 = "OFF"
	config EBTR2 = "OFF"
	config EBTR3 = "OFF"
	config EBTRB = "OFF"
	file	"Debug.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	GLOBAL	__Lsmallconst
	movlw	low highword(__Lsmallconst)
	movwf	tblptru
	movlw	high(__Lsmallconst)
	movwf	tblptrh
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_lcdInit:	; 1 bytes @ 0x0
??_lcdInit:	; 1 bytes @ 0x0
?_lcdWrite:	; 1 bytes @ 0x0
??_lcdWrite:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
??_main:	; 1 bytes @ 0x0
	global	_lcdWrite$0
_lcdWrite$0:	; 2 bytes @ 0x0
	ds   2
	global	_lcdWrite$1
_lcdWrite$1:	; 1 bytes @ 0x2
	ds   1
;!
;!Data Sizes:
;!    Strings     6
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95      0       0
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0

;!
;!Pointer List with Targets:
;!
;!    lcdWrite$1	PTR unsigned char  size(1) Largest target is 6
;!		 -> STR_1(CODE[6]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0      24
;!                            _lcdInit
;!                           _lcdWrite
;! ---------------------------------------------------------------------------------
;! (1) _lcdWrite                                             3     0      3      24
;! ---------------------------------------------------------------------------------
;! (1) _lcdInit                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _lcdInit
;!   _lcdWrite
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMRAM           5F      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMRAM              5F      0       0       1        0.0%
;!STACK                0      0       0       2        0.0%
;!DATA                 0      0       0       3        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0       0       5        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK6           100      0       0      16        0.0%
;!BANK6              100      0       0      17        0.0%
;!BITBANK7           100      0       0      18        0.0%
;!BANK7              100      0       0      19        0.0%
;!ABS                  0      0       0      20        0.0%
;!BIGRAM             7FF      0       0      21        0.0%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 8 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclath, btemp, btemp+1, btemp+2, btemp+3, btemp+4, btemp+5, btemp+6, btemp+7, btemp+8, btemp+9, btemp+10, btemp+11, btemp+12, btemp+13, btemp+14, btemp+15, btemp+16, btemp+17, btemp+18, btemp+19, btemp+20, btemp+21, btemp+22, btemp+23, btemp+24, btemp+25, btemp+26, btemp+27, btemp+28, btemp+29, btemp+30, btemp+31, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_lcdInit
;;		_lcdWrite
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"../main.c"
	line	8
global __ptext0
__ptext0:
psect	text0
	file	"../main.c"
	line	8
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	callstack 30
	line	10
	
l762:
	call	_lcdInit	;wreg free
	line	11
	
l9:
	line	12
	movlw	high(0)
	movwf	((c:_lcdWrite$0+1))^00h,c
	movlw	low(0)
	movwf	((c:_lcdWrite$0))^00h,c
		movlw	low(STR_1)
	movwf	((c:_lcdWrite$1))^00h,c

	call	_lcdWrite	;wreg free
	goto	l9
	global	start
	goto	start
	callstack 0
	line	14
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_lcdWrite
	global	_lcdInit
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	1
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
