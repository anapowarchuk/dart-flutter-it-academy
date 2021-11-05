/*Crie um programa que avalia quais caracteres são números e quais não são
◦ Dica: explore o tipo int, mais precisamente o método tryParse*/
import 'dart:io';

void main() {
  print("Insira uma palavra");
  String? palavra = stdin.readLineSync();
  List<String> letters = palavra!.split('');

  for (int i = 0; i < letters.length; i++) {
    String? letter = letters[i];
    if (int.tryParse(letter) != null) {
      print('$letter é número!');
    } else {
      print('$letter não é número!');
    }
  }
}
