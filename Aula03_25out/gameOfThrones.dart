class Actor {
  // Properties
  String name;
  var filmography = <String>[];
  
  // Short-form constructor
  Actor(this.name, this.filmography){
    print("Chamando o construtor Actor");
  }
  
  // Named constructor
  Actor.rey({this.name = 'Daisy Ridley'}) {
    filmography = ['The Force Awakens', 'Murder on the Orient Express'];
  }
  
  // Calling other constructors
  Actor.inTraining(String name) : this(name, []);
  
  // Constructor with initialized list
  Actor.gameOfThrones(String name): this.name = name, this.filmography = ['Game of Thrones'] {
    print('My name is ${this.name}');
  }
  
  Actor.coisaDoEdson(String umNome):  this.name=umNome, this.filmography=[];
  
  // Getters and Setters
  String get debut => '$name debuted in ${filmography.first}';
  set debut(String value) => filmography.insert(0, value);
  
  // Methods
  void signOnForSequel(String franchiseName) {
    filmography.add('Upcoming $franchiseName sequel');
  }
  
  // Override from object
  String toString() => '${[name, ...filmography].join("\n- ")}\n';
}

void main() {
  var xaxa = Actor.gameOfThrones("construtor gameOfThrones");
  print(xaxa.name);
}