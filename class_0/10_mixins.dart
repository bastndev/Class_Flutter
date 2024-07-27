abstract class Animal {}

abstract class Mammal extends Animal {}
abstract class Bird extends Animal {}
abstract class Fish extends Animal {}

mixin class Flying {
  void fly() => print("I'm flying");
}

mixin class Walker {
  void walk() => print("I'm walking");
}

mixin Swimmer {
  void swim() => print("I'm Swimming");
}

class Dolphin extends Mammal with Swimmer {}
class Bat extends Mammal with Walker, Flying {}
class Cat extends Mammal with Walker {}

class Dove extends Bird with Walker, Flying {}
class Duck extends Bird with Walker, Swimmer, Flying {}

class Shark extends Fish with Swimmer {}
class Trout extends Fish with Swimmer, Walker {}

void main(List<String> args) {
  final flipper = Dolphin();
  flipper.swim();

  final barMan = Bat();
  barMan.fly();
  barMan.walk();

  final tom = Duck();
  tom.fly();
  tom.walk();
  tom.swim();
}
