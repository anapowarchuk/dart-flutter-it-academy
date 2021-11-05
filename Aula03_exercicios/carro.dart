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
import 'dart:io';

class Carro {
  int limitePorLitro = 15;
  num _quilometragem;
  num _litrosNoTanque;
  num _capacidadeMaxima;

  Carro(this._quilometragem, this._litrosNoTanque, this._capacidadeMaxima);

  abastecer(double litros) {
    print('''[3] ABASTECER O CARRO''');
    if (_litrosNoTanque + litros >= _capacidadeMaxima) {
      print(
          'O tanque já chegou na capacidade máxima. Você pode abastecer apenas ${_capacidadeMaxima - _litrosNoTanque}\n');
    } else {
      _litrosNoTanque += litros;
      print(
          'O carro foi abastecido! Há $_litrosNoTanque litros no tanque e tem autonomia de ${limitePorLitro * _litrosNoTanque}\n');
    }
  }

  deslocar(double distancia) {
    print('''[4] DESLOCAR O CARRO''');
    if (limitePorLitro * _litrosNoTanque < distancia) {
      print('Não há combustível suficiente para percorrer essa distância!\n');
    } else {
      _quilometragem += distancia;
      num litrosUsados = limitePorLitro * distancia;
      _litrosNoTanque -= litrosUsados;
      return 'Você percorreu ${_quilometragem}\n';
    }
  }

  combustivelNoTanque() {
    print('''[2] ESTADO DE COMBUSTÍVEL DO TANQUE''');
    if (_litrosNoTanque > 0) {
      print('Há $_litrosNoTanque litros no tanque!\n');
    } else {
      print('Não há combustível no tanque!\n');
    }
  }

  odometro() {
    print('''[1] ODÔMETRO ''');
    print('${_quilometragem} km foram percorridos\n');
  }
}

void main() {
  print("Qual a quilometragem inicial do carro?");
  var kmInical = double.parse(stdin.readLineSync() ?? '0');

  print("Qual a quantidade de combustível inicial do carro?");
  var capacidadeIncial = double.parse(stdin.readLineSync() ?? '0');

  print("Qual a capacidade máxima do tanque de combustível?");
  var capMax = double.parse(stdin.readLineSync() ?? '0');

  Carro c = new Carro(kmInical, capacidadeIncial, capMax);

  var i = 0;
  while (i != 5) {
    print('''
    ___________________________________________________________

    Selecione uma alternativa
    [1] - Acessar o odômetro
    [2] - Acessar o estado do tanque de combustível
    [3] - Abastecer o carro
    [4] - Deslocar o carro
    [5] - Sair

    ___________________________________________________________
    \n
    ''');
    var entrada = stdin.readLineSync();
    if (int.tryParse(entrada!) == null) {
      print('$entrada não é número!\n\n');
    } else {
      i = int.tryParse(entrada)!;
      if (i == 1) {
        c.odometro();
      } else if (i == 2) {
        c.combustivelNoTanque();
      } else if (i == 3) {
        print("Quantos litros você quer abastecer?");
        var litros = double.parse(stdin.readLineSync() ?? '0');
        c.abastecer(litros);
      } else if (i == 4) {
        print("Quantos kms você quer deslocar?");
        var kms = double.parse(stdin.readLineSync() ?? '0');
        c.deslocar(kms);
      } else if (i == 5) {
        break;
      }
    }
  }
}
