import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: const Text('Cubit Counter'),
            subtitle:
                const Text('Cubit is a lightweight state management solution'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => context.push('/cubit'),
          ),
        ],
      ),
    );
  }
}
