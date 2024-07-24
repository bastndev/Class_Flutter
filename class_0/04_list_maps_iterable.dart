void main(List<String> args) {
  final numbers = [1, 2, 3, 4, 5, 5, 6, 7, 8, 9, 9, 9, 10];

  print('original list: $numbers');
  print('length: ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Last: ${numbers.last}');
  print('Reversed: ${numbers.reversed}');

  final reversedNumber = numbers.reversed;
  print('Iterable: Reversed: $reversedNumber');
  print('List: ${reversedNumber.toList()}');
  print('Set: ${reversedNumber.toSet()}');

  final numbersGreaterThan5 = numbers.where((element) => element > 5);  
  print('>5 iterable: $numbersGreaterThan5');
  print('>5 toSet: ${numbersGreaterThan5.toSet()}');
}
