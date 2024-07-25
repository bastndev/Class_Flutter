class Hero {
  String name;
  String power;
  int age;

  Hero({
    required this.name,
    required this.power,
    required this.age,
  });

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No Name',
        power = json['power'] ?? 'No Power',
        age = json['age'] ?? 0;

  @override
  String toString() {
    return 'Hero{name: $name, power: $power, age: $age}';
  }
}

void main(List<String> args) {
  final Map<String, dynamic> rawJson = {
    'name': 'Superman',
    'power': 'Fly',
    'age': 35,
  };

  final superMan = Hero.fromJson(rawJson);

  print(superMan);
}
