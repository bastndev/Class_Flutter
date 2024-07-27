Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 2));
  throw 'Could not fetch API';
  // return 'Hello World https:API';
}

void main(List<String> args) async {
  print('Start Program');

  try {
    final value = await httpGet('https://api.com');
    print(value);
  } catch (e) {
    print('Error: $e');
  }

  print('end Program');
}
