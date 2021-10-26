void main() {
  print('Hello World!');

  /*
  final name = "edson";
  print(name);
  final String nickName = "colorado";
  print(nickName);
  //nickName = "dalhe inter";
  //print(nickName);

  const bar = 10000;
  print(bar);
  const double atm = 1.01325 * bar;
  print(atm);

  var texto1 = "edson" " " 'Ifarraguirre' ' ' "Moreno";
  print(texto1);

  var texto2 = "edson" + " " + 'Ifarraguirre' + ' ' + "Moreno";
  print(texto2);

  var texto3 = """
  'Edson'
  'Ifarraguirre'
  'Moreno'
""";
  print(texto3);

  var texto4 = '"Edson Ifarraguirre Moreno"';
  print(texto4);
*/

/*
var a, b; 
a = 0; 
print(a);
b = ++a; 
print(b);
// a é incrementado e depois b captura a
assert(a == b);
// 1 == 1 
a = 0; 
print(a);
b = a++; 
print(b);
// b captura a e depois a é incrementado
assert(a != b); 
// 1 != 0 
*/

  var a = 10;
  print(a);
  var b;
  b ??= a + 5;
  print(b);
  b ??= 5;
  print(b);

  b <<= 2;
  b = b << 2;
}
