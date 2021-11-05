import 'Point.dart';
import 'Pessoa.dart';
import 'Retangulo.dart';

void main() {
  Point p = Point();
  print(p.x);
  print(p.y);
  print(p.z);

  print(Pessoa.humor);

  Pessoa p1 = Pessoa("Edson");
  Pessoa p2 = Pessoa("Silvia");

  print(p2.getNome() + ' + ' + p1.getNome());

  print("${p1.getNome()} está ${p1.getHumor()}");
  print("${p2.getNome()} está ${p2.getHumor()}");
  print("-=-=-=-=-==-");

  p1.setHumor("alegre");
  print("${p1.getNome()} está ${p1.getHumor()}");
  print("${p2.getNome()} está ${p2.getHumor()}");
  print("-=-=-=-=-==-");

  p2.setHumor("sorridente");
  print("${p1.getNome()} está ${p1.getHumor()}");
  print("${p2.getNome()} está ${p2.getHumor()}");

  print("-=-=-=-=-==-");
  print(Pessoa.dizAlgo());
  //print(p1.dizAlgo());
  //print(p2.dizAlgo());

  print('----------------------------------------');

  var retangulo = Retangulo(1, 10, 5, 7);
  print("Esquerda ${retangulo.left}");
  print("Direita ${retangulo.right}");
  print("Top ${retangulo.top}");
  print("Bottom ${retangulo.bottom}");
  print("-=-=-=-=-=-=");
  retangulo.right = 2;
  print("Esquerda ${retangulo.left}");
  print("Direita ${retangulo.right}");
  print("Top ${retangulo.top}");
  print("Bottom ${retangulo.bottom}");

    print('----------------------------------------');

}
