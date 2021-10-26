import 'dart:io';
/*
O carro deve ter informação sobre quilometragem (distância percorrida em quilômetros) e sobre
o estado do tanque de combustível. O tanque de combustível tem capacidade máxima definida durante
a instanciação do objeto. Assuma que o carro faz no máximo 15 km/l. Quando não há combustível, 
o carro não consegue deslocar. Apesar disto, posso andar até o combustível acabar. Considere ainda
que a qualquer momento, como motorista, devo ter acesso ao odômetro (saber quantos quilômetros o 
carro já andou) e saber qual o estado do tanque de combustível. Como motorista, quero poder abastecer
o carro. Lembre que o tanque não deve permitir que sua capacidade máxima seja ultrapassada. Para 
deslocar o carro, quero poder informar quantos quilômetros dirigirei. Lembre que se o combustível 
acabar, o carro não pode continuar andando.
*/

class Carro {
  var estado;
  var quilometragem;

  Carro(){

  }
  abastecer(litros) {

  }
  deslocar(double distancia, double litros) {
    
  }
  combustivelNoTanque(){

  }
  quilometragemCarro(){

  }

}

void main() {
  Carro carro = new Carro();
}
