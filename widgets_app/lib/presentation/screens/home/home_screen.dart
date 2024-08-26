import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/screens/button/buttons_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + materia 3'),
      ),
      body: const _HomeView(),
    );
  }
}

// --- --- -- body
class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme.primary;

    return ListView.builder(
      physics: const BouncingScrollPhysics().parent,
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];

        return ListTile(
          leading: Icon(menuItem.icon, color: colors),
          trailing: Icon(Icons.arrow_forward_ios, color: colors),
          title: Text(menuItem.title),
          subtitle: Text(menuItem.subTitle),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ButtonsScreen(),
              ),
            );
          },
        );
      },
    );
  }
}