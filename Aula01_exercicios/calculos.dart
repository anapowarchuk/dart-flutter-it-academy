/*O Somatório de zero até o número apresentado
◦ O produtório do número apresesentado
◦ O fatorial do número apresentado
◦ Os números primos de 1 até o valor informado
◦ Os números da sequencia de Fibonacci, sendo este número definido pelo valor de entrada. Se a entrada for 5, calcule os cinco
primeiros números da sequencia.*/

import 'dart:io';

//O Somatório de zero até o número apresentado
void somatorio() {
  print('''Insira um número''');
  var valor = stdin.readLineSync();
  if (int.tryParse(valor!) == null) {
    print('$valor não é número!');
    somatorio();
  } else {
    int? num = int.tryParse(valor);
    int cont = 0;
    for (int i = 0; i < num!; i++) {
      cont = cont + i;
    }
    print("O valor do somatório de 0 até $valor é $cont");
  }
}

// O produtório do número apresesentado
void produtorio() {
  print('''Insira um número''');
  var valor = stdin.readLineSync();
  if (int.tryParse(valor!) == null) {
    print('$valor não é número!');
    produtorio();
  } else {
    int? num = int.tryParse(valor);
    int prod = 1;
    for (int i = 0; i < num!; i++) {
      prod = prod * i;
    }
    print("O valor do produtorio de 0 até $valor é $prod");
  }
}

//O fatorial do número apresentado
void fatorial() {
  print('''Insira um número''');
  var valor = stdin.readLineSync();
  if (int.tryParse(valor!) == null) {
    print('$valor não é número!');
    produtorio();
  } else {
    int? num = int.tryParse(valor);
    int fat = 1;
    for (int i = 0; i < num!; i++) {
      fat = fat * i;
    }
    print("O valor do fatorial de $valor é $fat");
  }
}

//Os números primos de 1 até o valor informado
void primos() {
  print('''Insira um número''');
  var valor = stdin.readLineSync();
  if (int.tryParse(valor!) == null) {
    print('$valor não é número!');
    produtorio();
  } else {
    int? num = int.tryParse(valor);
    for (int i = 1; i < num!; i++) {
      if (i % 2 == 0) {
      } else {
        print("$i");
      }
    }
  }
}

//Os números da sequencia de Fibonacci, sendo este número definido pelo valor de entrada. Se a entrada for 5, calcule os cinco
//primeiros números da sequencia.
void fibbonaci() {
  print('''Insira um número''');
  var valor = stdin.readLineSync();
  if (int.tryParse(valor!) == null) {
    print('$valor não é número!');
    produtorio();
  } else {
    int? num = int.tryParse(valor);
    for (int i = 1; i < num!; i++) {
      if (i % 2 == 0) {
      } else {
        print("$i");
      }
    }
  }
}

//main
void main() {
  var i = 0;
  while (i != 6) {
    print('''Selecione uma alternativa
    [1] - O Somatório de zero até o número apresentado
    [2] - O produtório do número apresesentado
    [3] - O fatorial do número apresentado
    [4] - Os números primos de 1 até o valor informado
    [5] -  Os números da sequencia de Fibonacci
    [6] - Sair
    ''');
    var entrada = stdin.readLineSync();
    if (int.tryParse(entrada!) == null) {
      print('$entrada não é número!\n\n');
    } else {
      i = int.tryParse(entrada)!;
      if (i == 1) {
        somatorio();
      } else if (i == 2) {
        produtorio();
      } else if (i == 3) {
        fatorial();
      } else if (i == 4) {
        primos();
      } else if (i == 5) {
        fibbonaci();
      } else if (i == 6) {
        break;
      }
    }
  }
}
