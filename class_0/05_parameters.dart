/* void main(List<String> args) {
  print(greetPerson( name: 'John', message: 'Hi'));
}

String greetPerson({required String name, String message = 'Hello'}) {
  return '$message $name';
}
 */

void main(List<String> args) {
  print(greet(email: 'example@gmail.com', numberPhone: '123456789'));
}

String greet({required String email, String numberPhone = '_ _ _ _ _ _ _ _ _'}) {
  return 'Email: $email, Number Phone: $numberPhone';
}
