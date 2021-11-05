class Person{

  final _name;
  Person (this._name);

  String greet(String who) => 'Hello, $who I am $_name';

  outraFuncao() => print(42);

}

// -=-=-=-=-=-=-

class Impostor implements Person{
  get _name => '';

  //String greet(String who) => 'IMPOSTOR: Hi $who. Do you know who I am? Maybe $_name!'; 
  String greet(String who) => 'IMPOSTOR: Hi $who. Do you know who I am?'; 

  vaiSaber() => print("qualquer informacao");

  @override
  outraFuncao() {
    // TODO: implement outraFuncao
    throw UnimplementedError();
  }

}

//-=-=-=-=-==-

String greetBob(Person p) => p.greet("Bob");

void main(){
  print(greetBob(Person('Edson')));
  print(greetBob(Impostor()));
  Impostor().vaiSaber();
}
