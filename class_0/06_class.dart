class Car {
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
  Car myCar = Car('Toyota', 'Corolla', 2020);

  // Llamar al método del objeto
  myCar.displayInfo(); // Imprime: Brand: Toyota, Model: Corolla, Year: 2020
}
