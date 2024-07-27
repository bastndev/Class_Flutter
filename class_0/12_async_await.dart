Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 2));
  return 'Hello World https:API';
}

void main(List<String> args) async {
  print('Start Program');

  final value = await httpGet('https://api.com');
  print(value);

  print('end Program');
}
