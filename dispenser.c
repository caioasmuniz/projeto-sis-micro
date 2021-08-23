#include "dispenser.h"

// Inicializacao das portas e config inicial
void dipenserInit(){

}

char dispenseWeight(int weight){

}

//controlador P para o atuador do dispenser
float controller(float setPoint, float sample, float kp){
  return (setPoint - sample)*kp;
}