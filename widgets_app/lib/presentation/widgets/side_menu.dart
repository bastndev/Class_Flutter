import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (int index) {
        setState(() {
          navDrawerIndex = index;
        });
      },
      children: const [
        NavigationDrawerDestination(
          icon: Icon(Icons.access_alarm_outlined),
          label: Text('Text here'),
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.text_format_outlined),
          label: Text('Text here 2'),
        ),
      ],
    );
  }
}
