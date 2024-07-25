/* class Car {
  // Propiedades
  String brand;
  String model;
  int year;

  // Constructor
  Car(this.brand, this.model, this.year);

  // Método
  void displayInfo() {
    print('Brand: $brand, Model: $model, Year: $year');
  }
}

void main() {
  // Crear un objeto a partir de la clase Car
  Car myCar = Car('Tesla', 'Cybertruck', 2024);
  Car tooCar = Car('Toyota', 'Corolla', 2020);

  // Llamar al método del objeto
  myCar.displayInfo(); // Imprime: Brand: Toyota, Model: Corolla, Year: 2020
  tooCar.displayInfo(); // Imprime: Brand: Toyota, Model: Corolla, Year: 2020
}
 */

/* class Animals {
  String dog;
  String cat;

  Animals({
    required this.dog,
    required this.cat,
  });
}

void main(List<String> args) {
  final maria = Animals(dog: 'Pitbull', cat: 'Siames');

  print(maria);
  print(maria.dog);
  print(maria.cat);
}
 */

class Books {
  String title;
  String author;
  int year;

  Books({
    required this.title,
    required this.author,
    this.year = 000,
  });

  void displayInfo() {
    print('Title: $title, Author: $author, Year: $year');
  }
}

void main(List<String> args) {
  final book1 = Books(author: 'Lucas', title: '3 metros bajo el cerro');
  final book2 = Books(author: 'Maria', title: 'El amor en times de guerra', year: 2020);


  book1.displayInfo();
  book2.displayInfo();
}
