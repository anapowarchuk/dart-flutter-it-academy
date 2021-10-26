import 'dart:io';
import 'dart:math';

ehPrimo(var param) {
  var count = 0;
  for (int i = 2; i < param; i++) {
    if ((param % i) == 0) count++;
    if (count != 0) break;
  }
  return (count == 0);
}

void main() {
  print("Insira o número de primos a serem encontrados");
  //String? localVal;
  var localVal = int.parse(stdin.readLineSync() ?? '0');
  print('Valor informado $localVal');
  var rand = Random();
  var count = 0;
  do {
    var val = rand.nextInt(100) + 2;
    if (ehPrimo(val)) {
      count++;
      print("eh primo $val");
    }
  } while (count < localVal);
}
