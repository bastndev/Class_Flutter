import 'package:clean_architecture/config/constants/environment.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(Environment.theMovieDBKey),
      ),
    );
  }
}
