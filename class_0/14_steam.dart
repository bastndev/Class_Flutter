/* Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) => value).take(5);
}

void main() {
  emitNumbers().listen((event) {
    print('Number: $event');
  });
} */

// ------------ Async*

Stream<int> emitNumbers() async* {
  final valuesToEmit = [1, 2, 3, 4, 5];
  for (int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

void main() {
  emitNumbers().listen((event) {
    print('Number: $event');
  });
}
