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

void main(List<String> args) {
  String? name = 'Maria'; // This will cause an error because null safety is enforced in Dart.
  String realName = name ?? 'Unknown = null'; // RealName is 'Unknown'
  print(realName);
}
