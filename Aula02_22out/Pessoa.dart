class Pessoa{
  String _nome;
  static String humor="feliz";

  Pessoa(this._nome);

  String getNome(){
    return this._nome;
  }

  void setNome(String n){
    this._nome=n;
  }

  void setHumor(String h){
    humor=h;
  }

  String getHumor(){
    return humor;
  }


  void meuPrint(){
    print(this._nome);
  }

  static String dizAlgo(){
    String interjeicao="puxa... ";
    String estadoDeEspirito="como estou contente!!!!";
    String mensagem = interjeicao + estadoDeEspirito;
    return mensagem;
  }

}
