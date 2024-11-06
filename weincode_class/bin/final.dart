void main() {
  final List<String> frutas = ["manzana", "pera"];
  
  // Puedes agregar y modificar elementos en la lista
  frutas.add("naranja");               // Agrega un nuevo elemento
  frutas[0] = "plátano";               // Modifica el primer elemento
  
  print(frutas);  // Salida: ["plátano", "pera", "naranja"]
  
  // Esto generaría un error:
  // frutas = ["sandía", "melón"];     // No se puede reasignar la lista
}
