void main(List<String> args) {
  // print(greetEveryone());
  print(greetTwo());

  print(addTwoNumbers(2, 3));
  print(addTwoNumbersOptional(2, 3));
}

// String greetEveryone() {
//   return "Hello Everyone";
// }
String greetTwo() => "Hello Everyone 2"; 

// strict type
/* int addTwoNumbers(int a, int b) {
  return a + b;
} */

int addTwoNumbers(int a, int b) => a + b;

int addTwoNumbersOptional(int a, [int b = 0]) => a + b;