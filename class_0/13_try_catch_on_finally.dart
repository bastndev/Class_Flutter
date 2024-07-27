Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 2));
  throw Exception('Exception in API');
  // throw 'Could not fetch API';
  // return 'Hello World https:API';
}

void main(List<String> args) async {
  print('Start Program');

  try {
    final value = await httpGet('https://api.com');
    print('Success ✅: $value');
  } on String catch (e) {
    print(' $e');
  } catch (e) {
    print('Error: $e');
  } finally {
    print('Finally try-catch block');
  }

  print('end Program');
}
