import 'dart:math';

class PhrasesRepository {
  final List<String> phrases = [
    "Hello are you beautiful",
    "Nice to meet you",
    "I love you",
    "I am happy",
    "I am sad",
  ];

  Future<String> aleatoryPhrase() async {
    var random = Random();
    return phrases[random.nextInt(phrases.length)];
  }
}
