class Professor {
  var nome;
  var matricula;

  Professor(String n) {
    nome = n;
  }
  String getNome() {
    return nome;
  }

  void setNome(String n) {
    nome = n;
  }

  /*void main() {
    Professor p = Professor("Ana");
    print(p.getNome());
    p
      ..setNome("Silvia");
      ..matricula = 1000;
    print(p.getNome());
    print(p.getMatricula());
    //p.setNome("Antonio");
    //print(p.getNome());
  }*/
}
