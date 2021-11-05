class Professor {
  String nome;
  var matricula;

  Professor(this.nome);

  String getNome() {
    return nome;
  }

  void setNome(var nome) {
    nome = nome;
  }
}

void main() {
  Professor p = Professor("Edson");
  p.setNome("Antonio");
  print(p.getNome());

  p
    ..setNome("Silvia")
    ..matricula = 1000;
  print(p.getNome());
}
