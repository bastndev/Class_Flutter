/* void main(List<String> args) {
  final pokemons = {
    1: 'ABC',
    2: 'xyz',
    3: '123',
    4: 'AB22C',
  };
} */

/* void main(List<String> args) {
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'moves': ['Transform', 'Slam', 'Pound'],
  };

  print(pokemon);
}
 */

void main(List<String> args) {
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['Transform'],
    'sprites': <int, dynamic>{1: 'ditto/front.png', 2: 'ditto/back.png'}
  };

  print(pokemon);
  print('Name: ${pokemon['name']}');

  print('Back:${pokemon['sprites'][2]}') ;
  print('Front: ${pokemon['sprites'][1]}');
}
