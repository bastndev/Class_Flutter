class Square {
  double _side;

  Square({required double side}) : _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('setting new value: $value');
    if (value < 0) throw 'Error Enter a positive value';

    _side = value;
  }
}

void main(List<String> args) {
  final mySquare = Square(side: 10);
  mySquare.side = -3;

  print('Area: ${mySquare.area}');
}
