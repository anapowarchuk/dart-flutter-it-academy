abstract class Television {
  int size;
  String marca, modelo;

  Television(this.size, this.marca, this.modelo);
  
  turnOn() {
    _iluminaDisplay();
    _ativaIR();
  }

  _iluminaDisplay() {
    print("ilumna o display");
  }

  _ativaIR() {
    print("ativando o IR");
  }

  String meuValor();
}

//-=-=-=-=-=-=-

class SmartTV extends Television {
  SmartTV(int s, String ma, String mo) : super(s, ma, mo);

  meuValor() {
    return "TV $size + $marca + $modelo";
  }

  _iluminaDisplay() {
    print("o metodo de ilumina display do objeto filho");
  }

  toString() {
    return "o valor que eu quero";
  }
}

//-=-=-=-=-=-=-

void main() {
  var stv = SmartTV(42, "Philco", "DTV 13243546");
  stv.turnOn();
  print(stv.meuValor());
  print(stv);
}
