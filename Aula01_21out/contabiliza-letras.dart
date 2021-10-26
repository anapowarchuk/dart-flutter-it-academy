//Crie um programa que captura uma palavra e contabiliza a quantidade de vogais, consoantes e quantas vezes cada letra apareceu (Dica: use length e o operador [] para capturar cada caracter)
import 'dart:io';

void main() {
  
  print("Insira uma palavra");
  String? palavra = stdin.readLineSync();
  List<String> letters = palavra!.split('');

  int cont_vogal = 0;
  int cont_consoante = 0;

  for (int i = 0; i < letters.length; i++) {
    if (letters[i] == 'a' ||
        letters[i] == 'A' ||
        letters[i] == 'e' ||
        letters[i] == 'E' ||
        letters[i] == 'i' ||
        letters[i] == 'I' ||
        letters[i] == 'O' ||
        letters[i] == 'o' ||
        letters[i] == 'U' ||
        letters[i] == 'u') {
      cont_vogal++;
    } else {
      cont_consoante++;
    }
  } 

  print ("Quantidade de consoantes: $cont_consoante e Quantidade de vogal: $cont_vogal");

  print ("Insira a letra para consultar o numero de repetições");
  String? letra = stdin.readLineSync();

  int cont_repeticao = 0;

  for (int i=0; i < letters.length; i++) {
    if (letra==letters[i]){
      cont_repeticao++;
    }
  }
  print ("A letra $letra é repetida em $palavra $cont_repeticao vezes");

}
