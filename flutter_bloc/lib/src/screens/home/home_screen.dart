import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> items = [
      {
        'title': 'Cubit Counter',
        'subtitle': 'Cubit is a lightweight state management solution',
        'route': '/cubit',
      },
      {
        'title': 'Bloc Counter',
        'subtitle': 'Bloc is a more advanced state management solution',
        'route': '/bloc',
      },
      {
        'title': 'register Screen',
        'subtitle': 'Register Screen',
        'route': '/register',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: ListView.separated(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            title: Text(
              item['title']!,
              style: const TextStyle(
                  color: Color(0xFF2F2F2F), fontWeight: FontWeight.w600),
            ),
            subtitle: Text(item['subtitle']!),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => context.push(item['route']!),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
