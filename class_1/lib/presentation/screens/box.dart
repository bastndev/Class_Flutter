import 'package:flutter/material.dart';

class BoxContainer extends StatelessWidget {
  final Color color; //declaración de una variable de instancia

  const BoxContainer({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        // border: Border.all(color: Colors.black, width: 2), //black border 2px
      ),
    );
  }
}