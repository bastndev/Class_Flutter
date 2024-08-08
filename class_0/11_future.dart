Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 2), () {
    throw 'Could not fetch data';
    // return 'Hello World';
  });
}

void main(List<String> args) {
  print('Start Program');

  httpGet('https://api.com').then((data) {
    print(data);
  }).catchError((error) {
    print('error: $error');
  });

  print('end Program');
}
