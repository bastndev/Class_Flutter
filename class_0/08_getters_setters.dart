class Square {
  double side;
  Square({
    required this.side,
  });

  double calculateArea() => side * side;
}

void main(List<String> args) {
  final mySquare = Square(side: 10);

  print('Area: ${mySquare.calculateArea().toInt()}');
}
