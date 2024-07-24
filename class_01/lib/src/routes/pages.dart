import 'package:class_01/src/routes/routes.dart';
import 'package:class_01/src/widgets/home.dart';
import 'package:flutter/material.dart';

abstract class Pages {
  static Map<String, Widget Function(BuildContext)> route = {
    Routes.home: (BuildContext context) => const HomeScreen(),
  };
}
