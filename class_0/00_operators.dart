// Operador asignado
/* void main(List<String> args) {
  int a = 3;
  a += 5;

  print(a); // 8
} */

/* void main(List<String> args) {
  int a = 3;
  a -= 5;

  print(a); // -2
}
 */

// ternary OPERATOR
/* void main(List<String> args) {
  int a = 2;

  final result = a > 5 ? 'Mayor que 5' : 'Menor o igual a 5';
  print(result); // Menor o igual a 5

}
 */

// `??` OPERATOR
/* void main(List<String> args) {
  String? name = 'Maria'; // This will cause an error because null safety is enforced in Dart.
  String realName = name ?? 'Unknown = null'; // RealName is 'Unknown'
  print(realName);
}
 */

// Type OPERATOR
/* void main(List<String> args) {
  int a = 3;
  String b = '3';

  print(a is int); // true
  print(b is! int); // true
} */

/* void main(List<String> args) {
  var a = 'example'; // Definir la variable a
  var b = a;
  print(b);

} */

// Other OPERATOR
void main(List<String> args) {
  int a = 5; // Definir la variable a
  int b = a ^ 3; // Aplicar el operador XOR con 3
  print(b); // Imprimir el resultado
}